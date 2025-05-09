---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The League Hall]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - National
art: 90 Assets/Images/Organizations/EmberbornLeague.png
allies:
  - "[[The Crystal Seekers Guild]]"
  - "[[The Ashen Vanguard]]"
founded: 20 Frostfall -3 PR
organizationtype:
  - Guild
rivals:
  - "[[The Bleeding Tide]]"
  - "[[The Black Sepulcher]]"
location:
  - "[[The Outcast Isles]]"
  - "[[Jambito Isles]]"
  - "[[Kanda Isles]]"
  - "[[Lambaro Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/Mangagoy Isles]]"
  - "[[Middle Isles]]"
  - "[[Mwingu Isles]]"
  - "[[Jambito]]"
  - "[[Deepwall Reach District]]"
  - "[[Kanda]]"
  - "[[Amberveil Market]]"
  - "[[Lambaro]]"
  - "[[Crucible Hollow]]"
  - "[[Mangagoy]]"
  - "[[Ashgate Market]]"
  - "[[Seaside Cape]]"
  - "[[Mossgate Market]]"
  - "[[Mwingu]]"
  - "[[Crystalvaults]]"
  - "[[Expedition Staging Depot]]"
  - "[[The League Hall]]"
  - "[[01 Campaign/01 World/08 Points of Interest/10 Infrastructure/Outcast Isles/Mangagoy Isles/Mangagoy/Relic Stabilization Hub]]"
  - "[[Field Evaluation Camp]]"
  - "[[Ruin Escort Operation Office]]"
head:
  - "[[Tharos Emberbane]]"
steward:
  - "[[Barnabas]]"
pronounced: EM-ber-born LEAGUE
aliases:
  - Emberborn League
foundedshort: -3.06.20 PR
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

### Overview
### Description
> [[The Emberborn League]] is a post-Rising adventurers’ guild chartered to explore hazardous zones, retrieve lost artifacts, and reignite Kanda’s arcane power through strategic relic recovery. Their agents include warriors, scouts, arcanists, and planar specialists—each trained to survive dangerous crypts, fractured temples, and volatile ruin zones. Though not formally military, their internal structure mirrors tactical guilds, operating under command units with autonomous expedition authority.

### Oaths
> "Steel to flame, dust to legacy. For Kanda, for history, for the rebirth of light."

### Mission Statement
> To recover, secure, and repurpose lost relics of the Pre-Rising era, forging Kanda’s return to technological and magical prominence.

### Laws
> - No relic may be privately retained without League authorization.  
> - Operations in sacred or culturally sensitive zones require declared clerical accompaniment.  
> - Agents must debrief all anomalous artifact discoveries within 24 hours.  
> - Members may not sell or barter League-recovered items without writ.

### Tenets
> - Ruins conceal knowledge, not just danger.  
> - Power unused is power surrendered.  
> - The Isles are shielded but never stagnant.  
> - Valor lies in recovery, not conquest.

### Prohibitions
> - Unauthorized entry into locked dig sites.  
> - Cooperation with known black marketeers.  
> - Forging provenance for unregistered relics.  
> - Joining field operations while under sanction.

## Current Events
> - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mwingu/Mwingu/Orrek Flintbraid|Captain Orrek Flintbraid]] maintains excavation site security near [[01 Campaign/01 World/08 Points of Interest/09 Landmarks/Mwingu Isles/Mount Crystalspire]], supporting Group 1’s efforts in Mwingu.  
> - [[Barnabas]], a high-ranking cleric of [[01 Campaign/03 Entities/01 Deities/Aurion]] and leader of the League’s southern wing, contracted Group 4 in [[Jambito]] to infiltrate a Red Runner hideout tied to infernal cults&#8203;:contentReference[oaicite:1]{index=1}.  
> - A cooperation pact with the [[Crystal Seekers Guild]] remains in place for joint dig coordination and magical site triage.  
> - League scouts have reported attempted artifact interference by [[The Bleeding Tide]] in the [[Mangagoy]] region, prompting relic convoy escorts.  
> - The League has quietly warned the Arcane Wardens of a possible cult reactivation near the Smokey Shoals.

## History
> Founded in 20 Ironfall -3 PR, [[The Emberborn League]] was created from surviving guilds and adventuring companies who lost kin and knowledge to the isolation of the Isles. It was granted kingdom charter shortly after the Rising, when Crown initiatives failed to recover vast troves of Pre-Rising lore. Their mandate: explore lost sites, secure recoveries, and stabilize magic relics that could rebuild the kingdom’s defensive and economic strength.  
>  
> Originally housed in a repurposed military warehouse, the League’s growth allowed construction of a formal headquarters—[[The League Hall]]—in [[Amberveil Market]]. Since then, it has remained one of the few factions that balances exploration with practical deployment.

## Notes
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Tharos Emberbane|League Captain Tharos Emberbane]] – Visionary leader with a reputation for blazing the first trail into any sealed ruin. Believed to have personally closed two minor planar rifts.  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mwingu/Mwingu/Orrek Flintbraid|Captain Orrek Flintbraid]] – Veteran dwarf field commander, stationed at [[Mwingu]]; scarred and blunt but efficient.  
- [[Barnabas]] – Cleric of [[01 Campaign/03 Entities/01 Deities/Aurion]], manages southern operations. Known for hiring moral but capable parties to assist with cult-cleansing and extraction support.  
- Known to contract members temporarily, offering coin and lodging per mission.  
- Symbol: A blazing flame rising from a split obsidian circle; some versions include a silver compass rose behind it.  
- Uniforms: Emberplate tabards, heavy travel boots, rune-etched gloves. Expeditionary colors include flame-orange, charcoal gray, and steel trim.




