---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/ValdrosTransparent.png
sanctification:
  - Must Choose Holy
allies: []
enemies: []
pronounced: VAL-drohs
aliases:
  - The Oathblade
attributes:
  - Strength
  - Wisdom
skills:
  - Intimidation
  - Diplomacy
favored_weapon: Longsword, Warhammer
primarydomains:
  - Duty
  - Truth
  - Confidence
  - Might
secondarydomains:
  - Protection
  - Vigil
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

Valdros, the Oathblade, is the embodiment of divine justice, retribution, and unwavering honor. He walks the line between righteous vengeance and merciful restraint, wielding law as a blade and shield in equal measure. Paladins, judges, champions, and those who swear sacred vows revere his name. During the Rising, he was said to have shattered the chains of the first Abyssal Warlord using only an oathblade wreathed in light. His temples double as courts and training halls, and his clerics bear not only scripture, but steel.

Valdros is worshipped by judges, oathsingers, inquisitors, and knights who see justice not as a tool, but as a calling. He is invoked when vows are sworn in battle or law is laid in court. Some say he blinded himself voluntarily to embody impartiality. His doctrines emphasize that justice must be active and vigilant, not passive. In many regions of Kanda, trials by oathblade—duels blessed in his name—settle matters when law alone cannot.

### Area of Concern
- Justice, Oaths, Vengeance, Honor

### Edicts
- Uphold sworn oaths and pursue justice even at great personal cost  
- Defend the innocent and judge the guilty with fairness  
- Confront tyranny wherever it arises  
- Let no lie stand unchallenged when truth is at stake  

### Anathema
- Betraying an oath or vow  
- Allowing injustice to persist through inaction  
- Passing judgment without truth or evidence  
- Aiding those who would pervert justice through corruption or fear  

### Religious Symbol
- A golden longsword balanced with scales of justice at the crossguard

### Sacred Animal
- Lion or Eagle

### Sacred Colors
- Gold, white, steel gray

### Cleric Spells
- **1st Level**: Command  
- **2nd Level**: Calm  
- **3rd Level**: Ring of Truth  
- **4th Level**: Discern Lies

### Boons
- **Minor**: Gain a +1 status bonus to saves against enchantment or fear effects while actively enforcing a sworn oath.  
- **Moderate**: Once per day, after witnessing injustice or betrayal, you may cast *Zone of Truth* without expending a spell slot.  
- **Major**: If you are slain while protecting another creature who cannot defend themselves, your body radiates *sanctuary* and *heroism* for 1 minute, and you rise at the start of your next turn with half HP.

### Curses
- **Minor**: You feel unease in the presence of unpunished injustice. You take a –1 circumstance penalty to Initiative in places where oaths have been violated.  
- **Moderate**: You are physically pained by falsehood. When you knowingly allow a lie to persist, you take 1d4 persistent psychic damage until the lie is addressed.  
- **Major**: If you ever break a sworn oath without divine absolution, your healing is halved and you can no longer cast spells with the [light] or [divine] trait until you perform a sacred trial or confession.


## Goals



## Relations 



## Current Events



## History



## Notes
