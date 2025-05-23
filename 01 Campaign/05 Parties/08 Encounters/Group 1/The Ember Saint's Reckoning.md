---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group1"
whichparty: "[[Campaign Group 1]]"
sessionnumber: "07"
encountertype:
  - Combat
allies:
  - "[[Tem Solven]]"
  - "[[Ygra Brambleward]]"
locations:
  - "[[01 Campaign/01 World/06 Settlements/The Veins of Night/Shadowthread Warrens/Blackwater Crossing.md|Blackwater Crossing]]"
title: The Ember Saint's Reckoning
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

# Encounter  Overview
[[Campaign Group 1]] - Session 7 - The Ember Saint's Reckoning
## 🎬 Scene 1: Arrival at the Nexus

> *The world vanishes in a bloom of silver light as the sarcophagus’s glyphs erupt with celestial fire. When your senses return, you stand within a stone ring, etched with glowing sigils. Four bridges extend outward like the arms of a compass. Color-shifting energies ripple through the void below—iridescent tides of leylight churning like liquid auras. Three crystalline pylons crackle with radiant current. One, in the southern quadrant, is dark—dormant and silent.*  
>  
> *As Tem steadies herself, a look of awe crosses her face. “We’re in the Nexus… a shard of divine memory built during the Binding. We must reignite the pillars before the Mouth awakens again.”*

- **Environment**: Floating planar cruciform with four pylons (three lit, one dark)
- **Objective**: Activate all four divine pillars before instability escalates
- **Trigger**: Crossing the southern bridge teleports the party to the Fungal Ruin

---

## ⚔️ Scene 2: Southern Bridge – Fungal Ruins

> *Stepping across the southern threshold, the air changes. Colors fade. Moisture clings. The ground squelches beneath soft fungal overgrowth. Twisting pillars of violet mushroom and bone rise around an ancient dais.*  
>  
> *From the shadows, a massive creature lurches forward—its skin barklike, eyes glowing with alien malice. An Aartuk Starhorror. Behind it, two Maw Demons howl, their mouths spiraling with teeth, echoing a memory that’s not your own.*

### 👾 Combat Encounter
- **Aartuk Starhorror** (CR 2 equivalent, enhanced reach, psionic mutation)
- **2x Maw Demons** (CR 1.5–2 each)

### 🕰️ Timer
- Combat begins a 10-round timer. If enemies are not defeated in time, a second pylon begins to fail.

### ✨ Emergency Aid – Solvane's Spirit
- If the party nears defeat, **Tem** may summon **Solvane, the Ember Saint** *(CR 1 Celestial Spirit - Defender)*.
> *A column of flame erupts beside Tem, coalescing into the shimmering form of a hooded woman crowned in ash and golden fire—Solvane. Her presence burns away the rot, and her blade ignites with radiant wrath.*

### ✅ Victory
- Divine sigil recovered from the Starhorror’s remains.
- Returning to the Nexus and restoring the pillar fully stabilizes the plane.

### ❌ Failure
- Solvane evacuates the party back to the chapel.
- Tem is wounded and unconscious.
- Second pylon begins to fail. A second Mouth begins stirring beneath.
## Encounter-Specific Info
> [!info]- **Combat Encounter Details**
> - Primary Enemies: 1x Aartuk Starhorror, 2x Maw Demons  
> - Enemy Factions: The Black Sepulcher  
> - XP Budget: Hard
> - Battlefield Description: Spore-choked ruin overgrown with glowing mycocrete pillars, skeletal dais surrounded by bioluminescent sludge  
> - Boss Mechanics:
>   - Starhorror casts psionic shriek (frighten 1, recharge 4–6)
>   - Maw Demons gain hunger burst if party drops below 50%  
> - Environmental Hazards: Hallucinogenic spore clouds, unstable ground (DC 10 balance or fall prone on ANY movement)  
> - Objectives:
>   - Defeat all enemies within 10 rounds
>   - Retrieve the Divine Sigil to restore the southern pylon  
> - Special Rewards:
>   - Sigil of Solvane
>   - Ember Crystal Focus (if full victory achieved)
>   - Solvane's Blessing (1 use of *Heroism* for each PC if Solvane appears)




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
