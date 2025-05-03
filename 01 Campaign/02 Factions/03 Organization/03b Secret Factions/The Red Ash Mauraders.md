---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Ember Hold]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Global
art: 90 Assets/Images/Organizations/RedAshMarauders.png
aliases:
  - Red Ash Mauraders
  - The Ember Circle
pronounced: RED ash muh-RAH-ders
founded: 18 Frostfall 122 PR
organizationtype:
  - Criminal
rivals:
  - "[[The Ashen Vanguard]]"
  - "[[The Phoenix Assembly]]"
  - "[[The Eternal Concord]]"
head:
  - "[[Rask Thandek]]"
location:
  - "[[The Outcast Isles]]"
  - "[[Jambito Isles]]"
  - "[[Kanda Isles]]"
  - "[[Lambaro Isles]]"
  - "[[Mangagoy Isles]]"
  - "[[Middle Isles]]"
  - "[[Mwingu Isles]]"
  - "[[The Ember Hold]]"
  - "[[Sunveil Hollow]]"
  - "[[Boba]]"
  - "[[Brimstone Docks]]"
  - "[[The Rusted Wake]]"
  - "[[Binders' Lane]]"
  - "[[The Smoldering Roost]]"
  - "[[Lambaro]]"
  - "[[Glowmire Terrace]]"
  - "[[The Cinder Refuge]]"
  - "[[The Red Dagger Hold]]"
  - "[[The Bloodied Hollow]]"
  - "[[The Embermoor Spire]]"
  - "[[The Shadow Break]]"
foundedshort: 122.06.18 PR
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
> [[The Red Ash Marauders]] are a ruthless, militarized band of exiles, defectors, and guerrilla warriors who strike at trade routes, destabilize regions, and manipulate noble power from the fringes of society. While publicly branded as outlaws, they have become a self-sustaining paramilitary network spread across the [[Outcast Isles]], feared not for their brutality—but their precision.

### Oaths
> “To burn the chains of the false kings. To take what was taken. To never bow again.”

### Mission Statement
> To destabilize centralized power through raids, sabotage, and subterfuge—claiming control of supply routes, wilderness zones, and black-market channels to build an autonomous war-network.

### Laws
> • Obedience to the Ember Circle is absolute  
> • Spoils are shared by merit of contribution  
> • Secrets are currency; betrayal of one is betrayal of all

### Tenets
> • The kingdom devours the weak—only fire rebuilds  
> • No coin from the crown is clean  
> • Those cast aside become the most dangerous

### Prohibitions
> • Abandoning a raid in progress  
> • Revealing hideouts to outsiders  
> • Negotiating with known Ashen Vanguard or Eternal Concord members

## Current Events
- [[Rask Thandek]] has consolidated leadership under a harsher doctrine, reinforcing [[The Ember Hold]] with siege traps and new survivalist trials.  
- [[Farman Raulf]] has fortified [[The Embermoor Spire]] and begun raiding leyline scouting vessels in the [[Middle Isles]].  
- [[Torik Drennel]] has been implicated in a noble blackmail ring involving multiple holdings in [[Kanda]] and [[Lambaro]].  
- [[Karis Valen]] was spotted overseeing a high-risk smuggling run through [[The Rusted Wake]] near [[Boba]], prompting increased naval patrols.  
- [[Campaign Group 1]] and [[Campaign Group 2]] have reported disrupted trade routes, indirectly traced back to Marauder ambush zones.

## History
- 18 Ashfall 122 PR (Generated): [[Rask Thandek]] unites a series of exile warbands and deserter groups after the failed Ashen Accord treaty collapse.  
- 131 PR: [[The Ember Circle]] formalized as the ruling council, seated at [[The Ember Hold]].  
- 143 PR: First assassination of a crown-funded supply minister traced to [[Sylva Merix]] in [[Lambaro]].  
- 156 PR: [[The Bloodied Hollow]] purged by Ashen Vanguard; rebuilt 8 days later in a new location.  
- 167 PR: [[The Rusted Wake]] seized by Marauder-aligned pirates, creating the Blackwater Smuggler Route.  
- 208 PR: Multiple nobles across [[Kanda]] linked to bribes routed through [[Torik Drennel]] and forged trade decrees.

### Campaign Events
- [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 1|Campaign Group 1]]  
  - Intercepted supply convoy rerouted by unknown forces; field maps later matched route markers used by [[Jorak Relis]]' raiders.
  
- [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 2|Campaign Group 2]]  
  - Evidence of stolen relic transport discovered near [[The Cinder Refuge]]. A coded message included the Ember Circle’s symbol.
  
- [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 4|Campaign Group 4]]  
  - Urban encounter in [[Jambito]] revealed traces of forged weapon permits linked to [[Zorath Renvar]]’s network.

## Hierarchy
- **Supreme Leader:** [[Rask Thandek]] – 'The Red Warlord'; founder of the Ember Circle and master of wilderness warfare.  
- **Council-Level Members (The Ember Circle):**  
  - [[Garran Valdrak]] – 'The Ember Fist'; tactician and commander of frontline raids  
  - [[Neralis Vaskyr]] – 'The Ashen Fang'; espionage and infiltration chief  
  - [[Torik Drennel]] – 'The Smiling Dagger'; master of bribery and political coercion  
  - [[Vorn Draskar]] – 'The Burned Wolf'; internal enforcer and Marauder disciplinarian

- **Regional Contacts / Lieutenants:**  
  - [[Sylva Merix]] – 'The Silent Blade'; infiltrator and noble thief operating from [[The Cinder Refuge]] ([[Lambaro]])  
  - [[Jorak Relis]] – 'The Stormbrand'; mountain raider coordinating from [[The Ember Hold]] ([[Mwingu Isles]])  
  - [[Harren Velka]] – 'The Shadow Wolf'; noble patron shielding operations from [[The Bloodied Hollow]] ([[Kanda Isles]])  
  - [[Karis Valen]] – 'The Black Tide'; smuggler queen of [[The Rusted Wake]] ([[Boba]])  
  - [[Malrik Grell]] – 'The Hollow Mask'; kidnapper and burglar tied to [[The Smoldering Roost]] ([[Mangagoy Isles]])  
  - [[Zorath Renvar]] – 'The Bloodied Hand'; arms dealer and recruiter at [[The Red Dagger Hold]] ([[Jambito Isles]])  
  - [[Farman Raulf]] – 'The Crimson Watcher'; scoutmaster and fugitive hunter from [[The Embermoor Spire]] ([[Middle Isles]])

## Locations
### Primary Hideouts
- [[The Ember Hold]] – Fortified mountain base and seat of [[The Ember Circle]] within the [[Mwingu Isles]]

### Secondary Hideouts
- [[The Bloodied Hollow]] – Raiding camp rebuilt repeatedly across the [[Kanda Isles]]  
- [[The Rusted Wake]] – Dockside smuggler’s den in [[Brimstone Docks]], [[Boba]]  
- [[The Cinder Refuge]] – Hidden cavern depot in [[Glowmire Terrace]], [[Lambaro]]  
- [[The Smoldering Roost]] – Outpost on a reef-ringed isle in the [[Mangagoy Isles]]  
- [[The Red Dagger Hold]] – Ruined stronghold used for weapons caching and recruitment in [[Jambito Isles]]  
- [[The Embermoor Spire]] – Cliffside watchtower and ambush coordination point in the [[Middle Isles]]  
- [[The Shadow Break]] – Jungle fallback shelter for fugitives and wounded raiders in the [[Middle Isles]]

## Notes
- **Threat Level:** Extreme  
- **Speculative Rift:** Some lieutenants disagree with [[Rask Thandek]]’s shift from strategic disruption to scorched-earth operations; whispers of a split within [[The Ember Circle]] are emerging.  
- **Symbol:** A scorched ash branch over a red warbrand, encircled by a broken chain.  
- **Uniforms:** Marauders wear piecemeal armor over dark red cloaks, each marked with a variant of the ember sigil. Officers often wear masks or helms linked to their alias.

### Key Plot Threads
- [[Torik Drennel]] is using bribery to influence the outcome of a disputed [[Kanda]] military tribunal.  
- [[Farman Raulf]] may be coordinating leyline interception operations without informing [[The Ember Circle]].  
- [[Neralis Vaskyr]] is blackmailing a royal archivist who uncovered proof of noble involvement in early Marauder funding.  
- [[Sylva Merix]] has begun staging high-value thefts in [[Lambaro]] under the guise of noble feuds.  
- [[The Shadow Break]] may be used to shelter a fugitive involved in the failed [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Eternal Concord|Eternal Concord]] operation in [[Mangagoy]].

### Artifacts and Evidence Found
- Branded mask of a dead Marauder lieutenant recovered near [[The Bloodied Hollow]]  
- Forged nobility ledger bearing the signature of [[Torik Drennel]]  
- Rust-coated crate of stolen arcane components pulled from a wreck at [[The Rusted Wake]]  
- Ciphered letter intercepted by the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Ashen Vanguard|Ashen Vanguard]], implicating [[Karis Valen]] in void cargo smuggling  
- Map etched with red-ash trails found beneath [[The Shadow Break]]—marked with a glyph unknown to the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Eternal Concord|Eternal Concord]]

