---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/AlarielTransparent.png
sanctification:
  - Can Choose Holy
allies: []
enemies: []
pronounced: AH-lah-ree-el
attributes:
  - Charisma
  - Dexterity
skills:
  - Diplomacy
  - Performance
favored_weapon: Rapier, Shortsword
primarydomains:
  - Luck
  - Freedom
  - Passion
  - Confidence
secondarydomains:
  - Change
  - Cities
font:
  - Heal
aliases:
  - The Laughing Star
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

Alariel, the Laughing Star, is the radiant goddess of chance, courage, revelry, and the road ahead. She dances through mortal lives like sunlight through leaves—never still, never predictable, but always full of wonder. Her faithful say that luck is not found, but embraced, and that a bold heart courts divine favor more surely than studied caution.  
  
Alariel’s temples double as public houses and sanctuaries, filled with laughter, music, dice, and drink. Her worshipers include gamblers, traveling performers, wandering heroes, and those who make a toast before every battle. She teaches that joy is sacred, risks are holy, and that sometimes the gods favor those who leap before they look. Though often underestimated, she is no fool—those who mistake her mirth for weakness are often blindsided by her cunning grace.

### Area of Concern
- Luck, Bravery, Freedom, Celebration

### Edicts
- Celebrate life's moments with joy and gratitude
- Stand against tyranny and oppression with boldness
- Embrace risks and chance, trusting in fortune's favor
- Raise a toast before adventures, battles, or turning points

### Anathema
- Denying aid to a fellow traveler in need
- Crushing joy or celebration through cruelty or control
- Refusing to take risks out of fear
- Rigging games of chance for dishonest gain

### Religious Symbol
- A golden star-faced mask laughing above stacked dice and storm-lit clouds

### Sacred Animal
- Swift-winged sparrow or leaping fox

### Sacred Colors
- Gold, sky blue, blush rose

### Cleric Spells
- **1st Level**: Sure Strike  
- **2nd Level**: Mirror Image  
- **3rd Level**: Heroism  
- **4th Level**: Unfettered Movement

### Boons
- **Minor**: Once per day, reroll a failed Acrobatics, Performance, or Reflex save and take the better result.
- **Moderate**: Your confident aura inspires others. Allies within 15 feet gain a +1 status bonus to saves against fear and charm.
- **Major**: Luck favors the bold. You gain the Fortune trait once per day to reroll any d20 roll after seeing the result.

### Curses
- **Minor**: Your steps falter—take a –1 penalty to Reflex saves when flat-footed.
- **Moderate**: Misfortune follows. Once per day, the GM may force you to reroll a successful check.
- **Major**: Fortune abandons you. You cannot benefit from circumstance bonuses, and your rerolls always take the lower result.


## Goals



## Relations 



## Current Events



## History



## Notes
