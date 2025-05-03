---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Radiant Keep]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - National
art: 90 Assets/Images/Organizations/LuminaGuardians.png
pronounced: LOO-mi-nuh GUAR-dee-ans
aliases:
  - Lumina Guardians
founded: 07 Emberwake -9 PR
organizationtype:
  - Order
  - Religious
  - Military
head:
  - "[[Astra Valara]]"
location:
  - "[[The Outcast Isles]]"
  - "[[Jambito Isles]]"
  - "[[Jambito]]"
  - "[[Riverbend Hollow]]"
  - "[[Shrinewatch Patrol Hold]]"
  - "[[Kanda Isles]]"
  - "[[Kanda]]"
  - "[[Tallowgate]]"
  - "[[The Radiant Keep]]"
  - "[[Lambaro Isles]]"
  - "[[Lambaro]]"
  - "[[Arcspire District]]"
  - "[[Guardian's Vigil Base]]"
  - "[[Mangagoy Isles]]"
  - "[[Mangagoy]]"
  - "[[Glowquarter]]"
  - "[[Radiant Sigil Station]]"
  - "[[Middle Isles]]"
  - "[[Seaside Cape]]"
  - "[[Hollowshore]]"
  - "[[Moonwall Fortification Post]]"
  - "[[Mwingu Isles]]"
  - "[[Mwingu]]"
  - "[[Watcher's Hollow]]"
  - "[[Guardian Field Hospice]]"
allies:
  - "[[The Dawnbringers of Lunara]]"
  - "[[The Ashen Vanguard]]"
rivals:
  - "[[The Black Sepulcher]]"
  - "[[The Infernal Covenant]]"
  - "[[The Hollow Saints]]"
foundedshort: -9.04.07 PR
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
> [[The Lumina Guardians]] are a militant and religious order devoted to the goddess [[Lunara]], operating as holy defenders of the Kingdom of Kanda. They represent the divine sword where [[the Dawnbringers of Lunara]] offer the divine balm. Known for their strict codes of conduct, radiant plate armor, and martial discipline infused with divine light, they are often stationed at the edges of corrupted zones or in bastions of faith. Their command center, [[The Radiant Keep]] in [[Tallowgate]], is one of the most spiritually warded fortresses in the Isles.

### Oaths
> “Let light shield the innocent, and blade sever the shadows.”

### Mission Statement
> To guard the people of Kanda from the threats of undeath, demonic influence, infernal corruption, and spiritual decay through vigilant action, righteous battle, and sacred guardianship.

### Laws
> - All recruits must undergo a month-long vigil in the Sanctuary of the Dawn before assignment.  
> - No Guardian may strike a foe from behind unless protecting another.  
> - Commanders may not withhold news of undeath, corruption, or demonic influence from allied temples.  
> - Only Lunara’s chosen relics may be wielded in rituals of sealing.

### Tenets
> - Mercy to the broken. Judgment to the wicked.  
> - Moonlight sees through lies.  
> - Undeath is a crime against nature.  
> - Let no fortress fall while a Guardian still draws breath.

### Prohibitions
> - Worship of or cooperation with infernal or abyssal entities.  
> - Use of necromantic magic except in cleansing rites.  
> - Profaning holy relics for personal gain.  
> - Retreat from a sacred site unless given divine or formal command.

## Current Events
> - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Astra Valara|Guardian Astra Valara]] is currently coordinating efforts from [[The Radiant Keep]] in [[Kanda]], preparing strategic contingencies for possible planar breaches tied to the weakening of the outer barrier&#8203;:contentReference[oaicite:0]{index=0}.  
> - The Guardians are on alert after sensing residual corruption in the ruins beneath Kanda’s catacombs, believed linked to [[The Infernal Covenant]].  
> - [[The Dawnbringers of Lunara]] have proposed a joint cleansing rite in the Crystal Sanctum of Jambito, pending escort support from the Guardians.  
> - Rising undead sightings in eastern Mwingu have prompted deployment of an armored detachment to [[01 Campaign/01 World/07 Districts/Mwingu/Watcher's Hollow|Watcher's Hollow]].

## History
> Founded on 7 Emberwane -9 PR following a vision received by the prophet-knight Ilvarea Duskstride, [[The Lumina Guardians]] formed as a shield wall against dark forces in the years leading to the Rising. They united wandering paladins, shrine defenders, and holy warriors into a disciplined order sanctified by Lunara’s light.  
>  
> During the Rising, they defended multiple strongholds against abyssal incursions and reinforced major temples throughout the Outcast Isles. Their sacred oaths bind them not just to Kanda, but to the balance between life and afterlife. The Guardians have never broken a siege against a holy site under their watch.

## Notes
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Astra Valara|Guardian Astra Valara]] – Current leader; commanding presence, known for righteous fury and tactical brilliance.  
- [[The Radiant Keep]] – Their command fortress in [[Tallowgate]], reinforced with Pre-Rising moonstone wards and Lunar glyphs.  
- [[Shrinewatch Patrol Hold]] – A fortified outpost near the riverbanks of [[Jambito]], safeguarding shrines from cultist defilement.  
- [[Radiant Sigil Station]] – [[Mangagoy]] bastion coordinating with local [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Dawnbringers of Lunara|Dawnbringers of Lunara]] against ritual corruption.  
- [[Moonwall Fortification Post]] – Cliffside overlook in [[Seaside Cape]] used to repel undead or abyssal sea incursions.  
- Symbol: A silver sunburst halo behind a moon-wreathed longsword, tip down, flanked by crescent wings.  
- Uniforms: Polished lunarplate armor with gold-blue tabards, radiance-sewn cloaks, and a single rune of Lunara over the heart.
