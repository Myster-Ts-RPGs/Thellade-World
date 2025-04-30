# 🧭 Thellade Canon Versioning Rules
**Last Updated:** 2025-04-30 21:40

This file defines the official semantic versioning system used to track Thellade’s worldbuilding milestones, campaign integrations, and content updates. This format is used for `VaultChangelog.md`, Git Commit tracking, and session archival.

---

## 🔢 Semantic Version Format

**Format:** `Major.Minor.Feature.Breakdown[-label]`

| Segment        | Meaning                                                                 |
|----------------|-------------------------------------------------------------------------|
| `Major`        | World-defining milestone (e.g., all Regions/Subregions/Factions)       |
| `Minor`        | Thematic phase complete (Settlements, POIs, NPCs)                      |
| `Feature`      | Specific content batch (e.g., Lambaro POIs, Boba NPCs)                 |
| `Breakdown`    | Optional micro-commits or targeted fixes (e.g., portrait relink patch) |
| `-label`       | Optional release type (`beta`, `hotfix`, `rc`, etc.)                   |

---

## 📖 Canon Milestone Ladder

### ✅ `1.0.0` – Core World Skeleton Complete
- Regions, Subregions, Settlements, Districts stubbed
- All known **Factions** assigned HQs and stubs
- POI + Faction NPC stubs created

---

### 🧱 `1.1.0` – Settlement Coverage Phase
- All Settlements have:
  - Stubbed Locations/POIs
  - Listed (unfleshed) affiliated NPCs

Examples:
- `1.1.1` – Boba & Jambito settlement stubs
- `1.1.2` – Lambaro & Mangagoy POI shells
- `1.1.2.1` – Hotfix patch for district errors

---

### 🏛 `1.2.0` – POI Detail Phase
- Locations fleshed out:
  - Descriptions, security, function
  - Affiliated NPCs and Factions crosslinked

Examples:
- `1.2.1` – All Boba POIs completed
- `1.2.3.2` – Patch to remove duplicate entries

---

### 🧍 `1.3.0` – NPC Detail Phase
- Every known Faction & Settlement NPC:
  - Full profile written
  - Linked to POIs, factions, and each other

Examples:
- `1.3.2` – Lambaro NPC completion
- `1.3.2.1` – Portrait fix + anchor update

---

## 🔮 Future Milestones (Examples)

- `1.4.0` – Temple & Religion Structure Pass
- `1.5.0-beta` – Pre-publish formatting pass
- `2.0.0` – Addition of major region (e.g. The Azure Reach)

---

## 📌 Versioning Best Practices

- All canonical changes should update `VaultChangelog.md`
- Each finalized milestone or import should use `Git Commit YYYY-MM-DD HH-MM`
- Optional labels like `-alpha`, `-obsidian-sync`, or `-rc` can be appended to track workflow state

---

## 🧾 Example Entry (VaultChangelog.md)

```
# Changelog

2025-05-01 12:03 – Completed Crimson Shroud and Hollow Mask factions → [[Git Commit 2025-05-01 12-03]]
```
