---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Hollow Reliquary]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/HollowSaints.png
aliases:
  - Hollow Saints
head:
  - "[[Irlos Vale]]"
pronounced: HAW-low SAYNTS
founded: 09 Frostfall 74 PR
organizationtype:
  - Cult
location:
  - "[[Kanda Isles]]"
  - "[[Kanda]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/Mangagoy Isles]]"
  - "[[Mangagoy]]"
  - "[[Sunveil Hollow]]"
  - "[[The Weeping Shrine]]"
  - "[[Binders' Lane]]"
  - "[[01 Campaign/01 World/08 Points of Interest/04 Temple or Shrine/The Morning Stars/The Shattered Abbey]]"
  - "[[The Deep Dark]]"
  - "[[The Veins of Night]]"
  - "[[Shadowthread Warrens]]"
  - "[[Daggerfall Hollow]]"
  - "[[The Forgotten Vault]]"
  - "[[Tallowgate]]"
  - "[[Pilgrim's Row]]"
rivals:
  - "[[The Dawnbringers of Lunara]]"
  - "[[The Lumina Guardians]]"
foundedshort: 74.06.09 PR
---

```meta-bind-js-view 
{art} as art {banner} as banner
--- 
if (context.bound.art !== "90 Assets/Images/Misc/PlaceholderImage.png" && context.bound.banner === "on")  { 
    const str = ` ![[${context.bound.art}|banner-fade]]` ;
    return engine.markdown.create(str); 
} else { return ""; }
```

> [!metadata|metadata]- Metadata 
>> [!metadata|metadataoption]- System
>> #### System
>>  |
>> ---|---|
> **Tags** | `INPUT[Tags][inlineListSuggester:tags]` |
>
>> [!metadata|metadataoption]- Art
>> #### Art
>>  |
>> ---|---|
> **Art** | `INPUT[imageSuggester(optionQuery("")):art]` |
> **Banner** | `INPUT[toggle(onValue(on), offValue(off)):banner]` |
>
>> [!metadata|metadataoption]- Info
>> #### Info
>>  |
>> ---|---|
> **Pronounced** |  `INPUT[textArea:pronounced]`
> **Aliases** | `INPUT[list:aliases]` |
> **Founded** | `INPUT[text:founded]` |
> **Founded Short**| `INPUT[text:foundedshort]` |
> **Type** | `INPUT[OrganizationType][inlineListSuggester:organizationtype]` |
> **Status** | `INPUT[OrganizationStatus][inlineListSuggester:organizationstatus]` |
> **Scope** | `INPUT[OrganizationScope][inlineListSuggester:organizationscope]`|
> **Hierarchy** | `INPUT[Null][suggester(optionQuery("Campaign/Organizations/Hierarchies"), useLinks(partial)):hierarchy]` | 
> **Head** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):head]` |
> **Steward** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):steward]` |
> **Parent Organization** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
> **HQ** | `INPUT[Null][suggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):hq]` |
> **Operating Areas** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |
> **Allies** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):allies]` |
> **Rivals** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):rivals]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Founded** | `VIEW[{founded}][text]` |
> **Type** | `VIEW[{organizationtype}][text]` |
> **Status** | `VIEW[{organizationstatus}][text]` |
> **Scope** | `VIEW[{organizationscope}][text]` |
> **Hierarchy** | `VIEW[{hierarchy}][link]` |
> **Head** | `VIEW[{head}][link]` |
> **Steward** | `VIEW[{steward}][link]` |
> **Parent Organization** | `VIEW[{organization}][link]` |
> **HQ** | `VIEW[{hq}][link]` |
> ###### Party
>  |
> ---|---|
> **Party 1 Reputation** | `INPUT[text:party1reputation]` |
> **Party 2 Reputation** | `INPUT[text:party2reputation]` |
> **Party 3 Reputation** | `INPUT[text:party3reputation]` |
> **Party 4 Reputation** | `INPUT[text:party4reputation]` |
> **Party 5 Reputation** | `INPUT[text:party5reputation]` |
> **Party 6 Reputation** | `INPUT[text:party6reputation]` |
# `=this.file.name` <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!metadata|geography]- Region
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(tags, "Region") AND econtains(organization, this.file.link)
> SORT dominion ASC, file.name ASC

> [!metadata|county]- Subregion
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(tags, "Subregion") AND econtains(organization, this.file.link)
> SORT dominion ASC, file.name ASC

> [!metadata|settlements]- Settlements
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, settlementtype AS Type, defence AS Defences, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(tags, "Settlement") AND econtains(organization, this.file.link)
> SORT dominion ASC, file.name ASC

> [!metadata|district]- Districts
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(districttype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(tags, "District") AND econtains(organization, this.file.link)
> SORT districttype ASC, file.name ASC

> [!metadata|location]- Specific Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(location), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(tags, "POI") AND econtains(organization, this.file.link)
> SORT poitype ASC, file.name ASC

> [!metadata|organizations]- Child Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(tags, "Organization") AND econtains(organization, this.file.link)
> SORT organizationtype ASC, file.name ASC

> [!metadata|allies]- Allies
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE econtains(allies, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC

> [!metadata|rivals]- Rivals
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE econtains(rivals, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC

> [!metadata|characters]- Characters
> ```dataview
> TABLE without id file.link AS "Name", condition AS Condition, aliases AS Aliases, join(occupation, ", ") AS "Occupations", link(location) AS "Location"
> FROM "01 Campaign"
> WHERE contains(tags, "Character") AND econtains(organization, this.file.link)
> SORT tags DESC, file.name ASC

## Overview
### Description
> The [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Hollow Saints|Hollow Saints]] are a secretive cult of heretics, ex-priests, and forgotten faithful who venerate long-lost deities silenced by the cataclysm of the Rising. Their doctrine teaches that faith endures even when gods fall silent, and that the modern pantheon is only a shard of the divine whole. Through hidden shrines, forgotten relics, and reconstructed rites, they seek to restore balance by calling the forsaken gods back to memory—and power.

### Oaths
> "May the forgotten be remembered, and the veiled be unveiled. We serve the silent chorus."

### Mission Statement
> To uncover, preserve, and restore the worship of lost deities across the Isles and challenge the theological dominance of institutional faiths.

### Laws
> - Never speak the name of a forgotten god before the uninitiated.  
> - Protect relics at all costs.  
> - Teach only the faithful the path to the Reliquary.  
> - The veil of silence is sacred—break it only with sanction.

### Tenets
> - Truth is buried beneath time.  
> - Faith is not granted by law.  
> - No god is ever truly gone.  
> - Memory is the altar of divinity.

### Prohibitions
> - Revealing relic locations to non-initiates.  
> - Destroying or trading sacred artifacts.  
> - Preaching openly without Circle consent.  
> - Making bargains with abyssal or infernal beings.

## Current Events
- [[Irlos Vale|Archdeacon Irlos 'The Forsaken' Vale]] has returned to the [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Hollow Saints/The Hollow Reliquary|Hollow Reliquary]] after a decade of seclusion, bearing a new revelation linked to Pre-Rising echoes.  
- [[Thessa Morrin|Sister Thessa 'The Weeping Veil' Morrin]] has begun a pilgrimage across forbidden crypts, reenacting rituals meant to awaken divine resonance.  
- A Hollow Saint cell in [[Mangagoy]] has established a reliquary beneath the Shattered Abbey, concealing relics recovered from sunken shrines.  
- The Daggerfall Hollow sect has resurfaced near the ruins of the Chapel of Falling Stars, prompting alerts from Deep Dark scouts.  
- The [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Lumina Guardians|Lumina Guardians]] and [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Dawnbringers of Lunara|Dawnbringers of Lunara]] have issued internal memoranda calling for the quiet dismantling of Hollow Saint networks.

## History
- Founded on 09 Ashfall 74 PR by defrocked priest [[Irlos Vale]] and eight surviving disciples of the [[01 Campaign/02 Factions/03 Organization/03e Other Organizations/Forgotten Hymnal Sect|Forgotten Hymnal Sect]]after a failed plea for recognition at the [[01 Campaign/02 Factions/03 Organization/03e Other Organizations/The Echo Tribunal|Echo Tribunal]].
- The cult's foundational doctrine, *The Silent Chorus*, was transcribed over three decades in catacomb scriptoria hidden beneath Kanda.  
- Survivors of the Shattering of Belovar's Shrine in 93 PR were absorbed into the movement, doubling its size and regional influence.  
- The Hollow Saints were declared heretical in 106 PR by the Dawnbringers, leading to a failed inquisition and partial exposure of their network.  
- Over the past 20 years, they have shifted from passive preservation to active reawakening of god-touched sites.

### Campaign Events
[[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 1|Campaign Group 1]]  
- May encounter veiled relic crypts in the Deep Dark bearing Hollow Saint symbols.  
- Explorers delving into Daggerfall Hollow could unearth rituals or whispers from forgotten divine echoes.

[[Campaign Group 4]]  
- If they pursue ancient tomes in the ruins of Jambito’s Temple Row, they may cross paths with hidden converts.

## Hierarchy
- **Archdeacon:** [[Irlos Vale]] – Visionary founder and high prophet of the Silent Chorus; once a cleric of [[01 Campaign/03 Entities/01 Deities/Aurion]], now the voice of the unspoken.  
- **Circle Keeper:** [[Thessa Morrin]] – Mistress of sacred rites and veil-laced liturgies; bearer of 'The Weeping Veil' relic.  
- **Shrine Custodians:**  
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Ilvarra Milton|Saint Ilvarra 'The Shorn']] – Oversees Mangagoy's Shattered Abbey; masked relic guardian.  
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Merek Fain|Brother Merek]] – Wandering archivist and sermon-weaver among Kanda's underground faithful.

## Locations
### Primary Sanctums
- [[The Hollow Reliquary]] – Hidden cathedral of cracked faiths and reassembled gods.  
- [[The Weeping Shrine]] – Secret vault beneath Kanda, marked by ritual weeping stones.  
- [[01 Campaign/01 World/08 Points of Interest/04 Temple or Shrine/The Morning Stars/The Shattered Abbey]] – Deconsecrated sanctum in Mangagoy where dead gods are remembered.

### Deep Sanctums
- [[The Forgotten Vault]] Beneath the [[Chapel of Falling Stars]] – Located in The Veins of Night > Shadowthread Warrens > Daggerfall Hollow; lined with divine silence sigils.  
- [[Pilgrim's Row]] – Kanda alleyway routes used by veiled prophets to deliver sermon fragments.

## Notes
- **Threat Level:** High if relics are recovered or rites complete.  
- **Speculative Rift:** Tensions between memory-focused Saints and those pushing active divine reconstitution.  
- **Symbol:** A weeping sun half-obscured by a torn veil, encircled with faded celestial glyphs.  
- **Uniforms:** Ashen robes laced with faint gold thread; priest-masks crafted from aetherglass.  

### Key Plot Threads
- Recovery and reactivation of Pre-Rising god shrines.  
- Conflict with modern clergy over theological legitimacy.  
- Possible divine resurgence through relic convergence.  
- Prophecy of the Saint Reborn to breach the veil of silence.

### Artifacts and Evidence
- Fragmented hymnstones inscribed with vanished divine sigils.  
- Aetherglass lenses said to reveal lost godlight.  
- Relics emitting resonance with specific divine domains not matched to modern gods.  
- Black-veined prayer beads that hum during lunar eclipses.





