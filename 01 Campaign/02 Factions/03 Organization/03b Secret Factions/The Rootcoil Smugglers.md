---
tags:
  - "#Organization"
  - "#TODO"
  - "#Canon"
hq: "[[The Black Echo Vault]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/RootcoilSmugglers.png
location:
  - "[[The Deep Dark]]"
  - "[[Blackwater Crossing]]"
  - "[[Daggerfall Hollow]]"
  - "[[Shadewarren Outpost]]"
  - "[[Duskwell Cavern]]"
  - "[[Darkspire Refuge]]"
  - "[[The Veins of Night]]"
  - "[[Shadowthread Warrens]]"
  - "[[The Black Echo Vault]]"
organizationtype:
  - Smuggling
  - Secret
pronounced: ROOT-koyl SMUHG-lurz
aliases:
  - The Coil
  - The Ledgerless
organization:
  - "[[The Black Sepulcher]]"
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

> The Rootcoil Smugglers are a covert cultic cell operating under the guise of an independent courier and logistics syndicate. Formally unaffiliated with any surface faction, they use arcane trade routes, falsified credentials, and psionically seeded identities to move goods, artifacts, and people through leyline intersections across the Outcast Isles. In truth, they are a front for the [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Black Sepulcher|Black Sepulcher]], tasked with the transport of sacrificial materials, corrupted sigils, and components needed for abyssal rituals. Their operations are defined by subtlety, precision, and ritual deception.

### Oaths

> “We are the unseen hand; we move what must not be noticed.”  
> “Let no seal remain closed when the hour strikes.”  
> “All routes bend toward release.”

### Mission Statement

> The Rootcoil Smugglers exist to infiltrate logistics networks across the Isles, destabilize arcane containment systems, and deliver the ritual components necessary for the unsealing of [[01 Campaign/03 Entities/02c Orcus' Lieutenants/Xal'Zul|Xal’Zul]]’s mouths. They work to obscure divine movements and divert planar energies under the banner of trade, using silence and misdirection as their most potent tools.

### Laws

> - Members must maintain at least one legitimate cover identity at all times.  
> - All leyline beacons encountered must be reported and mapped within the Rootcoil ledger.  
> - No member may speak the name of Orcus aloud while on the surface.  
> - Infiltrations must not harm the timeline of scheduled sacrifices.  
> - All courier sigils must be marked with a false receipt glyph.

### Tenets

> - Blend with the breath of cities—be smoke, not flame.  
> - Every delivery changes the world.  
> - Lies are kinder than truths when truth is premature.  
> - Rituals must be layered in memory and forgetfulness.  
> - No shipment is too small if it bears purpose.

### Prohibitions

> - Revealing cult affiliations or ritual truths to non-members.  
> - Failing to mask leyline interference within a delivery route.  
> - Engaging with divine or arcane wardens in open conflict.  
> - Abandoning a shipment or sigil before it is anchored.  
> - Speaking a target's true name during preparation.

---

## Culture

The Rootcoil Smugglers value silence, patience, and symbolic performance. Their rituals often involve staged gestures that appear mundane but serve as encoded transmissions or psionic triggers. Most members do not know the full extent of their cell’s objectives—knowledge is compartmentalized, often erased, and relearned as needed. Tattoos, branded tally sticks, and altered delivery logs are sacred texts in Rootcoil doctrine. Members refer to each other as “runners,” “knots,” or “slips,” depending on their role in the network.

## Current Events

- A courier operating under the alias [[Dornal Syle]] (true name: [[Vaust Hadrinel]]) recently compromised [[Blackwater Crossing]] by seeding a memory glyph at a druid's residence and removing a leyline seal.  
- A scheduled sacrifice of the real [[Dornal Syle]] is pending at [[The Black Echo Vault]] on **09 Dawnmarch 212 PR**, coinciding with the **new moon of Deimos**.  
- The Hollow Hearth Inn and Blackwater Chapel have been flagged as compromised by surface investigations.  
- Cult operatives are actively redirecting beacon fragments and smuggling psionically anchored tokens toward [[Daggerfall Hollow]].

## History

The Rootcoil Smugglers first formed shortly after the Abyssal Rising, originating as a rogue logistics network among the Deep Dark  communities. Over time, it was infiltrated and restructured by agents of the [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Black Sepulcher|Black Sepulcher]] seeking quiet means to destabilize divine seals. Their adoption of courier guild tools and ritual mimicry allowed them to blend seamlessly into the fractured post-Rising infrastructure. They now operate as sleeper agents across the isles, prepared to act when signal glyphs or false beacons activate.

## Notes:

- Their smuggling manifests are structured in *psionic script*, readable only by glyph-marked minds or via aberrant resonance.  
- Marnie’s testimony and forensic magical residue confirmed the use of **sporehallucin** teas and memory anchors.  
- Investigators suspect Rootcoil nodes are using the **Courier’s Guild Registry** as a hunting ground for replaceable identities.  
- The phrase “Duskfall repeats” has appeared in several Rootcoil-coded documents, suggesting ritual recursion or past failure.




