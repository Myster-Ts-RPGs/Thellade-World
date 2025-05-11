---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/IsfyrraTransparent.png
sanctification:
  - Must Choose Unholy
allies: []
enemies: []
pronounced: ISS-fear-uh
aliases:
  - The Heart of the Avalanche
attributes:
  - Constitution
  - Strength
skills:
  - Intimidation
  - Survival
favored_weapon: Greataxe, Pick
primarydomains:
  - Cold
  - Pain
  - Ambition
  - Destruction
secondarydomains:
  - Might
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

Isfyrra, the Heart of the Avalanche, is the unforgiving goddess of cold wrath, winter ruin, and survival through dominance. Once venerated by remote tribes and harsh bloodlines in the northern reaches of the Thellade, her chilling influence has been sealed from the Outcast Isles since the Rising. Yet whispers persist of her breath lingering in the Hágogulón Tundra, in cracking glaciers and bitter winds that speak her name.

Her followers embrace merciless power, believing compassion weakens the soul. Temples to Isfyrra are built from black ice and bone, carved into mountain faces or hidden beneath permafrost. Her faithful prepare through pain, trial, and sacrifice—learning to endure, so they may rule.

### Area of Concern
- Cold, Survival, Ruthlessness, Winter

### Edicts
- Endure suffering without complaint or mercy
- Crush weakness wherever it hides
- Conquer others through might, cunning, or fear
- Let no fire burn long in your presence

### Anathema
- Showing pity to a defeated enemy
- Warming the cold with no cost in return
- Preserving beauty or comfort over strength
- Allowing heat or compassion to rule your actions

### Religious Symbol
- A cracked heart encased in a six-pointed snowflake of dark ice

### Sacred Animal
- Winter wolf or frost vulture

### Sacred Colors
- Pale blue, silver, black

### Cleric Spells
- **1st Level**: Breathe Ice  
- **2nd Level**: Frigid Blast  
- **3rd Level**: Show the Way  
- **4th Level**: Ice Storm

### Boons
- **Minor**: Once per day, become immune to environmental cold for 10 minutes and gain +2 to Survival checks in frigid terrain.
- **Moderate**: When a creature you reduce to 0 HP dies, you regain 1d6 HP and gain a +1 status bonus to damage rolls until your next turn.
- **Major**: Once per week, invoke an avalanche of divine fury. You can cast *cone of cold* and *fear* simultaneously as a single action (GM discretion on area).

### Curses
- **Minor**: Your presence chills. Allies within 5 feet take a –1 penalty to saves against cold weather fatigue.
- **Moderate**: Fire shuns you. You take double damage from magical fire and cannot benefit from the warmth of mundane sources.
- **Major**: Your heart is frostbound. You become immune to emotion effects but cannot be the target of healing magic unless in freezing conditions.


## Goals



## Relations 



## Current Events



## History



## Notes
