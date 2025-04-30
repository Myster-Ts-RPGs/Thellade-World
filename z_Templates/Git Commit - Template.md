<%*
let now = new Date();
let pad = n => String(n).padStart(2, '0');
let timestamp = `${now.getFullYear()}-${pad(now.getMonth()+1)}-${pad(now.getDate())} ${pad(now.getHours())}:${pad(now.getMinutes())}`;
let fileName = `Git Commit ${timestamp.replace(":", "-")}`;
await tp.file.rename(fileName);

// Prompts
let summary = await tp.system.prompt("Enter a one-line summary of this commit:");
let description = await tp.system.prompt("Enter a longer description of what was changed:");

// Get prior commit creation time
let commitFolder = app.vault.getAbstractFileByPath("80 Versioning/Commits");
let commitFiles = [];

if (commitFolder && "children" in commitFolder) {
  for (let f of commitFolder.children) {
    if (f.name.startsWith("Git Commit") && f.extension === "md") {
      commitFiles.push(f);
    }
  }
}

commitFiles.sort((a, b) => b.stat.ctime - a.stat.ctime);
let previousCommit = commitFiles[1]; // one before this file
let lowerBound = previousCommit ? previousCommit.stat.ctime + 60_000 : now.getTime() - 2 * 60 * 60 * 1000;

let changedFiles = app.vault.getMarkdownFiles()
  .filter(f => f.stat.mtime >= lowerBound && f.stat.mtime <= now.getTime())
  .sort((a, b) => b.stat.mtime - a.stat.mtime)
  .map(f => `- [[${f.basename}]] (${new Date(f.stat.mtime).toLocaleString()})`)
  .join('\n');

// Prepend entry to VaultChangelog.md
// Prepend entry to VaultChangelog.md
const path = "80 Versioning/VaultChangelog.md";
let changelogFile = app.vault.getAbstractFileByPath(path);

if (changelogFile && changelogFile.extension === "md") {
  let oldText = await app.vault.read(changelogFile);
  let lines = oldText.split("\n");
  if (lines[0].trim() === "# Changelog") lines.shift(); // remove header
  let entry = `# Changelog\n${timestamp} – ${summary} → [[${fileName}]]\n`;
  await app.vault.modify(changelogFile, entry + lines.join("\n"));
}




// Final commit content
tR += `---\ncreated: ${timestamp}\n---\n\n`;
tR += `# 🔖 Git Commit ${timestamp}\n\n`;
tR += `## 📌 Summary\n> ${summary}\n\n`;
tR += `## 📝 Description\n> ${description}\n\n`;
tR += `## 🗂 Related Files\n${changedFiles}\n\n`;
tR += `## 🧾 Notes\n`;
tR += `- Commit performed via Obsidian on: ${now.toDateString()}\n`;
tR += `- Author: Steven Allyn Taylor\n`;
%>
