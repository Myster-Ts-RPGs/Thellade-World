---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/ThalgrimTransparent.png
sanctification:
  - Must Choose Holy
allies: []
enemies: []
pronounced: THAHL-grim
aliases:
  - The Flame-Forged Sentinel
attributes:
  - Strength
  - Wisdom
skills:
  - Crafting
  - Religion
favored_weapon: Warhammer, Pick
primarydomains:
  - Protection
  - Duty
  - Earth
  - Might
secondarydomains:
  - Fire
  - Earth
  - Creation
font:
  - Heal
---


> [!metadata|metadata]- Metadata 
>> [!metadata|metadataoption]- System
>> #### System
>>  |
>> ---|---|
>> **Tags** | `INPUT[Tags][inlineListSuggester:tags]` |
>
>> [!metadata|metadataoption]- Art
>> #### Art
>>  |
>> ---|---|
>> **Art** | `INPUT[imageSuggester(optionQuery("")):art]` |
>
>> [!metadata|metadataoption]- Bio
>> #### Bio
>>  |
>> ---|---|
>> **Pronounced** |  `INPUT[textArea:pronounced]` |
>> **Aliases** | `INPUT[list:aliases]` |
>> **Sanctification** | `INPUT[Sanctification][inlineListSuggester:sanctification]`
>> **Attributes** | `INPUT[Attributes][inlineListSuggester:attributes]` |
>> **Skills** | `INPUT[Skills][inlineListSuggester:skills]` |
>> **Favored Weapon** | `INPUT[textArea: favored_weapon]`
>> **Alignment** | `INPUT[Alignment][:alignment]` |
>
>> [!metadata|metadataoption]- Spellcasting
>> #### Spellcasting Info
>>  |
>>---|---|
>> **Primary Domains** | `INPUT[Domains][inlineListSuggester:primarydomains]` |
>> **Secondary Domains** | `INPUT[Domains][inlineListSuggester:secondarydomains]` |
>> **Divine Font** | `INPUT[Font][inlineListSuggester:font]` |
>
>> [!metadata|metadataoption]- Deity Info
>> #### Deity Info
>>  |
>>---|---|
>> **Power** | `INPUT[DeityPower][:deitypower]` |
>> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>> **Owned Locations** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):ownedlocation]` |
>> **Current Location** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |
>> **Condition** | `INPUT[Condition][:condition]` |
>
>> [!metadata|metadataoption]- Relations
>> #### Relations
>>  |
>> ---|---|
> **Allies** | `INPUT[inlineListSuggester(optionQuery(#Deity AND !"z_Templates"),optionQuery(#Demigod AND !"z_Templates"),optionQuery(#LegendaryBeing AND !"z_Templates"), useLinks(partial)):allies]` |
> **Enemies** | `INPUT[inlineListSuggester(optionQuery(#Deity AND !"z_Templates"), optionQuery(#Demigod AND !"z_Templates"), optionQuery(#LegendaryBeing AND !"z_Templates"), useLinks(partial)):enemies]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ![[PlaceholderAudio.webm]]
> ###### Bio
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Sanctification** | `VIEW[{sanctification}][text]` |
> **Attributes** | `VIEW[{attributes}][text]` |
> **Skills** | `VIEW[{skills}][text]` |
> **Favored Weapon** | `VIEW[{favored_weapon}][text]` |
> **Alignment** | `VIEW[{alignment}]` |
>
> ###### Spellcasting
>  |
> ---|---|
>  **Primary Domains** | `VIEW[{primarydomains}][text]` |
>  **Secondary Domains** | `VIEW[{secondarydomains}][text]` |
>  **Divine Font** | `VIEW[{font}][text]` |
>  
> ###### Info
>  |
> ---|---|
> **Power** | `VIEW[{deitypower}]` |
> **Owned Locations** | `VIEW[{ownedlocation}][link]` |
> **Current Location** | `VIEW[{location}][link]` |
> **Condition** | `VIEW[{condition}]` |


# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!recite]- Introduction
> A script for the GM to read when the party arrive to this location for the first time.

> [!metadata|location]- Specific Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(location), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(tags, "POI") AND econtains(organization, this.file.link)
> SORT poitype ASC, file.name ASC

> [!metadata|organizations]- Related Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(tags, "Organization") AND econtains(worship, this.file.link)
> SORT organizationtype ASC, file.name ASC

> [!metadata|organizations]- Allies
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS "Aliases"
> FROM "01 Campaign"
> WHERE (contains(tags, "Deity") OR contains(tags, "Demigod") OR contains(tags, "ArchDevil") OR contains(tags, "DemonLord") OR contains(tags, "LegendaryBeing"))
> AND contains(allies, this.file.link)
> SORT file.name ASC

> [!metadata|organizations]- Enemies
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS "Aliases"
> FROM "01 Campaign"
> WHERE (contains(tags, "Deity") OR contains(tags, "Demigod") OR contains(tags, "ArchDevil") OR contains(tags, "DemonLord") OR contains(tags, "LegendaryBeing"))
> AND contains(enemies, this.file.link)
> SORT file.name ASC



## Overview

Thalgrim, the Flame-Forged Sentinel, is the unshakable god of stonecraft, defensive warfare, and enduring wisdom. He teaches that strength must be forged, not flaunted, and that every blow struck should carry the weight of purpose. His presence is invoked where steel is tempered with patience and walls are built to last beyond memory. To his faithful, honor is a metal best shaped in fire and trial. Revered by dwarves and deep-keepers, his presence is felt in every hammer’s strike and every stone’s steadfast hold.

Thalgrim is one of the oldest deities in the Thellade pantheon, and his forge is said to predate the first civilizations. In myth, he worked beside Aevaris in shaping magical tools and protective wards during the Rising. His followers include dwarves, crafters, sentinels, and tacticians—those who believe strength and wisdom must be welded together with purpose. Many of the underground cities still lit today owe their survival to the traditions and teachings passed down through his faithful.

### Area of Concern
- Craftsmanship, Defense, Honor, Tradition

### Edicts
- Protect your community and its traditions
- Work diligently and pass your craft to the next generation
- Uphold your word as you would a forge-bound oath
- Stand firm against chaos and destruction

### Anathema
- Abandoning your kin in times of need
- Destroying or desecrating sacred forges
- Crafting shoddy or deceitful work
- Breaking an oath sworn before flame or steel

### Religious Symbol
- A black anvil surrounded by golden runes, flames rising from its center

### Sacred Animal
- Ram or deepcave lizard

### Sacred Colors
- Bronze, coal black, ember red

### Cleric Spells
- **1st Level**: Runic Weapon  
- **2nd Level**: Heat Metal  
- **4th Level**: Fire Shield  
- **5th Level**: Wall of Stone

### Boons
- **Minor**: Once per day, gain a +1 item bonus to Crafting checks and Fortitude saves after standing still for one round.
- **Moderate**: Gain resistance 3 to fire and physical damage while wielding a shield or wearing medium/heavy armor.
- **Major**: Once per week, when you fail a saving throw against a strike or hazard, reduce it to a success and become immune to knockback or forced movement for 1 minute.

### Curses
- **Minor**: You become disoriented when rushed. You take a –1 penalty to Initiative if you move more than 10 feet before combat.
- **Moderate**: Your resolve becomes brittle. Whenever you roll a natural 1 on a Fortitude save, you are stunned 1.
- **Major**: Broken oaths haunt you. If you ever break a formal promise or violate a declared edict, you become clumsy 2 and drained 1 until you complete a ritual of penance at a forge blessed to Thalgrim.


## Goals



## Relations 



## Current Events



## History



## Notes
