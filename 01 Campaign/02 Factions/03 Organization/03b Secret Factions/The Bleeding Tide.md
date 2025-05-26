---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[Crimson  Current Hall]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/BleedingTide.png
rivals:
  - "[[The Crystal Seekers Guild]]"
  - "[[The Emberborn League]]"
  - "[[The Eternal Concord]]"
  - "[[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Gilded Hammer Union]]"
  - "[[The Phoenix Assembly]]"
  - "[[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Sunfire Heralds]]"
  - "[[The Verdant Hand]]"
  - "[[The Wardens of the Deep Dark]]"
  - "[[The Emberheart Traders]]"
  - "[[The Voidscourge Hunters]]"
  - "[[The Arcane Wardens]]"
  - "[[The Ember Rats]]"
pronounced: BLEED-ing Tide
founded: 04 Emberwake 16 PR
organizationtype:
  - Secret
  - Trade
  - Syndicate
head:
  - "[[Marik Kelthorne]]"
allies:
  - "[[The Red Runners]]"
  - "[[The Silver Chain]]"
  - "[[The Black Sepulcher]]"
aliases:
  - Bleeding Tide
  - The Red Tide
  - Red Tide
location:
  - "[[The Outcast Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Kanda Isles]]"
  - "[[Kanda]]"
  - "[[Tallowgate]]"
  - "[[Brinehook Safehouse]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Lambaro Isles]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/LambaroNotes]]"
  - "[[Crucible Hollow]]"
  - "[[Embercoil Trading Post]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mangagoy Isles]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]]"
  - "[[Glowquarter]]"
  - "[[Crimson  Current Hall]]"
  - "[[Highhold Rise]]"
  - "[[Kelthorne Estate]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Middle Isles]]"
  - "[[Seaside Cape]]"
  - "[[Gullstone Row]]"
  - "[[Dagger's Rest Tavern]]"
  - "[[Sewer Hideout]]"
  - "[[Redwake Cache]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mwingu Isles]]"
  - "[[Mwingu]]"
  - "[[Black Market Network]]"
foundedshort: 16.04.04 PR
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
> The Bleeding Tide is a ruthless smuggling and criminal syndicate that controls much of [[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]]’s black market. Originally a pirate crew turned land-based operation, they specialize in smuggling weapons, illegal goods, and mysterious artifacts. Though they operate like a gang of pirates, their true strength lies in carefully hidden noble sponsorships, particularly through their deep ties to [[House Kelthorne]]. Their ships and ground operations thrive despite pressure from city watches and rival organizations. While not a cult themselves, the Bleeding Tide has unknowingly become entangled with the Cult of Orcus, smuggling artifacts and resources later used in dark rituals without their full knowledge.

### Oaths
> "Blood follows coin. Secrets ride the tide."

### Mission Statement
> To dominate clandestine trade across the Outcast Isles, expand influence through hidden noble sponsorships, and ensure their smuggling operations persist despite external threats.

### Laws
> - Never betray a sponsor or patron.  
> - Never sell secrets of the Tide’s operations.  
> - The chain of command must be obeyed without question.

### Tenets
> - Wealth is power; secrecy is survival.  
> - Sponsors are sacred; protect their identities at all costs.  
> - Information is the strongest currency.

### Prohibitions
> - No open conflict unless ordered.  
> - No unsanctioned deals outside the Tide’s control.  
> - No engagement with city watches unless bribery has been secured first.

## Current Events
> - [[Campaign Group 3]] directly engaged the Bleeding Tide during the infiltration of [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]].  
> - [[Aldrek Venmire]] was confirmed killed during the incident at the [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Bleeding Tide/Smuggling Warehouse|Smuggling Warehouse]] beneath [[Gullstone Row]] on 03 Dawnmarch 212 PR.  
> - The [[Black Chalice of Vorzith]] artifact was seized from Bleeding Tide hands and temporarily held by [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Marik Kelthorne|House Kelthorne]].  
> - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Marik Kelthorne|Lord Marik Kelthorne]] assumed de facto control after Aldrek’s death, attempting to stabilize internal fractures.  
> - Party actions in [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]] disrupted local Tide operations, causing temporary shutdown of [[Dagger's Rest Tavern]] as a smuggling front.  
> - Tide agents in [[Mwingu]] have begun expanding black market arms and artifact networks to recover from the Middle Isles disruptions.  
> - Confirmed deployment of pirate cells and proxy gangs across Kanda, Lambaro, and the Mwingu Isles.

## History
> Formed on 04 Emberwake 16 PR, the Bleeding Tide emerged from a splintered pirate fleet desperate to retain power after the Rising’s aftermath. Abandoning open piracy, they refocused on smuggling, covert trade, and manipulating noble patrons to shield their operations. Their rise through [[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]]’s underbelly was marked by the creation of hidden safehouses, bribery of minor officials, and ruthless elimination of competitors. [[Aldrek Venmire]]’s ambition and brutality defined their early dominance, while [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Marik Kelthorne|Lord Marik Kelthorne]] now leads them toward a subtler, more insidious future—one that risks further occult entanglements if their smuggling operations remain unchecked.

## Notes
- [[Aldrek Venmire]] – Former leader of the Bleeding Tide (deceased). Dead. Killed by [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 6|Campaign Group 6]] in [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Bleeding Tide/Smuggling Warehouse|Smuggling Warehouse]]/[[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]].
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Marik Kelthorne|Lord Marik Kelthorne]] – Current presumed leader of the Bleeding Tide.
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Borek  Jundar|Borek 'The Ox' Jundar]] – Lieutenant active in [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]]; known by the alias "The Ox." Captured by [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 3|Campaign Group 3]].
- [[Garrick Devrin]] – Enforcer involved in sewer ambush operations; known as "Bloodwake."
- [[Joralla Menas]] – Mwingu-based facilitator of Tide smuggling rings; aliases include "Deep Pockets."
- [[Thalessa Morvain]] – Diplomatic broker; operates under multiple aliases in Kanda.
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Lambaro/Lambaro City/Virkan Hess|Vikran Hess]] – Arms dealer and relic fence in Lambaro; nicknamed "Gold-Fang."
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Veyron Drask|Captain Veyron Drask]] – Seafaring smuggler captain; known as "Red-Eye." Dead. Killed by [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 6|Campaign Group 6]] in [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Bleeding Tide/Smuggling Warehouse|Smuggling Warehouse]]/[[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]].
- [[Felwin Greaves]] – Halfling saboteur and courier; alias "The Rat." Dead. Killed by [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 6|Campaign Group 6]] in [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Bleeding Tide/Smuggling Warehouse|Smuggling Warehouse]]/[[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]].
- [[Sarla Vask]] – Tiefling assassin and former ritualist; "The Harbinger." Dead. Killed by [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 6|Campaign Group 6]] in [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Bleeding Tide/Smuggling Warehouse|Smuggling Warehouse]]/[[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]].
- [[Grug]] – Ogre cook employed aboard Tide vessels or hideouts.
- [[Orpok]] – Half-orc chef and quartermaster; associated with Red-Eye’s crew.
- [[Dagger's Rest Tavern]] – Smuggling front and coordination point in [[Seaside Cape]].
- [[Kelthorne Estate]] – Hidden base of operations protected by House Kelthorne.
- [[Sewer Hideout]] – Now-compromised Tide base in [[Gullstone Row]].
- [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Bleeding Tide/Crimson  Current Hall|Crimson  Current Hall]] – Faction headquarters in [[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]]’s Glowquarter.
- [[Brinehook Safehouse]] – Bleeding Tide cell node in [[Kanda]].
- [[Embercoil Trading Post]] – Tide-aligned weapon and artifact depot in [[OneNote/Crossroads2025/Project 1 Archive/LambaroNotes]].
- [[Redwake Cache]] – Tide resource vault in [[Seaside Cape]].
- Symbol: A blood-red wave crest entwined with black iron thorns, worn as rings or carved into hidden stones.
- Uniforms: Black cloaks edged with crimson for mid-ranks; crimson signet rings for officers.
- The Bleeding Tide continues to smuggle materials unknowingly empowering the [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Black Sepulcher|The Black Sepulcher]].
Status: Active

### 📜 Tattoo Description:
> **Bleeding Tide Insignia:**  
> A small metallic pin depicting a wave of crimson droplets encircling a black dagger, clearly identifying Aldrek’s allegiance to the Bleeding Tide raiders​Project02Complete.
However — **the secret tattoo** found specifically on Aldrek Venmire is not standard for all Bleeding Tide members:
> **Secret Tattoo:**  
> On his left forearm, hidden beneath his clothing, a black tattoo shaped like a **stylized crescent moon pierced by three drops of blood** — an unknown marking that hints at a deeper, unseen faction or affiliation​Project02Complete.