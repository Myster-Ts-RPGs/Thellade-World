---
tags:
  - "#SessionNote"
  - "#TODO"
  - "#Group1"
actual_allies: []
actual_enemies: []
actual_factions: []
actual_locations: []
whichparty: "[[Campaign Group 1]]"
sessionnumber: "07"
title: |
  The Vault of Memory
in_game_start: 01 Dawnmarch 212 PR 09:35
in_game_start_short: 212.01.07 09:35
in_game_end: ""
in_game_end_short: 
sessiondate: 2026-05-12
group:
  - Group 1
present:
  - "[[Vezer]]"
  - "[[Rickter Stone]]"
  - "[[Ferrek Anvilbreaker]]"
  - "[[Felzik]]"
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
> **In-Game Start Short**|`INPUT[text:in_game_start_short]`|
> **In-Game End** |`INPUT[text:in_game_end]`|
> **In-Game End Short**|`INPUT[text:in_game_end_short]`|
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
#  `=link(this.whichparty) + " - Session " + this.sessionnumber + " - " + this.title`

## 📋 Session Prep Checklist

### 🧭 Strong Start
- [x] Opening scene prepared  
- [x] Immediate hook for players  
- [x] Clear problem or mystery introduced  

> [!note|toggle]+ Strong Start Details  
> - **Opening location**: Nexus, a planar cruciform platform floating in leyline-saturated void  
> - **Immediate hook**: One of the four divine pillars is unlit—threatening to collapse the binding  
> - **First conflict**: Investigating the southern pylon teleports the party into a decayed fungal ruin where abyssal creatures await  


### 🛤️ Possible Paths
- [x] 3–5 likely directions noted  
- [x] Player goals cross-checked  
- [x] Open-world consequences updated  

> [!note|toggle]+ Possible Paths Details  
> 1. Successfully recover the sigil and restore the Nexus pillar  
> 2. Fail to complete the encounter in 10 rounds—second binding begins to fail  
> 3. Tem summons the Spirit of Solvane to save the party  
> 4. Party returns and is arrested by Baelgrim Tarsk  
> 5. Party clears themselves and learns Broshun Tell is tracking leyline disruptions  


### 🧱 Key Scenes
- [x] At least 3 prepared set-piece scenes  
- [x] Flexible transitions noted  
- [x] Adjusted for expected player choices  

> [!note|toggle]+ Scenes  
> 1. Arrival in the Nexus and inspection of divine pylons  
> 2. Battle within the fungal ruin against Aartuk Starhorror and Maw Demons  
> 3. Optional summoning of Solvane's spirit during crisis  
> 4. Sudden return to the Blackwater Chapel ruins  
> 5. Social encounter with town guards and city leadership  


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
> 1. Divine Sigil of Solvane (required for pylon reactivation)  
> 2. Ember-fractured crystal (spellcasting focus, rare variant)  
> 3. Notes on Xal’Zul’s split binding (from Solvane’s dialogue)  
> 4. Town favor from Broshun Tell (if successful)  
> 5. Incriminating evidence against the Rootcoil Smuggler Cell (if arrested)

---

### 🔥 Secrets and Clues
- [x] 10 secret facts, rumors, or hooks prepared  
- [x] Connect to player backstories if possible  

> [!note|toggle]+ Secrets List  
> 1. The Nexus was constructed from fragmented divine memory  
> 2. The Mouth beneath Blackwater Crossing is only 1 of 4  
> 3. Solvane’s spirit can only manifest while Aurion’s flame persists  
> 4. One sigil was stolen before the Rising—its bearer was never found  
> 5. Broshun Tell is a secret contact for the Sable Accord  
> 6. The fungal ruin was a Pre-Rising observation node for celestial breach study  
> 7. Rellik, Vissra, and Scraps were targeted by Rootcoil to cover their tracks  
> 8. Maw Demons are scouts—greater horrors lurk deeper in the Deep Dark  
> 9. Xal’Zul’s binding weakened each time a pillar dims  
> 10. Tem’s branded left hand resonates when within 50 feet of a failing seal  

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
- The party did not travel between major settlements this session. Instead, they transitioned from a celestial pocket realm (Nexus) to a fungal demiplane and then back to Blackwater Crossing via divine recall.
- A short rest opportunity occurred after returning to the surface before facing the city guards.

---

### Loot, Rewards & Purchases
- **Ember-Fractured Crystal**: A divine-etched crystal that resonates with binding energy and abyssal corruption.
- **Sigil of False Receipt**: An enchanted badge used by the Rootcoil Smuggler Cell, with abilities to falsify courier records and bypass arcane wards.
- **Vial of Green Soil**: Unnatural dirt sample collected from crime scene—non-native to chapel grounds.
- **Folded Vein Map** and **Deep Dark Route Chart**: Ancient navigation references tied to leyline routes and side paths, including locations like Sundershade Rift and The Seep.
- **Enchanted Courier Guild Pin**: Allows for forged delivery logs, locating leyline anchors, and limited disguise.

---

## Post

### New Creations
- **Rootcoil Courier Cell**: A sub-faction of the Black Sepulcher masquerading as courier agents.
- **Duskfall Incident Reference**: A prior failed containment involving leyline movement, now echoed in current operations.
- **Sigil of False Receipt** entry for use as a magic item in Obsidian.
- **Ember-Fractured Crystal** item file.
- **Visual Illusions and Vision Constructs** summoned by Felzik confirmed to be canon, including projection of attacker’s appearance and cultist chant.

---

### Detailed Notes from Transcript and VTT Log
- The party began within the **Nexus**, a planar convergence point beneath the ruined chapel. One of four pillars was dark. Investigating led to a **teleportation to a fungal ruin**.
- **Combat**: An **Aartuk Starhorror** and two **Maw Demons** attacked. Multiple spell combinations and attacks were used (Fire Bolt, Eldritch Blast, Hex, Guiding Bolt, Warhammer, and Toll the Dead).
- The **Spirit of Solvane** appeared mid-battle, delivering the divine sigil needed to reignite the dormant nexus pylon.
- Upon return to the surface, **Commander Baelgrim Tarsk** and **Teller Broshun Tell** confronted the group over the **deaths of Scraps, Rellik, and Vissra**.
- Players invoked investigative rights to search for clues.
- **Arcana/Religion/Insight/Survival checks** confirmed the ritual at the murder site matched **Orcus-linked sacrificial rites**, not divine reinforcement.
- **Key discoveries**:
  - A **burned parchment**: "They saw too much—move the beacon, then burn the route. Duskfall repeats."
  - A **broken chalice mark** (Black Sepulcher) branded on the neck of a victim.
  - **Green soil** on corpses was **not native** to the surrounding area.
  - **Summoning circle** in root-and-bone residue found near bodies.
  - **Spiral of blood**—indicative of cultic invocation.
- Felzik identified the **Sigil of False Receipt** enchantment, including its psionic proximity alert near leyline anchors.
- **Marnie of the Mycelium** was found to be mentally tampered with by a compulsion spell. Felzik and Ferrek helped clear her mind and gathered useful testimony.
- Vision shared: **A chant tied to Xal’Zul’s mouths** and a false beacon movement order.
- Party now holds evidence of a **Rootcoil smuggling ring using forged courier identities** and redirected beacon fragments.
