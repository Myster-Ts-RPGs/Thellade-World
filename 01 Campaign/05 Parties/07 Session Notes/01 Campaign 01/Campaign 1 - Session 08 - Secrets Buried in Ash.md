---
tags:
  - "#SessionNote"
  - "#TODO"
  - "#Group1"
actual_allies: []
actual_enemies:
  - "[[Vaust Hadrinel]]"
actual_factions: []
actual_locations:
  - "[[01 Campaign/01 World/06 Settlements/The Veins of Night/Shadowthread Warrens/Daggerfall Hollow.md|Daggerfall Hollow]]"
  - "[[01 Campaign/01 World/08 Points of Interest/10 Infrastructure/The Veins of Night/Shadowthread Warrens/Blackwater Crossing/Courier Registry.md|Courier Registry]]"
  - "[[01 Campaign/01 World/08 Points of Interest/05 Government/The Veins of Night/Shadowthread Warrens/Blackwater Crossing/East Gate Transfer Station.md|East Gate Transfer Station]]"
whichparty: "[[Campaign Group 1]]"
sessionnumber: "08 "
title: Secrets Buried in Ash
in_game_start: 07 Dawnmarch 212PR 13:06
in_game_end: ""
sessiondate: 2026-05-19
group:
  - Group 1
present:
  - "[[Vezer]]"
  - "[[Rickter Stone]]"
  - "[[Ferrek Anvilbreaker]]"
  - "[[Felzik]]"
encounters:
  - "[[Ledger of the Forgotten]]"
  - "[[Toll at the Edge]]"
  - "[[Arc of Collapse]]"
absent: []
---

> [!infobox|wsmall]+
> # Summary Information
> ###### Info
>  |
> ---|---|
> **Session Number** | `INPUT[text:sessionnumber]`|
> **Title** | `INPUT[textArea(class(meta-bind-full-width)):title]`|
> **Session Date** | `INPUT[datePicker:sessiondate]`|
> **In-Game Start**|`INPUT[text:in_game_start]`|
> **In-Game End** |`INPUT[text:in_game_end]`|
> **Present** | `INPUT[inlineListSuggester(optionQuery(#Player AND #Group1 AND !"z_Templates"), useLinks(partial)):present]`|
> **Absent** | `INPUT[inlineListSuggester(optionQuery(#Player AND #Group1 AND !"z_Templates"), useLinks(partial)):absent]`|
> ###### Actual Info 
>  |
> ---|---|
> **Encounter(s)**| `INPUT[inlineListSuggester(optionQuery(#Encounter AND #Group1 AND !"z_Templates"), useLinks(partial)):encounters]`
> **Allies Encountered** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):actual_allies]` |
> **Enemies Encountered** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):actual_enemies]` |
> **Factions Encountered**|`INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):actual_factions]` |
> **Locations Visited** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates")):actual_locations]` |
#  [[Campaign Group 1]] - Session 08 -  Secrets Buried in Ash
## Pre-Session Highlights

### Cinematic Session Introduction  
Tone: Mysterious, Uneasy  

The sigil pulsed with stolen flame, and the fungal ruins now lie silent—emptied of the Maw, but not of meaning. Beneath Blackwater Chapel, something was moved... and something else was summoned. Spiral glyphs and broken chalices whisper of rites older than memory, calling forth the name of [[Xal’Zul]] through blood and root. The party carries evidence—but also a warning: the beacons lie, and the bindings tremble. As city guards draw blades and secrets slither to the surface, only one question remains: Who moved the beacon... and why?

---

### YouTube Video Description Summary

Having escaped the collapsing ruin beneath the Nexus, the party returns to the surface carrying two sigils—one divine, one forged. Tensions spike as Commander [[Baelgrim Tarsk]] and Teller [[Broshun Tell]]  confront them about three deaths tied to a ritual site. Blood spirals, burned notes, and enchanted courier badges point to a cultic smuggling ring operating beneath the city’s nose. With [[Solvane]]'s lingering light fading and [[Xal’Zul]]’s whispers growing louder, the group must navigate false beacons, broken trusts, and the first real signs that the Abyss is already bleeding through. 

---
## 📋 Session Prep Checklist

### 🧭 Strong Start
- [x] Opening scene prepared
- [x] Immediate hook for players
- [x] Clear problem or mystery introduced

> [!note|toggle]+ Strong Start Details
> - **Opening location:** Council Chamber within [[Blackwater Crossing]]'s City Hall  
> - **Immediate hook:** [[Broshun Tell]] and [[Baelgrim Tarsk]] press the party to explain inconsistencies in the courier logs and sigil recovery—under rising political pressure.  
> - **First conflict:** Social skill challenge to maintain investigative access without being arrested or stonewalled by city authorities.

---

### 🛤️ Possible Paths
- [x] 3–5 likely directions noted
- [x] Player goals cross-checked
- [x] Open-world consequences updated

> [!note|toggle]+ Possible Paths Details
> 1. Pursue the forged courier ledger further through the investigation at the [[Courier Registry]] ("Ledger of the Forgotten")  
> 2. Trace the Deep Dark fungal soil to tunnels near [[Shadewarren Outpost]]  
> 3. Attempt to magically restore [[Marnie of the Mycelium]]’s fragmented memories  
> 4. Infiltrate the Courier Guild’s routing manifest archives after-hours using disguise or stealth  
> 5. Confront Teller [[Broshun Tell]] about his known Sable Accord contacts if suspicions mount

---

### 🧱 Key Scenes
- [x] At least 3 prepared set-piece scenes
- [x] Flexible transitions noted
- [x] Adjusted for expected player choices

> [!note|toggle]+ Scenes
> 1. High-stakes debate in City Hall: Tell vouches for the party while Tarsk threatens expulsion  
> 2. Investigation at the [[Courier Registry]] with [[Edreth Voln]] and the blind archivist [[Yonnic Brade]]  
> 3. Discovery of the Coiled Vein leyline chart hidden in the old vaults  
> 4. Optional psionic ritual to unlock glyph-residue visions at the East Gate  
> 5. Travel to and exploration of the fenced lakeside piers at [[Blackwater Lake]] (East Gate Transfer Station)

---

### 🏰 Locations
- [x] Key locations updated in Obsidian
- [x] Visual aids or maps ready if needed
- [x] Environmental details or quirks listed
- [x] Location YAMLs linked in Session Note

---

### ⚔️ Encounters
- [x] Encounters sketched out
- [x] Social encounters outlined
- [x] Skill challenges or chase mechanics prepped
- [x] Encounter YAMLs linked in Session Note

---

### 🎲 Treasure and Rewards
- [x] Loot ideas or magic items brainstormed
- [x] Milestone markers ready
- [x] Roleplay / social rewards considered

> [!note|toggle]+ Loot/Treasure
> 1. Ledger fragment etched with latent glyph spell  
> 2. Parcel tag that hums when within 50ft of a leyline beacon  
> 3. “Dead Route” delivery token used for unsanctioned cargo  
> 4. Key to a forgotten Rootcoil drop-point in the Veins of Night  
> 5. Wax-sealed confession from a compromised courier

---

### 🔥 Secrets and Clues
- [x] 10 secret facts, rumors, or hooks prepared
- [x] Connect to player backstories if possible

> [!note|toggle]+ Secrets List
> 1. [[Vaust Hadrinel]] has altered more than one route ledger—his glyphwork mimics Warden encoding  
> 2. [[Revek Thorne]] personally approved the sacrifice timetable sent east  
> 3. “Duskfall repeats” refers to a prior beacon failure in a now-abandoned warren  
> 4. [[Yonnic Brade]] may have unconsciously memorized key sigil routes under Rootcoil psionic suggestion  
> 5. A hidden leyline fork runs beneath the courier stable—beneath it lies a shattered relay  
> 6. [[Sella Grint]] was last seen wearing boots with “Mycelium-scale” leather—an outlawed fungus armor  
> 7. A high-ranking Courier Guild official may be part of the smuggler ring  
> 8. One of the false sigils matches an old Arcane Warden prototype—suggesting an inside leak  
> 9. The Rootcoil Smugglers are using “black echo glyphs” that only resonate at Deimos new moon  
> 10. [[Broshun Tell]] has recently intercepted Sable Accord messages about "Site Echo-Beta" near [[Daggerfall Hollow]]

---

### 🧹 Cleanup Tasks
- [x] Last session notes reviewed
- [x] Player downtime activities processed
- [x] World events updated (politics, factions)

---

### 📖 Session Structure
- [x] Intro → Exploration → Conflict → Resolution flow sketched
- [x] Planned session "end scenes" ready

---

### Quick References
- **Lead NPCs:** [[Broshun Tell]], [[Baelgrim Tarsk]], [[Edreth Voln]], [[Yonnic Brade]]  
- **Rootcoil Threats Nearby:** [[Vaust Hadrinel]], [[Revek Thorne]], [[Sella Grint]], [[Jossik Varn]]  
- **Key Locations:** [[Blackwater Chapel]], [[Courier Registry]], [[Blackwater Lake]], [[Shadewarren Outpost]]  
### **Hex 14: The Sighing Quay**

**Brief:** Southern dockside across the lake—shadowed, watched, and prone to shakedowns.

**Cinematic:**  
The lanternlight fades behind you as your boat slides across the still expanse of [[Blackwater Crossing]], approaching a narrow spit of land draped in shadow. Crumbling stone docks jut like broken teeth into the lake, and warped planks creak beneath your boots as you disembark.

Above, faint echoing footsteps betray unseen watchers. The air is close here—wet with the breath of the cavern—and every sound seems to linger too long.

A makeshift checkpoint looms at the quay’s end: a tangle of rope barriers, stacked crates, and a poorly concealed lookout post. Hooded figures lean in the dim, torch-flickered gloom, arms folded, and intent not on greeting—but gauging your worth.

Here, passage is earned with coin… or blood.

**OpenArt.ai Prompt:**  
`fantasy underground lake dock at night, crumbling stone quay and wooden pier lit by torchlight, hooded figures waiting near crates and shadows, tense atmosphere, mysterious and dangerous, cavern walls fade into darkness, high detail, no text`

---

### **Hex 15: The Vaultrun Span**

**Brief:** Collapsed leyline transport route—part natural tunnel, part broken arcane infrastructure.

**Cinematic:**  
Beyond the checkpoint, the path narrows into a strange corridor of fused stone and shattered glass. A long-dead leyline tram once ran here, its skeletal track now twisted and half-submerged in stagnant mineral pools.

Arcane glyphs flicker faintly along cracked pillars, occasionally surging as unseen energy pulses nearby. Mushrooms pulse with dull, erratic light, and the path winds through echoing chambers warped by planar bleed.

The air hums here—faint and irregular—like the breath of something sleeping deep within the stone.

Abandoned supply crates rest beneath chalk marks in an old smuggler’s cipher. Some have been emptied. Others… wait to be opened.

**OpenArt.ai Prompt:**  
`underground fantasy tunnel with shattered arcane transport rails and glowing glyph pillars, mushrooms emitting soft light, eerie and forgotten atmosphere, planar bleed effects distorting stone walls, cavernous path, high detail, no sky, no text`

---

### **Hex 16: Daggerfall Hollow**

**Brief:** Fortified Deep Dark township—twilight-lit enclave of paranoia and quiet power.

**Cinematic:**  
The first lights of [[Daggerfall Hollow]] are not lanterns but ward-flares—sigils that blink awake as you approach.

Carved into the walls of a vast, jagged cavern, the settlement rises in tiers: stone terraces, rope bridges, and barricaded streets lit with cold blue flame. Massive stalactites hang overhead like teeth, some hollowed out to house outposts or shrines.

Silent patrols in mirrored helms move in clockwork circuits, and haggard locals glance up only briefly as you pass. Eyes linger in shadows. Rumors drift like dust.

Every alley seems to whisper, _“We remember what the surface forgot.”_

**OpenArt.ai Prompt:**  
`dark fantasy underground town carved into cavern walls, torchlit rope bridges and tiered stone streets, glowing blue ward-lights and stalactites overhead, eerie patrols and watchful shadows, quiet and paranoid mood, no sky, highly detailed`
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

### Quick References

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



### Loot, Rewards & Purchases



## Post
### New Creations



### Detailed Notes from Transcript and VTT Log


