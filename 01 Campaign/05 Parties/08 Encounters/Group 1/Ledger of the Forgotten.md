---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group1"
whichparty: "[[Campaign Group 1]]"
encountertype:
  - Investigation
enemies:
  - "[[Vaust Hadrinel]]"
  - "[[Sella Grint]]"
  - "[[Revek Thorne]]"
factions:
  - "[[The Rootcoil Smugglers]]"
locations:
  - "[[01 Campaign/01 World/06 Settlements/The Veins of Night/Shadowthread Warrens/Blackwater Crossing.md|Blackwater Crossing]]"
  - "[[01 Campaign/01 World/06 Settlements/The Veins of Night/Shadowthread Warrens/Daggerfall Hollow.md|Daggerfall Hollow]]"
  - "[[01 Campaign/01 World/08 Points of Interest/05 Government/The Veins of Night/Shadowthread Warrens/Blackwater Crossing/East Gate Transfer Station.md|East Gate Transfer Station]]"
  - "[[01 Campaign/01 World/08 Points of Interest/10 Infrastructure/The Veins of Night/Shadowthread Warrens/Blackwater Crossing/Courier Registry.md|Courier Registry]]"
sessionnumber: "08"
title: Ledger of the Forgotten
allies:
  - "[[Yonnic Brade]]"
---
> [!infobox]+
> # Summary Information
>  |
> ---|---|
> **Session Number** | `INPUT[text:sessionnumber]`|
> **Title**|`INPUT[textArea:title]`|
> **Encounter Type(s)**|`INPUT[EncounterType][inlineListSuggester:encountertype]` |
> **Allies Planned** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):allies]` |
> **Enemies Planned** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):enemies]` |
> **Factions Planned**|`INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):factions]` |
> **Locations Planned** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates")):locations]` |

# Encounter  Overview
[[Campaign Group 1]] - Session 08 -  Ledger of the Forgotten

## Encounter-Specific Info
> [!info]- **Investigation/Mystery Encounter Details**
> - **Scene Description:**  
>   With initial evidence secured and the sigil rituals confirmed, the party is granted access to confiscated courier archives and allowed to question surviving guild staff under Broshun Tell’s authority. Within the courier registry and adjoining stable yard, the party must dig deeper into Rootcoil logistics. Spore traces, glyph-burnt account ledgers, and corrupted psionic bindings hint at a far broader smuggling operation. Signs point toward tampered delivery routes and an erased manifest leading east—toward [[Daggerfall Hollow]].
>
> - **Clues Available:**  
>   1. **Falsified Courier Ledger (Page Fragment)**  
>      Hidden inside a hollow desk leg. Manifest lists a shipment labeled "Shroudglass—For Ministry Use Only." Arcana or History (DC 16) reveals the material is used in leyline occlusion rituals.  
>   
>   2. **Courier Bridle Tag (Modified)**  
>      Found in the stable under a false name. Mismatched sigil loop contains a glyph tuned to the leyline fork at the edge of the Deep Dark. Detect Magic (DC 14) or Arcana (DC 15) confirms it’s been altered to bypass arcane wards.  
>   
>   3. **Sigil Sync Residue (Temporal)**  
>      A resonance echo near the east gate shows two sigils were triggered within seconds of one another—suggesting a decoy or relay. Arcana (DC 17) or Investigation (DC 15) required to isolate the correct track.  
>   
>   4. **Witness: Yonnic Brade (Courier Archivist, Half-blind)**  
>      Saw “Dornal Syle” hand off a sealed parcel to a second courier—female, heavy boots, fungal scent. Can describe her boots (leather scaled with root patterns) and recall the phrase: “Black echo guides the weight.”  
>   
>   5. **Rot-Stained Handkerchief**  
>      Dropped behind the stable. Survival (DC 13) reveals recent fungal growth consistent with the tunnels below [[Shadewarren Outpost]]. Residue glows under faelight.  
>   
>   6. **Old Map Scroll: The Coiled Vein Route**  
>      Found buried behind a loose panel in the ledger room, this document shows leyline drift predictions between [[Blackwater Crossing]] and [[Daggerfall Hollow]], passing through unmapped tunnels. Hidden in the margin: “R.T. to V.H.: one more drift and we risk splitting the anchor—move it fast.” (Insight or Decipher Script DC 14)
>
> - **Skill Checks for Discoveries:**  
>   - Arcana (DC 14–17): Analyze glyph sync echoes, recognize altered sigils.  
>   - History (DC 16): Identify “Shroudglass” as a ritual suppressant tied to old Beacon design.  
>   - Survival (DC 13): Trace rot-stain and fungi to Deep Dark tunnel mouth.  
>   - Insight (DC 12+): Detect lying or stress in witness interviews.  
>   - Decipher Script or Investigation (DC 14–15): Extract usable data from the Coiled Vein Map.  
>   - Diplomacy or Deception (DC 15): Get the archivist to admit he was bribed to delay records.
>
> - **False Leads or Red Herrings:**  
>   - A second courier falsely claims to have taken the parcel to the Verdant Crown. Investigation reveals it was a misread delivery slip.  
>   - A "mirror" ledger entry showing Syle’s departure is forged by someone trying to avoid internal suspicion—party may chase a false target unless they compare timestamps.  
>   - Witness "hearing voices" in the stables is actually recalling leftover echo residue from a glyph-triggered memory seed.
>
> - **Final Objective (Find Killer, Recover Item, Solve Puzzle):**  
>   Confirm that the Rootcoil operation was part of a **multi-layered beacon reroute and decoy transfer**, involving a second smuggler (likely [[Sella Grint]]) and the deliberate use of “black echo” leyline forks to shroud their destination. The clues converge to narrow their pursuit toward [[Daggerfall Hollow]]—and potentially a hidden relay point below [[Shadewarren Outpost]].

---

## Quick References

- **Relevant NPCs:**  
  - [[Vaust Hadrinel]] – Impostor who initiated the glyph trail  
  - [[Yonnic Brade]] – Courier archivist, saw second operative  
  - [[Sella Grint]] – Probable secondary handler of the parcel  
  - [[Revek Thorne]] – Referenced in marginalia as "R.T."

- **Key Locations:**  
  - [[Courier Registry]] [[Blackwater Crossing]]  
  - [[East Gate Transfer Station]]  [[Blackwater Crossing]]  
  - [[Shadewarren Outpost]] tunnels (implied route)  
  - [[Daggerfall Hollow]] – final relay point

- **Artifacts & Clues:**  
  - Coiled Vein Route map (hidden chart)  
  - Shroudglass manifest fragment  
  - Modified bridle tag with leyline glyph  
  - Psionic echo residue from sigil transfer  
  - Rot-stained handkerchief (fungal evidence)


## Quick References

> [!column|2 no-title]
>> [!metadata|characters] Allies
>> `VIEW[{allies}][link]`
>
>> [!metadata|characters] Enemies
>> `VIEW[{enemies}][link]`
>
>> [!metadata|organizations] Factions
>> `VIEW[{factions}][link]`
>
>> [!metadata|location] Locations
>> `VIEW[{locations}][link]`

|Item|Description|Price|
|---|---|---|
|**Verdant Numbroot Paste**|Applied to wounds; numbs pain and slows bleeding (Stabilize + advantage on next death save)|20 gp|
|**Sporeveil Tea (Mild)**|Induces calm and visual haze; disadvantage on Insight, advantage on resisting fear|15 gp|
|**Glowcap Ink**|Faintly luminous; used for hidden messages visible only under faelight|5 gp|
|**Dryflask of Shimmerfungus**|Used as bait or distraction; releases glowing spores in 10 ft radius for 1 minute|10 gp|

|Item|Description|Price|
|---|---|---|
|**Sporehallucin Draught**|Subtle mind-fog; target must succeed on DC 13 WIS save or suffer -1d4 Insight checks for 1 hour|50 gp (under-table only)|
|**Psilocord Pollen Strip**|Used in Rootcoil ritual prep; allows tracking of memory anchors within 100 ft|60 gp|
|**Deepmoss Bloom Salve**|Heals 1d4 HP and removes 1 level of exhaustion from fungal exposure|35 gp|
|**Coilroot Charm (Fungal Sigil)**|Non-magical charm that resonates near glyph-anchored items; twitches in proximity|25 gp|