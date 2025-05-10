---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/UrroggTransparent.png
sanctification:
  - Must Choose Unholy
allies: []
enemies: []
pronounced: OOR-og
aliases:
  - The Howling Maw
attributes:
  - Constitution
  - Strength
skills:
  - Intimidation
  - Survival
favored_weapon: Spiked Chain, Greataxe
primarydomains:
  - Destruction
  - Pain
  - Fire
  - Earth
secondarydomains:
  - Ambition
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

Urrogg, the Howling Maw, is the molten heartbeat of unending annihilation. He is the endless scream of a world breaking apart, the madness that sings in the silence before the quake. Once a being of boundless fury sealed in the deep by desperate gods, Urrogg dreams only of shattering every chain, crumbling every mountain, and watching all creation burn. His faithful hear his hunger in the crack of the earth and the roar of wildfire—each flame a promise that he is coming.

Urrogg's followers embrace obliteration as divine will. They do not build, they do not heal—they consume. Cults to the Howling Maw form in volcanic chasms, crumbling ruins, or bloodstained caves. His rites are violent, chaotic, and raw, calling on the primal forces of fire, magma, and upheaval. His chosen bring ruin wherever they tread, seeking to unmake the ordered world with fury and flame.

### Area of Concern
- Destruction, Chaos, Fury

### Edicts
- Shatter civilization’s works and symbols of order  
- Embrace primal rage and unfettered emotion  
- Unleash devastation without regret  
- Rejoice in collapse and ruin  

### Anathema
- Preserving ancient structures or sacred places  
- Submitting to chains of law or authority  
- Forging peace where conflict may rise  
- Showing mercy to those who stand against chaos  

### Religious Symbol
- A gaping maw of stone, ringed with jagged teeth, spewing lava into a cracked world

### Sacred Animal
- Hellhound or cave drake

### Sacred Colors
- Charred black, blood red, magma orange

### Cleric Spells
- **1st Level**: Breathe Fire  
- **2nd Level**: Exploding Earth  
- **3rd Level**: Fireball  
- **4th Level**: Grasping Earth

### Boons
- **Minor**: Once per day when you destroy an object or structure, gain temporary HP equal to your level.  
- **Moderate**: You gain resistance 3 to fire and physical damage from collapsing terrain or explosive effects.  
- **Major**: Once per week, when reduced to 0 HP, you explode in a blast of magma. All creatures in a 10-foot burst take 4d6 fire damage (basic Reflex, DC = your spell DC), and you rise at 1 HP at the start of your next turn.

### Curses
- **Minor**: Calm and order frustrate you. You take a –1 penalty to Will saves while in sanctified or lawful places.  
- **Moderate**: Structures seem to fail near you. When using crafted tools or weapons not of your own creation, they gain the broken condition on a natural 1.  
- **Major**: If you go a week without unleashing destruction, your body begins to crack and burn. You take persistent fire damage (1d6, escalating) until you destroy something significant or ritually appease Urrogg.
