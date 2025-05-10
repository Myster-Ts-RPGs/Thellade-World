---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/ElarisTransparent.png
sanctification:
  - Can Choose Holy
allies: []
enemies: []
pronounced: EH-lah-riss
aliases:
  - The Song Without End
attributes:
  - Charisma
  - Dexterity
skills:
  - Diplomacy
  - Performance
favored_weapon: Rapier, Whip
primarydomains:
  - Passion
  - Protection
  - Freedom
  - Creation
secondarydomains:
  - Repose
  - Confidence
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

Elaris is the Song Without End—goddess of love, artistic creation, and the harmonious pursuit of beauty. She is said to have painted the first sunrise across Thellade’s sky and whispered the words of the first poem into mortal ears. Elaris inspires dancers, musicians, dreamers, and peaceweavers alike, and her temples are places where art and affection are offered in equal measure. Though some mistake her for soft, her love can stir hearts to courage, and her grace can end wars where blades could not.

Elaris walks where the veil of pain thins—offering music in mourning and serenity amid chaos. Her shrines are common in theaters, gardens, and city rooftops, where artists sing her praise under open sky. Among elves, she is considered the sister of Aevar.

### Area of Concern
- Beauty, Love, Creation, Artistry

### Edicts
- Create beauty in your own way and share it freely
- Protect the passions of others, especially the vulnerable and outcast
- Love fiercely, without shame or cruelty
- Use your gifts to mend wounds and inspire peace

### Anathema
- Defacing or destroying a work of art in hatred or envy
- Suppressing self-expression or genuine emotion
- Using love as a tool of manipulation or control
- Allowing cruelty to silence beauty

### Religious Symbol
- A delicate pink rose unfurled with golden stems shaped into a heart, winged with soft feathers—representing grace, flight, and devotion

### Sacred Animal
- Swan

### Sacred Colors
- Rose pink, ivory, gold

### Cleric Spells
- **1st Level**: Charm  
- **2nd Level**: Calm  
- **3rd Level**: Heroism  
- **4th Level**: Unfettered Movement

### Boons
- **Minor**: Your presence soothes pain. Once per day, you may reduce an ally’s frightened, stupefied, or enfeebled condition by 1.
- **Moderate**: Songs of grace surround you. Allies within 15 feet gain +1 to Performance checks and saving throws against emotional effects.
- **Major**: You become a living hymn. Once per week, inspire an entire crowd or group to peace or awe as per *calm emotions* and *enthrall* simultaneously.

### Curses
- **Minor**: You lose your harmony. Take a –1 penalty to Performance and Diplomacy checks while frightened or wounded.
- **Moderate**: Beauty falters in your eyes. You are immune to emotion effects but also cannot benefit from morale bonuses.
- **Major**: Your voice breaks and hands tremble. You can no longer cast spells with the emotion or healing traits, and cannot be the target of Inspire Courage.
