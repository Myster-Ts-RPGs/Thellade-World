---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[Embercoil Forge]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/IronSyndicate.png
aliases:
  - Iron Syndicate
pronounced: EYE-urn SIN-di-ket
founded: 19 Frostfall 178 PR
organizationtype:
  - Criminal
  - Technological
head:
  - "[[Halden Voss]]"
location:
  - "[[The Outcast Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Lambaro Isles]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/LambaroNotes]]"
  - "[[Crucible Hollow]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mangagoy Isles]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]]"
  - "[[Ashgate Market]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Middle Isles]]"
  - "[[Embercoil Forge]]"
  - "[[01 Campaign/01 World/08 Points of Interest/02 Shop/Mangagoy Isles/Mangagoy/Blackhook Salvage Yard]]"
  - "[[Smuggler's Dock]]"
rivals:
  - "[[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Gilded Hammer Union]]"
  - "[[The Phoenix Assembly]]"
  - "[[Silver Tongues]]"
foundedshort: 178.06.19 PR
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
> [[The Iron Syndicate]] is a covert coalition of rogue inventors, black-market engineers, and disgraced artificers operating in the shadows of [[OneNote/Crossroads2025/Project 1 Archive/LambaroNotes]]'s industrial districts. Ruthlessly pragmatic and fiercely protective of technological advantage, they undermine rivals like the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Verdant Hand|The Verdant Hand]] through espionage, sabotage, and theft. The Syndicate traffics in forbidden schematics and Pre-Rising relics, seeking to dominate innovation through subversion, not cooperation.

### Oaths
> “From scrap, supremacy. From shadow, salvation.”

### Mission Statement
> To reclaim control over innovation and invention by any means necessary, ensuring that no invention is ever again monopolized by academic elites or state-sponsored guilds.

### Laws
> • Secrecy above all.  
> • Theft of invention is a right of the capable.  
> • Syndicate designs must never fall into regulated hands.

### Tenets
> • Innovation requires risk.  
> • Markets are meant to be exploited, not protected.  
> • Authority stifles progress.

### Prohibitions
> • Revealing Syndicate blueprints to outside guilds.  
> • Assisting the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Gilded Hammer Union|Guilded Hammer Union]] or state regulators.  
> • Refusing an assigned sabotage contract.

## Current Events
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Lambaro/Lambaro City/Halden Voss|Halden 'Smokewrench' Voss]] has ordered a series of thefts targeting prototype weapon cores from a Gilded Hammer vault.  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Lambaro/Lambaro City/Ressa Meris|Ressa 'The Phantom Tinkerer' Meris]] was last seen near [[OneNote/Crossroads2025/Project 1 Archive/LambaroNotes]]’s industrial quarter during an interrupted tech demonstration.  
- A new cache has been established at [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Iron Syndicate/Smuggler's Dock|Smuggler's Dock]], linking the Syndicate to relic smugglers in the [[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Middle Isles]].  
- Surveillance indicates Syndicate infiltrators may be operating under false identities at [[01 Campaign/02 Factions/03 Organization/03d Educational Institutions/Outcast Isles/Lambaro Education Hall (Faction)|Lambaro Education Hall]] and the [[Lambaro Institute of Innovation]].

## History
- 19 Frostfall 178 PR: Founded by expelled artificers from the [[University of Emberlight]].  
- 181 PR: First confirmed sabotage of a Gilded Hammer manufacturing plant.  
- 195 PR: Began trafficking Pre-Rising relics to black market buyers in [[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mangagoy Isles]].  
- 202 PR: Infiltration of [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Phoenix Assembly|Phoenix Assembly]] tech expos leads to widespread disinformation campaign.  
- 209 PR: Rumors surface of a captured Syndicate automaton containing encrypted blackmail on several nobles.

### Campaign Events
- [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 2|Campaign Group 2]]  
  - Syndicate sabotage of the Lambaro excavation draws citywide suspicion; party uncovers partial schematics tied to a failed relic ignition chamber.  
  - Rumors of a disguised agent working through [[Lambaro Institute of Innovation]] circulate following the destruction of a test automaton.

- [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 5|Campaign Group 5]]  
  - During an investigation into smuggling routes in the [[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Middle Isles]], a Syndicate symbol was recovered from a wrecked crate near [[Westport]]’s shore.

## Hierarchy
- **Syndicate Head:** [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Lambaro/Lambaro City/Halden Voss|Halden 'Smokewrench' Voss]] – Master forger and senior strategist, based in [[Embercoil Forge]]
- **Council-Level Members:**
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Lambaro/Lambaro City/Ressa Meris|Ressa 'The Phantom Tinkerer' Meris]] – Elite saboteur and field operative known for stealth infiltration and arcane traps.
- **Regional Contacts / Lieutenants:**
  - [[Varnick Greyhollow]] – Manages smuggling operations from [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Iron Syndicate/Smuggler's Dock|Smuggler's Dock]].
  - [[Selira Duskweld]] – Allegedly coordinating relic transactions from [[01 Campaign/01 World/08 Points of Interest/02 Shop/Mangagoy Isles/Mangagoy/Blackhook Salvage Yard]].

## Locations
### Primary Hideouts
- [[OneNote/Crossroads2025/Project 1 Archive/LambaroNotes]] > [[Crucible Hollow]] > [[Embercoil Forge]] – Main engineering and design hub.
### Secondary Hideouts
- [[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]] > [[Ashgate Market]] > [[01 Campaign/01 World/08 Points of Interest/02 Shop/Mangagoy Isles/Mangagoy/Blackhook Salvage Yard]] – Smuggler collaboration site for recovered relics.  
- [[Westport]] > [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Iron Syndicate/Smuggler's Dock|Smuggler's Dock]] – [[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Middle Isles]] smuggling node, used for offloading stolen components and experimental parts.

## Notes
- **Threat Level:** High
- **Speculative Rift:** Internal disputes have emerged between relic purists and technomancers experimenting with abyssal cores.
- **Symbol:** A cracked black gear encircling a red flame, flanked by two broken chains.
- **Uniforms:** Members wear plain reinforced work-cloaks bearing soot-stained collars, often lined with hidden tools or glyph-inscribed gear pockets.

### Key Plot Threads
- Syndicate aims to reverse-engineer sealed Pre-Rising technology for resale to offshore buyers.  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Lambaro/Lambaro City/Halden Voss|Halden 'Smokewrench' Voss]] is suspected of acquiring an unstable planar battery from a ruined vault.  
- A rogue automaton bearing Syndicate glyphs is rumored to contain a memory crystal with blackmail on [[OneNote/Crossroads2025/Project 1 Archive/LambaroNotes]]'s artisan nobles.  
- Plans to sabotage the next innovation summit may implicate multiple high-profile inventors and disrupt regulated tech entirely.

### Artifacts and Evidence Found
- Cracked automaton core etched with the Iron Syndicate’s glyph [[Campaign Group 2]].  
- Blueprints containing flawed ignition sequences, traced to [[Halden Voss]]’s signature formula.  
- Forged Gilded Hammer documents discovered in a Syndicate cache.  
- Ledger referencing sales to unnamed buyers via [[Westport]] and [[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]] ports.  
- Blackmail crystal rumored to contain recordings of illicit Pre-Rising relic use by city officials.
