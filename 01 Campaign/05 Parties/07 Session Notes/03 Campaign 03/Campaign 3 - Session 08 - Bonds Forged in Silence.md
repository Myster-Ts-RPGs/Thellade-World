---
tags:
  - "#SessionNote"
  - "#TODO"
  - "#Group3"
actual_allies: []
actual_enemies: []
actual_factions: []
actual_locations: []
whichparty: "[[Campaign Group 3]]"
sessionnumber: ""
title: ""
in_game_start: ""
in_game_end: ""
sessiondate: 2026-04-24
group:
  - Group 3
present: []
encounters: []
absent: []
---

> [!infobox]+
> # `=this.group + " - Session " + this.sessionnumber + " - Summary"`
> ###### Info
>  |
> ---|---|
> **Session Number** | `INPUT[text:sessionnumber]`|
> **Title** | `INPUT[textArea(class(meta-bind-full-width)):title]`|
> **Session Date** | `INPUT[datePicker:sessiondate]`|
> **In-Game Start**|`INPUT[text:in_game_start]`|
> **In-Game End** |`INPUT[text:in_game_end]`|
> **Present** | `INPUT[inlineListSuggester(optionQuery(#Player AND #Group3 AND !"z_Templates"), useLinks(partial)):present]`|
> **Absent** | `INPUT[inlineListSuggester(optionQuery(#Player AND #Group3 AND !"z_Templates"), useLinks(partial)):absent]`|
> ###### Actual Info 
>  |
> ---|---|
> **Encounter(s)**| `INPUT[inlineListSuggester(optionQuery(#Encounter AND #Group3 AND !"z_Templates"), useLinks(partial)):encounters]`
> **Allies Encountered** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):actual_allies]` |
> **Enemies Encountered** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):actual_enemies]` |
> **Factions Encountered**|`INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):actual_factions]` |
> **Locations Visited** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates")):actual_locations]` |
#  `=link(this.whichparty) + " - Session " + this.sessionnumber + " - " + this.title`

## 📋 Session Prep Checklist
### 🧭 Strong Start
- [x] Opening scene prepared
- [x] Immediate hook for players
- [x] Clear problem or mystery introduced

> [!note|toggle]+ Strong Start Details
> - Opening location: [[Mangagoy House of Healing]]
> - Immediate hook: The full moon rises as the ritual to cleanse Kaleor Thornhide begins.
> - First conflict: Spiritual resistance and the fragmented identity of Kaleor threatens to unravel the ritual mid-casting.

### 🛤️ Possible Paths
- [x] 3–5 likely directions noted
- [x] Player goals cross-checked
- [x] Open-world consequences updated

> [!note|toggle]+ Possible Paths Details
> 1. Attend and support Kaleor’s cleansing ritual
> 2. Investigate the rune marks on Karnak’s hand
> 3. Follow Hans’ lead on the medallion trail through [[Ashgate Market]], [[Glowquarter]], and [[Gullsway]]
> 4. React to seismic activity during temple collapse
> 5. Face emerging threats tied to Xal’Zul beneath the House of Healing

### 🧱 Key Scenes
- [x] At least 3 prepared set-piece scenes
- [x] Flexible transitions noted
- [x] Adjusted for expected player choices

> [!note|toggle]+ Scenes
> 1. Cleansing Ritual Skill Challenge with narrative beats and NPC invocation
> 2. Collapse of tunnels beneath the crypt and emergence of worm-things
> 3. Reveal and battle with the Seether posing as Sillow
> 4. Ritual beacon flare and Zerith’s reveal of the fourth seal
> 5. Embermoon Surge visual sequence and impending riot setup

### 🏰 Locations
- [x] Key locations updated in Obsidian
- [x] Visual aids or maps ready if needed
- [x] Environmental details or quirks listed
- [x] Location YAMLs linked in Session Note

### ⚔️ Encounters
- [x] Encounters sketched out
- [x] Social encounters outlined
- [x] Skill challenges or chase mechanics prepped
- [x] Encounter YAMLs linked in Session Note

### 🎲 Treasure and Rewards
- [x] Loot ideas or magic items brainstormed
- [x] Milestone markers ready
- [x] Roleplay / social rewards considered

> [!note|toggle]+ Loot/Treasure
> 1. Letter from Lord Ambervale (Tian) with hidden coded message
> 2. Dreamglass dealer clue for Hans (location: [[Ember Wharf]])
> 3. Commission crafting offer for Batrok
> 4. +1 Circumstance bonus (Arcana or Religion) until morning of 05 Dawnmarch for Kothar and Tian
> 5. Divine rune symbol branded on Karnak, interacts with mirrors

### 🔥 Secrets and Clues
- [x] 10 secret facts, rumors, or hooks prepared
- [x] Connect to player backstories if possible

> [!note|toggle]+ Secrets List
> 1. Kaleor’s identity was erased using a Ritual of Unnaming.
> 2. Zorvithrax seeks to devour divine names and invert memory.
> 3. Maelthaz once served Lunara before betraying her.
> 4. The beacon beneath the House of Healing is one of seven seals binding Xal’Zul.
> 5. Only partial success was achieved—the seal held, but weakened.
> 6. Zarith was mentally attacked during the ritual and nearly became a mouthpiece.
> 7. Kaleor was previously manipulated into triggering the seal’s vulnerability.
> 8. The fourth verse of the Choir of Worms has now been partially sung.
> 9. The Embermoon is causing city-wide arcane and emotional distortion.
> 10. Lord Ambervale suspects infiltration or surveillance at noble estates.

### 🧹 Cleanup Tasks
- [x] Last session notes reviewed
- [x] Player downtime activities processed
- [x] World events updated (politics, factions)

### 📖 Session Structure
- [x] Intro → Exploration → Conflict → Resolution flow sketched
- [x] Planned session "end scenes" ready



### Quick References
> [!metadata|location] Locations
> ```dataview
> TABLE WITHOUT ID
>   locations AS "Locations",
>   file.link as "Encounter"
> FROM "01 Campaign"
> WHERE 
>   whichparty = this.whichparty
>   AND sessionnumber = this.sessionnumber
>   AND contains(tags, "#Encounter")
> SORT file.name ASC
> ```

>[!metadata|location] Encounters
> ```dataview
> TABLE WITHOUT ID
>   file.link AS "Encounter",
>   factions AS "Factions",
>   encountertype AS "Type(s)",
>   allies AS "Allies",
>   enemies AS "Enemies"
> FROM "01 Campaign"
> WHERE 
>   whichparty = this.whichparty
>   AND sessionnumber = this.sessionnumber
>   AND contains(tags, "#Encounter")
> SORT file.name ASC
> ```

## During
### Events
- Kaleor’s cleansing ritual (4-phase skill challenge)
- Collapse in crypts and worm emergence
- Fight with Seether + Echo Wisps + Cursed Effigies + Choirling
- Revelation of beacon’s true purpose
- Start of the Embermoon Surge

### Quick References
- Ritual Contributors: Vaelis Duskwhisper, Zareth Korrath, Sowilo Brightgaze
- Location: [[Mangagoy House of Healing Crypts]]
- Key NPCs: Kaleor Thornhide, Sister Sillow, Lunair, Lord Ambervale (via letter)



>[!metadata|encounter] Encounters
> ```dataview
> TABLE WITHOUT ID 
> 	file.link AS "Encounter",
> 	locations AS "Location",
> 	factions AS "Factions",
> 	allies AS "Allies",
> 	enemies AS "Enemies"
> FROM "01 Campaign" 
> WHERE contains(whichsession, this.file.link) AND contains(tags, "#Encounter")
> SORT file.name ASC
> ```


> [!column|2 no-title]
>> [!metadata|characters] Other Allies
>> ```dataview
>> TABLE WITHOUT ID ally AS "Allies"
>> FROM ""
>> FLATTEN actual_allies AS ally
>> WHERE file.name = this.file.name
>> SORT ally
>> ```
>
>> [!metadata|characters] Other Enemies
>> ```dataview
>> TABLE WITHOUT ID enemy AS "Enemies"
>> FROM ""
>> FLATTEN actual_enemies AS enemy
>> WHERE file.name = this.file.name
>> SORT enemy
>> ```
>
>> [!metadata|organizations] Other Factions
>> ```dataview
>> TABLE WITHOUT ID faction AS "Factions"
>> FROM ""
>> FLATTEN actual_factions AS faction
>> WHERE file.name = this.file.name
>> SORT faction
>> ```
>
>> [!metadata|location] Other Locations
>> ```dataview
>> TABLE WITHOUT ID location AS "Locations"
>> FROM ""
>> FLATTEN actual_locations AS location
>> WHERE file.name = this.file.name
>> SORT location
>> ```

### Travel & Rest
- Rested overnight at [[Velvet Lantern Inn]]
- Effect duration noted (until 05 Dawnmarch): +1 Circumstance to Religion or Arcana (Kothar, Tian)

### Loot, Rewards & Purchases
- Hans: clue to find medallion at [[Ember Wharf]]
- Batrok: contract for custom commission
- Tian: hidden message in Ambervale’s star chart (puzzle setup)
- Effie: 30gp profit from charm sales
- Circumstance bonuses for ritual preparation

## Post
### New Creations
- Enemy statblocks: Seether (Aberration Swarm), Echo Wisp (Undead), Cursed Effigy (Construct), Choirling (Undead)
- Reinforced status of 4th seal under Mangagoy
- New visual scene: Embermoon Riot Trigger and Leyline Cascade

### Detailed Notes from Transcript and VTT Log
- All actions documented from cleansing ritual through battle conclusion
- Dialogue captured for Kaleor, Zarith, Vaelis, Sillow, and post-ritual debrief
- Descriptive environmental and magical effects included


