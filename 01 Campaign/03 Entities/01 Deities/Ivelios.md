---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/IveliosTransparent.png
sanctification:
  - Can Choose Holy
allies: []
enemies: []
pronounced: EE-veh-lee-ohs
aliases:
  - The Guiding Quill
attributes:
  - Intelligence
  - Wisdom
skills:
  - Crafting
  - Arcana
favored_weapon: Light Hammer, Staff
primarydomains:
  - Knowledge
  - Magic
  - Creation
  - Truth
secondarydomains:
  - Glyph
  - Perfection
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

Ivelios, the Guiding Quill, is the patient god of discovery, invention, and perfected craft. His temples are libraries, laboratories, and lecture halls—anywhere minds seek to record and refine the truths of the world. Worshipers of Ivelios value curiosity, cooperation, and the careful recording of knowledge so that it might uplift not just the brilliant, but all people.

Ivelios is highly regarded by tinkerers, educators, historians, and scholars alike. His sacred places are often affiliated with centers of learning or civic advancement. The Lambaro Institute of Innovation, a renowned school of magical engineering and design, is proudly funded by his church and governed under principles of open experimentation and applied ethics.

### Area of Concern
- Knowledge, Invention, Craft, Discovery

### Edicts
- Record and share knowledge to better society
- Teach those willing to learn, regardless of station
- Create new tools, systems, and ideas through experimentation
- Support communities that foster curiosity and invention

### Anathema
- Hoarding vital knowledge for selfish gain
- Destroying irreplaceable works of learning
- Suppressing innovation through dogma or fear
- Abandoning logic in favor of blind superstition

### Religious Symbol
- An open book inscribed with arcane script, a golden quill standing upright in its center, framed by interlocking gears and rays of light

### Sacred Animal
- Owl or Clockwork Spider

### Sacred Colors
- Bronze, Cobalt Blue, Parchment White

### Cleric Spells
- **1st Level**: Summon Construct  
- **2nd Level**: Translate  
- **3rd Level**: Heroism  
- **4th Level**: Sage’s Blessing

### Boons
- **Minor**: Once per day, you may reroll a failed Crafting or Recall Knowledge check and take the better result.
- **Moderate**: You emit an aura of clarity. Allies within 15 feet gain a +1 status bonus to Arcana and Crafting checks.
- **Major**: You become an anchor of insight. Once per week, cast *true target* and *hypercognition* simultaneously as a single free action.

### Curses
- **Minor**: Insight eludes you. Take a –1 penalty to checks made to identify magical items.
- **Moderate**: You lose your sense of progress. Crafting takes twice as long, and any formula you attempt to copy automatically fails once before succeeding.
- **Major**: The Weave forgets your name. You can no longer benefit from Aid on any Intelligence-based skill check, and any magical creation you complete loses 1 property rune.


## Goals



## Relations 



## Current Events



## History



## Notes
