---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group3"
whichparty: "[[Campaign Group 3]]"
encountertype:
  - Environment
sessionnumber: "10"
title: Food Spoilage in the Market
locations:
  - "[[01 Campaign/01 World/07 Districts/Mangagoy/Ashgate Market.md|Ashgate Market]]"
  - "[[01 Campaign/01 World/08 Points of Interest/02 Shop/Mangagoy Isles/Mangagoy/The Mist Market.md|The Mist Market]]"
  - "[[01 Campaign/01 World/08 Points of Interest/03 Tavern or Inn/Outcast Isles/Mangagoy Isles/Hearth's Blessing.md|Hearth's Blessing]]"
allies:
  - "[[Zareth Korrath]]"
factions:
  - "[[The Ashen Vanguard]]"
  - "[[The Twin Radiance]]"
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
## Encounter-Specific Info

> [!info]- **Exploration/Environmental Hazard Encounter Details**
> - Terrain Description: Central stalls of [[Ashgate Market]], particularly those closest to the fountain near [[The Mist Market]] and [[Hearth's Blessing]]. Produce crates lie opened and rotting, the air thick with a sickly-sweet decay. Moisture clings unnaturally to stonework, and fruit swells and splits within minutes of arriving on site.
> 
> - Natural Hazards:
>   - **Accelerated Rot Field**: Crops spoil within hours of exposure. Exposure radius extends 25 ft from a central glyph-seared stone beneath the market fountain’s drainage plate.
>   - **Inhalation Effect**: Fortitude Save (DC 19) each 10 minutes for those lingering near the decay; on failure, become Sickened 1 from mold inhalation.
> 
> - Skill Checks Needed:
>   - **Nature (DC 21)**: Identifies that this is not natural spoilage—it’s a druidic blessing inverted. Likely tied to the severing of [[Kaelor Thornhide]]’s bond with the region.
>   - **Religion (DC 20)**: Recognizes fragments of Lunaran glyphwork degraded and inverted with abyssal binding techniques.
>   - **Crafting (DC 18)**: Examines how stonework beneath stalls has been altered—drainage tiles were replaced or tampered with during recent “repairs.”
>   - **Arcana (DC 22)**: Locates a lingering sympathetic resonance in spoiled produce which responds to light-based divine spells or lunar-phase relics.
> 
> - Environmental Effects (Weather, Light, Gravity):
>   - None. Standard daylight. No magical weather interference. Market guards actively try to contain panic.
> 
> - Special Rewards or Discoveries:
>   - **Recovered Lunar Sigil Fragment**: Found lodged in a drainage slot under a cabbage crate. Can be handed to the Temple of Lunara for identification.
>   - **Testimony from Merchant**: A vendor at [[The Mist Market]] confirms that the rot only began after shipments passed through Evercrate Exports, suggesting tampering during civic redistribution.
>   - **Noticed Connection**: Fruit taken through this area rots immediately, but items kept in cold lunar shadow (wrapped in mooncloth) remain untouched—suggesting a cleansing counter-agent exists nearby.
> [!info]- **Exploration/Environmental Hazard Encounter Details**
> - Terrain Description: Across outer stalls of [[Ashgate Market]], rooftops of nearby tenements, and the eastern food routes into [[The Ember Wharf]], visible signs of natural decay have accelerated. Recently harvested fruit wilts in minutes, livestock refuse feed, and even imported vegetables spoil before market bell. Plants in window boxes brown overnight, and civic gardens in the Glowquarter wither despite druidic rites.
> 
> - Natural Hazards:
>   - **Spoilage Aura**: A 40-foot radius near key transit points along market-to-dockside trade routes causes natural food and herbs to decay 5–10x faster than normal.
>   - **Decay Fog**: At dusk, a low mist settles near street basins that wilts grass and petals instantly. Inhaling the fog triggers a Fortitude Save (DC 20) or take 1 persistent poison damage (nonlethal, spiritual fatigue).
> 
> - Skill Checks Needed:
>   - **Nature (DC 21)**: Identifies the symptoms as signs of a severed druidic bond—likely Kaleor Thornhide's original Lunaran ward failing across the district.
>   - **Religion (DC 20)**: Recognizes corrupted sigils of Lunara hidden in planting wards near civic shrines and beneath shipping crates. Possibly defiled by opposing abyssal glyphs.
>   - **Crafting (DC 19)**: Examines fertilizer crates to find they were shipped from Beacon-side sanctuaries—none bearing the official purification glyph.
>   - **Survival (DC 20)**: Tracks the spread of the decay patterns toward several transit hubs that align with leylines and previously used beacon lattice paths.
> 
> - Environmental Effects (Weather, Light, Gravity):
>   - At night or during Embermoon phase shifts, all rot and fog effects intensify by one tier; tracking becomes harder without magical aid.
> 
> - Special Rewards or Discoveries:
>   - **Glyph-inverted Fertilizer Shard**: A broken talisman designed to simulate Lunaran growth blessing—but reverse-engineered. Could serve as evidence in the Temple of Aurion or Aurion-Lunara liaison councils.
>   - **Sickened Street Dogs**: Local animals can be healed with divine energy—doing so calms citizens and may offer social leverage.
>   - **Clerical Letter from Kaelor (half-burned)**: Found beneath a planter box. It references his fears of “being hollowed from within” and his waning ability to hear Lunara’s guidance.

> [!info]- **Investigation/Mystery Encounter Details**
> - Scene Description: The Ashgate civic ward is growing suspicious. The Temple of Aurion claims the decay is "natural," while the Concord believes it arcane. No public report has been issued. The players uncover rune-distorted gardening nodes, corrupted moonblessing ward tiles, and a burned prayerbook in Kaleor’s handwriting.
> - Clues Available:
>   - Watering basins altered to drain into ley-slick gutters
>   - Civic wards use old sigils misaligned with Lunaran seasonal glyphs
>   - Emblem of the Dawnbringers scraped from a flower crate
> - Skill Checks for Discoveries:
> **Nature (DC 21)**  
> - Success: Identifies the plant decay pattern aligns with ritual neglect rather than natural blight. Key druidic components—like Lunaran-cycle mosses and blessing vines—are absent. Shrines show stress on trees used in bond channels, consistent with a severed druidic conduit.  
> - Critical Success: Notices the decay follows the pattern of leyline currents beneath the city—indicating that the rot is spreading through arcane infrastructure, not just soil. This suggests Kaleor’s neglected rites allowed a secondary, magical vector to embed itself in Mangagoy’s ley-root.
> **Religion (DC 20)**  
> - Success: Recognizes inverted Lunaran glyphs etched in stone around civic planter wards. The "waxing grace" rune has been twisted into a broken crescent, a known countermark used in anti-Lunaran rites. This defilement suggests deliberate subversion of the shrine network.  
> - Critical Success: Identifies the glyphwork as a match for corrupted bindings seen in Beacon-collapse sites during the Rising. These are targeted sigil disruptions similar to those employed by Black Sepulcher saboteurs to dissolve divine protection fields.
> **Occultism (DC 22)**  
> - Success: Determines the aura of rot stems from "echo bleed"—a phenomenon where divine glyphs fail and leave sympathetic damage. The corrupted wards pulse weakly with a cadence out of sync with both moons, suggesting someone or something intentionally reversed their intent.  
> - Critical Success: Discerns that the field is not local—it is echoing a broadcast glyph likely placed elsewhere during the Embermoon Surge. This second site could be amplifying decay effects through mirrored sigil layering and leyline harmonics.
>
> - False Leads or Red Herrings:
>   - A disgraced gardener blames imported moss—but it's a different strain than the one causing decay
> - Final Objective:
>   - Confirm Kaleor Thornhide’s failure to perform key rites destabilized the market’s druidic protection
>   - Establish this as the beginning of **rotline echo propagation**—a phenomenon tied to weakened beacon layers and divine withdrawal
>   - Provide the party with political leverage to investigate Kaleor or intervene in spiritual restoration
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
