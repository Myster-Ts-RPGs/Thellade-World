---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[01 Campaign/01 World/08 Points of Interest/01 Factions/The Ashen Vanguard/Fort Redstone]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - National
art: 90 Assets/Images/Organizations/AshenVanguard.png
location:
  - "[[The Outcast Isles]]"
  - "[[Mangagoy]]"
  - "[[The Ember Wharf]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Lambaro Isles]]"
  - "[[Lambaro]]"
  - "[[Arcspire District]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Jambito Isles]]"
  - "[[Jambito]]"
  - "[[Eastwatch District]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Kanda Isles]]"
  - "[[Boba]]"
  - "[[Ambassadors Row]]"
  - "[[Glowquarter]]"
  - "[[Mwingu]]"
  - "[[Scholar's Ring]]"
  - "[[01 Campaign/01 World/08 Points of Interest/01 Factions/The Ashen Vanguard/Ashen Vanguard Watchpost]]"
  - "[[01 Campaign/01 World/08 Points of Interest/01 Factions/The Ashen Vanguard/Fort Redstone]]"
  - "[[01 Campaign/01 World/08 Points of Interest/05 Government/Outcast Isles/Mangagoy Isles/Mangagoy/Detached Command Wing]]"
  - "[[01 Campaign/01 World/08 Points of Interest/01 Factions/The Ashen Vanguard/Coastal Watch Barracks]]"
  - "[[01 Campaign/01 World/08 Points of Interest/01 Factions/The Ashen Vanguard/Vanguard Scout Liaison Post]]"
  - "[[Ashen Guard Hall]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mangagoy Isles]]"
pronounced: A-shun VAN-guard
aliases:
  - Ashen Vanguard
founded: 12 Dawnmarch -1 PR
organizationtype:
  - Army
head:
  - "[[Thalos Greybeard]]"
rivals:
  - "[[The Black Sepulcher]]"
  - "[[The Red Ash Mauraders]]"
  - "[[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Infernal Covenant]]"
  - "[[The Crimson Shroud]]"
  - "[[The Cursed Blades]]"
  - "[[The Red Ash Mauraders]]"
  - "[[The Sable Accord]]"
  - "[[The Sea Vultures]]"
  - "[[The Silver Chain]]"
  - "[[Order of Silent Echos]]"
allies:
  - "[[The Emberborn League]]"
  - "[[The Lumina Guardians]]"
  - "[[The Order of the Ember Blades]]"
  - "[[The Rift Scholars Collective]]"
  - "[[The Gilded Hammer Union]]"
foundedshort: -1.01.12 PR
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
> [[The Ashen Vanguard]] is a disciplined kingdom-wide military order formed in the immediate aftermath of the Rising. Tasked with protecting [[01 Campaign/02 Factions/01 Government/Regional/The Kingdom of Kanda]] from extraplanar threats, rogue mages, and destabilizing factions, they operate both visibly as peacekeepers and covertly as anti-cult operatives. Known for their austere methods and valor, their soldiers are often seen reinforcing planar seal sites, escorting magical transports, or rooting out infernal corruption.

### Oaths
> "Steel for the shield, fire for the breach. We guard the ash, so others may live."

### Mission Statement
> To protect the Kingdom of Kanda from internal and extraplanar threats through strategic military presence, elite training, and containment of magical breaches.

### Laws
> - All Vanguard members must adhere to martial code and report forbidden activity.  
> - No negotiation with planar entities.  
> - Uniform must be worn in all formal operations.  
> - Desertion is punishable by exile or conscription into frontier watch.

### Tenets
> - Discipline over impulse.  
> - Victory through unity and preparedness.  
> - Silence, when courage would bring folly.  
> - Civilians are to be shielded before the sword is drawn.

### Prohibitions
> - Forbidden alliances with cults or void-touched individuals.  
> - Hoarding or unsanctioned use of magical artifacts.  
> - Interference with Vanguard ritual sites or beacon seals.

## Current Events
> - [[Ulthar]], a retired Vanguard veteran, appears in [[Garrik]]’s backstory (Group 6), having trained him in martial tactics in [[Seaside Cape]].  
> - Group 6's events involving planar anomalies and lost legacies may tie to Vanguard intelligence networks.  
> - Commander [[Thalos Greybeard]] maintains operatives across major isles, but no direct involvement from Vanguard detachments has yet occurred in sessions.

## History
> [[The Ashen Vanguard]] was officially founded in 12 Springdawn -1 PR, in the final days before the Rising took full effect. Originally comprised of mixed volunteers, war veterans, and surviving clerical guards, they were among the first to resist daemonic incursions during the Final Surge. Their presence at the Pre-Rising barrier site gave rise to the order's enduring motto: *We held the ash, so they could raise the light.*  
> They later expanded into a codified martial order under the rule of King [[Roderic Vanthelion]], authorized to operate independently in matters of kingdom-wide defense.  

## Notes
- [[Thalos Greybeard]] — Dwarven commander, stationed at [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Ashen Vanguard/Fort Redstone]]. Disciplined, calculating, excellent at breach logistics and planar containment.  
- [[Ulthar]] — Orc veteran (retired); now living in [[Seaside Cape]]. Lost a leg to a rogue mage. Serves as a backstory mentor in Group 6.  
- [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Ashen Vanguard/Fort Redstone]] — Official headquarters and fortress of The Ashen Vanguard.  
- [[Garrik]] — Member of Campaign Group 6; his martial training is directly tied to Vanguard doctrine.  
- “[[Scars in the Earth]]” (Field Memoir by [[Devrik Thorne]]) — Firsthand account of Rising-era conflicts involving Vanguard soldiers.  
- Internal tensions may exist regarding the infernal pact signed by the Arcane Orders — some senior members have long suspected [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Infernal Covenant]] compromised Kanda’s autonomy.  
- Symbol: A silver gauntlet gripping a blackened shield etched with flame runes.  
- Uniforms: Slate-gray armor with crimson sashes and insignias marked by hammer-and-shield iconography.

