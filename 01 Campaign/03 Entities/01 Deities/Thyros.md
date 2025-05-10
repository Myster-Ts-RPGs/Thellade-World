---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/ThyrosTransparent.png
sanctification:
  - Must Choose Holy
allies: []
enemies: []
pronounced: THAI-rohs
aliases:
  - The Shield of Dawn
attributes:
  - Charisma
  - Strength
skills:
  - Diplomacy
  - Athletics
favored_weapon: Shield Boss, Longsword
primarydomains:
  - Vigil
  - Duty
  - Might
  - Truth
secondarydomains:
  - Fire
  - Confidence
font:
  - Heal or Harm
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

Thyros, the Shield of Dawn, is the unwavering light that stands guard between the innocent and the devouring dark. He is the patron of oathbound warriors, shining exemplars of justice, and the sacred flame of vigilance. His eye sees betrayal, his shield endures evil, and his blade strikes only to protect. Though stern, Thyros values mercy—but never at the cost of justice.

Thyros was once called the “Blade Left Behind”—a forgotten force of divine justice bound to ancient oaths before the Rising. In the aftermath of betrayal and broken circles, he reemerged, rallying champions and bastions alike. His temples often serve as courts, training grounds, and sanctuaries, where every blow struck is a prayer and every defended soul a hymn to his purpose.

### Area of Concern
- Justice, Vigilance, Fire, Devotion

### Edicts
- Protect those who cannot protect themselves
- Remain vigilant against evil, even in peace
- Strike without hesitation when injustice rises
- Let your word be as unyielding as your blade

### Anathema
- Betraying an oath or sacred duty
- Turning away from evil for fear of sacrifice
- Using power for personal glory instead of righteous cause
- Allowing injustice to go unchallenged in your presence

### Religious Symbol
- A gleaming blue eye set in the center of a steel shield, surrounded by celestial runes and divine script

### Sacred Animal
- Dire hound or celestial ram

### Sacred Colors
- Azure, silver, white

### Cleric Spells
- **1st Level**: Command  
- **2nd Level**: Restoration  
- **3rd Level**: Heroism  
- **4th Level**: Planar Tether

### Boons
- **Minor**: Once per day, you can grant an adjacent ally a +1 status bonus to AC for 1 round when using the Raise a Shield action.
- **Moderate**: You gain resistance 3 to mental and fire damage while actively upholding a sworn oath or protecting an innocent.
- **Major**: Once per week, you may invoke the Shield of Dawn—summoning a radiant barrier for 1 minute that grants you and all adjacent allies +2 status bonus to saving throws against evil effects and magical compulsion.

### Curses
- **Minor**: Your convictions weigh heavily. You take a –1 penalty to initiative if you have not declared a cause you’re defending.
- **Moderate**: Faltering in duty marks you. After breaking a promise or failing to act against evil, you are enfeebled 1 until you complete a redemption rite.
- **Major**: You are judged by the dawn. If you knowingly allow injustice to stand unopposed, you become frightened 2 and drained 1 at sunrise until the injustice is addressed or atonement is made.
