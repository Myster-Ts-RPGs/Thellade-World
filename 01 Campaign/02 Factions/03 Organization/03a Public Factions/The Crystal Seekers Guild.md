---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[Shardspire Hall]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - National
art: 90 Assets/Images/Organizations/CrystalSeekersGuild.png
location:
  - "[[The Outcast Isles]]"
  - "[[Jambito Isles]]"
  - "[[Kanda Isles]]"
  - "[[Lambaro Isles]]"
  - "[[Mangagoy Isles]]"
  - "[[Middle Isles]]"
  - "[[Mwingu Isles]]"
  - "[[Mangagoy]]"
  - "[[Glowquarter]]"
  - "[[Shardspire Hall]]"
  - "[[Boba]]"
  - "[[Sunfire Heights]]"
  - "[[Arcane Relay Annex]]"
  - "[[Seaside Cape]]"
  - "[[Mossgate Market]]"
  - "[[Crystal Trade Contact Point]]"
  - "[[Mwingu]]"
  - "[[Scholar's Ring]]"
  - "[[Mount Crystalspire Research Post]]"
  - "[[Jambito]]"
  - "[[Deepwall Reach District]]"
  - "[[Rift Crystal Liaison Post]]"
head:
  - "[[Relian Vost]]"
allies:
  - "[[The Emberborn League]]"
  - "[[The Wardens of the Deep Dark]]"
rivals:
  - "[[The Bleeding Tide]]"
  - "[[The Black Sepulcher]]"
  - "[[The Gilded Daggers]]"
founded: 18 Summerwane -4 PR
organizationtype:
  - Guild
pronounced: KRIS-tal SEE-kers
aliases:
  - Crystal Seekers
  - Crystal Seekers Guild
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
> [[The Crystal Seekers Guild]] is a specialized guild dedicated to locating, recovering, and studying the dwindling magical crystal reserves of the Pre-Rising era. These crystals once powered Kanda’s airships, arcane engines, and warding systems, and their loss has left the kingdom diminished. The Seekers operate expeditions into unstable volcanic regions, Pre-Rising ruins, and sites affected by planar rift activity in search of these rare power sources. Though politically neutral, the guild guards its finds with zealous discretion and is known to employ relic hunters, arcane geologists, and smuggler-explorers alike.

### Oaths
> “By crystal’s glow, we seek the core. By fracture’s edge, we claim no more than truth.”

### Mission Statement
> To restore the arcane backbone of Kanda by recovering, preserving, and studying ancient magitech crystals lost during the Rising Era.

### Laws
> - No tampering with unstable crystal cores without authorization.  
> - All recovered crystals must be logged and stored for arcane analysis.  
> - Guild knowledge may not be shared with non-vetted factions or merchants.  
> - Members must declare all personal relics during expedition return reports.

### Tenets
> - The past still powers the future.  
> - Truth lies beneath dust and stone.  
> - No fire burns brighter than discovery.  
> - Protect the spark, even if it costs you the flame.

### Prohibitions
> - Selling recovered crystal tech on the black market.  
> - Hoarding magical fragments or relics without clearance.  
> - Unauthorized interference with rift structures.  
> - Assisting known crystal poachers or cult-affiliated smugglers.

## Current Events
> - [[Arlyn Thorne]] was encountered by Group 1 during an excavation beneath [[Mount Crystalspire]] in [[Mwingu]]. Her reckless methods contrasted with the party’s caution, but cooperation led to discoveries about crystal instability and abyssal echoes.  
> - Guild operatives maintain contact with [[The Emberborn League]] and [[The Wardens of the Deep Dark]] at active digs, including near [[Lambaro]] and [[Seaside Cape]].  
> - [[Kiva Shadeveil]] reported unusual flux in leyline resonance, indicating a latent rift forming near the [[Boba]] coastline. An expedition is being assembled.  
> - Multiple crystal caravans have been targeted by [[The Bleeding Tide]] and cult agents of [[The Black Sepulcher (Cult of Orcus)]] — protection requests have been issued across Lambaro and Mangagoy.

## History
> Founded in 18 Summerwane -4 PR, during the tail end of crystal depletion prior to the Rising, the Crystal Seekers Guild was born from the panic of Kanda’s arcane collapse. Originally a coalition of relic scholars and rogue prospectors, they coalesced under [[Relian Vost]] after the sealing of the Outcast Isles, forming a unified charter to retrieve vital arcane materials.  
> The guild rapidly earned repute for field efficiency and deep Underdark knowledge, employing unconventional methods including clandestine digs, rift studies, and experimental planar stabilization. Despite tensions with the Crown over artifact control, they remained legally neutral and became a de facto provider of arcane salvage post-Rising.

## Notes
- [[Relian Vost]] – Drow Shardmaster, guild leader, and expert on Underdark crystal strata. Known for his smoky presence and crystalline lanterns.  
- [[Arlyn Thorne]] – Reckless half-elf relic hunter; known for both her brilliance and disregard for caution.  
- [[Teyla Skarn]] – Human scout; operates on the edge of legality, rumored to fence minor finds.  
- [[Jorrick Flint]] – Dwarf engineer; his mechanical badger “Clinker” assists in dig operations.  
- [[Kiva Shadeveil]] – Tiefling mage; specialist in rift-imbued crystal formations and planar interference.  
- Quest Hooks: Crystal recovery contracts, Rift stabilization experiments, Pre-Rising ruin delves, Cultic interference at dig sites.  
- Symbol: A crystalline spiral encircling a three-pointed lantern spark.  
- Uniforms: Varies by branch, but excavation gear typically includes glowing-rune harnesses, arcane lanterns, and layered cloaks woven with sigil thread.




