<%*
const file = tp.file;
const versionFilePath = "80 Versioning/CurrentVersion.md";
const changelogFilePath = "80 Versioning/VaultChangelog.md";
let now = new Date();

// Step 1: Prompt for version bump type
const bumpType = await tp.system.suggester(
	["Major", "Minor", "Feature", "Breakdown"],
	["major", "minor", "feature", "breakdown"]
);

// Step 2: Read version file
let versionFile = app.vault.getAbstractFileByPath(versionFilePath);
let versionText = await app.vault.read(versionFile);
let versionYamlMatch = versionText.match(/---\n([\s\S]*?)\n---/);
if (!versionYamlMatch) throw new Error("YAML frontmatter missing in CurrentVersion.md");

let versionYaml = versionYamlMatch[0];
let versionLines = versionYaml.split("\n");

// Extract values
let major = Number(versionLines.find(l => l.startsWith("major:")).split(":")[1].trim());
let minor = Number(versionLines.find(l => l.startsWith("minor:")).split(":")[1].trim());
let feature = Number(versionLines.find(l => l.startsWith("feature:")).split(":")[1].trim());
let breakdown = Number(versionLines.find(l => l.startsWith("breakdown:")).split(":")[1].trim());

// Step 3: Increment and reset version parts
if (bumpType === "major") {
	major += 1; minor = 0; feature = 0; breakdown = 0;
} else if (bumpType === "minor") {
	minor += 1; feature = 0; breakdown = 0;
} else if (bumpType === "feature") {
	feature += 1; breakdown = 0;
} else if (bumpType === "breakdown") {
	breakdown += 1;
}

const newVersion = `${major}.${minor}.${feature}.${breakdown}`;

// Step 4: Rebuild version YAML
let newVersionLines = versionLines.map(l => {
	if (l.startsWith("version:")) return `version: "${newVersion}"`;
	if (l.startsWith("major:")) return `major: ${major}`;
	if (l.startsWith("minor:")) return `minor: ${minor}`;
	if (l.startsWith("feature:")) return `feature: ${feature}`;
	if (l.startsWith("breakdown:")) return `breakdown: ${breakdown}`;
	return l;
});
let newVersionText = newVersionLines.join("\n");
await app.vault.modify(versionFile, versionText.replace(versionYaml, newVersionText));

// Step 5: Prompt for summary and description
const summary = await tp.system.prompt("Commit Summary:");
const description = await tp.system.prompt("Commit Description:");

// Step 6: Rename file
let timestamp = tp.date.now("YYYY-MM-DD HH-mm");
let newFileName = `Git Commit ${timestamp}`;
await tp.file.rename(newFileName);

// Step 7: Prepend to VaultChangelog.md
const changelogFile = app.vault.getAbstractFileByPath(changelogFilePath);
let changelog = await app.vault.read(changelogFile);
let changelogLines = changelog.split("\n");
if (changelogLines[0].trim() === "# Changelog") changelogLines.shift();
let changelogEntry = `${newVersion}    ${timestamp} – ${summary} → [[${newFileName}]]`;
changelogLines.unshift("# Changelog", changelogEntry);
await app.vault.modify(changelogFile, changelogLines.join("\n"));

// Step 8: Get actual file objects from the folder
let commitFolder = app.vault.getAbstractFileByPath("80 Versioning/Commits");
let commitFiles = [];

if (commitFolder && "children" in commitFolder) {
  for (let f of commitFolder.children) {
    if (f.name.startsWith("Git Commit") && f.extension === "md") {
      commitFiles.push(f);
    }
  }
}

// Sort by actual file creation time (not filename)
commitFiles.sort((a, b) => b.stat.ctime - a.stat.ctime);

// Get the file just before this one
let previousCommitFile = commitFiles[1];
let lowerBound = previousCommitFile ? previousCommitFile.stat.ctime : now.getTime() - 2 * 60 * 60 * 1000;

let files = app.vault.getMarkdownFiles();
let changedFiles = files
  .filter(f => f.stat.mtime >= lowerBound && f.stat.mtime <= now.getTime())
  .sort((a, b) => b.stat.mtime - a.stat.mtime)
  .map(f => `- [[${f.basename}]] (${new Date(f.stat.mtime).toLocaleString()})`)
  .join('\n');

// Step 9: Return commit body for note
// Final commit content
tR += `---\ncreated: ${timestamp}\n---\n\n`;
tR += `# Git Commit ${timestamp}\n\n`;
tR += `Version ${newVersion}\n\n`;
tR += `## Summary\n> ${summary}\n\n`;
tR += `## Description\n> ${description}\n\n`;
tR += `## Related Files\n${changedFiles}\n\n`;
tR += `## Notes\n`;
tR += `- Commit performed via Obsidian on: ${now.toDateString()}\n`;
tR += `- Author: Steven Allyn Taylor\n`;
%>
