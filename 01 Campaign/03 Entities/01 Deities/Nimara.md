---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/NimaraTransparent.png
sanctification:
  - Must Choose Holy
allies: []
enemies: []
pronounced: NIH-mah-rah
aliases:
  - The Still Moment
attributes:
  - Wisdom
  - Charisma
skills:
  - Nature
  - Medicine
favored_weapon: Staff, Sickle
primarydomains:
  - Time
  - Repose
  - Moon
  - Healing
secondarydomains:
  - Dreams
  - Change
  - Truth
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

Nimara is the Still Moment—the goddess of tranquil rivers, moonlit nights, and the quiet between ticking seconds. She is the divine guardian of stillness, healing, and time’s patient flow. Often depicted resting beneath a willow by a silver stream under the full moon, Nimara is invoked by healers, midwives, monks, and seers. She holds that peace is not the absence of conflict, but the presence of balance.

Nimara is the elder sister of storms and silence, a being said to exist both before time and beside it. During the Rising, she slowed time within groves and temples to preserve the wounded and grieving. Her followers believe the greatest revolutions begin in stillness. They are often found in hidden glades, lunar sanctuaries, or wandering as peaceful dreamwalkers and spiritual guides.

### Area of Concern
- Tranquility, Time, Dreams, Healing

### Edicts
- Guide others to inner peace and emotional clarity
- Preserve the natural rhythm of life and time
- Defuse conflict through wisdom, not force
- Respect sacred stillness—moments of awe, mourning, and transformation

### Anathema
- Causing violence in places of healing or rest
- Mocking or desecrating the dead
- Manipulating time for personal gain or cruelty
- Disrupting dreams through fear or corruption

### Religious Symbol
- A moon mirrored on still waters beneath a willow tree’s silhouette

### Sacred Animal
- Swan or Owl

### Sacred Colors
- Moonlight silver, twilight blue, willow green

### Cleric Spells
- **1st Level**: Gentle Landing  
- **2nd Level**: Calm  
- **3rd Level**: Heroism  
- **4th Level**: Peaceful Bubble

### Boons
- **Minor**: Once per day, you may delay a triggering effect (trap, hazard, reaction) by 1 round as if suspended in time.
- **Moderate**: You emanate a 10-foot aura that grants a +1 status bonus to Will saves and reduces frightened conditions by 1 at the start of each turn.
- **Major**: Once per week, you may enter a moment of perfect stillness. For 1 minute, you gain fast healing 5, immunity to fear, and allies within 30 feet gain the benefits of the *calm emotions* spell.

### Curses
- **Minor**: Time slows your reactions. You suffer a –1 penalty to initiative rolls.
- **Moderate**: The world drags. Whenever you critically fail a save, you are slowed 1 for 1 round.
- **Major**: You are bound to stillness. You lose your third action each round unless you begin your turn completely motionless.
