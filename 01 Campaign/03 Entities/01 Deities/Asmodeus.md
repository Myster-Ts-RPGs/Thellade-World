---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/AsmodeusTransparent.png
sanctification:
  - Must Choose Unholy
allies: []
enemies: []
pronounced: AZ-muh-dee-uhs
aliases:
  - The Lord of Contracts
attributes:
  - Charisma
  - Intelligence
skills:
  - Deception
  - Religion
favored_weapon: Whip, Bastard Sword
primarydomains:
  - Tyranny
  - Trickery
  - Ambition
  - Fire
secondarydomains:
  - Duty
  - Magic
font:
  - Harm
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

Asmodeus is the Lord of Contracts, the God of Infernal Law, and the Eternal Tyrant beneath the Pact. In the cosmology of Thellade, he is both a savior and a deceiver: the one who bound the demons of the Abyss beneath the Outcast Isles, sealing them with a divine contract that demanded blood, sacrifice, and silence. He wears the chains of Nessus with pride and considers suffering to be the price of eternal order.

Worshipers of Asmodeus gather in cloistered sanctums behind ironbound doors, where every oath is blood-inked and every law carved into stone. His clergy are magistrates, inquisitors, and scholars of hellish doctrine—those who see freedom as a lie and obedience as salvation. Rituals to Asmodeus often involve binding circles, ritual lawkeeping, and the recitation of ancient contracts written in Infernal script. In his name, order is absolute—and mercy is weakness dressed in defiance.

### Area of Concern
- Contracts, Power, Control, Binding

### Edicts
- Honor all contracts, especially those signed in blood or soul
- Use power and law to dominate chaos
- Exploit loopholes when it strengthens your authority
- Punish those who break their oaths

### Anathema
- Breaking a contract without lawful cause
- Freeing bound demons or abyssal creatures
- Showing mercy without securing gain
- Serving others without seeking personal elevation

### Religious Symbol
- A ruby-topped black rod flanked by stylized infernal script

### Sacred Animal
- Serpent

### Sacred Colors
- Crimson, black, gold

### Cleric Spells
- **1st Level**: Command  
- **2nd Level**: Mirror Image  
- **3rd Level**: Fireball  
- **4th Level**: Planar Tether

### Boons
- **Minor**: Once per day, gain a +1 status bonus to Deception or Legal Lore checks when enforcing a contract or oath.
- **Moderate**: Infernal law shields your bargains. Once per day, treat a failed Will save against compulsion as a success.
- **Major**: You are a living contract. Once per week, you may invoke your name in Infernal to bind a creature to your terms for 1 day (as per *geas*).

### Curses
- **Minor**: Your voice falters when you speak half-truths—take a –1 penalty to Deception checks when lying.
- **Moderate**: Any agreement you break becomes magically evident to nearby creatures (GM’s discretion).
- **Major**: You are cursed to suffer for disobedience. When you willingly break a sworn oath, take 6d6 mental damage and become stupefied 2 until the next day.


## Goals



## Relations 



## Current Events



## History



## Notes
