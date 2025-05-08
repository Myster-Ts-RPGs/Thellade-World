---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Veil Sanctum]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Global
art: 90 Assets/Images/Organizations/Mistwalkers.png
aliases:
  - Mistwalkers
  - The Veiled Watch
location:
  - "[[The Outcast Isles]]"
  - "[[Jambito Isles]]"
  - "[[Kanda Isles]]"
  - "[[Lambaro Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/Mangagoy Isles]]"
  - "[[Middle Isles]]"
  - "[[The Sundering Deep]]"
  - "[[Smokey Shoals]]"
  - "[[Jambito]]"
  - "[[Kanda]]"
  - "[[Lambaro]]"
  - "[[Mangagoy]]"
  - "[[Westport]]"
  - "[[Mistspire Anchorage]]"
  - "[[The Veil Sanctum]]"
  - "[[The Eyes Beneath]]"
  - "[[The Ghost Lantern]]"
  - "[[The Fogbinder's Archive]]"
  - "[[The Phantom Tradehouse]]"
  - "[[The Silent Reef]]"
  - "[[The Whispering Isle]]"
  - "[[The Drowned Watchtower]]"
  - "[[Silverspire Terrace]]"
  - "[[Sunveil Hollow]]"
  - "[[Glowmire Terrace]]"
  - "[[Binders' Lane]]"
rivals:
  - "[[The Blackwake Corsairs]]"
  - "[[The Sable Accord]]"
head:
  - "[[Vaelin Thorne]]"
founded: 04 Stardrift 91 PR
organizationtype:
  - Espionage
  - Navigation
  - Planar
foundedshort: 91.08.04 PR
pronounced: MIST-walk-ers
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
> [[The Mistwalkers]] are a secretive network of navigators, planar watchers, and information brokers operating across the fog-laden waters of the [[Smokey Shoals]] and beyond. Known for their mastery of mist, illusion, and misdirection, they guide ships, manipulate trade routes, and monitor planar anomalies. Neutral by creed, they sell their services to nobles and black-market contacts alike—yet answer to no crown.

### Oaths
> “To pass unseen, to speak only truth to the mist, and to never cast light where shadow will do.”

### Mission Statement
> To control the unseen flow of information, movement, and planar convergence across the Isles by guiding, veiling, and erasing those who threaten the balance of the Shoals.

### Laws
> • Never reveal another Mistwalker’s identity  
> • Only take payment in secrets, favors, or truth  
> • Protect the Veiled Sanctum at all costs

### Tenets
> • Fog conceals, protects, and reveals when commanded  
> • Loyalty to the Veil supersedes all contracts  
> • Knowledge, not war, changes empires

### Prohibitions
> • Betraying a Mistwalker to outsiders  
> • Revealing safehouse locations without council sanction  
> • Killing without sanction from the Veiled Watch

## Current Events
- [[Vaelin Thorne]] has remained hidden for over a decade, but a growing rift surge near [[The Whispering Isle]] has forced the Veiled Watch to mobilize in secret.  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Middle Islands/Westport/Torrin Vask|Captain Torrin Vask]] of the [[The Pale Horizon]] has relocated three stealth vessels to reinforce [[The Silent Reef]].  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Smokey Shoals/Alren Lirian|Cipher Alren Lirian]] has intercepted encoded messages implicating the [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Sable Accord|Sable Accord]] in multiple shadow vessel disappearances.  
- [[Therian Valmont]] is playing both sides in the Kanda court, feeding misinformation to the [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Blackwake Corsairs|Blackwake Corsairs]] while hiding Mistwalker agents.  
- [[Campaign Group 6]] has encountered indirect guidance from Mistwalker operatives during their leyline-crossing voyage.

## History
- 04 Umbralcrown 91 PR: [[Vaelin Thorne]] unites rogue navigators and planar scholars under the symbol of the Fog Eye, establishing [[The Veil Sanctum]] deep within the [[Smokey Shoals]].  
- 103 PR: [[The Drowned Watchtower]] constructed from ruins of a Pre-Rising fortification to monitor growing planar bleed.  
- 121 PR: [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Smokey Shoals/Alren Lirian|Cipher Alren Lirian]] uncovers the Sable Codex, a treatise linking Shoals anomalies to infernal sabotage.  
- 136 PR: [[The Whispering Isle]] vanishes from maps for three months, reappearing after a failed incursion by the [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Blackwake Corsairs|Blackwake Corsairs]].  
- 151 PR: [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Smokey Shoals/Edris Renn|Harbormaster Edris]] establishes the secret barter network now known as the Grayflow Route.  
- 204 PR: [[The Silent Reef]] completes expansion as a full ghost-fleet harbor under [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Middle Islands/Westport/Torrin Vask|Captain Torrin Vask]].

### Campaign Events
- [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 6|Campaign Group 6]]  
  - Received indirect navigation guidance through unnatural fog currents while traversing the [[The Sundering Deep|Sundering Deep]].  
  - Mysterious whispers directed them away from a potential rift storm hours before detection.  
  - One encoded message left in their ship’s chartroom bore the sigil of [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Smokey Shoals/Alren Lirian|Cipher Alren]].

## Hierarchy
 **Supreme Leader:** [[Vaelin Thorne]] – Known only as ‘The Foglord’, delivers orders via whisper-encoded missives or intermediaries.  
 
**The Veiled Watch** The Mistwalkers are ruled by an enigmatic council, known only as The Veiled Watch. Each member specializes in different aspects of espionage, navigation, and reconnaissance.
- [[Sylaris Vaelos]] – Master of Navigation and Fog Magic, based at [[The Veil Sanctum]]  
- [[Alren Lirian]] – Master of Espionage and Signals, operates from [[The Veil Sanctum]]  
- [[Raleth Morn]] – Master of Silent Warfare, assassin trainer at [[The Veil Sanctum]]  
- [[Nerys Vael]] – Planar anomaly seer, keeper of the riftwatch logs at [[The Veil Sanctum]]  
- [[Edris Renn]] – Black-market logistics coordinator based at [[The Veil Sanctum]]

**Regional Contacts / Lieutenants**  While the Mistwalkers operate in secrecy, they have regional agents embedded within the Outcast Isles. These contacts do not claim allegiance but serve as eyes and ears for the organization.
- [[Therian Valmont]] – Noble informant in [[The Ghost Lantern]] ([[Kanda]])  
- [[Saris Orwyn]] – Merchant guide and scout at [[The Ghost Lantern]]  
- [[Ren Mareth]] – Black-market liaison at [[The Phantom Tradehouse]] ([[Mangagoy]])  
- [[Veyna Desmire]] – Port sabotage expert stationed at [[The Eyes Beneath]] ([[Jambito]])  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Middle Islands/Westport/Torrin Vask|Captain Torrin Vask]] – Naval commander of [[The Pale Horizon]], headquartered at [[The Silent Reef]]

## Locations
### Primary Hideouts
- [[The Veil Sanctum]] – Main headquarters located within [[Mistspire Anchorage]]; home of the Veiled Watch and primary planar archive

### Secondary Hideouts
- [[The Ghost Lantern]] – Floating outpost off [[Kanda]], used for political observation and merchant guidance  
- [[The Phantom Tradehouse]] – Safehouse in [[Mangagoy]] for black-market intelligence gathering and neutral barter  
- [[The Eyes Beneath]] – Submerged enclave beneath [[Jambito]]’s coastal cliffs, used for sabotage prep and ship surveillance  
- [[The Silent Reef]] – Naval staging ground near [[Westport]], hosts fog-warded vessels and the ghost fleet  
- [[The Whispering Isle]] – Isolated island in [[The Sundering Deep]], sacred to the Veiled Watch and used for arcane rituals  
- [[The Drowned Watchtower]] – Observation post deep in the [[Smokey Shoals]], staffed by planar seers and watchers

## Notes
- **Threat Level:** High  
- **Speculative Rift:** Rift-aligned factions like the [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Sable Accord|Sable Accord]] may have infiltrated the mist lanes; internal debates arise over whether to remain neutral.  
- **Symbol:** A stylized eye half-submerged in fog, flanked by three drifting daggers.  
- **Uniforms:** No standardized garb—Mistwalkers wear mist-dyed veils, illusion-charmed cloaks, or maritime uniforms depending on region. The only true uniform is silence.

### Key Plot Threads
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Smokey Shoals/Alren Lirian|Cipher Alren]] tracks messages linked to an unbound rift beneath the [[The Whispering Isle]].  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Smokey Shoals/Nerys Vael|Oracle Nerys]] has prophesied a planar inversion event within the next full moon’s cycle.  
- [[The Ghost Lantern]] is rumored to house a relic that dampens infernal signals—a prize both the Accord and Corsairs desire.  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Middle Islands/Westport/Torrin Vask|Captain Torrin Vask]] seeks to reclaim three lost vessels scattered during a leyline rupture.  
- [[Vaelin Thorne]] may no longer be mortal—rumors suggest they commune directly through the mists via planar echo.

### Artifacts and Evidence Found
- Cracked whisperstone embedded with planar residue, recovered near [[The Silent Reef]]  
- A veiled dossier listing noble clients from [[Kanda]] and [[Lambaro]] held within [[The Phantom Tradehouse]]  
- Compass rose etched with a Pre-Rising map of the Smokey Shoals, recovered by [[Campaign Group 6]]  
- Shards of the Sable Codex intercepted in a sealed container within [[The Ghost Lantern]]  
- Vision-crystals found at [[The Drowned Watchtower]], showing distorted glimpses of abyssal tides

