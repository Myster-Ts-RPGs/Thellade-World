---
tags:
  - "#Organization"
hq: "[[Thellade]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/EmberheartTraders.png
location:
  - "[[The Outcast Isles]]"
  - "[[Mangagoy Isles]]"
  - "[[Mangagoy]]"
  - "[[The Ember Wharf]]"
  - "[[Emberheart Trade Office]]"
  - "[[Jambito Isles]]"
  - "[[Jambito]]"
  - "[[Silverspire Terrace]]"
  - "[[Ember Trade Consortium Post]]"
  - "[[Kanda Isles]]"
  - "[[Kanda]]"
  - "[[Amberveil Market]]"
  - "[[The Glowing Exchange]]"
  - "[[Boba]]"
  - "[[Ashen Ledger Hall]]"
  - "[[Brimstone Docks]]"
  - "[[Lambaro Isles]]"
  - "[[Lambaro]]"
  - "[[Market Row]]"
  - "[[Ember's Crossroads Agency]]"
  - "[[Mwingu]]"
  - "[[The Tideflats]]"
  - "[[Emberflare Port Office]]"
pronounced: EM-ber-hart TRAY-ders
head:
  - "[[Marrek Tindall]]"
aliases:
  - Ember Traders
  - Emberheart Traders
founded: 22 Ashwane -5 PR
organizationtype:
  - Guild
  - Trade
allies:
  - "[[The Eternal Concord]]"
  - "[[Lambaro Institute of Innovation (Faction)]]"
rivals:
  - "[[The Bleeding Tide]]"
  - "[[Golden Tides Trading Guild]]"
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
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(occupation, ", ") AS "Occupations", join(link(location), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(tags, "Character") AND econtains(organization, this.file.link) AND !contains(condition, "Dead")
> SORT tags DESC, file.name ASC

## Overview
### Description
> [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Emberheart Traders|The Emberheart Traders]] are a powerful and well-connected merchant guild focused on transporting, acquiring, and selling rare magical goods, arcane relics, and Pre-Rising artifacts. While many of their contracts are legitimate and noble-backed, they are also known for quietly exploiting black-market gaps when it suits their survival. Their two core hubs—[[01 Campaign/01 World/08 Points of Interest/01 Factions/The Emberheart Traders/Ember's Crossroads Agency|Ember's Crossroads Agency]] in [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Lambaro Isle/Lambaro|Lambaro]] and the [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Emberheart Traders/Emberheart Trade Office|Emberheart Trade Office]] in [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]]—support a kingdom-spanning trade network safeguarded by paid mercenaries, magical wards, and political favor.

### Oaths
> “Every coin bears a story. We trade in both.”

### Mission Statement
> To provide rare arcane and Pre-Rising goods across the Isles while strengthening Kanda’s economic and magical supply chains.

### Laws
> - All major contracts must be notarized by a sanctioned broker or Flamewright-appointed appraiser.  
> - No item of necromantic or abyssal origin may be sold without clearance.  
> - Guild wagons and ships must carry enchanted seals or be declared rogue.  
> - Payment in relics must be accompanied by origin documentation or witness.

### Tenets
> - Gold is memory. Relics are legacy.  
> - Trade must endure, even when politics fail.  
> - The Isles are bound by more than blood—they are bound by barter.  
> - Silence in the right place is worth more than truth in the wrong one.

### Prohibitions
> - Smuggling necromantic or abyssal artifacts without clearance.  
> - Defrauding city authorities under Guild credentials.  
> - Unauthorized relic-forging or enchantment sales.  
> - Collaborating with known black-market syndicates.

## Current Events
> - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Darion Flamewright|Guildmaster Darion Flamewright]] sits on [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]]’s merchant council and has been accused (unproven) of undercutting the [[01 Campaign/02 Factions/03 Organization/03e Other Organizations/Golden Tides Trading Guild|Golden Tides Trading Guild]] via relic smuggling.  
> - Group 4 observed increasing tension between [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Emberheart Traders|The Emberheart Traders]] and [[01 Campaign/02 Factions/03 Organization/03e Other Organizations/Golden Tides Trading Guild|Golden Tides Trading Guild]] in [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Kanda Isles/Boba|Boba]]—street clashes and sabotage were instigated by [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Red Runners|The Red Runners]]] pretending to be both sides.  
> - A shipment of relics bound for [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]] was recently intercepted near the Smokey Shoals, believed stolen by [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Bleeding Tide|The Bleeding Tide]].  
> - The Traders are quietly organizing a multi-factional Trade Summit in [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Lambaro Isle/Lambaro|Lambaro]] or [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]] to reinforce diplomatic alliances and establish maritime security protocols.  
> - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Marrek Tindall|Marrek Tindall]] has solidified influence over the merchant council in [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]], positioning the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Emberheart Traders|Emberheart Traders]] as dominant over lesser guilds in the [[01 Campaign/01 World/07 Districts/Mangagoy/The Ember Wharf|Ember Wharf]] area.

## History
> Formed in 9 Ironfall -2 PR, [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Emberheart Traders|The Emberheart Traders]] emerged from an alliance of vault-keepers and relic appraisers seeking to navigate the chaos of the Rising. With the arcane market fractured, their founders created a guild capable of surviving piracy, cultural distrust, and arcane scarcity.  
>  
> Over the years, they have been targeted by black-market syndicates like [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Silver Chain|The Silver Chain]], bandits like [[01 Campaign/02 Factions/03 Organization/03e Other Organizations/The Red Runners|The Red Runners]], and rival economic forces such as the [[01 Campaign/02 Factions/03 Organization/03e Other Organizations/Golden Tides Trading Guild|Golden Tides Trading Guild]]. Despite this, they maintain political favor through subtle brokerage and timely generosity to city leaders across the Isles.

## Notes
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Darion Flamewright|Guildmaster Darion Flamewright]] – A pragmatic, silver-tongued dwarven merchant, Guildmaster of the Traders. Splits his time between [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Lambaro Isle/Lambaro|Lambaro]] and [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]] council halls.  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Marrek Tindall|Marrek Tindall]] – Merchant Prince managing the [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Emberheart Traders/Emberheart Trade Office|Emberheart Trade Office]] at [[01 Campaign/01 World/07 Districts/Mangagoy/The Ember Wharf|The Ember Wharf]] in [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]]. Known for leveraging trade disputes to Emberheart advantage while maintaining a polished diplomatic front.  
- [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Emberheart Traders/Ember's Crossroads Agency|Ember's Crossroads Agency]] – Located in [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Lambaro Isle/Lambaro|Lambaro]]’s [[01 Campaign/01 World/07 Districts/Lambaro/Market Row|Market Row]], it’s a hub for high-value magical goods.  
- [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Emberheart Traders/Emberheart Trade Office|Emberheart Trade Office]] – Located in [[01 Campaign/01 World/07 Districts/Mangagoy/Glowquarter|Glowquarter]], [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]]; the organization’s logistics and receiving center.  
- [[01 Campaign/02 Factions/03 Organization/03e Other Organizations/Golden Tides Trading Guild|Golden Tides Trading Guild]] – Bitter rivals in [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Kanda Isles/Boba|Boba]], currently in stalemate over relic rights.  
- Known to quietly contract adventurers for: high-risk shipments, relic recovery, artifact appraisal, and trade dispute mediation.  
- Symbol: A flame-curled coin embossed with a six-pointed compass star, often encased in red glass.  
- Uniforms: Stylized vests and longcoats in ember-red, coal-gray, and brass; senior traders wear arcane-inked bracers as identity markers.
