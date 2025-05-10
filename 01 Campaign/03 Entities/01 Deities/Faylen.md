---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/FaylenTransparent.png
sanctification:
  - Can Choose Holy
allies: []
enemies: []
pronounced: FAY-len
aliases:
  - The Verdant Sentinel
attributes:
  - Constitution
  - Wisdom
skills:
  - Nature
  - Survival
favored_weapon: Longbow, Staff
primarydomains:
  - Nature
  - Family
  - Earth
  - Duty
secondarydomains:
  - Protection
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
>  **Divine Font** | `VIEW[{Font}][text]` |
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

Faylen, the Verdant Sentinel, is the ancient steward of balance, community, and the natural world. Protector of groves and guardian of tradition, Faylen watches over the steady rhythm of life—birth, growth, harvest, and rest. He is the forest’s still heart and the hearth’s enduring warmth, revered by farmers, hunters, and village elders who uphold the sacred order of home and land.

Faylen values self-sufficiency, mutual respect, and quiet strength. His worship is rooted in tradition: seasonal rites, sacred fires, and oaths spoken beneath the boughs of ancient trees. While slow to anger, he is unrelenting in defense of what he protects. To turn from nature or family is to turn from Faylen himself.

### Area of Concern
- Nature, Community, Tradition, Balance

### Edicts
- Protect your family and community
- Live in harmony with the land
- Honor seasonal traditions and rites
- Teach the young and respect the old

### Anathema
- Abandoning your community or kin
- Exploiting the land for selfish gain
- Breaking solemn oaths or traditions
- Disrupting the natural cycle of life and death

### Religious Symbol
- A majestic stag with a tree growing from its back, crowned by the sun and surrounded by wildflowers

### Sacred Animal
- Stag or elk

### Sacred Colors
- Deep green, amber, earthy brown

### Cleric Spells
- **1st Level**: Gentle Landing  
- **2nd Level**: Calm  
- **3rd Level**: Heroism  
- **4th Level**: Peaceful Bubble

### Boons
- **Minor**: Once per day, you can calm a hostile animal or natural hazard for 1 minute.
- **Moderate**: Your presence bolsters natural harmony. Allies within 10 feet gain +1 to saves against disease and environmental effects.
- **Major**: You become nature’s ward. Once per week, summon a protective grove that provides shelter, food, and healing to all peaceful creatures within.

### Curses
- **Minor**: Nature recoils. Animals instinctively avoid or fear you.
- **Moderate**: Your voice withers in sacred spaces. You suffer a –2 penalty to Nature and Religion checks in forests or temples.
- **Major**: The land denies your touch. You cannot benefit from healing spells with the vitality or healing trait while standing on natural ground.
