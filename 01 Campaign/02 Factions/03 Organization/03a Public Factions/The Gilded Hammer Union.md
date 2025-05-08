---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[01 Campaign/01 World/08 Points of Interest/01 Factions/The Gilded Hammer Union/The Anvilworks]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - National
art: 90 Assets/Images/Organizations/GuildedHammerUnion.png
allies:
  - "[[Lambaro Institute of Innovation (Faction)]]"
  - "[[The Ashen Vanguard]]"
rivals:
  - "[[The Red Runners]]"
  - "[[The Bleeding Tide]]"
  - "[[The Verdant Hand]]"
  - "[[The Gilded Daggers]]"
  - "[[The Iron Syndicate]]"
location:
  - "[[The Outcast Isles]]"
  - "[[Jambito Isles]]"
  - "[[Jambito]]"
  - "[[Eastwatch District]]"
  - "[[01 Campaign/01 World/08 Points of Interest/01 Factions/The Gilded Hammer Union/Union Smelthouse Cooperative]]"
  - "[[Kanda Isles]]"
  - "[[Kanda]]"
  - "[[Frostlock Commons]]"
  - "[[01 Campaign/01 World/08 Points of Interest/01 Factions/The Gilded Hammer Union/Forgewright's Circle]]"
  - "[[Boba]]"
  - "[[Crucible Hollow]]"
  - "[[01 Campaign/01 World/08 Points of Interest/01 Factions/The Gilded Hammer Union/Ironhall Trade Pavilion]]"
  - "[[Thundertread Ward]]"
  - "[[Lambaro Isles]]"
  - "[[Lambaro]]"
  - "[[01 Campaign/01 World/08 Points of Interest/01 Factions/The Gilded Hammer Union/The Anvilworks]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/Mangagoy Isles]]"
  - "[[Mangagoy]]"
  - "[[Binders' Lane]]"
  - "[[01 Campaign/01 World/08 Points of Interest/01 Factions/The Gilded Hammer Union/Union Freight & Forging Annex]]"
  - "[[Mwingu Isles]]"
  - "[[Mwingu]]"
  - "[[The Tideflats]]"
  - "[[01 Campaign/01 World/08 Points of Interest/01 Factions/The Gilded Hammer Union/Hammerlight Port Forge]]"
head:
  - "[[Boran Steelwright]]"
pronounced: GILD-ed HAM-mer YOU-nion
founded: 08 Harvestshade -6 PR
organizationtype:
  - Guild
aliases:
  - Gilded Hammers
  - Gilded Hammer Union
foundedshort: -6.05.08 PR
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
> [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Gilded Hammer Union|The Gilded Hammer Union]] is one of the most respected artisan guilds in Kanda. Representing smiths, relic-crafters, and material specialists, the Union controls the production of refined alloys, Pre-Rising weapon housing, and enchanted containment frames. They protect guild independence, regulate quality standards, and oppose both criminal smuggling of relics and reckless magitech tampering.

### Oaths
> “Strike true, temper fair, forge legacy.”

### Mission Statement
> To preserve, elevate, and defend the forge-bound traditions of Kanda through quality craft, lawful trade, and inter-island unity.

### Laws
> - Blueprints are considered sacred guild property.  
> - Void-touched materials must be destroyed or purified.  
> - Apprentices must serve under two masters before commission.  
> - All relics forged for external factions require Union mark and approval.

### Tenets
> - Trust the weight of honest work.  
> - No shortcut forges truth.  
> - Flame remembers the shape of every failure.  
> - A bad blade scars more than flesh.

### Prohibitions
> - Selling to cult agents, smugglers, or known pirates.  
> - Forging cursed materials knowingly.  
> - Bidding against fellow Union members in closed contracts.  
> - Refusing safe harbor to a sanctioned craftsman.

## Current Events
> - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Lambaro/Lambaro City/Boran Steelwright|Foreman Boran Steelwright]] declined House Kelthorne’s artifact commission request after reviewing soulstone blueprints.  
> - [[Lazlo]] is assisting the [[Lambaro Institute of Innovation]] with experiments to stabilize rune-conductive alloys.  
> - [[Batrok]] of Group 3 retains honorary Union membership and may return to assist in the testing of hammer-tech relics.  
> - [[Mwingu]]’s forgeport has reported several encounters with black-market agents bearing modified Union sigils—an investigation is underway.  
> - Tensions rise in [[Mangagoy]] between the Union and local shipping guilds regarding control of reinforced relic packaging methods.

## History
> Born from the ashes of southern forge-cults and independent masters during the prelude to the Rising, [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Gilded Hammer Union|The Gilded Hammer Union]] was founded on 28 Stonewake -6 PR. Their first act: the codification of an ethical relicsmithing code. Over time, they became the standard by which all post-Rising craft guilds were measured.  
>  
> Although their influence waned during the infernal pact era, the Union regained prominence by refusing to allow their designs to fall into abyssal hands. Today, they maintain strongholds across five Isles, and are considered among the last defenders of purely material craftsmanship.

## Notes
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Lambaro/Lambaro City/Boran Steelwright|Foreman Boran Steelwright]] – Stoic and pragmatic founder; believes in tradition with purpose.  
- [[Lazlo]] – Dwarven smith and rune-crafter; deeply involved with modern alloy stabilization research.  
- [[Talgar Anvilmarr]], [[Hodden Anvilmarr]] – Master forge-duo operating in Lambaro under Union charter.  
- [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Gilded Hammer Union/The Anvilworks]] – Central HQ in [[Crucible Hollow]], [[Lambaro]]; houses master-forges, guild archive, and dispute court.  
- [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Gilded Hammer Union/Forgewright's Circle|Forgewright's Circle]] – District forgehall in [[Kanda]]; custom commission site for Vanguard and Blazing Pledge arms.  
- [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Gilded Hammer Union/Ironhall Trade Pavilion]] – Merchant outpost in [[Boba]] dealing in refined gear and sigil-bound tools.  
- [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Gilded Hammer Union/Union Freight & Forging Annex]] – Distribution point in [[Mangagoy]] overseeing relic containment systems.  
- [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Gilded Hammer Union/Hammerlight Port Forge]] – Coastal forge-and-dock fusion serving resource intake and barge armor repair in [[Mwingu]].  
- Symbol: Twin hammers crossed over a circular anvil, rimmed in golden flame etchings.  
- Uniforms: Heavy aprons, thick gloves, and rune-bound hammer pins. Formal delegates wear blackened steel mantles over trade robes.
