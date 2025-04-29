---
tags:
  - "#Organization"
hq: "[[The Voidwatch Bastion]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/VoidscourgeHunters.png
aliases:
  - The Hunters
  - Voidscourge Hunters
  - Voidscourge
pronounced: VOYD-skourj HUN-ters
founded: 8 Wyrmsdusk -7 PR
organizationtype:
  - Circle
  - Order
steward:
  - "[[Garrick Stonefist]]"
allies:
  - "[[The Arcane Wardens]]"
rivals:
  - "[[The Black Sepulcher]]"
  - "[[The Infernal Covenant]]"
  - "[[The Bleeding Tide]]"
  - "[[The Red Runners]]"
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
> [[The Voidscourge Hunters]] are an elite cadre of planar hunters trained to eradicate extraplanar threats, voidspawn, and abyssal remnants wherever they surface in Kanda. Masters of specialized firearms, enchanted traps, and sigil binding techniques, the Hunters operate primarily in isolation, answering only to their Huntmaster and their mission to safeguard the Isles from the unseen dangers birthed during and after the Rising.

### Oaths
> "No gate unguarded. No beast unchallenged. No soul forsaken."

### Mission Statement
> To seek, neutralize, and seal extraplanar threats across Kanda before they can destabilize or devastate mortal lands.

### Laws
> - Loyalty to the Hunt above personal ambition.  
> - Concealment of advanced hunting techniques from unproven outsiders.  
> - No allegiance sworn except to the Huntmaster’s commands and the Isles' survival.  
> - Sacrilege against the Order is punishable by exile—or the hunt.

### Tenets
> - The Rift births abominations; the Hunt preserves the Isles.  
> - Steel and sorcery serve only if honed by discipline.  
> - No threat is too ancient, too distant, or too obscure.

### Prohibitions
> - Forbidden alliances with extraplanar beings.  
> - Hoarding abyssal relics without approval of senior Hunters.  
> - Abandoning a hunt once sanctioned without absolute necessity.

## Current Events
> - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Jambito/Jambito/Garrick Stonefist|Huntmaster Garrick Stonefist]] is directing intelligence operations from [[The Voidwatch Bastion]] to track suspected planar breaches along the southern coast of Jambito.  
> - [[Hunter's Spur Outpost]] in [[Stonebrace Docks]] has become a rally point for marine-based void anomaly patrols across Kanda’s waters.  
> - The newly founded [[Hollowfield Waystation]] near [[Mangagoy]] aids rapid deployment into volcanic zones where Riftborn creatures are rumored to nest.  
> - A warning flare was sent from the Hollowfield Waystation two weeks ago; scouting parties have not yet returned, and the Bastion readies reinforcement teams.  
> - Rumors persist that remnants of the [[The Black Sepulcher]] are using planar disturbances to mask their summoning rites.

## History
> Formed in the years leading to the Rising, the Voidscourge Hunters unified disparate monster-hunting traditions into a structured order capable of countering planar threats. The devastation wrought by the Rising only deepened their mandate. Today, the Hunters are both revered and feared—seen as Kanda’s last line of defense against abyssal incursion, and as grim reminders of the dangers that still lurk unseen.

## Notes
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Jambito/Jambito/Garrick Stonefist|Huntmaster Garrick Stonefist]] – Veteran of more than 30 Rift incursions; rumored to have once severed a rift’s anchor single-handedly.  
- [[The Voidwatch Bastion]] – A fortified tower in [[Eastwatch District]] of [[Jambito]], hosting relic archives, training halls, and planar maps.  
- [[Hunter's Spur Outpost]] – Naval-ready field barracks located in [[Stonebrace Docks]], [[Kanda]], for sea-bound threat response (Generated).  
- [[Hollowfield Waystation]] – Frontier deployment post at the edge of [[01 Campaign/01 World/07 Districts/Mwingu/Watcher's Hollow|Watcher's Hollow]], [[Mangagoy]]; specializes in quick-encampment hunting raids.  
- Symbol: A black gauntlet gripping a violet-forged lance, impaling a yawning rift.  
- Uniforms: Void-silver embossed leathers, bearing glyph-woven pauldrons and midnight-blue hunting cloaks.
