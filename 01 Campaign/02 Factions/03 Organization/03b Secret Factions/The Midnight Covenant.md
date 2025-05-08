---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Shadowed Hall]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Global
art: 90 Assets/Images/Organizations/MidnightCovenant.png
aliases:
  - Midnight Covenant
  - The Veiled Hand
head:
  - "[[Elaris Vex]]"
founded: 12 Nightveil 127 PR
pronounced: MID-night KOV-uh-nuhnt
organizationtype:
  - Arcane
  - Assassination
location:
  - "[[The Outcast Isles]]"
  - "[[Kanda Isles]]"
  - "[[Kanda]]"
  - "[[Tallowgate]]"
  - "[[The Twilight Cell]]"
  - "[[Lambaro]]"
  - "[[Lambaro Isles]]"
  - "[[Glowmire Terrace]]"
  - "[[The Gloamspire]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/Mangagoy Isles]]"
  - "[[Mangagoy]]"
  - "[[Binders' Lane]]"
  - "[[Whispervault Archive]]"
  - "[[Middle Isles]]"
  - "[[Westport]]"
  - "[[The Sunken Veil]]"
  - "[[Mwingu Isles]]"
  - "[[Mwingu]]"
  - "[[Scholar's Ring]]"
  - "[[The Shadowed Hall]]"
  - "[[The Daggerhall Cloisters]]"
  - "[[The Umbral Wrath]]"
rivals:
  - "[[The Eternal Concord]]"
  - "[[The Phoenix Assembly]]"
  - "[[The Arcane Wardens]]"
foundedshort: 127.07.12 PR
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
> [[The Midnight Covenant]] is a clandestine cabal of spies, assassins, and shadow mages who manipulate the arcane and political undercurrents of the [[01 Campaign/01 World/03 Regions/01 Thellade/The Outcast Isles|Outcast Isles]]. They strike from the shadows, dismantling opposition before it emerges, and seek arcane supremacy through control of knowledge, power, and forbidden magic. Known by few and feared by many, they operate in whispers, illusions, and blood-stained ledgers.

### Oaths
> “Truth lives in silence. Power walks unseen.”

### Mission Statement
> To safeguard and control the flow of forbidden Pre-Rising magic and political power across the Isles by operating beyond sight, law, or morality—ensuring dominance belongs only to the truly worthy.

### Laws
> • Never reveal the Covenant’s existence.  
> • Secrets are currency; hoard them, trade them, weaponize them.  
> • Failure is erased—along with the one who failed.

### Tenets
> • Secrecy is the soul of survival.  
> • All knowledge has a price.  
> • Control the story, and you control the truth.

### Prohibitions
> • Betraying the Covenant’s location or members.  
> • Using magic that reveals the true names of members.  
> • Acting in the light without sanction.

## Current Events
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mwingu/Mwingu/Elaris Vex|Shadowmaster Elaris Vex]] has withdrawn deeper into 'The Shadowed Hall'—agents report a growing focus on ancient abyssal rituals.  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Varian Kel|Cipher Varian Kel]] has begun spreading forged documents implicating rivals of the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Phoenix Assembly|Phoenix Assembly]] in relic smuggling.  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Middle Islands/Seaside Cape/Selka Jarron|Captain Selka Jarron]]'s fleet was seen escorting a veiled transport toward a known leyline breach.  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Malrik Vayne|Inquisitor Malrik Vayne]] is manipulating noble alliances in [[Kanda]], spreading false prophecy to destabilize governance.  
- Covenant assets were seen near a Pre-Rising vault uncovered in [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]], interfering with [[Campaign Group 3]] indirectly.

## History
- 12 Duskwane 127 PR (Generated): [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mwingu/Mwingu/Elaris Vex|Shadowmaster Elaris Vex]] forms the Covenant after a failed arcane summit on planar ethics.  
- 135 PR: [[The Gloamspire]] is established in [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Lambaro Isle/Lambaro|Lambaro]] as a black-market arcane hub.  
- 141 PR: [[The Twilight Cell]] infiltrates [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Kanda Isles/Kanda|Kanda]]’s noble houses; three governors are removed within five years.  
- 160 PR: [[The Sunken Veil]] constructed near [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Middle Isles/Westport|Westport]] and used to train shadow-wielding commandos.  
- 191 PR: A defector from the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Arcane Wardens|Arcane Wardens]] is executed after leaking spells to the Covenant.  
- 205 PR: Forbidden rituals from the  [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Midnight Covenant/Whispervault Archive|Whispervault Archive]] are used to destroy a rival assassin guild overnight.

### Campaign Events
- [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 1|Campaign Group 1]]  
  - Scrying interference traced to a hidden leyline ward within 'The Shadowed Hall'; mental tampering suspected.  
  - Blackmail involving a local academic in [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mwingu Isles/Mwingu|Mwingu]] may have been planted by [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Malrik Vayne|Inquisitor Malrik Vayne]].

- [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 3|Campaign Group 3]]  
  - Relic recovery operations intersected with Covenant sabotage; rumors suggest [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Lambaro/Lambaro City/Nyzara Velis|Voidbinder Nyzara Velis]] was seen near [[The Gloamspire]].  
  - Unmarked blades of shadow essence found embedded in ruined library walls beneath [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]].

## Hierarchy
- **Supreme Leader:** [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mwingu/Mwingu/Elaris Vex|Shadowmaster Elaris Vex]] – Illusion-shrouded leader, rumored immortal, master of deception and shadow magic.  
- **Council-Level Members:**  
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mwingu/Mwingu/Sira Morwyn|Wraithcaller Sira Morwyn]] – Oversees assassination and elimination squads from '[[The Daggerhall Cloisters]]'.  
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Malrik Vayne|Inquisitor Malrik Vayne]] – Controls memory magic and espionage cells from '[[The Twilight Cell]]'.  
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Lambaro/Lambaro City/Nyzara Velis|Voidbinder Nyzara Velis]] – Leads dark arcane research and relic recovery from '[[The Gloamspire]]'.  
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Varian Kel|Cipher Varian Kel]] – Manipulates political factions through illusion and blackmail from '[[Whispervault Archive]]'.  
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Middle Islands/Westport/Kael Dren|Revenant Commander Kael Dren]] – Military director of shadow operatives based at '[[The Sunken Veil]].

- **Regional Contacts / Lieutenants:**  
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Lambaro/Lambaro City/Veysha Durnath|Lady Veysha Durnath]] – Oversees black-market channels and arcane contraband from '[[The Gloamspire]]'.  
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mwingu/Mwingu/Serrik Valdus|Archmage Serrik Valdus]] – Manages magical training and relic experiments from '[[The Shadowed Hall]].  
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Alvinar Morvain|Lord Alvinar Morvain]] – Runs infiltration and political destabilization programs from '[[The Twilight Cell]].  
  - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Middle Islands/Seaside Cape/Selka Jarron|Captain Selka Jarron]] – Naval leader and trainer of stealth operatives based at '[[The Sunken Veil]]'. Captain of [[01 Campaign/01 World/08 Points of Interest/07 Ships/The Outcast Isles/The Umbral Wrath|The Umbral Wrath]].

## Locations
### Primary Hideouts
- [[The Shadowed Hall]] – Main headquarters beneath [[Mwingu]], accessible only by illusion-concealed passageways.
### Secondary Hideouts
- [[The Gloamspire]] – Black-market library of arcane contraband in [[Lambaro]].  
- [[The Twilight Cell]] – Secret noble estate chamber used for political infiltration in [[Kanda]].  
- [[Whispervault Archive]] – Hidden record-forgery site and arcane intelligence cell in [[Mangagoy]].  
- [[The Sunken Veil]] – Remote training fortress and naval hub near [[Westport]].  
- [[The Daggerhall Cloisters]] – Elite assassination training compound in [[Mwingu]].

## Notes
- **Threat Level:** Extreme  
- **Speculative Rift:** Some members of the Veiled Hand question Elaris Vex’s true goals and his use of abyssal rites.  
- **Symbol:** A black circle with five downward-pointing daggers and a blood-red eye at its center.  
- **Uniforms:** Members wear layered black-and-indigo cloaks with illusion-stitched symbols. Rank is indicated by obsidian clasp configuration; all uniforms are self-cleaning and anti-scrying enhanced.

### Key Plot Threads
- The Covenant seeks to infiltrate every major center of magical research before the next lunar convergence.  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Varian Kel|Cipher Varian Kel]] is building a shadow dossier on key members of the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Phoenix Assembly|Phoenix Assembly]].  
- A forbidden Pre-Rising relic stored in [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Midnight Covenant/Whispervault Archive|Whispervault Archive]] may contain prophecy fragments about the weakening of the boundary.  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Middle Islands/Seaside Cape/Selka Jarron|Captain Selka Jarron]] is using naval maneuvers to smuggle unregistered shadow-forged weapons into conflict zones.  
- One Veiled Hand member may be seeking an alliance with a player group to undermine Elaris Vex from within.

### Artifacts and Evidence Found
- Shard of a memory crystal from a Covenant interrogation ritual, corrupted with temporal static.  
- Forged copies of noble contracts linking [[Kanda]]’s regents to false benefactors.  
- Blade etched with untranslatable runes recovered from ruins in [[Mangagoy]].  
- A journal encoded in illusory script from [[The Gloamspire]], recovered by [[Campaign Group 3]].  
- Ashes from an incomplete summoning circle in 'The Shadowed Hall', radiating abyssal feedback.

