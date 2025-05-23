# Thellade Project – Canon & Development Workflow Summary
## Thread Summary – GPT Session on Canonization and Workflow
**Date:** 2025-05-14

---

## 🧠 Purpose
To refine the process of managing worldbuilding content between a development environment and a canon repository, using Obsidian, GitHub, and GPT in tandem without causing lore inconsistencies or drift.

---

## ✅ Key Decisions & Recommendations

### 🔁 Project Structure
- **Two-Project Workflow:**
  - **Dev Project** for brainstorming, stubbing, drafts, and session-based improvisation.
  - **Canon Project** for finalized, locked-in, and organized setting information.

- **Canon Project Usage:**
  - Store all confirmed content, including stubbed data (e.g., POI names), even if not fully fleshed out.
  - Used for querying reliable, current facts to ground new development.

- **Dev Project Usage:**
  - Run stubbing workflow, session integration, and content formatting to spec.
  - Only finalized content gets moved to Canon Project.

---

## 🏗️ Settlement Stubbing Workflow (Your Current Process)
1. Ask GPT to generate Districts → store in Obsidian, tag `#TODO`.
2. Ask GPT to generate POIs per District → tag `#TODO`.
3. Ask GPT to generate key NPCs per POI → tag `#TODO`.
4. When prepping for sessions or expanding lore:
   - Flesh out any entry, update tag from `#TODO` to `#Canon`.
   - Move to Canon Project once finalized.

---

## 🗂️ CanonLocations.md Structure
- Hierarchical model:  
  `Plane > Planet (optional) > Region > Subregion > Settlement > District (optional) > POI`

- POIs can exist at any level except Plane.
- Use a unified file `CanonLocations.md` instead of multiple type-specific indexes.
- Include tags per entry: `#TODO`, `#Canon`, etc.

---

## 📝 Markdown Annotation Conventions
- Internal notes allowed within `CanonLocations.md` using:
  - `> [!todo]` or `> [!idea]` (Obsidian callouts)
  - `<!-- comment -->` for markdown-only environments

- GPT Instruction:  
  “Ignore any lines starting with `> [!todo]`, `> [!idea]`, or `<!-- -->`. These are internal notes and not part of canon.”

---

## 🔁 Summary Update Cadence
**When to upload `CanonLocations.md` or Canon Summary:**
- At the start of every new Canon thread.
- After stubbing new major locations (regions, settlements, etc.).
- After each batch of canonizations (preferred).
- After major world events affecting geography or structure (optional).

**Best practice:**
- Filename: `CanonLocations_vX.X.md`
- Annotate with change summary and file list.

---

## 🧾 Canon Update Header Template
```markdown
# Canon Update vX.X
## Summary
- Canonized 2 POIs in East Docks, Vellashar
- Stubbed out “Thornsreach” settlement
- Updated NPC “Keera Vintor” with backstory

## Git Info
**Commit Hash:** abc1234  
**Commit Message:** Canonize Vellashar POIs, stub Thornsreach  
**Date:** 2025-05-14

**Files Changed:**
- `Settlements/Vellashar.md`
- `Districts/East_Docks.md`
- `POIs/The_Rusted_Kettle.md`

## Notes
> [!note]+ Canonical Change Log  
> This update supersedes Canon Update vX.X.  
> All references forward should use this canon.  
> Ignore internal notes (`> [!todo]`, `> [!idea]`, `<!-- -->`).
