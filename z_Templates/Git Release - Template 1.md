<%*
// Step 0: File and time setup
const file = tp.file;
const versionFilePath = "80 Versioning/CurrentVersion.md";
const releaseFilePath = "80 Versioning/Releases";
const commitFilePath = "80 Versioning/Commits";
const now = new Date();
// Load Current Version
const versionFile = app.vault.getAbstractFileByPath(versionFilePath);
const versionContent = await app.vault.read(versionFile);
const versionLines = versionContent.split("\n");
const versionLine = versionLines.find(l => l.startsWith("version:"));
const currentVersion = versionLine?.split(":")[1]?.trim().replace(/"/g, "") || "0.0.0.0";
// Rename the File
let fileNameTimestamp = tp.date.now("YYYY-MM-DD HH-mm");
let timestamp = tp.date.now("YYYY-MM-DD HH:mm");
let newFileName = `Git Release V${currentVersion} ${fileNameTimestamp}`;
await tp.file.rename(newFileName);


// Step 1: Get all commits since last release
// Find the timestamp of most recent (previous release)
const releaseFolder = app.vault.getAbstractFileByPath(releaseFilePath);
const releaseFiles = ("children" in releaseFolder) ? releaseFolder.children
  .filter(f => f.name.startsWith("Git Release") && f.extension === "md")
  .sort((a, b) => b.stat.ctime - a.stat.ctime) : [];
const lastReleaseTime = releaseFiles.length > 0 ? releaseFiles[0].stat.ctime : now.getTime() - 14 * 24 * 60 * 60 * 1000;
// Get the Commit files with more recent time stamps
const commitFolder = app.vault.getAbstractFileByPath(commitFilePath);
const commitFiles = ("children" in commitFolder) ? commitFolder.children
  .filter(f => f.name.startsWith("Git Commit") && f.extension === "md" && f.stat.ctime > lastReleaseTime)
  .sort((a, b) => b.stat.ctime - a.stat.ctime) : [];
//Extract the summaries
const commitSummaries = [];
for (const file of commitFiles) {
  const contents = await app.vault.read(file);
  const summaryMatch = contents.match(/summary:\s*["']?(.*?)["']?\n/);
  const summary = summaryMatch ? summaryMatch[1] : "(No summary)";
  const time = new Date(file.stat.ctime).toLocaleString('sv-SE);
  commitSummaries.push(`- ${summary} → [[${file.basename}]] (${time})`);
}

// Build the template output
let tR = '';
tR += `# Git Release v${currentVersion}\n\n`;
tR += `## Summary\n> Public release of version ${currentVersion}\n\n`;
tR += `## Commits Since Last Release\n${commitSummaries.join("\n")}\n\n`;
tR += `## Notes\n- Release performed via Obsidian on: ${now.toDateString()}\n- Author: Steven Allyn Taylor\n`;
%>
