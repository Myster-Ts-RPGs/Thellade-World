---
tags:
  - "#SessionNote"
  - "#TODO"
  - "#Group2"
actual_allies:
  - "[[Elandor]]"
actual_enemies: []
actual_factions: []
actual_locations: []
whichparty: "[[Campaign Group 2]]"
sessionnumber: "07"
title: The Light that Remains
in_game_start: 03 Dawnmarch 212 PR 09:41
in_game_end: ""
sessiondate: 2025-05-12
group:
  - Group 2
present:
  - "[[Tyra Scarlet]]"
  - "[[Kieran Quilana]]"
  - "[[Elanor]]"
  - "[[Antumbra]]"
  - "[[Crom Kahn]]"
encounters:
  - "[[01 Campaign/05 Parties/08 Encounters/Group 2/The Herald's Judgement]]"
absent:
  - "[[Korag]]"
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
> **Present** | `INPUT[inlineListSuggester(optionQuery(#Player AND #Group2 AND !"z_Templates"), useLinks(partial)):present]`|
> **Absent** | `INPUT[inlineListSuggester(optionQuery(#Player AND #Group2 AND !"z_Templates"), useLinks(partial)):absent]`|
> ###### Actual Info 
>  |
> ---|---|
> **Encounter(s)**| `INPUT[inlineListSuggester(optionQuery(#Encounter AND #Group2 AND !"z_Templates"), useLinks(partial)):encounters]`
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
> - Opening location: [[Sanctum of the Dawnsplit Crown]]
> - Immediate hook: The party awakens amidst golden mist and floating ruins, disoriented but miraculously alive after Husāra’s sacrifice.
> - First conflict: Understanding the nature of this divine place—why they were spared, what this sanctum is, and what remnants of Azael’s influence may linger.

---

### 🛤️ Possible Paths
- [x] 3–5 likely directions noted  
- [x] Player goals cross-checked  
- [x] Open-world consequences updated  

> [!note|toggle]+ Possible Paths Details
> 1. Investigate the temple and its relics—including the Dawnsplit Oculus and Memory Choir Vault  
> 2. Attempt a divine ritual to gain a boon or commune with High Herald Elandor  
> 3. Trace possible leylines or divine harmonics from the sanctum to other sealed locations  
> 4. Return to Lambaro via magical recall or divine vision  
> 5. Make contact with Thalia, Dr. Aruni, or excavation leadership from afar  

---

### 🧱 Key Scenes
- [x] At least 3 prepared set-piece scenes  
- [x] Flexible transitions noted  
- [x] Adjusted for expected player choices  

> [!note|toggle]+ Scenes
> 1. Party awakens within the veiled Sanctum—explores semi-corporeal architecture and relic echoes  
> 2. Divine vision sequences tied to Aurion’s final rites and the Emberfold Veil  
> 3. Spectral memory of High Herald Elandor reveals a warning about the seals and the spread of Abyssal corruption  
> 4. Player receives a minor divine boon or cryptic foresight  
> 5. Optional mini-ritual event: channeling Dawnsplit Flamefont to glimpse future or cleanse corruption  

---

### 🏰 Locations
- [x] Key locations updated in Obsidian  
- [x] Visual aids or maps ready if needed  
- [x] Environmental details or quirks listed  
- [x] Location YAMLs linked in Session Note  

---

### ⚔️ Encounters
- [ ] Encounters sketched out  
- [ ] Social encounters outlined  
- [ ] Skill challenges or chase mechanics prepped  
- [ ] Encounter YAMLs linked in Session Note  

---

### 🎲 Treasure and Rewards
- [x] Loot ideas or magic items brainstormed  
- [x] Milestone markers ready  
- [x] Roleplay / social rewards considered  

> [!note|toggle]+ Loot/Treasure
> 1. Minor Divine Boon: Temporary resistance to necrotic damage  
> 2. Sanctified Moonstone from the choir vault  
> 3. Dawn-kissed relic tied to Husāra’s essence (used for a resurrection attempt later?)  
> 4. Temporary access to the Dawnsplit Flamefont (healing/divine recharge)  
> 5. Whispered Prophecy Fragment (tied to next divine seal location)  

---

### 🔥 Secrets and Clues
- [x] 10 secret facts, rumors, or hooks prepared  
- [x] Connect to player backstories if possible  

> [!note|toggle]+ Secrets List
> 1. Aurion’s priests deliberately sealed this place out of time to prevent abyssal contamination  
> 2. The Emberfold Veil allows memories to “echo” forward, enabling the visions  
> 3. Azael knows this temple still exists and may soon send forces to desecrate it  
> 4. One of Orcus’ other lieutenants (possibly Veltrazhar or Xal’Zul) is chained beneath a mirrored sanctum  
> 5. Kieran’s bloodline may resonate with some of the sigils found here  
> 6. Korag’s elemental powers pulse near the Dawnsplit Flamefont—hinting at a past connection  
> 7. The Choir Vault contains a voice that speaks in multiple names, suggesting a divine fracture  
> 8. The cracked oculus may align during a lunar eclipse—revealing a portal  
> 9. One mural inverts Aurion’s crown—possibly a heretical sect of sun worshippers  
> 10. A sealed relic beneath the altar is missing—someone else has been here recently  

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
- Transported through divine intervention to the time-locked sanctuary of Aurion.
- No conventional travel or rest occurred; party awoke healed after unconscious arrival.
- Time suspended; no natural fatigue or food/water requirements noted in the sanctum.

### Loot, Rewards & Purchases
- **Tyra Scarlet**: Greatsword upgraded to a **+1 Dawn Silver Greatsword**, glows with radiant light, emits daylight on command. Especially effective against undead and light-sensitive foes.
- **Elanor**: Receives **Lightbearer’s Cloak (Lvl 4, Common)** – grants advantage (GM interpretation) on saves against darkness/shadow effects.
- **Crom Kahn**: Gifted a **Chrono Crystal (Lvl 2, Uncommon)** – allows casting *Haste* once per rest/refocus.
- **Korag**: Given a **Sunfire Talisman (Lvl 2, Common)** – deals additional fire damage on hit.
- **Antumbra**: Receives **Radiant Bracers (Lvl 3, Uncommon)** – resist 5 necrotic/void, 1/day burst of sunlight (also blinds).
- **Kieran Quilana**: Instrument imbued with radiant magic – improves future Performance/Bardic checks.

## Post
### New Creations
- Party now branded with hidden divine sigils from Aron, Lunara, and Velessa.
- These divine marks allow travel through time barriers and signal party as “beacons of hope.”
- Heroic Items distributed directly reflect each character’s potential role in upcoming conflicts.

### Detailed Notes from Transcript and VTT Log
- Session opens with cinematic reintroduction to the *Time-Locked Temple of Aurion*.
- Party recovers from last session’s combat and is healed by **Herald Elanor**, the final timebound cleric of Aurion.
- Two new characters—**Antumbra** and **Elanor (PC)**—are revealed to have also been summoned by the sanctum.
- The Herald explains the *sanctum lies outside of time*, existing as a safe haven from the Abyssal threat.
- A **social encounter** unfolds where the Herald evaluates whether each PC is worthy of divine knowledge:
  - All six PCs succeed through narrative skills: performance, stealth, athletics, religion, medicine, thievery.
- Upon proving themselves, the Herald recounts:
  - **The Rising**, the arrival of interplanar refugees, and the multi-god effort to seal the Abyssal Lieutenants.
  - The trade with Asmodeus: magic for containment.
  - The slow collapse of seals now threatens Thellade.
  - Six lieutenants confirmed either *released* or *still bound*:
    - **Veltrazhar (Jambito)** – released
    - **Azael (Lambaro)** – released
    - **Threxul (Seaside Cape)** – released
    - **Goriath** – rebound, but still dangerous
    - **Zal’Zul, Choir of Worms** – fragmented into seven Mouths, some now failing.
- The Herald warns that if 3–4 of Xal’Zul’s Mouths fall, a cascade collapse will follow.
- The gods have marked the party as chosen to aid in these battles.
- Final exchange includes party deciding **to return to the Radiant Temple in Kanda**, under **Sister Seralyne Vireth** of the Dawnbringers of Lunara.
- Kieran remains with the party, apparently shaken but committed to following this path.
- Final moment: the party is branded with divine sigils and teleported back to the material plane—to Kanda.


