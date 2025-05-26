---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[01 Campaign/01 World/08 Points of Interest/10 Infrastructure/Outcast Isles/Kanda Isles/Boba/Hall of Unity]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - National
art: 90 Assets/Images/Organizations/EternalConcord.png
allies:
  - "[[The Arcane Wardens]]"
  - "[[The Dawnbringers of Lunara]]"
  - "[[Mangagoy Healing Sanctuary (Faction)]]"
  - "[[The Phoenix Assembly]]"
  - "[[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Sunfire Heralds]]"
  - "[[The Verdant Hand]]"
  - "[[The Emberheart Traders]]"
pronounced: ee-TER-nal CON-cord
founded: 11 Blossomveil -12 PR
organizationtype:
  - Regulatory
head:
  - "[[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Alaric Valene]]"
rivals:
  - "[[The Red Runners]]"
  - "[[The Bleeding Tide]]"
  - "[[The Crimson Gauge]]"
  - "[[The Black Sepulcher]]"
  - "[[The Blackwake Corsairs]]"
  - "[[The Crimson Shroud]]"
  - "[[The Emberborn Exiles]]"
  - "[[The Hollow Mask]]"
  - "[[The Midnight Covenant]]"
  - "[[The Red Ash Mauraders]]"
  - "[[The Sable Accord]]"
  - "[[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Veilbound Circle]]"
location:
  - "[[The Outcast Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Jambito Isles]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/JambitoNotes]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Kanda Isles]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/BobaNotes]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Lambaro Isles]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/LambaroNotes]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Middle Isles]]"
  - "[[Seaside Cape]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mangagoy Isles]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mwingu Isles]]"
  - "[[Mwingu]]"
  - "[[Silverspire Terrace]]"
  - "[[Tallowgate]]"
  - "[[Glowmire Terrace]]"
  - "[[Glowquarter]]"
  - "[[Cradlecliff]]"
  - "[[Scholar's Ring]]"
  - "[[Peacebroker's Refuge]]"
  - "[[01 Campaign/01 World/08 Points of Interest/10 Infrastructure/Outcast Isles/Kanda Isles/Boba/Hall of Unity]]"
  - "[[Neutral Accord Hall]]"
  - "[[01 Campaign/01 World/08 Points of Interest/06 Library, Archive, School, Research/The Outcast Isles/Mangagoy/Concord Library Annex]]"
  - "[[Sanctuary of Evenlight]]"
  - "[[House of Accorded Voices]]"
aliases:
  - Eternal Concord
foundedshort: -12.02.11 PR
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
> [[The Eternal Concord]] is a diplomatic organization devoted to mediating disputes, forging peace, and averting armed conflicts between the diverse powers of Kanda. They act as neutral arbiters in guild wars, noble disputes, trade conflicts, and political tensions, believing that even in a divided kingdom, peace remains a sacred obligation. They prefer nonviolent resolution but are not naïve to the necessity of defensive measures when diplomacy falters.

### Oaths
> “To bind word before sword. To honor pact before blood. To stand in unity when the Isles divide.”

### Mission Statement
> To mediate disputes across the Isles, preserve the fragile unity of Kanda, and uphold the ancient tradition of peace through dialogue.

### Laws
> - All mediators must swear impartiality under the Oath of Silver Accord.  
> - No Concord official may bear arms during formal arbitration sessions.  
> - Breach of neutrality forfeits all Concord standing and protections.  
> - Confidentiality between disputing parties must be maintained without breach unless life-threatening circumstances arise.

### Tenets
> - Unity is the strongest shield.  
> - Even broken trust can be mended.  
> - No blood spilled in anger is without cost.  
> - Truth spoken in peace is mightier than steel swung in rage.

### Prohibitions
> - Acting on behalf of any faction while serving the Concord.  
> - Manipulating settlements or cities into conflict for political gain.  
> - Accepting bribes or concealed favors during arbitration.  
> - Harboring members of criminal cults or terror cells.

## Current Events
> - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Alaric Valene|Mediator Alaric Valene]] remains stationed primarily at the [[01 Campaign/01 World/08 Points of Interest/10 Infrastructure/Outcast Isles/Kanda Isles/Boba/Hall of Unity]] in [[OneNote/Crossroads2025/Project 1 Archive/BobaNotes]], organizing several upcoming peace summits aimed at stabilizing Kanda’s trade alliances&#8203.  
> - Ongoing low-intensity conflicts between [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Emberheart Traders|The Emberheart Traders]] and [[Golden Tides Trading Guild]] have prompted Concord envoys to propose a formal Trade Summit.  
> - Minor sabotage efforts by [[The Bleeding Tide]] against supply lines in Mangagoy have escalated the need for Concord mediation support in that region.  
> - Group 4's activities in [[OneNote/Crossroads2025/Project 1 Archive/JambitoNotes]] have indirectly affected Concord interests, as minor noble houses seek diplomatic protection amid rising tensions.

## History
> Founded in 11 Springdawn -12 PR following the Sundering of the Noble Houses, [[The Eternal Concord]] arose as a philosophical movement turned pragmatic necessity. With Kanda fractured by succession disputes and resource scarcity, a cohort of scholars, healers, and retired knights established a neutral council to prevent further bloodshed.  
>  
> During the Rising, the Concord advocated for emergency truces across the Isles, attempting to unify responses against extraplanar threats. Though they suffered losses during cult uprisings and were sidelined by the formation of militant orders, their quiet perseverance ensured that some semblance of diplomacy remained alive even in Kanda’s darkest hours.

## Notes
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Alaric Valene|Mediator Alaric Valene]] – Human diplomat, Master Negotiator of the Concord, famed for drafting the Treaty of Evenlight that briefly unified Boba's guilds after the Red Runners’ insurgency.  
- [[01 Campaign/01 World/08 Points of Interest/06 Library, Archive, School, Research/The Outcast Isles/Mangagoy/Concord Library Annex]] – Located in [[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]]'s [[Glowquarter]], contains records of all known arbitrated disputes since the Rising.  
- [[01 Campaign/01 World/08 Points of Interest/10 Infrastructure/Outcast Isles/Kanda Isles/Boba/Hall of Unity]] – Center of diplomatic gatherings and peace conferences, located in [[OneNote/Crossroads2025/Project 1 Archive/BobaNotes]]'s [[01 Campaign/01 World/07 Districts/Boba/Ambassadors Row|Ambassadors Row]].  
- Symbol: A silver circle bisected by a vertical white quill and a vertical black blade.  
- Uniforms: Slate-gray tabards bearing the quill and sword sigil; senior mediators often wear subtle silver chains signifying rank.
