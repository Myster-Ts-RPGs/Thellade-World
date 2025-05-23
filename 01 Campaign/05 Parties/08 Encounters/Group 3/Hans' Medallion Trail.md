---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group3"
whichparty: "[[Campaign Group 3]]"
allies:
  - "[[Kellen Brasque]]"
  - "[[Holin Barsh]]"
locations:
  - "[[01 Campaign/01 World/08 Points of Interest/02 Shop/Mangagoy Isles/Mangagoy/Evercrate Exports.md|Evercrate Exports]]"
  - "[[01 Campaign/01 World/08 Points of Interest/02 Shop/Mangagoy Isles/Mangagoy/The Rivet & Rune.md|The Rivet & Rune]]"
  - "[[01 Campaign/01 World/07 Districts/Mangagoy/Ashgate Market.md|Ashgate Market]]"
  - "[[01 Campaign/01 World/07 Districts/Mangagoy/The Ember Wharf.md|The Ember Wharf]]"
factions:
  - "[[The Black Sepulcher]]"
encountertype:
  - Investigation
  - Social
sessionnumber: "10"
title: |
  Hans' Medallion Trail
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

# Encounter  Overview
`=this.whichparty + " - Session " + this.sessionnumber + " - " + this.title`

## Encounter-Specific Info

> [!info]- **Investigation/Mystery Encounter Details**
> - Scene Description: The investigation begins in the loading corridor behind [[Evercrate Exports]] and stretches toward the forgefront at [[The Rivet & Rune]]. With the Embermoon still waxing, Hans senses the faint hum of divine resonance guiding him toward his long-lost medallion—now confirmed to be in Holin Barsh’s possession. Market whisperers speak of a red-robed stranger, a dreamglass trade, and sudden silence in Evercrate’s manifest logs.
>
> - Clues Available:
>   - **Medallion Trace Echo**: Using Religion or Arcana while standing in Evercrate’s export bay, Hans may sense the residual glow of the medallion’s passage, a fading trail of divine judgment.
>   - **Ledger Discrepancy**: A side manifest signed by a redacted alias (“Coilhook”) includes “hammer sigil, bronze: no sale price listed.” Thievery (DC 17) or Society (DC 18) reveals this buyer never appeared in the official civic record.
>   - **Blackened Coinage**: Found in a dreamglass crate in the back of Evercrate’s lot. Occultism (DC 20) identifies the coins as marked by a “null oath”—a signature of the Black Sepulcher's echo-stripping rituals.
>   - **Rivet-Glyph Pattern**: At [[The Rivet & Rune]], Holin Barsh shows Hans the rune-sealed coffer. Religion (DC 20) reveals the fractured sunburst is a suppressed divine seal once used by oathbinders. The medallion pulses stronger during dialogue.
> 
> - Skill Checks for Discoveries:
>   - **Arcana (DC 20)**: Confirms the medallion’s metalwork is layered with pre-Rising divine metallurgy—adamantine rivets used in temple-forged relics designed to anchor binding glyphs.
>   - **Religion (DC 20)**: Identifies the fractured sunburst symbol as possibly linked to the Choir of Worms’ oath-severing pacts—suggesting the medallion may have absorbed or resisted a broken divine contract.
>   - **Occultism (DC 21)**: Reveals that the medallion reacts with leyline instability, and may awaken further if exposed to beacon nodes or druidic anchors during celestial conjunctions.
>   - **Perception (DC 19)**: Discovers a false-bottom in one of Evercrate’s shipment bins containing smuggled temple scrap stamped with the same hammerhead motif.
> 
> - False Leads or Red Herrings:
>   - A rusted dwarven gearplate bearing a warhammer etching is found in a street vendor’s pile—it has no resonance and no relation to the artifact.
> 
> - Final Objective (Find Killer, Recover Item, Solve Puzzle):
>   - **Confirm the red-robed stranger** passed the medallion to Kellen Brasque in exchange for dreamglass.
>   - **Track the sale** to Holin Barsh and validate its containment in a sealed rune-coffer.
>   - **Roleplay the dilemma**: Holin may refuse to release the medallion unless Hans demonstrates he understands its weight—not as a weapon, but as a legacy.
>   - **Unlock the medallion’s next stage** by having Hans recall Warvan-son’s death oath at the forge, causing the relic to resonate with the Embermoon and reveal a hidden divine phrase: *"Justice, broken, may yet bind."*

> [!info]- **Social Encounter Details**
> - Important NPCs:
>   - [[Kellen Brasque]] – evasive, nervous, but may offer the courier alias and trade terms
>   - [[Holin Barsh]] – firm, ethical, willing to test Hans’ moral resolve before releasing the relic
> - Factions Involved:
>   - [[Evercrate Exports]], [[The Rivet & Rune]], possible threads toward [[The Black Sepulcher]]
> - Goals/Objectives:
>   - Recover the medallion
>   - Identify who sent it into the city and why
> - Negotiation Leverage:
>   - Hans' vow of justice; possession of related ledger fragments; divine resonance proving rightful claim
> - Risks for Failure:
>   - Holin may refuse to release it
>   - The medallion could be destabilized under stress or damaged by improper handling
> - Special Rewards:
>   - If claimed righteously, Hans may unlock the **“Aura of Equitable Judgment”** boon and the once/day **“By Grabthar’s Hammer”** divine reaction

> [!info]- **Other Encounter Details**
> - Encounter Type: Investigation, Social Roleplay, Relic Recovery
> - Situation Overview: This is a critical turning point for Hans’ personal arc and the larger divine-ward destabilization storyline
> - Objectives:
>   - Test Hans' philosophy of justice
>   - Reintegrate the medallion into play as a divine key
> - Special Rules/Mechanics:
>   - May unlock divine visions or residue memories if handled during the Embermoon
> - Rewards or Consequences:
>   - Relic powers attuned; may draw divine or abyssal interest later
>   - Hans gains or loses credibility with divine-aligned factions based on behavior

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
