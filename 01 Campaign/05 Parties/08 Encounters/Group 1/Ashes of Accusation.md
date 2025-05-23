---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group1"
whichparty: "[[Campaign Group 1]]"
encountertype:
  - Social
  - Skill
title: Ashes of Accusation
sessionnumber: "07"
allies:
  - "[[Tem Solven]]"
  - "[[Ygra Brambleward]]"
---
> [!infobox]+
> # Session Basics
>  |
> ---|---|
> **Session Number** | `INPUT[text:sessionnumber]`|
> **Title**|`INPUT[textArea:title]`|
> **Encounter Type(s)**|`INPUT[EncounterType][inlineListSuggester:encountertype]` |
> **Allies Planned** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):allies]` |
> **Enemies Planned** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):enemies]` |
> **Factions Planned**|`INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):factions]` |
> **Locations Planned** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates")):locations]` |

# Encounter Overview
[[Campaign Group 1]] - Session 7 - Ashes of Accusation
## 🏛️ Scene 3: Return to Chapel Ruins

> *You awaken beneath the ruined chapel. The air is thick with ash and torchlight. Dozens of armed town guards form a ring around the sarcophagus. At their head stands Baelgrim Tarsk, armored and grim. Beside him, a white-haired man bearing a chain-bound tome glowers behind spectacles.*  
>  
> *“Drop your weapons,” Baelgrim says. “You’re wanted for the deaths of Scraps, Rellik, and Vissra.”*

### 🧍 NPCs Present
- **Baelgrim Tarsk** (Captain of the Guard)
- **Teller Broshun Tell** (Civic leader and priest of Eldath)

### 🎯 Objective
Convince the authorities that the party was not responsible or acted justly.

### 🎲 Skill Challenge (DC 18 unless otherwise noted)
- **Diplomacy** (Tem or calm arguments)
- **Deception** (blame-shifting, partial truths)
- **Religion** (invoke Solvane/Aurion's authority) — DC 20
- **Occultism** (describe Xal’Zul, psionic corruption)
- **Intimidation** (Baelgrim only) — DC 22

### ✅ Success
- Party is placed under **protective watch**, but not jailed
- May continue investigations with restrictions

### ❌ Failure
- **Party detained for 48 hours**; gear impounded
- Tem forbidden from aiding until a civic hearing
## Encounter-Specific Info
> [!info]- **Social Encounter Details**
> - Important NPCs: Baelgrim Tarsk (Guard Captain), Broshun Tell (Teller of Eldath)  
> - Factions Involved: Town Guard, Civic Office of Eldath  
> - Goals/Objectives:
>   - Avoid arrest for deaths of Scraps, Rellik, and Vissra  
>   - Establish divine or moral justification for their actions  
> - Negotiation Leverage:
>   - Solvane's spirit seen by townsfolk  
>   - Recordings or evidence from Nexus battle  
>   - Testimony from Tem as temple keeper  
> - Risks for Failure:
>   - 48-hour detention in city jail  
>   - Gear confiscated pending tribunal  
>   - Tem restricted from ritual access  
> - Special Rewards:
>   - Civic sanction to investigate leyline events  
>   - Eldathite approval of binding efforts  
>   - Suspicion shifted to Rootcoil Smuggler Cell  

> [!info]- **Skill Challenge Details**
> - Skills Required: Diplomacy, Religion (DC 20), Deception, Occultism, Intimidation (DC 22)  
> - Success Threshold: 3 of 5 checks  
> - Degrees of Failure:  
>   - 2 Successes: House arrest with escort  
>   - 1 or fewer: Imprisoned, full party lockdown  
> - Time Constraints: Immediate decision by Broshun  
> - Consequences for Success/Failure: Access to local records and divine permission vs public distrust and narrative isolation




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
