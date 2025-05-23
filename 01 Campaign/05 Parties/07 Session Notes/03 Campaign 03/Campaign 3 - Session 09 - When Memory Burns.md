---
tags:
  - "#SessionNote"
  - "#TODO"
  - "#Group3"
actual_allies:
  - "[[Zareth Korrath]]"
  - "[[Kraya Feldrum]]"
actual_enemies: []
actual_factions:
  - "[[The Ashen Vanguard]]"
  - "[[The Black Sepulcher]]"
actual_locations:
  - "[[01 Campaign/01 World/07 Districts/Mangagoy/Ashgate Market.md|Ashgate Market]]"
  - "[[01 Campaign/01 World/07 Districts/Mangagoy/Highhold Rise.md|Highhold Rise]]"
  - "[[01 Campaign/01 World/08 Points of Interest/05 Government/Outcast Isles/Mangagoy Isles/Mangagoy/Mangagoy City Hall.md|Mangagoy City Hall]]"
  - "[[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy.md|Mangagoy]]"
whichparty: "[[Campaign Group 3]]"
sessionnumber: "09"
title: |
  When Memory Burns
in_game_start: 04 Dawnmarch 212PR 09:23
in_game_end: 0212.01.04 PR 09:23
sessiondate: 2025-05-14
group:
  - Group 3
present:
  - "[[Tian Ling]]"
  - "[[Kothar]]"
  - "[[Ephi]]"
  - "[[Hans Dane]]"
  - "[[Karnak]]"
  - "[[Batrok]]"
encounters:
  - "[[Embermoon Surge]]"
  - "[[The Silent Edict]]"
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
> - Opening location: [[Ashgate Market]], Mangagoy  
> - Immediate hook: The Embermoon surges—sigils unravel, screams echo, and the party awakens to chaos.  
> - First conflict: Riot breaks out near City Hall; divine wards flicker, and a leyline beacon pulses dangerously beneath the streets.

### 🛤️ Possible Paths
- [x] 3–5 likely directions noted
- [x] Player goals cross-checked
- [x] Open-world consequences updated

> [!note|toggle]+ Possible Paths Details
> 1. Navigate or neutralize the Embermoon Surge Riots skill challenge en route to City Hall  
> 2. Confront or defend a corrupted noble attempting to silence witnesses (Kelthorne agent at market square)  
> 3. Follow leads on Holin Barsh and the medallion’s resonance during the surge  
> 4. Investigate a leyline rupture site behind the House of Healing  
> 5. Rescue civilians trapped beneath collapsing causeways in the [[Glowquarter]]

### 🧱 Key Scenes
- [x] At least 3 prepared set-piece scenes
- [x] Flexible transitions noted
- [x] Adjusted for expected player choices

> [!note|toggle]+ Scenes
> 1. Embermoon Surge Riots skill challenge (waves of chaos, crowd control, divine backlash)  
> 2. Interception by a cloaked Kelthorne agent seeking to eliminate a market informant  
> 3. Magical resonance event at Holin Barsh’s forge as the medallion pulses near a leyline spike  
> 4. Collapse of the old causeway—opportunity for heroism or horror as wormsign erupts from below  
> 5. Arrival at City Hall during emergency lockdown, possibly too late to stop infiltration

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
> 1. Cracked resonance crystal pulled from leyline disruption  
> 2. Message scroll half-burned from Embermoon flare—coordinates to a beacon vault  
> 3. Civic commendation token from City Hall (if civilians are rescued)  
> 4. Folded note from Kelthorne's agent—names and addresses for “cleansing”  
> 5. Religious ward-shard with unstable minor boon (1/day reroll Religion)

### 🔥 Secrets and Clues
- [x] 10 secret facts, rumors, or hooks prepared
- [x] Connect to player backstories if possible

> [!note|toggle]+ Secrets List
> 1. Holin Barsh has begun hearing whispers from the medallion—not in his voice  
> 2. The red-robed stranger was seen again—watching the riots from a rooftop  
> 3. The Choir of Worms may not need a full seal broken to manifest  
> 4. Kellen Brasque has sold another “binding echo” relic and doesn’t realize it  
> 5. Kelthorne has eyes within City Hall—Zareth may be under surveillance  
> 6. The Beacon beneath the House of Healing is growing unstable, not stabilized  
> 7. Warvan-son’s spirit briefly flared during the last surge—Hans may glimpse him again  
> 8. A known Asmodean artifact was removed from the temple vault the day before the riot  
> 9. The leyline pulse is “singing” a name backwards—Zorvithrax  
> 10. Someone in the Glowquarter is building a resonance cage—using stolen divine materials

### 🧹 Cleanup Tasks
- [x] Last session notes reviewed
- [x] Player downtime activities processed
- [x] World events updated (politics, factions)

### 📖 Session Structure
- [x] Intro → Exploration → Conflict → Resolution flow sketched
- [x] Planned session "end scenes" ready

### Quick References
- Hans’ Medallion location: [[The Rivet & Rune]]
- Beacon Status: Unstable but flaring—tied to Xal’Zul’s fourth seal
- Zareth’s meeting location: [[Temple of Aurion and Lunara]] (pre-surge)
- Current Date: 04 Dawnmarch 212 PR
- Moon Phase: Embermoon Full, Deimos Waning Crescent

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
>> FROM "01 Campaign" 
>> FLATTEN actual_allies AS ally
>> WHERE file.name = this.file.name
>> SORT ally
>> ```
>
>> [!metadata|characters] Other Enemies
>> ```dataview
>> TABLE WITHOUT ID enemy AS "Enemies"
>> FROM "01 Campaign" 
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

## During
### Events
- The party navigated through the **Embermoon Surge Riots**, a five-stage escalating skill challenge tied to the failing beacon in [[Highhold Rise]].
- Key locations impacted: the Radiant Path, [[Ashgate Market]], the Eastern Stair, beacon vaults near the Temple of Aurion, and the front of [[City Hall]].
- Players interacted with Sunwarden [[Zareth Korrath]] and Commander [[Kraya Feldrum]] during the crisis response.
- A corrupted fragment of the **Fourth Binding Beacon** leaked arcane power into the streets, prompting a divine-arcane clash and the emergence of hostile forces.
- Party engaged in a climactic combat against agents of the [[Black Sepulcher (Cult of Orcus)]], including a **Glyphbearer Agent**, **Memory Hound**, and multiple **Cutthroats**.

### Quick References
- **Date:** 04 Dawnmarch 212 PR
- **Beacon Disturbance:** Fourth Beacon (Temple of Aurion, [[Highhold Rise]])
- **Notable Enemies:** Glyphbearer Agent, Memory Hound, Cult Cutthroats
- **Allies:** Commander [[Kraya Feldrum]], Sunwarden [[Zareth Korrath]], Lunair
- **Hero Point:** Granted for next Divine/Occult encounter
- **Ashen Vanguard Favor:** +1 on Diplomacy/Request checks (7 days)

### Travel & Rest
- No overland travel occurred.
- All events took place in the city of [[Mangagoy]] across multiple district zones.
- Following the beacon breach, rest was interrupted and deferred.

### Loot, Rewards & Purchases
- **Runebound Ember Locket** (taken by [[Ephi]]):  
  - **Effect:** 1/day Reaction. When targeted by a spell/hazard, gain Fire Resist 5, +1 status vs arcane/occult spells, attacker becomes Flat-Footed.
- **Ashen Vanguard Pins** (claimed by all party members):  
  - Symbol of temporary field authority in Mangagoy.
- **Sigil Ribbons** (stored in party stash):  
  - **Effect:** Grants 1 hour immunity to divination & magical observation; requires DC 18 flat check to target wearer.
- **Folded Letter** and **Burned Map** recovered from Glyphbearer Agent (Kothar → Tian Ling).
- **Miscellaneous Gear:** Leather Armor, Crossbow (Hans), Mace (Karnak).

## Post
### New Creations
- **Sigil Lock**: A divine spell used by Glyphbearer Agents to manipulate terrain via arcane geometry.
- **Churning Gaze**: An aura-based effect from Memory Hound inducing the Sickened condition via haunting whispers.
- **Crystallized Sigil**: A ranged divine spell causing piercing and force damage with backlash to undead/constructs.
- **Sigil Ribbons**: Unique magical item created from Pre-Rising vestments and void sigils.

### Detailed Notes from Transcript and VTT Log
- The five-stage skill challenge included:
  - **Stage 1 – Cracks in the Radiant Path:** PCs avoided divine flare ruptures and falling debris. (Skills: Athletics, Acrobatics, Religion, Diplomacy)
  - **Stage 2 – Riotlines in the Market:** The party intervened in chaos at Ashgate Market, protecting Emberheart supplies. (Skills: Deception, Intimidation, Thievery, Crafting)
  - **Stage 3 – Collapse on the Eastern Stair:** Structural failures endangered ascent toward Highhold Rise. (Skills: Nature, Athletics, Stealth, Society)
  - **Stage 4 – Beacon Breach:** Magical fallout from the fourth beacon corrupted surroundings and civilians. (Skills: Arcana, Medicine, Performance, Survival)
  - **Stage 5 – Hall of Shattered Oaths:** Combat broke out at City Hall. (Skills: Intimidation, Occultism, Athletics, Arcana)
- Combat followed involving:
  - **Cutthroats:** Used Deception and precision strikes.
  - **Memory Hound:** Aura of Churning Gaze caused sickness; used mental damage and concealment.
  - **Glyphbearer Agent:** Cast **Sigil Lock**, **Sigil Restoration**, and **Crystallized Sigil**; healed self and obstructed terrain.
- [[Ephi]] landed critical slashing hits; [[Batrok]] used varied ammunition types including Electricity and Ooze; [[Tian Ling]] employed cold-damage strikes.
- [[Hans Dane]] used Force Barrage and healing; [[Kothar]] delivered divine healing and Needle Darts (Cold Iron).
- Successful Recall Knowledge checks on enemy abilities were made using Lore: Engineering and Occultism.



