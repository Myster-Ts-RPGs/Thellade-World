---
tags:
  - "#Organization"
hq: "[[Greenheart Grove]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/VerdantHand.png
pronounced: VER-dant HAND
aliases:
  - The Circle of Verdancy
founded: 17 Stormcall -9 PR
organizationtype:
  - Circle
  - Religious
head:
  - "[[Soraya Greenthorn]]"
allies:
  - "[[The Dawnbringers of Lunara]]"
  - "[[The Eternal Concord]]"
rivals:
  - "[[The Guilded Hammer Union]]"
  - "[[The Bleeding Tide]]"
location:
  - "[[The Outcast Isles]]"
  - "[[Jambito Isles]]"
  - "[[Lambaro Isles]]"
  - "[[Mangagoy Isles]]"
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
> [[The Verdant Hand]] is a kingdom-spanning druidic circle devoted to restoring the lands scarred by the Rising and preventing environmental collapse. Although neutral in most political disputes, they are fiercely protective of the natural world, opposing both industrial exploitation and reckless arcane practices. While some view them as radical, many acknowledge their role in healing ecosystems shattered by planar tears and volcanic upheavals.

### Oaths
> "Where fire scorched, we mend. Where stone broke, we seed."

### Mission Statement
> To restore Kanda’s lands and waterways to vibrant health, protect endangered ecosystems, and act as vigilant stewards against further devastation wrought by industry or corruption.

### Laws
> - No member may exploit, sell, or claim ownership over sacred or wild lands.  
> - Healing magic must be freely offered to afflicted terrain and wildlife.  
> - Allies must be respected unless they actively degrade the land.  
> - Neutrality must be preserved in mortal political disputes unless the land itself is threatened.

### Tenets
> - The land lives through our hands.  
> - Destruction must be met with renewal.  
> - Civilization and nature must be in harmony, not opposition.  
> - Honor the old roots and the new shoots.

### Prohibitions
> - Willful pollution of soil, sky, or water.  
> - Collaboration with industrial groups that refuse mitigation or reparations.  
> - Summoning or housing extraplanar entities on sacred sites.  
> - Weaponizing natural magic against commonfolk.

## Current Events
> - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Jambito/Soraya Greenthorn|Archdruid Soraya Greenthorn]] continues to oversee widespread rewilding campaigns from [[Greenheart Grove]] on [[Jambito]].  
> - A new outpost, [[Ashenbloom Refuge]], has been established at the base of Fireplume Mountain near [[Mangagoy]], aimed at containing volcanic pollutant flows.  
> - A secondary sanctuary, [[Whisperwood Hollow]], now flourishes at the edge of [[Ravensath Woods]] near [[Lambaro]], monitoring aggressive logging operations and assisting nearby communities.  
> - Members are coordinating discreetly with [[the Dawnbringers of Lunara]] to purify leyline scars linked to the decaying Pre-Rising barrier.  
> - Tensions are escalating with factions such as [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Guilded Hammer Union|the Guilded Hammer Union]] over expansionist mining projects, particularly around Lambaro’s highlands.

## History
> Founded long before the Rising, the Verdant Hand arose during a time of increasingly reckless resource exploitation. After the volcanic and abyssal devastations of the Rising, their mission expanded dramatically: to heal what could be healed, and prevent further loss.  
>  
> Though decentralized, the Hand operates in remarkable unity through ancient rites of mutual accord. Today, they quietly shape the Isles' future by regreening barren lands, guiding refugees into sustainable practices, and defending wild sanctuaries against all who would defile them.

## Notes
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Jambito/Soraya Greenthorn|Archdruid Soraya Greenthorn]] – Revered founder and living heart of the Hand; said to have merged her bloodline with Kanda’s oldest groves.  
- [[Greenheart Grove]] – The spiritual and logistical hub near [[Jambito]], where the Great Tree still whispers secrets of the land.  
- [[Ashenbloom Refuge]] – Verdant stronghold near [[Mangagoy]]; specializes in healing scorched earth near volcanic flow zones.  
- [[Whisperwood Hollow]] – Woodland sanctuary near [[Lambaro]]; protects against deforestation and rune-iron mining disturbances.  
- Symbol: A green handprint blooming with intertwining roots and a spiral of new leaves at the palm’s center.  
- Uniforms: Forest-toned robes adorned with living mosswork and vine embroidery; ceremonial regalia include seedstone pendants attuned to Kanda’s elemental spirits.
