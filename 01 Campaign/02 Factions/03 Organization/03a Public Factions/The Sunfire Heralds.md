---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[Sunfire Tower]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - National
art: 90 Assets/Images/Organizations/SunfireHeralds.png
aliases:
  - The Heralds
  - Sunfire Heralds
founded: 12 Blossomveil -5 PR
organizationtype:
  - Educational
  - Regulatory
  - Cultural
head:
  - "[[Lysara Dawnstar]]"
steward:
  - "[[Dorian Grey]]"
allies:
  - "[[The Dawnbringers of Lunara]]"
  - "[[The Eternal Concord]]"
rivals:
  - "[[The Bleeding Tide]]"
  - "[[The Infernal Covenant]]"
location:
  - "[[The Outcast Isles]]"
  - "[[Kanda Isles]]"
  - "[[Kanda]]"
  - "[[Glimmershade]]"
  - "[[Boba]]"
  - "[[Sunfire Heights]]"
  - "[[Sunfire Tower]]"
  - "[[Mangagoy Isles]]"
  - "[[Mangagoy]]"
  - "[[Ashgate Market]]"
pronounced: SUN-fire HER-alds
foundedshort: -5.02.12 PR
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
> [The Sunfire Heralds]] are an order dedicated to preserving Pre-Rising lore, rekindling Kanda’s cultural pride, and uplifting the kingdom’s morale through knowledge and celebration. They work tirelessly to recover lost chronicles, sponsor festivals, support educational reforms, and commission inspirational works of literature and art. Their headquarters, [[Sunfire Tower|The Sunfire Tower]] in [[Boba]], gleams as a beacon of enlightenment and hope.

### Oaths
> "Light forgotten is light lost. We are the dawn reborn."

### Mission Statement
> To preserve the ancient wisdom of the Isles, inspire the populace toward unity and resilience, and kindle new cultural achievements to heal the scars of the Rising.

### Laws
> - All recovered Pre-Rising texts must be archived within the Tower before external use.  
> - Heralds must maintain dignity and optimism during public engagements.  
> - Sponsorship of adventuring groups must be approved by two High Heralds.  
> - Lost artifacts and records must be treated with sanctity, not commerce.

### Tenets
> - Hope is the foundation of renewal.  
> - Culture lost weakens the kingdom’s soul.  
> - No citizen too small, no story too humble.  
> - Let remembrance light the future.

### Prohibitions
> - Deliberate distortion of historical records.  
> - Hoarding relics for private enrichment.  
> - Use of recovered knowledge for tyranny or personal political gain.  
> - Association with factions that glorify despair or infernal corruption.

## Current Events
> - [[Lysara Dawnstar|High Herald Lysara Dawnstar]] is directing expansion initiatives from [[Sunfire Tower|The Sunfire Tower]], coordinating a new cycle of public exhibits on Pre-Rising heroism.  
> - [[Dorian Grey|High Herald Dorian Grey]] is spearheading funding drives and envoy missions to [[Mangagoy]], opening the Lightbearer Embassy.  
> - Campaign Group 5 successfully descended into a sealed Pre-Rising vault beneath [[Sunfire Tower|The Sunfire Tower]], rescuing [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Boba/Theon Brel]]—an archivist trapped by time anomalies—and defeating abyssal-born horrors threatening the site.  
> - The threats faced included a Rift-Stalker Horror, two Riftborn Wraiths, and nearly activating a hostile Vault Guardian.  
> - Recovery of forbidden texts and a broken Seal Stone tied to barrier decay has greatly elevated the Sunfire Heralds' urgency in preserving and protecting Pre-Rising knowledge.  
> - The Heralds continue to support Group 5 following their retainer agreement, offering rare tomes, relic identification, and diplomatic support for related expeditions.


## History
> The Sunfire Heralds were founded on 12 Springdawn -5 PR, as the memory of the Pre-Rising world began to falter. Originally a loose association of loremasters and minstrels, they formalized into a structured order following a series of disastrous cultural losses during early abyssal uprisings.  
>  
> Their mission expanded beyond passive preservation into active cultural restoration, working to revive not just lost songs and sagas, but the very spirit of Kanda’s people. Even today, they see themselves as stewards of the Isles’ soul, fighting a quiet war against despair and forgetfulness.

## Notes
- [[Lysara Dawnstar|High Herald Lysara Dawnstar]] – Charismatic leader, cultural visionary, master planner of festivals and archives.  
- [[Dorian Grey|High Herald Dorian Grey]] – Flamboyant diplomat and administrator, skilled in social navigation and public engagement.  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Boba/Inaya Voss|Chief Archivist Inaya Voss]] – Oversees daily archive management at [[Sunfire Tower|The Sunfire Tower]]; concerned with threats beneath the Tower.  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Boba/Theon Brel]] – Assistant Scribe rescued by Group 5; victim of temporal warping and abyssal influence in the sealed archives.  
- [[Sunfire Tower|The Sunfire Tower]] – Their shining headquarters in [[Sunfire Heights]], [[Boba]], symbol of hope and renewal.  
- [[Hall of the Shining Dawn]] – Newly founded center in [[Glimmershade]], [[Kanda]], designed to host cultural summits and relic exhibitions.  
- [[Lightbearer Embassy]] – Outreach office in [[Ashgate Market]], [[Mangagoy]], promoting cultural exchange and hope-building.  
- Symbol: A golden rising sun with open book wings, cradling a silver scroll at its heart.  
- Uniforms: White and gold robes emblazoned with flame-wreathed quills; ceremonial heralds bear radiant staves.

