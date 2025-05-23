---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Riftspire Archives]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/RiftScholars.png
aliases:
  - Rift Scholars
  - The Rift Scholars
  - Rift Scholars Collective
founded: 06 Harvestshade -3 PR
organizationtype:
  - Arcane
  - Academic
allies:
  - "[[The Ashen Vanguard]]"
rivals:
  - "[[The Sable Accord]]"
  - "[[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Infernal Covenant]]"
head:
  - "[[Elenora Mistveil]]"
location:
  - "[[The Outcast Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Kanda Isles]]"
  - "[[Kanda]]"
  - "[[Wardspire District]]"
  - "[[The Riftspire Archives]]"
pronounced: RIFT SKA-lers kuh-LEK-tiv
foundedshort: -3.05.06 PR
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
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(occupation, ", ") AS "Occupations", join(link(location), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(tags, "Character") AND econtains(organization, this.file.link) AND !contains(condition, "Dead")
> SORT tags DESC, file.name ASC

## Overview
### Description
> [[The Rift Scholars Collective]] is a highly specialized group of arcanists, historians, and dimensional theorists who study the nature of planar rifts, their history, and their implications for the Kingdom of Kanda. Founded after the Rising, they seek to uncover the Pre-Rising secrets of planar stability and safeguard the kingdom from extraplanar incursion. The Collective is headquartered at [[The Riftspire Archives]] in [[Wardspire District]], a towering crystalline hall laced with leyline-stabilizing runes.

### Oaths
> “We peer into the breach, not to harness, but to understand.”

### Mission Statement
> To understand, monitor, and mitigate the existential threat of dimensional rifts, preserve arcane knowledge, and serve as guardians of the arcane sciences against misuse or corruption.

### Laws
> - All findings must be recorded and deposited into the Riftspire Archives.  
> - Rift engagement protocols require field stabilization teams and dual-authorization rituals.  
> - No arcane research involving binding extraplanar entities is permitted.  
> - Collaboration with military forces must include shared transparency on all field data.

### Tenets
> - Knowledge before reaction.  
> - No mystery is harmless.  
> - Magic must be known to be controlled.  
> - Study the Rift, but never let it study you.

### Prohibitions
> - Willful concealment of rift site data.  
> - Attempting to weaponize unstable rift matter.  
> - Unauthorized planar travel, summoning, or binding.  
> - Collaboration with factions seeking to exploit rifts.

## Current Events
> - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Elenora Mistveil|Head Scholar Elenora Mistveil]] continues to manage Rift activity mapping and coordinate with the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Ashen Vanguard|Ashen Vanguard]] on anomalous planar readings near [[Lambaro]] and [[Mangagoy]]&#8203;:contentReference[oaicite:0]{index=0}.  
> - The Collective is tracing ripple effects across barrier weakening signatures believed to correlate with ancient Pre-Rising rift stabilizer decay.  
> - Requests for expeditionary support are pending for potential rift events near the volcanic region east of [[Seaside Cape]].  
> - Informal tensions have arisen with the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Phoenix Assembly|The Phoenix Assembly]] over whether certain stabilizers should be archived or made publicly accessible.

## History
> Founded in 6 Stonewake -3 PR, the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Rift Scholars Collective|Rift Scholars Collective]] emerged during the immediate aftermath of the Rising, when rift anomalies continued to plague post-isolation Kanda. Their goal was simple but vital: to study the conditions that lead to dimensional breaches and learn to prevent future cataclysms.  
>  
> Led initially by Grand Archivist Savaros Thern (predecessor to Elenora Mistveil), the Collective played a key role in identifying residual Abyssal fractures during the 30-Year Veilquake. They have remained apolitical and cooperative, often loaning their minds to the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Ashen Vanguard|Ashen Vanguard]] or [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Arcane Wardens|Arcane Wardens]] when coordinated magical responses are necessary.

## Notes
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Elenora Mistveil|Head Scholar Elenora Mistveil]] – Reclusive but brilliant, frequently consulted on arcane boundary fluctuations and leyline fractures.  
- [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Rift Scholars Collective/The Riftspire Archives|The Riftspire Archives]] – Their headquarters, a vaulted research tower of Pre-Rising origin reinforced by arcane resonators.  
- Potential Story Hooks:  
  - Escorting Rift Scholars to breach sites under threat of demonic eruption  
  - Locating missing Pre-Rising rift control schematics  
  - Mediating Rift Scholar–[[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Ashen Vanguard|Ashen Vanguard]] tensions over priority of action vs. preservation  
  - Discovering a Riftborne relic that alters memory or time perception  
- Symbol: An eight-pointed star fracturing around a spiral void rune, with a shimmering line of ward-script beneath.  
- Uniforms: Scholars wear slate-blue robes stitched with interwoven glyph-threads and shimmering planar anchors at their belts.
