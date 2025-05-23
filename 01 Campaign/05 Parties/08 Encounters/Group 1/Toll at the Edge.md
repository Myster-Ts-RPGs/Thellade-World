---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group1"
whichparty: "[[Campaign Group 1]]"
sessionnumber: "08"
title: Toll at the Edge
encountertype:
  - Social
  - Combat
---
> [!infobox]+
> # `=this.group + " - Session " + this.sessionnumber + " - Summary"`
>  |
> ---|---|
> **Session Number** | `INPUT[text:sessionnumber]`|
> **Title**|`INPUT[textArea:title]`|
> **Encounter Type(s)**|`INPUT[EncounterType][inlineListSuggester:encountertype]` |
> **Allies Planned** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):allies]` |
> **Enemies Planned** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):enemies]` |
> **Factions Planned**|`INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):factions]` |
> **Locations Planned** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates")):locations]` |

### Encounter Log: Hex 14 – The Sighing Quay  
[[Campaign Group 1]] - Session 08 - Toll at the Edge

## Encounter-Specific Info
> [!info]- **Social Encounter Details**
> - Important NPCs: [[Varkosh Ren]], dock enforcer of the Sighing Quay; two unnamed ruffians  
> - Factions Involved: Local dock smugglers, indirectly tied to Rootcoil  
> - Goals/Objectives: Negotiate safe passage, avoid escalation, uncover deeper smuggling link  
> - Negotiation Leverage: Threat of city authority backlash, courier seal from [[Broshun Tell]], intimidation  
> - Risks for Failure: Provoked combat, item seizure, delay in reaching Daggerfall Hollow  
> - Special Rewards: Whispered warning about a “lost shipment that never made it past the vaults”

> [!info]- **Combat Encounter Details**
> - Primary Enemies: [[Varkosh Ren]] (CR 1 bandit captain equivalent), 2 CR 1/2 thugs  
> - Enemy Factions: Local smugglers (not officially Rootcoil, but operating in the same shadows)  
> - XP Budget: Medium (CR 2–3 equivalent total)  
> - Battlefield Description: Dimly lit quay; narrow wooden docks, rope railings, stacked crates; limited mobility  
> - Boss Mechanics: Varkosh uses “Quay Slam” to knock players off docks into the water  
> - Environmental Hazards: Slippery planks (Acrobatics DC 12 or fall prone); deep water (Swim DC 10)  
> - Objectives: Subdue or drive off ruffians; gain safe crossing and intel  
> - Special Rewards: Bribe ledger marked with Rootcoil sigil, if players search crates

---
> [!note]+ Loot – The Sighing Quay Encounter
> - **Varkosh Ren's Bribe Ledger**  
>   A bound leather manifest with smudged ink entries and several marked with an overlapping Rootcoil glyph (faint unless magically revealed). Includes three route codes, one leading to a leyline gap near [[Duskwell Cavern]].  
>   *Value:* 25 gp (black market), priceless as evidence  
>   *Use:* Can be submitted to Tell or used to leverage a Sable Accord contact  
>
> - **Iron Coin of Passage**  
>   Stamped with a snarling eel, used as a bribe token among Deep Dark smugglers. Holding it grants advantage on Charisma (Persuasion) checks with underground runners.  
>   *Magical Aura:* Faint enchantment, illusion  
>
> - **Knotted Satchel (Crate Cache)**  
>   Found behind loose crates after the scuffle.  
>   - 2 vials of **Rootweft Oil** (smuggler’s anti-restraint salve; grants escape advantage from non-magical bindings for 1 hour)  
>   - 1 dose of **Sporehallucin** extract (causes Disadvantage on Insight for 10 min if consumed unknowingly)  
>   - A courier badge engraved with a **false sigil**, forged in Vaust Hadrinel’s style  
>
> - **Miscellaneous Gear**  
>   - 21 gp, 40 sp  
>   - Rusted shortsword  
>   - Lantern with alchemical glow-balm (4-hour duration)  
>   - Small black velvet pouch containing 3 obsidian gaming stones

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

## Notes

### The Broken Chalice – Symbolic Meaning in Rootcoil and Black Sepulcher Lore

The **Broken Chalice** is the **cultic sigil** most often used by operatives of the **[[Black Sepulcher]]**, especially those embedded in sacrificial or relay rites. When seen in Rootcoil caches or glyphs, it signifies:

- **“The Offering Has Been Made”** – confirmation that a ritual component (person, sigil, soul) has been delivered or claimed.
    
- **Defilement of Divine Order** – the chalice once symbolized sacred vessels; breaking it mocks divine containment or purity.
    
- **Fragmented Memory/Identity** – often associated with psionic tampering, identity masks, and memory-seeded glyphwork.
    
- **Abyssal Echo Confirmation** – in glyph logic, its presence is a “check mark” indicating successful anchoring of a ritual echo.
    

### ✒️ Suggested Canon Use

- **Rootcoil operatives** rarely wear this symbol openly. It is stamped in wax seals, hidden inside boots, carved beneath crates, or scratched under false courier labels.
    
- It is **not** their public identity or iconography—that would be the green serpent (stylized courier misdirection).
    
- The **chalice** is a **sacred sigil of allegiance**—a mark of direct contact with [[The Black Sepulcher]].