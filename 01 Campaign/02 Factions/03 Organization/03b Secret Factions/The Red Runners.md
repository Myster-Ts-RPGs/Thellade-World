---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Walled Den]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/RedRunners1.png
rivals:
  - "[[The Arcane Wardens]]"
  - "[[The Eternal Concord]]"
  - "[[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Gilded Hammer Union]]"
  - "[[The Voidscourge Hunters]]"
allies:
  - "[[The Bleeding Tide]]"
  - "[[The Silver Chain]]"
pronounced: RED RUN-ers
organizationtype:
  - Secret
  - Trade
  - Syndicate
head:
  - "[[Kaelos Vark]]"
founded: 17 Emberwake 43 PR
location:
  - "[[The Outcast Isles]]"
  - "[[Kanda Isles]]"
  - "[[Mwingu Isles]]"
  - "[[Middle Isles]]"
  - "[[Lambaro Isles]]"
  - "[[Jambito Isles]]"
  - "[[Mangagoy Isles]]"
  - "[[Jambito]]"
  - "[[Kanda]]"
  - "[[Lambaro]]"
  - "[[Mangagoy]]"
  - "[[Seaside Cape]]"
  - "[[The Tideflats]]"
  - "[[The Walled Den]]"
  - "[[The Gilded Hook]]"
  - "[[Infernal Veil Safehouse]]"
  - "[[Embercoil Exchange]]"
  - "[[Lambaro Safehouse]]"
  - "[[Warehouse Undercrypts]]"
  - "[[The Ember Vein Tavern]]"
  - "[[Mangagoy Sea Caves]]"
  - "[[Crimson Dagger Outpost]]"
  - "[[Sunken Temple Base]]"
  - "[[Tidebreaker's Refuge]]"
  - "[[Mwingu Apothecary]]"
aliases:
  - Red Runners
foundedshort: 43.04.17 PR
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
> The [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Red Runners|Red Runners]] originated in [[Jambito]] as a collection of freelance thieves, assassins, and smugglers, but have evolved into a sprawling, militarized syndicate. Their operations encompass illicit trade, political blackmail, and cult collaboration, with a focus on destabilizing legitimate governance while strengthening infernal and abyssal footholds across the [[01 Campaign/01 World/03 Regions/01 Thellade/The Outcast Isles|Outcast Isles]]. They mask their movements through black-market networks and corrupted noble houses, thriving in shadows cast by both mortal law and divine neglect.

### Oaths
> "Blood spills in silence. Secrets are sold in whispers. The dagger precedes the crown."

### Mission Statement
> To control commerce, secrets, and influence across the Isles by any means necessary, advancing infernal or abyssal supremacy when it strengthens their position.

### Laws
> - Never betray the Syndicate without permission of the [[01 Campaign/02 Factions/03 Organization/03e Other Organizations/The Council of Daggers]].
> - Protect trade routes and smuggling operations at all costs.
> - Execute traitors and informants without public exposure.
> - Respect contracts made with allied factions unless rescinded by [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Jambito/Jambito/Kaelos Vark|Kaelos 'The Blooded Blade' Vark]] himself.

### Tenets
> - Profit in all endeavors.
> - Secrecy above loyalty; loyalty above mercy.
> - Cultivate corruption; never cure it.
> - Strengthen alliances with infernal patrons.

### Prohibitions
> - Revealing syndicate operations to city guards or nobles without authorization.
> - Unauthorized assassination of high-profile targets.
> - Conspiring independently with rival factions like  [[the Eternal Concord]] or [[the Arcane Wardens]].
> - Refusing a direct order from a Council member.



## Current Events
- [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Red Runners|The Red Runners]] have expanded operations into [[Kanda]], [[Mangagoy]], [[Lambaro]], and the [[Middle Isles]].
- Under [[Kaelos Vark]]'s directive, assassinations against key [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Eternal Concord|Eternal Concord]] figures have increased.
- The organization has supplied agents and logistics to both the [[Infernal Covenant]] and the [[Black Sepulcher]] in exchange for relics, contracts, and political leverage.
- Rumors suggest internal schisms brewing as [[Vashara Morgan|Vashara 'The Pale' Morgan]] secretly questions infernal allegiances.
- The syndicate is actively exploiting the leyline instability and cult rituals to solidify regional black market dominance.

## History
- Founded circa 43 PR,  [[the Red Runners]] began as scattered mercenary bands during the collapse of trade following the [[Rising]].
- Consolidated by [[Kaelos Vark]] after the massacre of the Shadethorn Cartel in [[Jambito]].
- Transitioned from street gangs to organized smuggling and assassination rings by 100 PR.
- Formed early alliances with the nascent [[the Silver Chain|Silver Chain]] and factions sympathetic to Asmodean doctrine.
- Survived multiple purges by the [[the Ashen Vanguard|Ashen Vanguard]] during the Ember Scouring of 178 PR.
- First documented cult collaboration occurred during the failed Maw Awakening Ritual at the [[Lambaro Excavation Site]].
### Campaign Events 
[[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 1|Campaign Group 1]]
  - Rescued [[Thalia Moonwhisperer]] and [[Dr. Aruni]] from Red Runner bandits.
  - Interrogated [[Veyran 'The Bloodhound' Rask]], revealing Lambaro ties.
  - Discovered Red Runner ties to the Maw Ritual and [[Karthis Thornvale]].

[[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 4|Campaign Group 4]]
  - Infiltrated the [[Warehouse Undercrypts]] (Jambito) and discovered infernal relics.
  - Fought infernal cultists and undead in Red Runner hideout.
  - Survived firetrap triggered by Red Runner leadership during escape.

[[Campaign Group 5]]
  - Exposed Red Runner manipulation of merchant guilds in Boba.
  - Disrupted Captain Verrik "The Vulture" (Red Runner agent) operations.
  - Prevented a trade war that would have expanded Red Runner control.

## Hierarchy
**Supreme Leader:** [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Jambito/Jambito/Kaelos Vark|Kaelos 'The Blooded Blade' Vark]] – Supreme Leader, tied to House Veyne, uses infernal poisoned blade.

**Council of Daggers:**
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Jambito/Jambito/Sera Anjara|Sera 'The Silken Venon' Anjara]] – Council of Daggers Member, Spy & poisoner, runs secret apothecary, suspected of cult dealings.
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Jambito/Jambito/Garrik Voss|Garrik 'The Black Hand' Voss]]  – Smuggling Lord and Brute Enforcer. Branded with infernal contract tattoos.
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Jambito/Jambito/Vashara Morgan|Vashara 'The Pale' Morgan]] – Ritualist and Contract Keeper. Uses Asmodean infernal magic; guards Kaelos' secret contracts.
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Jambito/Jambito/Jengo Scieww|'Red-Eye' Jengo]] – Spy-Master with enchanted ruby eye; blackmails nobles.
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Jambito/Jambito/Azria Whitmore|Sister Azria]]  – Interrogator specializing in mental torture and cleric-breaking.
 
**Jambito Lieutenants:**
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Jambito/Jambito/Draeven Rigg|Draeven 'The Silent Fang' Rigg]] – Deadly assassin loyal to Kaelos.
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Jambito/Jambito/Vesha Kailos|Vesha 'The Crimson Widow' Kailos]] – Merchant contact; runs secret dock under noble estate.
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Jambito/Jambito/Khari Lobo|Khari 'Bone-Crusher' Lobo]] – Pit fighter, oversees Red Runner enforcer network.

**Regional Contacts:**
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Lambaro/Lambaro City/Corvin Dane|Corvin 'The Whisper' Dane]] – Master spy in Lambaro; rumored double agent.
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mwingu/Mwingu/Zhen Ashun|Zhen 'The Iron Fang' Ashun]] - "Neutral" Alchmist in Mwingu; Runs a hidden apothecary disguised as a healing clinic.
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Bragan Holt|Captain Bragan 'Two-Tooth' Holt]] – Pirate smuggler operating from Mangagoy.
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Middle Islands/Seaside Cape/Shadara Kirn|Shadara 'The Ashen Veil' Kirn]] – Damphir Sorceress expanding Red Runner reach into the Middle Islands.

##  Locations
### Primary Hideouts
  - Warehouse Undercrypts (Jambito Docks)
  - The Ember Vein Tavern (Dockside Meeting Point)
  - The Walled Den (Ruined Headquarters, Jambito Undercity)
  - The Gilded Hook (Exclusive Smuggling Den for Nobles)
### Secondary Hideouts
  - Lambaro Safehouse (Hidden under Dagger’s Hollow Tavern)
  - Mangagoy Sea Caves (Bragan’s Smuggling Lanes)
  - Mwingu Apothecary Front (Zhen Ashun's "clinic")
  - Middle Islands: Sunken Temple Base (Shadara's Necromantic Coven)

## Notes
- **Threat Level:** Extreme. Red Runners have infiltrated city watches, merchant houses, and minor noble courts.
- **Speculative Rift:** Some Red Runner members suspect Kaelos Vark’s secret allegiance to Asmodean cults could doom the faction.
- **Faction Allies:** Partial alliances with the Infernal Covenant (Asmodeus) and secret trading ties with the Silver Chain.
- **Faction Enemies:** The Emberborn League, Eternal Concord, Arcane Wardens (suspected investigations).
- **Symbol:** A stylized red serpent entwined around a black dagger with a flaming background and the "RR" bullhorned motif embedded behind it.
- **Uniforms:** Standard members wear dark crimson sashes or neckbands. Senior enforcers have leather jackets branded with a double-R symbol stitched over the heart. Ritualists and infernal agents bear black-and-scarlet cloaks marked with infernal glyphs.

### Key Plot Threads
- **Infernal Contracts:** Red Runners have smuggled and guarded infernal relics intended for cult rituals.
- **Political Manipulation:** Coordinating false flag attacks between merchant factions to destabilize Boba and Jambito.
- **Cult Collaboration:** While not all Red Runners are cultists, the leadership barters power with both Asmodean and Orcus-worshipping splinters.
- **Expansion Goals:** Moving beyond Jambito into Lambaro, Mwingu, Mangagoy, and the Middle Islands through espionage, assassination, and necromantic control.

### Artifacts and Evidence Found
- Infernal ledgers linking them to [[Lord Marcellus Veyne]].
- Teleportation circles used for infernal summoning.
- Ritual daggers, infernal tomes, and coded assassination contracts.
- Blackmail records involving Jambito nobles.





