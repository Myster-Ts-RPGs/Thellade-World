---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Gilded Daggers/The Forgefall Warrens]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Local
art: 90 Assets/Images/Organizations/GildedDaggers.png
aliases:
  - Gilded Daggers
rivals:
  - "[[The Ember Rats]]"
  - "[[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Gilded Hammer Union]]"
  - "[[The Crystal Seekers Guild]]"
pronounced: GILL-did DAG-gers
founded: 12 Emberwake 102 PR
organizationtype:
  - Secret
  - Trade
  - Criminal
head:
  - "[[Vaylen Durnis]]"
steward:
  - "[[Ressa Thelis]]"
location:
  - "[[The Outcast Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/Mangagoy Isles]]"
  - "[[Mangagoy]]"
  - "[[The Ember Wharf]]"
  - "[[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Gilded Daggers/The Forgefall Warrens]]"
  - "[[Glowquarter]]"
  - "[[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Gilded Daggers/Blackstring Vault]]"
  - "[[Ashgate Market]]"
  - "[[01 Campaign/01 World/08 Points of Interest/09 Landmarks/Mangagoy Isles/Sootveil Alley]]"
  - "[[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Gilded Daggers/Ember Coil]]"
foundedshort: 102.04.12 PR
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
> [[The Gilded Daggers]] are a covert cabal of rogue engineers, saboteurs, and black-market technomancers operating deep within Mangagoy’s industrial undercity. Once affiliated with sanctioned scholarly guilds, they now weaponize innovation against the institutions that cast them out. They deal in stolen schematics, volatile prototypes, and sabotage-for-hire—trading invention for vengeance.

### Oaths
> "Progress without permission. Fire without warning."

### Mission Statement
> To undermine the industrial elite through alchemical disruption, weaponized invention, and shadow trade of unregulated technology.

### Laws
> - Respect stolen craft—never destroy a blueprint without extracting value.  
> - Loyalty lies with the craft, not the creed.  
> - Leave a mark—every job deserves a signature.

### Tenets
> - Innovation belongs to the brave.  
> - If it can't be bought, steal it.  
> - Sabotage is just redesign through fire.

### Prohibitions
> - No direct ties to noble patrons—only contracts.  
> - Never reveal workshop coordinates.  
> - Do not allow Crystal Seekers to recover stolen designs.

## Current Events
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Vaylen Durnis|Vaylen Durnis]] ('Gearbane') has been spotted scouting industrial sites near the Crystal Hall. Rumors suggest a weaponized prototype is nearing completion.  
- [[Ressa Thelis]] ('Smokehand') has escalated alchemical strikes in Ashgate Market, forcing Gilded Hammer trade stalls to shut down for repairs.  
- Several Rift Scholar labs report compromised devices—all traced to black-market components bearing silver-dagger etchings.

## History
- Formed in the aftermath of the Gilded Hammer’s 92 PR consolidation, as disgraced inventors were expelled from Lambaro and Mangagoy institutes.  
- Initial sabotage efforts targeted wardstone regulators, causing cascading industrial failures.  
- Developed coded emblem signatures and prototype vaults to protect rogue designs.  
- Still feared by sanctioned engineers and unlicensed merchants alike.

### Campaign Connections
[[Campaign Group 3]] – Ongoing exposure to mechanical sabotage, industrial accidents, and component theft in Mangagoy. No direct confrontation yet, but signs point toward escalation.

## Hierarchy
- **Master Artisan:** [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Vaylen Durnis|Vaylen Durnis]] – 'Gearbane', former Lambaro engineer turned renegade mechanist. Specializes in reverse-engineering warded prototypes.  
- **Saboteur Commander:** [[Ressa Thelis]] – 'Smokehand', alchemist-saboteur and master of combustion logistics. Leaves black-silver smoke signatures behind each operation.

## Locations
- **Headquarters:** [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Gilded Daggers/The Forgefall Warrens]] (Mangagoy > The Ember Wharf)  
- **Known Fronts:**  
  - [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Gilded Daggers/Blackstring Vault|Blackstring Vault]] (underground blueprint repository)  
  - [[01 Campaign/01 World/08 Points of Interest/09 Landmarks/Mangagoy Isles/Sootveil Alley|Sootveil Alley]] (black market forgeway)  
  - [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Gilded Daggers/Ember Coil|Ember Coil]] (hidden smeltery for forbidden alloys)

## Notes
- **Threat Level:** High—especially to arcane-industrial guilds.  
- **Symbol:** A silver-edged dagger coiled in brass wire, often etched into scorched metal.  
- **Uniforms:** Reinforced leather aprons or boilercoats laced with embedded tools and explosive pockets. Masked helms standard for saboteurs.

### Key Plot Threads
- Gearbane's Prototype — An unstable, planar-reactive engine being assembled beneath Mangagoy.  
- Smokehand's Plague — Alchemical traps designed to infect tools, triggering explosive failure upon ignition.  
- Contracted Destruction — Whispers of noble-funded sabotage targeting political rivals.  
- Tech Blackout — A campaign to sever the city's main ley-industrial networks.

### Artifacts and Evidence
- Shattered tech infused with volatile glyphs.  
- Etched schematics recovered from defunct black-market vendors.  
- Alchemist's kits lined with blast-seared metal.  
- Sabotaged Gilded Hammer devices pulsing with unstable arcano-circuitry.
