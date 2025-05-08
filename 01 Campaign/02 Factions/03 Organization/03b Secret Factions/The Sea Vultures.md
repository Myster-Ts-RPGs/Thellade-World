---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Silverwake]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/SeaVultures.png
aliases:
  - Sea Vultures
pronounced: SEE VUHL-churz
founded: 17 Emberwake 208 PR
organizationtype:
  - Espionage
  - Smuggling
head:
  - "[[Ralvos Dern]]"
location:
  - "[[The Outcast Isles]]"
  - "[[Kanda Isles]]"
  - "[[Boba]]"
  - "[[Brimstone Docks]]"
  - "[[The Silverwake]]"
  - "[[The Barnacled Ledger]]"
rivals:
  - "[[The Ashen Vanguard]]"
  - "[[The Emberheart Traders]]"
foundedshort: 208.04.17 PR
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
> **Founded Short**| `INPUT[text:foundedshort]` |
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
> [[The Sea Vultures]] are a nimble, loosely structured smuggling outfit operating primarily from [[Boba]]’s waterfront. Formed in 208 PR, they have quickly become known for scavenging naval wreckage, selling illicit salvage, and playing rival factions against each other in the docks of [[Brimstone Docks]]. Led by the ambitious [[Ralvos Dern]] and coordinated on land by the meticulous [[Dorne Vesk]], they thrive on risk, whispers, and fast departures.

### Oaths
> “We take what others sink.”

### Mission Statement
> To exploit naval wreckage, corrupt harbor flows, and disrupted trade routes for smuggling, black-market trade, and covert transport—while maintaining just enough legality to avoid a full crackdown.

### Laws
> • Never betray a Sea Vulture to the port guard  
> • Never sell to more than one side of a war  
> • Always leave with coin in the hold

### Tenets
> • Risk is the tide beneath profit  
> • Dead men tell no tales—unless we sell their logs  
> • Harbor eyes are as dangerous as stormy seas

### Prohibitions
> • No crossing fellow crew or shore contacts  
> • No smuggling infernal contracts or abyssal relics  
> • No direct conflict with established naval powers without orders

## Current Events
- [[Ralvos Dern]] is consolidating power aboard the [[The Silverwake]] by drawing skilled defectors from disbanded pirate crews across the [[Kanda Isles]].
- [[Dorne Vesk]] has been expanding the faction’s influence in [[Brimstone Docks]] through quiet payoffs and controlled leaks to the lower dockmaster guild.
- A cache of enchanted stormglass was recently fenced via [[The Barnacled Ledger]], stirring interest from both the [[Emberheart Traders]] and the [[Crimson Shroud]].
- Rumors suggest [[The Sea Vultures]] may be brokering safe passage for rogue spellcasters trying to leave the [[01 Campaign/01 World/04 Subregions/01 Thellade/Mangagoy Isles]] unnoticed.

## History
- 17 Emberwane 208 PR (Generated): [[Ralvos Dern]] establishes the group after a failed mutiny aboard the [[Nightjaw]], an independent privateer vessel.
- 209 PR: [[The Silverwake]] is commissioned—refitted from a captured customs cutter—and becomes the faction's only permanent sea-based base.
- 210 PR: [[Jessa Dorne]] purchases the derelict site now known as [[The Barnacled Ledger]] to establish land-based coordination.
- 211 PR: An attempted infiltration by the [[Ashen Vanguard]] is narrowly avoided due to forged manifests and dock bribes.
- 212 PR: The group begins expanding into minor delivery operations masking contraband exchanges near [[Jambito]] and [[Mangagoy]].

### Campaign Events
- [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 5|Campaign Group 5]]
  - Dockside rumors suggest [[The Sea Vultures]] aided a masked figure in fleeing the Ember riots under the guise of cargo transfer.
  - A low-level informant paid by the party in [[Brimstone Docks]] was later found dead, possibly tied to internal faction discipline.

## Hierarchy
- **Supreme Leader:** [[Ralvos Dern]] – ‘The Black Wake’ – Captain of the [[The Silverwake]] and founder of the faction.
- **Dockside Coordinator:** [[Jessa Dorne]] – ‘Quickhands’ – Oversees all shore operations from [[Boba]] > [[Brimstone Docks]] > [[The Barnacled Ledger]].
- **No Known Council-Level Members** – All decision-making is currently centralized to Dern and Dorne.

## Locations
### Primary Hideouts
- [[The Silverwake]] – Sea-bound smuggler ship and de facto headquarters (Generated).
- [[The Barnacled Ledger]] – Shorefront dock office used for black market scheduling, bribes, and record laundering (Generated).

### Secondary Hideouts
- None known.

## Notes
- **Threat Level:** Moderate  
- **Symbol:** A black gull clutching a golden dagger over a cresting wave  
- **Uniforms:** Loose dark-blue scarves, patchwork vests with sea-gull insignias, often worn over civilian garb to blend into harbor crowds

### Key Plot Threads
- [[Dorne Vesk]] has eyes on acquiring a second vessel to solidify his own influence—potentially splitting the faction if done without [[Ralvos Dern]]’s approval.
- [[The Silverwake]] may be carrying a Pre-Rising naval compass marked with Warden glyphs; its origin is unknown.
- A dead-drop planned between [[The Sea Vultures]] and a disguised academic from [[Mwingu]] may contain details on arcane ley-routing at sea.
- [[Ralvos Dern]] has recently been seen near shipwreck sites too soon after storms—suggesting access to forbidden forecasting or coordinated sabotage.

### Artifacts and Evidence Found
- Fragments of a magical stormglass sphere sold through [[The Barnacled Ledger]]; latent evocation energy still detectable.
- Forged trade manifests bearing a falsified seal of [[The Emberheart Traders]].
- Bloodstained bribe ledger implicating a now-dead dockmaster, recovered by [[Campaign Group 5]].
