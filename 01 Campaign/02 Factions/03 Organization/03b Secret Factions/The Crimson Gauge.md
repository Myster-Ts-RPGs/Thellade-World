---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Rusted Gauge Foundry]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/CrimsonGauge.png
rivals:
  - "[[The Eternal Concord]]"
  - "[[The Arcane Wardens]]"
aliases:
  - Crimson Gauge
pronounced: CRIM-son GAYJ
founded: 09 Frostfall 137 PR
organizationtype:
  - Secret
  - Trade
  - Syndicate
head:
  - "[[Dornis Marrik]]"
steward:
  - "[[Seren Valmor]]"
location:
  - "[[The Outcast Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Kanda Isles]]"
  - "[[Kanda]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Lambaro Isles]]"
  - "[[Lambaro]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mangagoy Isles]]"
  - "[[Mangagoy]]"
  - "[[Tallowgate]]"
  - "[[Crucible Hollow]]"
  - "[[Ashgate Market]]"
  - "[[Black Powder Cache]]"
  - "[[The Rusted Gauge Foundry]]"
  - "[[Smuggler's Walk Cell]]"
foundedshort: 137.06.09 PR
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

### Overview
### Description
> The [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Crimson Gauge|Crimson Gauge]] is a clandestine weapons-smuggling syndicate specializing in firearms, explosives, and alchemical weaponry. Primarily based in [[Lambaro]], the organization thrives on destabilizing political structures by supplying mercenary companies, rebels, and corrupt nobles with advanced weaponry.

### Oaths
> "In fire, we find freedom. In chaos, we find profit."

### Mission Statement
> To monopolize the supply of advanced and experimental weaponry throughout the Outcast Isles, empowering disruptive forces and maintaining a profitable undercurrent of conflict.

### Laws
> - No weapon is ever truly lost; if stolen, it must be reclaimed or destroyed.
> - Trade only to factions or individuals that further destabilize authority.
> - Protect the Crimson Gauge's secrets at all costs.

### Tenets
> - Innovation through destruction.
> - Chaos is a currency.
> - Every explosion writes our name in history.

### Prohibitions
> - No selling to religious orders or peacekeeping organizations.
> - No engaging in direct political governance.
> - No unsanctioned use of Gauge experimental weaponry.

## Current Events
- [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Crimson Gauge|Crimson Gauge]] arms have been appearing in conflicts across [[Lambaro]] and [[Mangagoy]].
- Prototype weapons linked to [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Lambaro/Lambaro City/Seren Valmor|Seren Valmor]] found at illegal fighting arenas.
- Rumors suggest [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Lambaro/Lambaro City/Dornis Marrik|Dornis Marrik]] seeks Pre-Rising weapon schematics rumored hidden in the Outcast Isles.

## History
- Founded during the Lambaro Industrial Boom of 137 PR.
- Early alliances with corrupt military officers allowed access to experimental weapon stockpiles.
- Expanded influence into [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Kanda Isles/Kanda|Kanda]] through underworld smuggling rings.
- Recently began collaboration with alchemical mercenaries out of [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]].

### Campaign Events
[[Campaign Group 5]]
  - Encountered mercenary cells armed with prototype explosives in Boba (weapons suspected Crimson Gauge origin).

[[Campaign Group 3]]
  - Investigated sabotage attacks in Mangagoy docks potentially involving Crimson Gauge munitions.

## Hierarchy
- **Supreme Leader:** [[Dornis Marrik]] – Ruthless arms dealer and experimental weapon innovator, known as 'Redline'.
- **Steward:** [[Seren Valmor]] – Alchemist specializing in explosive munitions and chemical warfare, known as 'The Powder Queen'.

## Locations
### Primary Hideouts
- [[The Rusted Gauge Foundry]] (Lambaro > Crucible Hollow)

### Secondary Hideouts
- [[Black Powder Cache]] (Kanda > Tallowgate)
- [[Smuggler's Walk Cell]] (Mangagoy > Ashgate Market)

## Notes
- **Threat Level:** High
- **Speculative Rift:** Growing tension between [[Dornis Marrik]]'s aggressive expansionist vision and [[Seren Valmor]]'s desire for more controlled, strategic deployment of assets.
- **Symbol:** A crimson gear cracked down the center with a black powder plume curling behind it.
- **Uniforms:** Operatives often wear dark leather coats with hidden reinforced panels and a crimson sigil stitched inside the collar.

### Key Plot Threads
- [[Dornis Marrik]]'s hunt for mythic firearm schematics tied to Pre-Rising weapon vaults.
- [[Seren Valmor]]'s rumored experiments to create chain-reaction detonators.
- Political disruption efforts in [[Lambaro]] and [[Kanda]] funded by Crimson Gauge clients.

### Artifacts and Evidence Found
- Black-market ledgers listing sales of explosive weaponry to mercenary guilds.
- Seized prototype explosives marked with the Crimson Gauge insignia.
- Smuggler manifests referencing 'The Rusted Gauge' and 'Powder Queen Specials'.
- Broken crates of alchemical firebombs recovered near sabotage sites in [[Mangagoy]].
