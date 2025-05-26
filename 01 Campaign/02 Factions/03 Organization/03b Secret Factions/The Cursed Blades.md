---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Crimson Circle]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/CursedBlades.png
aliases:
  - Cursed Blades
  - Cursed Duelists
  - Underground Duelists
location:
  - "[[The Outcast Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Kanda Isles]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/BobaNotes]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mangagoy Isles]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Lambaro Isles]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/LambaroNotes]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Jambito Isles]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/JambitoNotes]]"
  - "[[Brimstone Docks]]"
  - "[[01 Campaign/01 World/08 Points of Interest/10 Infrastructure/Outcast Isles/Kanda Isles/Boba/The Hollow Arena]]"
  - "[[Glowquarter]]"
  - "[[The Ironbind Floor]]"
  - "[[Glowmire Terrace]]"
  - "[[The Redsteel Vault]]"
  - "[[Riverbend Hollow]]"
  - "[[The Crimson Circle]]"
head:
  - "[[Lenna Yelris]]"
pronounced: KUR-sd BLAYDZ
founded: 17 Nightveil 76 PR
organizationtype:
  - Secret
  - Martial
steward:
  - "[[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Boba/Kaen Lulen]]"
rivals:
  - "[[The Ashen Vanguard]]"
  - "[[The Crimson Shroud]]"
foundedshort: 76.07.17 PR
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
> The [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Cursed Blades|Cursed Blades]] are a secretive martial society of assassins, warriors, and duelists who uphold a blood-bound code of combat. Their duels are governed by sacred law and conducted with cursed blades that draw power from pain and sacrifice. Fights are not for show—they’re for judgment, vengeance, or payment of soul-debts. The organization upholds arcane dueling rites that, if violated, may summon enforcers from beyond death.

### Oaths
> "One cut binds. One death ends. All debts paid in steel."

### Mission Statement
> To uphold the sacred laws of cursed dueling, enact verdicts where mortal courts fail, and maintain balance through ritual combat.

### Laws
> - All duels must be sanctioned by the Circle.  
> - No duel may be interrupted.  
> - A defeated opponent’s weapon may only be claimed through ritual succession.

### Tenets
> - Power through restraint.  
> - Death is a promise, not a punishment.  
> - Duels serve the oath, not the ego.

### Prohibitions
> - No use of cursed weapons outside the Circle’s approval.  
> - No refusal once challenged.  
> - No mercy in a bound duel.

## Current Events
- [[Lenna Yelris]], known as 'The Crimson Duelist', has resurfaced in Jambito, enforcing old debts against newly empowered factions.
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Boba/Kaen Lulen]] has been witnessed near shrine-ruins in Boba, performing ritual bindings on cursed blades.
- [[Jeks Thal]] has begun inducting new duelists from Mangagoy’s underground weapon circuit.

## History
- Founded shortly before the Rising by survivors of Kanda’s broken dueling houses.  
- Forged their codes beneath obsidian vaults, their traditions passed through whispered blade oaths.  
- Appeared periodically throughout history to resolve high-profile feuds too dangerous for public trial.  
- Once served as silent executioners for noble disputes—until the practice was outlawed post-Rising.

### Campaign Connections
[[Campaign Group 3]] – Encountered rumors of cursed duelists in Mangagoy’s basements.  
[[Campaign Group 5]] – Intercepted a smuggled cursed weapon in Boba traced to a silent vendetta.  
[[Campaign Group 6]] – Kibo’s arc may unknowingly link to ancient weapon-binding rites tied to the Cursed Blades.

## Hierarchy
- **Crimson Duelist:** [[Lenna Yelris]] — Duelist-enforcer of the Circle, appears when laws are broken.  
- **Ritebinder:** [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Boba/Kaen Lulen]] — 'Sister Kaen of the Violet Oath', ceremonial spellblade and arcane ritualist.  
- **Blade-Bearer:** [[Jeks Thal]] — Overseer of weapon curses and trials by combat.

## Locations
- **Headquarters:** [[The Crimson Circle]] (Jambito > Riverbend Hollow)  
- [[01 Campaign/01 World/08 Points of Interest/10 Infrastructure/Outcast Isles/Kanda Isles/Boba/The Hollow Arena]] (Boba > Brimstone Docks)  
- [[The Ironbind Floor]] (Mangagoy > Glowquarter)  
- [[The Redsteel Vault]] (Lambaro > Glowmire Terrace)

## Notes
- **Threat Level:** High in noble and underworld circles.  
- **Rivalries:** Feud with [[The Crimson Shroud]] over execution jurisdiction.  
- **Symbol:** Downward-pointed crimson and silver blades surrounded by a circle of glyphs.  
- **Uniforms:** Duelists wear dark sashes bearing blood-threaded symbols of their last won duel.

### Key Plot Threads
- The Return of the Crimson Duelist  
- Noble vendettas secretly enforced by the Circle  
- Legacy of the Violet Oath and forbidden weaponry  
- Rise of soul-bound blade contracts

### Artifacts and Evidence
- Cursed blades with names etched in infernal or abyssal runes.  
- Duel tokens sealed in wax and blood.  
- Duel manifests found encoded in prayer scrolls.  
- Burned tattoo sigils on challengers’ corpses.
