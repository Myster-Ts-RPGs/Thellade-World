---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/AurionTransparent.png
sanctification:
  - Must Choose Holy
allies: []
enemies: []
pronounced: OR-ee-on
aliases:
  - The Dawnbringer
attributes:
  - Charisma
  - Wisdom
skills:
  - Medicine
  - Diplomacy
favored_weapon: Morningstar, Scimitar
primarydomains:
  - Sun
  - Healing
  - Truth
  - Fire
secondarydomains:
  - Repose
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

Aurion, the Dawnbringer, is the radiant god of light, redemption, and the promise of new beginnings. His presence is felt in the warmth of sunrise, the stillness before a hard truth is spoken, and the unwavering resolve to stand against the darkness. He is the sacred fire that purifies rather than consumes, the light that guides without blinding. To call upon Aurion is to seek clarity, justice, and the courage to forgive.

Aurion’s flame was the first to pierce the Abyssal clouds during the Rising. Said to have spoken the name of every cleric who fell completing the circle, his voice has since been carried by the wind at sunrise. Worshipers of Aurion are often healers, redeemers, teachers, or champions of just fire. His temples are built to catch the morning sun and are often centers of spiritual renewal, confession, and rebirth.

### Area of Concern
- Light, Healing, Redemption, Renewal

### Edicts
- Aid those seeking a second chance
- Let no shadow rule unchallenged
- Act as a light in darkness—physically or morally
- Heal the wounded, forgive the penitent
- Destroy the Spawn of the Abyss

### Anathema
- Refusing to offer redemption to those who earnestly seek it
- Spreading despair or corruption through lies
- Abusing divine healing for personal power
- Destroying holy fire, beacons, or temples of light
- Ignoring those suffering in darkness or silence

### Religious Symbol
- A radiant sunburst rising behind a golden hand, fingers spread open in welcome

### Sacred Animal
- Phoenix

### Sacred Colors
- Gold, white, warm crimson

### Cleric Spells
- **1st Level**: Breathe Fire  
- **2nd Level**: Restoration  
- **3rd Level**: Fireball  
- **4th Level**: Wall of Fire

### Boons
- **Minor**: Your touch warms the soul. Once per day, remove the frightened or sickened condition from an ally with a single touch.
- **Moderate**: You radiate an aura of clarity. Allies within 10 feet gain a +1 status bonus to saves against confusion, fear, and possession.
- **Major**: You become a conduit of sacred flame. Once per week, summon a phoenix-shaped burst of healing light that restores all allies in a 30-foot radius for 3d10 HP and purges one curse or disease.

### Curses
- **Minor**: Your healing hands falter. Any spell that restores HP heals 1d4 fewer HP.
- **Moderate**: The light dims around you. You cannot benefit from the Aid reaction or flanking bonuses.
- **Major**: You are cast from the light. While in magical darkness, you become enfeebled 2 and stupefied 2 and cannot cast healing spells.


## Goals



## Relations 



## Current Events



## History



## Notes
