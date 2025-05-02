---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Ashen Vault]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/SilverChain.png
allies:
  - "[[The Bleeding Tide]]"
  - "[[The Red Runners]]"
  - "[[The Blackwake Corsairs]]"
aliases:
  - Silver Chain
rivals:
  - "[[The Ashen Vanguard]]"
  - "[[The Emberheart Traders]]"
founded: "03 Emberwake 187 PR "
pronounced: SIL-vur chayn
organizationtype:
  - Smuggling
  - Black Market
head:
  - "[[Alvinar Merrowyn]]"
location:
  - "[[The Outcast Isles]]"
  - "[[Kanda Isles]]"
  - "[[Kanda]]"
  - "[[Glimmershade]]"
  - "[[The Ashen Vault]]"
  - "[[Boba]]"
  - "[[Brimstone Docks]]"
  - "[[The Hollow Fang]]"
  - "[[Sunfire Heights]]"
  - "[[The Embercoils]]"
  - "[[Ambassadors Row]]"
  - "[[Merrowyn Estate]]"
  - "[[Gilded Strand]]"
  - "[[Verannis Estate]]"
  - "[[Lowmire Gutter]]"
  - "[[Broken Bell Safehose]]"
  - "[[Lambaro Isles]]"
  - "[[Lambaro]]"
  - "[[Arcspire District]]"
  - "[[Reskar's Inkfold]]"
  - "[[Mangagoy Isles]]"
  - "[[Mangagoy]]"
  - "[[Ashgate Market]]"
  - "[[The Mist Market]]"
  - "[[Middle Isles]]"
  - "[[Sable Reef Anchorage]]"
  - "[[The Gilded Shadow]]"
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
> TABLE without id file.link AS "Name", condition AS Condition, aliases AS Aliases, join(occupation, ", ") AS "Occupations", link(location) AS "Location"
> FROM "01 Campaign"
> WHERE contains(tags, "Character") AND econtains(organization, this.file.link)
> SORT tags DESC, file.name ASC

## Overview
### Description
> [[The Silver Chain]] is a clandestine smuggling syndicate specializing in the movement of rare magical contraband, stolen artifacts, and forbidden knowledge across the Outcast Isles. Its influence is strongest in the major cities of [[Kanda Isles]], where it leverages noble ties and black-market networks to maintain control. The organization values subtlety, loyalty, and the strategic use of leverage. Many of its operations are conducted beneath the cover of legitimate businesses and noble estates.

### Oaths
> “Every link forged is a vow unbroken.”

### Mission Statement
> To control the flow of illicit arcane goods across the Isles while evading detection and maintaining leverage over political, arcane, and economic rivals.

### Laws
> 
- Never reveal the Chain.
- Obey the orders of your direct superior, no matter their identity.
- Protect fellow members unless ordered otherwise.
- No public markings or self-identification.

### Tenets
> 
- Power lies in secrecy.
- Gold buys silence, but loyalty is earned.
- No deal is ever truly off the table.

### Prohibitions
> 
- Betraying the identity of another member.
- Unauthorized dealings with the [[Ashen Vanguard]].
- Operating independently in contested cities without Chain approval.

## Current Events
- [[Alvinar Merrowyn]] has solidified the faction's noble cover through operations based in the [[Merrowyn Estate]] in [[Boba]].
- [[Selaya Dornis]] continues to expand influence in [[Mangagoy]]’s underground through the [[Mist Market]].
- Expansion efforts have begun in [[Lambaro]] via [[Olin Reskar]] and the establishment of [[Reskar’s Inkfold]].
- Increased pressure from the [[Ashen Vanguard]] has led to the fortification of several safehouses in [[Boba]].
- [[Darius Fellis]] maintains long-distance communication from the [[Middle Isles]], operating aboard the [[Gilded Shadow]].

## History
- 03 Emberwake 187 PR: Founded by rogue merchants and dissident nobles following the collapse of a Kandan banking house.
- 192 PR: Secured long-term political immunity for the Merrowyn family via covert contracts.
- 198 PR: Opened the first arcane ledger hub at [[Thrennos Exchange]] in [[Ironveil Commons]].
- 203 PR: Failed assassination attempt on a rival smuggling lord led to splinter faction formation in [[Lowmire Gutter]].
- 208 PR: [[The Hollow Fang]] and [[Ashen Vault]] added as safehouses in [[Boba]] and [[Kanda]] respectively.
- 211 PR: Initiated discreet smuggling through the [[Mist Market]] during leyline flux disturbances.

### Campaign Events
- None known. Awaiting first party interaction.

## Hierarchy
- **Supreme Leader:** [[Alvinar Merrowyn]] – Known as 'The Silver Fang,' a noble of [[House Merrowyn]] using his influence to protect and expand the Chain's network.
- **Council-Level Members:**
  - [[Darik Thrennos]] – 'The Coin'; oversees bribery and political funding operations.
  - [[Darius Fellis]] – 'The Ghost'; manages out-isles operations and subtle assassinations.
  - [[Lysara Verannis]] – 'The Silk'; controls high-society infiltrations.
  - [[Selaya Dornis]] – 'The Whisper'; liaison to arcane suppliers.
- **Regional Contacts / Lieutenants:**
  - [[Jorren Vexlar]] – 'The Tallyman'; controls shipping data via [[The Hollow Fang]] in [[Boba]].
  - [[Korrin Valros]] – 'The Smoke'; handles low-visibility logistics from [[The Embercoils]].
  - [[Olin Reskar]] – 'The Quill'; Lambaro-based scribe and document forger.
  - [[Verrik Myrros]] – 'The Blade'; executes enforcements and silencing operations in [[Boba]].

## Locations
### Primary Hideouts
- [[Merrowyn Estate]] (Boba – Ambassadors Row) – Headquarters and noble cover estate.
- [[Ashen Vault]] (Kanda – Glimmershade) – Secure storage and internal tribunal hall.

### Secondary Hideouts
- [[The Hollow Fang]] (Boba – Brimstone Docks) – Coastal receiving center for stolen goods.
- [[The Embercoils]] (Boba – Sunfire Heights) – Smuggler hideaway masked as a glassworks furnace.
- [[Thrennos Exchange]] (Boba – Ironveil Commons) – Falsified trade office for laundering gold.
- [[Broken Bell Safehouse]] (Boba – Lowmire Gutter) – Emergency fallback for compromised agents.
- [[Verannis Estate]] (Boba – Gilded Strand) – Noble-owned salon front for black-market meetings.
- [[Reskar’s Inkfold]] (Lambaro – Arcspire District) – Secret contract and forgery hall.
- [[Mist Market]] (Mangagoy – Ashgate Market) – Arcane smuggler haven beneath the main bazaar.
- [[The Gilded Shadow]] (Middle Isles – Sable Reef Anchorage) – Floating black market ship.

## Notes
- **Threat Level:** High
- **Speculative Rift:** None confirmed. Loyalty to [[Alvinar Merrowyn]] remains strong, though rivalries exist among council members.
- **Symbol:** A silver chain looped into a double-knot.
- **Uniforms:** No formal garb. High-ranking members may wear chain-shaped pendants denoting position, typically enchanted to self-destruct if tampered with.

### Key Plot Threads
- Growing tension with the [[Ashen Vanguard]] over increased enforcement in [[Boba]].
- Unknown benefactor funding [[The Gilded Shadow]] and [[The Whisper]]'s cross-isle arcane operations.
- [[The Quill]] possibly fabricating false relic documents affecting player access to real Pre-Rising artifacts.

### Artifacts and Evidence Found
- Forged shipping manifests traced to [[Thrennos Exchange]].
- Smuggled moonsteel weapons found in [[Mist Market]] cache (no direct link yet).
- Partial ledger burned from [[The Gilded Shadow]] recovered near [[Cradlecliff]] harbor.
