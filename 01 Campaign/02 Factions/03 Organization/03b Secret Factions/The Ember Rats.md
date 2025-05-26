---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Ember Rats/The Furnace Warren]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Local
art: 90 Assets/Images/Organizations/EmberRats.png
aliases:
  - Ember Rats
head:
  - "[[Jorrek Vannis]]"
pronounced: EM-ber rats
organizationtype:
  - Militant
  - Criminal
  - Gang
  - Secret
steward:
  - "[[Risa Vael]]"
location:
  - "[[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]]"
  - "[[Ashgate Market]]"
  - "[[The Outcast Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mangagoy Isles]]"
  - "[[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Ember Rats/The Furnace Warren]]"
  - "[[The Ember Wharf]]"
  - "[[The Emberwell Den]]"
  - "[[Ashgate Market]]"
  - "[[01 Campaign/01 World/08 Points of Interest/09 Landmarks/Mangagoy Isles/Charblack Alley]]"
  - "[[01 Campaign/01 World/08 Points of Interest/04 Temple or Shrine/The Pactbound Flame/The Hollow Flame]]"
rivals:
  - "[[The Bleeding Tide]]"
  - "[[The Gilded Daggers]]"
foundedshort: 208.07.13 PR
founded: 13 Nightveil 208 PR
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
> The [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Ember Rats|Ember Rats]] are a brutal street gang entrenched in the lower industrial zones and slums of Mangagoy. With a grip tightened by fear, fire, and narcotics, they dominate back-alley trade, fight rings, and gangland territories. Their operations range from extortion to alchemical addiction, with whispers of darker forces behind their rituals. They are not organized by hierarchy so much as by blood-debt and dominance.

### Oaths
> "Obedience burns clean. Betrayal leaves ash."

### Mission Statement
> To control Mangagoy’s slums through fear, fire, narcotics, and street-level power.

### Laws
> - Protect the gang’s routes, dens, and dealers.  
> - All extorted merchants pay in full—no exceptions.  
> - Never show weakness in front of recruits.  
> - Loyalty is proven through blood.

### Tenets
> - Power is taken, not given.  
> - The weak serve the strong.  
> - Ash is a mark of honor.

### Prohibitions
> - No interfering with Mother Risa’s brews.  
> - No outsider alliances without Redclaw’s approval.  
> - No mercy for snitches or deserters.

## Current Events
- [[Jorrek Vannis]] ('Redclaw') has begun consolidating power against the Gilded Daggers’ influence in the Ashgate Market.
- [[Risa Vael]] (known as 'Mother Risa') has introduced a new cursed alchemical blend rumored to cause visions—and mutations.
- The city guard has recently found several dead smugglers with Ember Rat burn marks branded onto their bodies.
![[90 Assets/Images/Organizations/EmberRats2.png|128]]

## History
- First emerged in the wake of the Rising, thriving in the lawless rebuild years of Mangagoy’s southern slums.
- Gained infamy by torching rival dens during the ‘[[Three Fire Nights]]’ gang war.
- Mother Risa’s narcotics empire solidified their grip on the undercity when arcane alchemy replaced crude drugs.
- Rumored ties to necromantic trade and cursed contracts with minor cults remain unconfirmed.

### Campaign Connections
[[Campaign Group 3]] – Though not directly encountered, Group 3 has operated in affected areas of Mangagoy where the Ember Rats exert control. NPC merchants complain of shakedowns and alchemical smog, while local children vanish into alley-side dens.

## Hierarchy
- **Gang Leader:** [[Jorrek Vannis]] – 'Redclaw', enforcer-king of the Rats, operates through fear and underground brutality.  
- **Narcotics Matron:** [[Risa Vael]] – 'Mother Risa', spiritualist and potionmaster, her drugs bind through vision, pain, and addiction.

## Locations
- **Headquarters:** [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Ember Rats/The Furnace Warren]] (Mangagoy > Ashgate Market)  
- **Known Fronts:**  
  - [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Ember Rats/The Emberwell Den|The Emberwell Den]] (underground pit arena)  
  - [[01 Campaign/01 World/08 Points of Interest/09 Landmarks/Mangagoy Isles/Charblack Alley|Charblack Alley]] (drug refinery hub)  
  - [[01 Campaign/01 World/08 Points of Interest/04 Temple or Shrine/The Pactbound Flame/The Hollow Flame]] (ruined temple turned gang shrine)

## Notes
- **Threat Level:** Moderate to High — direct urban presence with growing alchemical reach.  
- **Symbol:** A burned rat skull crowned with molten bronze spikes, tail coiled into an ember spiral.  
- **Uniforms:** Soot-black rags and smolder-marked leather, often with exposed scars from initiation firebrandings.

### Key Plot Threads
- The Rise of Redclaw: Jorrek’s plan to absorb rival factions.  
- The Ashing Ceremony: Initiation ritual involving self-mutilation and fire trials.  
- [[Cursed Powder]]: A potion strain spreading mutations through Mangagoy’s addicts.  
- [[The Hollow Rebellion]]: A rising underground resistance of slum-born youths.

### Artifacts and Evidence
- Alchemical residue with necrotic properties.  
- Burned gang tattoos linked to soul-binding contracts.  
- Ratbone charms infused with infernal ash.  
- Smuggled crates marked with the Ember Rats’ ember-spiral sigil.
