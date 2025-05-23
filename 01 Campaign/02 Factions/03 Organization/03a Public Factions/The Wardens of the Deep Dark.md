---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Black Vault]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/WardensOfTheDeepDark.png
pronounced: WAR-dens of the DEEP DARK
aliases:
  - The Black Wardens
  - Wardens of the Deep Dark
founded: 03 Nightveil -342 PR
organizationtype:
  - Circle
  - Order
head:
  - "[[Dren Hollowstone]]"
location:
  - "[[The Outcast Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Jambito Isles]]"
  - "[[Jambito]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Kanda Isles]]"
  - "[[Kanda]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Lambaro Isles]]"
  - "[[Lambaro]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mwingu Isles]]"
  - "[[Mwingu]]"
  - "[[Deepwall Reach District]]"
  - "[[Stonebrace Docks]]"
  - "[[Ironspan Gate District]]"
  - "[[Scholar's Ring]]"
allies:
  - "[[The Arcane Wardens]]"
  - "[[The Crystal Seekers Guild]]"
rivals:
  - "[[The Black Sepulcher]]"
  - "[[The Bleeding Tide]]"
foundedshort: -342.07.03 PR
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
> [[The Wardens of the Deep Dark]] are an ancient organization dedicated to recovering Pre-Rising knowledge from the Deep Dark, a network of collapsed tunnels and ruins hidden beneath the Isles. Founded centuries before the Rising, they stand sentinel against the resurgence of demonic threats, using a mixture of scholarship, martial prowess, and ancient binding magics to seal or contain horrors beneath the earth.

### Oaths
> “The darkness forgets. We remember.”

### Mission Statement
> To safeguard Kanda by uncovering and containing hidden Pre-Rising ruins, sealing daemonic influences, and preserving ancient knowledge of the Isles’ hidden depths.

### Laws
> - All relics must be catalogued and secured in the Black Vault.  
> - Wardens may not abandon a site unless authorized by a senior Vaultkeeper.  
> - Alliance with surface authorities is permitted but must prioritize artifact security over diplomacy.  
> - Known daemonic relics must be destroyed or contained without exception.

### Tenets
> - Knowledge unguarded invites destruction.  
> - The Deep Dark is no longer ours—it must be respected and feared.  
> - Trust not what you hear in the depths.  
> - Secrecy shields the future.

### Prohibitions
> - Unauthorized excavation of known Deep Dark sites.  
> - Cooperation with extraplanar entities, even for "peaceful" research.  
> - Personal acquisition of relics or artifacts.  
> - Destruction of Pre-Rising records without command authority.

## Current Events
> - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mwingu/Mount Crystalspire Excavation/Dren Hollowstone|Vaultkeeper Dren Hollowstone]] oversees expeditions across multiple Isles from [[The Black Vault]] but is personally embedded at the Mount Crystalspire dig site&#8203;:contentReference[oaicite:0]{index=0}.  
> - [[Blackroot Outpost]] in [[Jambito]] monitors subsurface collapses linked to leyline shifts, suspected to have ties to ancient crypt wards.  
> - [[Sunken Reliquary Wing]] in [[Kanda]]'s [[Stonebrace Docks]] specializes in relic containment recovered from flooded Deep Dark passages.  
> - [[Underdeep Annex]] near [[Ravensath Woods]] in [[Lambaro]] assists in isolating Pre-Rising ruins that recent mining uncovered.  
> - Cooperative work with [[Crystal Seekers Guild]] teams near Lambaro has yielded unstable but salvageable relic caches.  
> - Warnings of Cult of Orcus agents operating in former Deep Dark junctions have placed all active Wardens on alert.

## History
> Established in the ancient days before the Rising (3 Duskwane -342 PR), the Wardens of the Deep Dark originally served as a scholarly network exploring the vast tunnel systems beneath the Isles. Their role changed drastically following the first demon incursions—forced to take up arms and turn their knowledge toward containment rather than discovery.  
>  
> In the centuries since, they have evolved into silent guardians, operating out of hidden strongholds and forging pacts with few. Their work remains vital yet largely unsung: most surface-dwellers owe their safety to battles fought deep below their feet, unseen and unrecorded.

## Notes
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mwingu/Mount Crystalspire Excavation/Dren Hollowstone|Vaultkeeper Dren Hollowstone]] – Gruff, pragmatic, and unyielding; his life’s work is preventing the mistakes of the Pre-Rising era from repeating.  
- [[The Black Vault]] – Vast underground archive beneath [[Mwingu]]'s [[01 Campaign/01 World/07 Districts/Mwingu/Scholar's Ring|Scholar's Ring]], repository of Pre-Rising relics and forbidden artifacts.  
- [[Blackroot Outpost]] – Monitoring and emergency response base near [[Deepwall Reach District]], [[Jambito]].  
- [[Sunken Reliquary Wing]] – Relic recovery and flood management site in [[Stonebrace Docks]], [[Kanda]].  
- [[Underdeep Annex]] – Expedition support and relic quarantine zone at [[Ironspan Gate District]], [[Lambaro]].  
- Symbol: A downward-pointing black key over a gray abyssal spiral, bound with four silver chains.  
- Uniforms: Deep gray field cloaks reinforced with rune-inscribed leather armor; insignia stitched in void-black and muted silver thread.
