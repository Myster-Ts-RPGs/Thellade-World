---
tags:
  - "#Organization"
hq: "[[The Flamehold]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - National
art: 90 Assets/Images/Organizations/BlazingPledge.png
founded: 15 Frostfall -2 PR
organizationtype:
  - Legion
head:
  - "[[Mira Valion]]"
location:
  - "[[The Outcast Isles]]"
  - "[[Kanda Isles]]"
  - "[[Kanda]]"
  - "[[Ashfire Bastion District]]"
  - "[[Jambito Isles]]"
  - "[[Jambito]]"
  - "[[Ironspan Gate District]]"
  - "[[Mangagoy Isles]]"
  - "[[Mangagoy]]"
  - "[[The Ember Wharf]]"
  - "[[Middle Isles]]"
  - "[[Seaside Cape]]"
  - "[[Mossgate Market]]"
  - "[[Mwingu Isles]]"
  - "[[Mwingu]]"
  - "[[Watcher's Hollow]]"
  - "[[Detachment Staging Depot]]"
  - "[[Emergency Tactical Dockhouse]]"
  - "[[Field Liaison Office]]"
  - "[[Pledge Sentinel Post]]"
  - "[[Shoreline Patrol Depot]]"
  - "[[The Flamehold]]"
rivals:
  - "[[The Red Ash Mauraders]]"
  - "[[The Bleeding Tide]]"
  - "[[The Infernal Covenant]]"
pronounced: BLAY-zing PLEDGE
aliases:
  - Blazing Pledge
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
> [[The Blazing Pledge]] is a disciplined and fiercely loyal legion tasked with safeguarding [[The Kingdom of Kanda]]’s borders and suppressing emerging threats both foreign and extraplanar. Known for their swift action, decisive strikes, and uncompromising loyalty, the Pledge formed in the wake of the Rising to reinforce the new era of isolation with sharp steel and sharper vigilance.

### Oaths
> "Kanda First. Flame Unyielding. Threats Extinguished."

### Mission Statement
> To enforce the territorial and sovereign safety of the Kingdom of Kanda through immediate response, proactive patrol, and unrelenting action against all threats foreign or unnatural.

### Laws
> - No officer may act contrary to Kanda’s stated security edicts.  
> - Loyalty to the Pledge supersedes all personal attachments.  
> - Any hesitation in command execution is subject to formal review.  
> - All detachment movements must be logged and confirmed at Flamehold HQ.

### Tenets
> - Obedience and readiness are the heart of strength.  
> - Doubt is as dangerous as any enemy.  
> - Kanda’s borders are not lines — they are walls built in fire and blood.  
> - A soldier’s legacy is protection, not memory.

### Prohibitions
> - Cowardice in the face of external incursion.  
> - Disclosure of troop deployments to non-cleared individuals.  
> - Unauthorized engagements outside the Isles.  
> - Collaboration with infernal, abyssal, or extraplanar agents.

## Current Events
> - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Mira Valion|Captain Mira Valion]] is stationed at [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Blazing Pledge/The Flamehold]], preparing contingency forces for rumored cultist movements near the Smokey Shoals.  
> - No known direct interaction with campaign groups has occurred, though regional patrols may be visible to Group 6 in [[Kanda]].  
> - Strategic watchposts and mobile units now operate under silent doctrine as part of Operation Ember Chain, a classified border-hardening initiative.

## History
> Founded in 15 Frostfall -2 PR, [[The Blazing Pledge]] was created as a direct reaction to the growing instability that led to the Rising. As external borders crumbled and extraplanar breaches rose, then-commander [[Halra Mornsteel]]proposed the creation of a dedicated strike legion. The Pledge’s first engagements were battles against the remnants of the cult known as the Crimson Moan.  
>  
> During the early days of the Rising, their units sealed off coastlines and subdued foreign agents attempting to exploit the Isles’ isolation. Their tactics — unrelenting and often fatal — gained both criticism and reverence from contemporaries. [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Mira Valion|Captain Mira Valion]], the current commander, rose through the ranks after her decisive execution of a rebel enclave in the North Kanda Ridges.

## Notes
- [[Captain Mira Valion]] — Commanding officer; fierce defender of national sovereignty. Known for eliminating threats with ruthless efficiency.  
- [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Blazing Pledge/The Flamehold]] — Headquarters and training grounds in Kanda’s [[Ashfire Bastion District]] (Generated).  
- Patrolling areas include [[Smokey Shoals]] coastline and minor fortifications on outlying isles.  
- Often mistaken for [[The Ashen Vanguard]] due to overlapping duties, though the Pledge's methods are far more aggressive and nationally focused.  
- Suppressed historical tension with [[The Infernal Covenant]], following unauthorized operations near leyline anomalies that the Pledge was ordered to abandon.  
- Symbol: A crimson flame coiled around a steel spearhead, rising through a black circle of ash.  
- Uniforms: Charcoal-gray breastplates, red sashes, and crested helms marked with a three-pronged flame sigil.




