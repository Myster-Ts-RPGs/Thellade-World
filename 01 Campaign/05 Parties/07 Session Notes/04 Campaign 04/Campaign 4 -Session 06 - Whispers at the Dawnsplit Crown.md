---
tags:
  - "#SessionNote"
  - "#TODO"
  - "#Group4"
actual_allies:
  - "[[Elandor]]"
actual_enemies: []
actual_factions: []
actual_locations:
  - "[[01 Campaign/01 World/08 Points of Interest/04 Temple or Shrine/Lunara/Sanctum of the Dawnsplit Crown.md|Sanctum of the Dawnsplit Crown]]"
whichparty: "[[Campaign Group 4]]"
sessionnumber: "06"
title: |
  Whispers at the Dawnsplit Crown
in_game_start: 04 Dawnmarch 212 PR 10:00
in_game_end: ""
sessiondate: 2025-05-15
group:
  - Group 4
present:
  - "[[Pole Zulidos]]"
  - "[[Nylkar]]"
  - "[[Malleth Yellowbirch]]"
  - "[[Jesher]]"
encounters:
  - "[[The Herald's Judgement]]"
absent:
  - "[[Thorak Stonefist]]"
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
> **Present** | `INPUT[inlineListSuggester(optionQuery(#Player AND #Group4 AND !"z_Templates"), useLinks(partial)):present]`|
> **Absent** | `INPUT[inlineListSuggester(optionQuery(#Player AND #Group4 AND !"z_Templates"), useLinks(partial)):absent]`|
> ###### Actual Info 
>  |
> ---|---|
> **Encounter(s)**| `INPUT[inlineListSuggester(optionQuery(#Encounter AND #Group4 AND !"z_Templates"), useLinks(partial)):encounters]`
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
> - Opening location: Sanctum of the Dawnsplit Crown – Radiant Reflection Chamber  
> - Immediate hook: The sanctum begins to destabilize as Herald Elandor appears, half-phased in fading light  
> - First conflict: Social skill challenge to earn Elandor’s blessing and access to the sealed sanctum heart before it vanishes into stasis again

---

### 🛤️ Possible Paths
- [x] 3–5 likely directions noted
- [x] Player goals cross-checked
- [x] Open-world consequences updated

> [!note|toggle]+ Possible Paths Details
> 1. Pass Elandor’s judgment and descend into the Sealed Reliquary  
> 2. Fail or refuse the Herald—sanctum locks down, pushing the party back into Jambito  
> 3. Investigate the shattered beacon node in the lower sanctum  
> 4. Attempt to recover Veltrazhar’s true name via mirror-binding  
> 5. Commune with Aurion’s fading presence for a personal vision or boon

---

### 🧱 Key Scenes
- [x] At least 3 prepared set-piece scenes
- [x] Flexible transitions noted
- [x] Adjusted for expected player choices

> [!note|toggle]+ Scenes
> 1. The Radiant Chamber and the appearance of Herald Elandor (Social encounter + tension from the unstable sanctum)  
> 2. The Herald’s Judgement – Multi-round skill challenge with social, divine, and metaphysical implications  
> 3. The Dawnsplit Vault – A temporal echo chamber showing the original binding pact of Aurion and Asmodeus  
> 4. Consequence of success/failure: either access to the Sealed Reliquary or ejection back to Jambito  
> 5. Optional side scene: one PC is shown a private prophetic vision from Aurion (customized later if selected)

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
> 1. Aurion’s Emberfilament (Rare)  
> 2. Spellstrike Scarab (Uncommon)  
> 3. Mirror Warded Pendant (Uncommon)  
> 4. Sunlight Diadem, Cleansing Flame Oil x2 (Common)  
> 5. Spellbook: Blessing of the Dawn, Sun’s Refuge, Litany Against Shadows

---

### 🔥 Secrets and Clues
- [x] 10 secret facts, rumors, or hooks prepared
- [x] Connect to player backstories if possible

> [!note|toggle]+ Secrets List
> 1. The original beacon network was built on shared divine pacts—Aurion and Asmodeus cooperated once.  
> 2. Veltrazhar’s name was fractured into three echo-fragments, scattered across Thellade.  
> 3. Elandor remained bound here by choice to delay the sanctum’s collapse.  
> 4. A member of the Eternal Concord knows this sanctum is awakening, and they fear what truths it may reveal.  
> 5. Aurion’s power is fading, and his voice is harder to hear since the last seal failure.  
> 6. If Veltrazhar’s true name is spoken in full, he may be rebounded—or empowered.  
> 7. The Maw’s corruption is spreading below the sanctum, even if the seal is restored.  
> 8. The party’s arrival was prophesied—sort of. Elandor has seen them in fractured visions.  
> 9. One party member’s presence disrupts the echo-stabilization—they may be tied to Veltrazhar.  
> 10. The Sanctum of the Dawnsplit Crown has been accessed once before since the Rising… but that visitor never left.

---

### 🧹 Cleanup Tasks
- [x] Last session notes reviewed
- [x] Player downtime activities processed
- [x] World events updated (politics, factions)

---

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


