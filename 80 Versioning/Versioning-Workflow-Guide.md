# Version Control Workflow Guide for Thellade

This document outlines the official Git commit and versioning process used for managing Thellade content in Obsidian.

## Session Workflow

### 1. Start of Session
- Open Obsidian and navigate to your active content (e.g. faction, NPC, POI).
- Identify unfinished blocks (typically marked with `#TODO`).
- Begin work.

---

### 2. Finalizing a Content Stub
**Trigger:** When a stub is promoted from `#TODO` to `#Canon`.
- **Commit Type:** `Breakdown`
- **Action:** Run the `Git Commit - Template` file, selecting `Breakdown` when prompted.
- **Result:** The version will increment from `x.x.x.0` → `x.x.x.1`, etc.
- **Commit Summary Example:** `Finalized Red Runners faction stub`

---

### 3. Completing a Content Block
**Trigger:** All major content related to one subject is finalized.
- Examples: All Red Runners NPCs + Symbol + POI + Top/Bottom Matter complete.
- **Commit Type:** `Feature`
- **Result:** Increments `feature` and resets `breakdown` (e.g. `0.1.3.4` → `0.1.4.0`)
- **Commit Summary Example:** `Red Runners Faction Fully Canonized`

---

### 4. Thematic Batch Completion
**Trigger:** A full theme or logical scope is complete.
- Examples: All factions in Mangagoy Isles finalized.
- **Commit Type:** `Minor`
- **Result:** Increments `minor` and resets `feature` and `breakdown`.
- **Commit Summary Example:** `Completed all Mangagoy factions`

---

### 5. Major Milestone Completion
**Trigger:** A world-defining feature is finished.
- Examples:
  - All factions across the Outcast Isles canonized.
  - All settlement stubs filled in across every region.
- **Commit Type:** `Major`
- **Result:** Increments `major` and resets all other counters.
- **Commit Summary Example:** `Thellade Version 1.0.0 Released`

---

### 6. End of Session Push
- Review all commits made during the session using `VaultChangelog.md`.
- Push to origin only when a substantial body of work is complete.

---

## Important Notes
- **Do not push after every commit.** Instead, commit frequently and push when a significant theme or milestone has been achieved.
- **Use precise summaries.** These help track what has changed and allow any future contributor to follow your reasoning.
- **Automation handles renaming, changelog entries, and version tracking.** You only need to focus on when and why you’re committing.

---

## Current Canon Milestone Targets
| Version Target | Milestone Description |
|----------------|------------------------|
| `1.0.0` | All Outcast Isles regions, subregions, settlements, districts, factions stubbed |
| `1.1.0` | All settlement stubs completed |
| `1.2.0` | All POIs fully fleshed out |
| `1.3.0` | All associated NPCs fully fleshed out |

---

**Maintainer:** Steven Allyn Taylor (`Myster T's RPGs`)
