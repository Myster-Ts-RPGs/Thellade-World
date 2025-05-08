---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[Sanctum of the Unbound Eye]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/VeilboundCircle.png
aliases:
  - Veilbound Circle
pronounced: VAYL-bound SIR-kuhl
founded: 12 Nightveil 149 PR
head:
  - "[[Kaige Maganti]]"
location:
  - "[[The Outcast Isles]]"
  - "[[Jambito Isles]]"
  - "[[Jambito]]"
  - "[[The Hidden City]]"
  - "[[Sanctum of the Unbound Eye]]"
  - "[[Kanda Isles]]"
  - "[[Kanda]]"
  - "[[Sunveil Hollow]]"
  - "[[Vault of Forgotten Hymns]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/Mangagoy Isles]]"
  - "[[Vault of the Fifth Veil]]"
  - "[[The Deep Dark]]"
  - "[[The Veins of Night]]"
  - "[[Shadowthread Warrens]]"
  - "[[Daggerfall Hollow]]"
  - "[[The Deepcrypt Arcanum]]"
rivals:
  - "[[The Arcane Wardens]]"
  - "[[The Eternal Concord]]"
foundedshort: 149.07.12 PR
organizationtype:
  - Cabal
  - Arcane
  - Cult
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
> [[The Veilbound Circle]] is a secretive cabal of scholars, warlocks, and archivists who safeguard forbidden texts, Pre-Rising magical theories, and suppressed histories. Operating from concealed sanctums scattered across the [[Outcast Isles]] and [[The Deep Dark]], the Circle is committed to preserving arcane truth—even at the cost of defying modern dogma. Members engage in clandestine rituals and magical conservation, resisting suppression by institutions like the [[Arcane Wardens]] and [[Eternal Concord]].

### Oaths
> "Let no veil obscure the truth eternal."

### Mission Statement
> To recover, protect, and disseminate lost magical knowledge and Pre-Rising truth through ritual, scholarship, and defiance of imposed dogma.

### Laws
> - Obey the Circle’s secrecy mandates.
> - Report all significant discoveries to a higher-ranked archivist.
> - Preserve all knowledge intact—no redactions or omissions.

### Tenets
> - Truth before obedience.
> - Revelation through preservation.
> - The hidden past illuminates the present.

### Prohibitions
> - Destroying Pre-Rising materials without approval.
> - Revealing Circle membership to the public or to state agents.
> - Aligning with divine churches or the [[Eternal Concord]].

## Current Events
- [[Kaige Maganti]] is confirmed alive and continues to lead from the [[Sanctum of the Unbound Eye]] beneath [[Jambito]].
- The organization’s cell at the [[Vault of the Fifth Veil]] was compromised following the death of [[Jorvas Fellshade]] during a catastrophic encounter involving a released Lieutenant of [[Orcus]].
- Recruitment among outcast scholars and defecting wardens is on the rise in [[01 Campaign/01 World/04 Subregions/01 Thellade/Mangagoy Isles]] and [[Kanda]].
- An archive discovered in the [[Vault of Forgotten Hymns]] may contain ritual instructions used to suppress Abyssal entities.

## History
- Founded in 149 PR during the suppression of arcane material by the [[Eternal Concord]].
- Survived three major purges by [[Arcane Wardens]] between 153 PR and 188 PR.
- Expanded influence into the [[Deep Dark]] and remote island vaults by 200 PR.
- Internal reformation under [[Kaige Maganti]] consolidated splinter cells under a single doctrine of "reveal and preserve."

### Campaign Events
- [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 3|Campaign Group 3]]
  - Discovered the [[Vault of the Fifth Veil]] on [[01 Campaign/01 World/04 Subregions/01 Thellade/Mangagoy Isles]] during pursuit of cult activity.
  - Encountered [[Jorvas Fellshade]] and inadvertently triggered a cascading failure in a Pre-Rising binding seal, resulting in the release of a Lieutenant of [[Orcus]].
  - Jorvas was killed during the resulting collapse of the vault’s protective enchantments.
  - Partial ritual scrolls recovered describe a layered system of memory-anchored sigils used to maintain Abyssal seals.

- [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 1|Campaign Group 1]]
  - Currently exploring the [[Deep Dark]] via the [[Mwingu Isles]] descent, unknowingly on a path toward [[The Deepcrypt Arcanum]].
  - Minor arcane disturbances and psychic echoes have been reported near [[Daggerfall Hollow]], suggesting latent warding runes may still be active.
  - The group may encounter remnants of failed Circle experiments, including shadowbind glyphs and deteriorated archival fragments referencing “Veil Protocols.”

## Hierarchy
- **Supreme Leader:** [[Kaige Maganti]] – Known as ‘The Whispered Scribe,’ leads the Circle from the [[Sanctum of the Unbound Eye]].
- **Council-Level Members:**
  - [[Sirel Vaust]] – ‘The Deepbind Archivist,’ guardian of [[The Deepcrypt Arcanum]].
  - [[Vaelin Dros]] – ‘The Veiled Hymnist,’ caretaker of [[Vault of Forgotten Hymns]].
- **Regional Contacts / Lieutenants:**
  - [[Jorvas Fellshade]] – Former overseer of [[Vault of the Fifth Veil]], deceased.
  - (Vacant) – Mangagoy Isles contact pending replacement.
  - (Vacant) – Additional replacements for Lambaro or Middle Isles under review.

## Locations
### Primary Hideouts
- [[Sanctum of the Unbound Eye]] – Located in [[The Hidden City]], beneath [[Jambito]]. Headquarters and central archive.
- [[Vault of the Forgotten Hymns]] – Archive site in [[Sunveil Hollow]], [[Kanda]].
- [[Vault of the Fifth Veil]] – Remote Pre-Rising vault on the [[01 Campaign/01 World/04 Subregions/01 Thellade/Mangagoy Isles]].
- [[The Deepcrypt Arcanum]] – Located in [[Daggerfall Hollow]], within the [[Shadowthread Warrens]] of [[The Veins of Night]] in [[The Deep Dark]].

### Secondary Hideouts
- Rumored ritual sanctum beneath [[Old Silverbend Bridge]] (Unconfirmed).
- Hidden reliquary cave system near the cliffs of [[Ihena]] (Unconfirmed).
- Abandoned wardstone lab north of [[Kurth]] believed to be part of a retrieval operation (Unconfirmed).

## Notes
- **Threat Level:** High
- **Speculative Rift:** Some members argue for full public disclosure of Pre-Rising knowledge, while others advocate for more measured revelation to prevent widespread chaos.
- **Symbol:** An open eye surrounded by a ring of broken script glyphs.
- **Uniforms:** Dark robes embroidered with mirrored eyes over the heart, enchanted to shimmer faintly in candlelight. Field operatives often wear layered veils or facemasks during rituals.

### Key Plot Threads
- Investigating the true nature of Pre-Rising magical suppression campaigns.
- Seeking the original instructions for the sealing rituals used on [[Orcus]]’ Lieutenants.
- Locating the missing Fifth Vault key, rumored to be held by [[Kaige Maganti]] or his predecessor.
- Ongoing secret war of knowledge with the [[Arcane Wardens]] in cities like [[Boba]] and [[Lambaro]].

### Artifacts and Evidence Found
- Ritual blade used in the aborted binding of the Deepcrypt (retrieved by [[Campaign Group 3]]).
- Blackened scroll fragments describing multi-sigil seals tied to celestial conjunctions.
- Ancient encoded directive from an unknown Pre-Rising archmage, marked with the Circle’s sigil.
- Ghost-inked contract ledger detailing warded item trades in [[Jambito]] and [[01 Campaign/01 World/04 Subregions/01 Thellade/Mangagoy Isles]].
