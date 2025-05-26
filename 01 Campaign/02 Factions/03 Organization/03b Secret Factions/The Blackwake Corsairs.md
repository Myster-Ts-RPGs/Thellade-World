---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[Veilcutter's Refuge]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/BlackwakeCorsairs.png
aliases:
  - Blackwake Corsairs
location:
  - "[[The Outcast Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Kanda Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Middle Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mangagoy Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Smokey Shoals]]"
  - "[[Kanda]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/BobaNotes]]"
  - "[[Seaside Cape]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]]"
  - "[[The Cursed Storm]]"
  - "[[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Seabreeze Haven]]"
  - "[[01 Campaign/01 World/06 Settlements/The Outcast Isles/Middle Isles/Innerwatch]]"
  - "[[Brimstone Docks]]"
  - "[[Stonebrace Docks]]"
  - "[[Binders' Lane]]"
  - "[[01 Campaign/01 World/08 Points of Interest/03 Tavern or Inn/Outcast Isles/Kanda Isles/Boba/The Splintered Keel]]"
  - "[[01 Campaign/01 World/08 Points of Interest/03 Tavern or Inn/Outcast Isles/Kanda Isles/Kanda/The Mooring Flagon]]"
  - "[[01 Campaign/01 World/08 Points of Interest/02 Shop/Mangagoy Isles/Mangagoy/The Ashgild Exchange]]"
  - "[[Mistcatcher Shack]]"
  - "[[Hollowbone Trading Post]]"
  - "[[Veilcutter's Refuge]]"
head:
  - "[[Varros Darin]]"
steward:
  - "[[Veyra Torell]]"
pronounced: BLAK-wake KOR-sairs
founded: 07 Emberwake 131 PR
organizationtype:
  - Secret
  - Trade
allies:
  - "[[The Silver Chain]]"
  - "[[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Infernal Covenant]]"
rivals:
  - "[[The Eternal Concord]]"
  - "[[The Ashen Vanguard]]"
  - "[[The Mistwalkers]]"
foundedshort: 131.04.07 PR
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
> The [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Blackwake Corsairs|Blackwake Corsairs]] are a professionalized smuggling fleet operating throughout the Outcast Isles. Focused on high-value contraband, fugitive extraction, and illicit artifact transport, they navigate by fog magic, decoy ships, and encrypted contracts. Unlike common pirates, they strike surgically, guided by their Phantom Admiral.

### Oaths
> "No port is forbidden. No cargo is unworthy. The fog conceals all."

### Mission Statement
> To monopolize illicit maritime transport across the Outcast Isles while avoiding full-scale naval conflict, preserving their independence and profits.

### Laws
> - Never reveal client names outside command circles.
> - Never strand a Corsair unless betrayed.
> - Obey Captaincy Chain-of-Command on pain of death.

### Tenets
> - Freedom rides the fog.
> - Honor the contract; profit from the chaos.
> - Loyalty to ship and crew first, always.

### Prohibitions
> - No unnecessary civilian casualties.
> - No piracy without sanctioned contracts.
> - No betrayal of Corsair movements to outsiders.

## Current Events
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Smokey Shoals/Veyra Torell|Veyra Torell]] has expanded arcane fog networks to conceal fleet anchorages across the Smokey Shoals.
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Smokey Shoals/Varros Darin|Varros Darin]] entered secret pacts with nobles in Kanda and Boba seeking transport outside royal surveillance.
- The appearance of relics from the Infernal Covenant suggests the Corsairs’ deeper involvement in Pre-Rising artifact logistics.

## History
- Founded in 131 PR by ex-naval captains exiled for black-market trading.
- "The Cursed Storm" made first legendary fog-cloaked escape in 142 PR.
- Expanded into organized smuggling through alliances with the Silver Chain.
- Ongoing rivalry with [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Ashen Vanguard|Ashen Vanguard]] as Corsair movements threaten naval control over key shipping lanes.

### Campaign Events
[[Campaign Group 5]]
  - Investigated dockside vanishings tied to Corsair fog cover near Boba.
[[Campaign Group 6]]
  - Encountered Corsair-supplied artifact crates near Seabreeze Haven and Innerwatch.

## Hierarchy
- **Admiral:** [[Varros Darin]] ('Blackwake') — Phantom Admiral of the fleet.
- **Fogmistress:** [[Veyra Torell]] ('Nightmist') — Arcane fog specialist and fleet concealment mage.
- **Sergeant:** [[Lirrek Morn]] ('Ironhand') — Shock assault leader.

## Fleet Captains
- **The Cursed Storm:**
  - [[Varros Darin]] (Captain)
  - [[Veyra Torell]] (Arcane Officer)
  - [[Lirrek Morn]] (Enforcer)

- **The Drowned Siren:**
  - [[Selvara Vornis]] (Captain, 'Whisperwake')
  - [[Brannic Dolvar]] (First Mate, 'Redtooth')
  - [[Mira Tavos]] (Quartermaster, 'Frosthand')

- **The Mistpiercer:**
  - [[Garrick Veylin]] (Captain, 'Gravemarch')
  - [[Tessa Ardryn]] (First Mate, 'Blackfin')
  - [[Soria Venn]] (Quartermaster, 'Deadeye')

## Locations
### Primary Headquarters
- [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Blackwake Corsairs/Veilcutter's Refuge|Veilcutter's Refuge]] (Smokey Shoals)

### Key Operational Points
- [[01 Campaign/01 World/08 Points of Interest/03 Tavern or Inn/Outcast Isles/Kanda Isles/Boba/The Splintered Keel]] (Boba > Brimstone Docks)
- [[01 Campaign/01 World/08 Points of Interest/03 Tavern or Inn/Outcast Isles/Kanda Isles/Kanda/The Mooring Flagon]] (Kanda > Stonebrace Docks)
- [[01 Campaign/01 World/08 Points of Interest/02 Shop/Mangagoy Isles/Mangagoy/The Ashgild Exchange]] (Mangagoy > Binders’ Lane)
- [[Mistcatcher Shack]] (Seabreeze Haven)
- [[Hollowbone Trading Post]] (Innerwatch)

## Notes
- **Threat Level:** High
- **Speculative Rift:** Some factions within the Corsairs push for returning to full piracy under independent banners, challenging Varros' strict mercenary model.
- **Symbol:** A black ship silhouette cutting through red mist, under a silver crescent moon.
- **Uniforms:** Deckhands wear crimson sashes; officers wear black coats embroidered with swirling mist motifs in gray thread.

### Key Plot Threads
- Secrets of Veyra’s arcane fog network.
- Possible betrayal within Corsair ranks.
- Hidden artifact vaults linked to Infernal Covenant pacts.

### Artifacts and Evidence Found
- Infernal Covenant relic manifests.
- Corsair-marked false cargo ledgers.
- Arcane fog projectors recovered from sunken Corsair vessels.
