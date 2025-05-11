---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/MalrikTransparent.png
sanctification:
  - Must Choose Unholy
allies: []
enemies: []
pronounced: MAL-rick
aliases:
  - The Iron Crown
attributes:
  - Charisma
  - Strength
skills:
  - Intimidation
  - Religion
favored_weapon: Bastard Sword, Heavy Mace
primarydomains:
  - Might
  - Tyranny
  - Ambition
secondarydomains:
  - Pain
  - Duty
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

Malrik is the Iron Crown—the god of domination, conquest, and absolute authority. Where Valdros demands honor, Malrik demands loyalty and fear. He teaches that control is the foundation of civilization, and that only through the subjugation of the weak can true order be forged. Warlords, tyrants, enforcers, and cults of control bend the knee to Malrik’s name. During the Rising, Malrik’s doctrine of strength-at-any-cost led to the survival of several isolated factions, albeit through grim means.

Malrik is said to have arisen from the first oath broken in battle and the first blood spilled to claim a crown. Though despised by many, his clergy thrives wherever strong rulers value fear over love. In Thellade, some militarized city-states and ancient cults of conquest still whisper prayers to Malrik before battle. His teachings are dangerous—but undeniably effective.

### Area of Concern
- Conquest, Obedience, Strength, Fear

### Edicts
- Rule through strength and unwavering command
- Crush rebellion and defiance before it festers
- Break lesser wills to serve a greater cause
- Build order on the backs of the weak

### Anathema
- Showing mercy to those who oppose your rule
- Allowing subordinates to act with disloyalty
- Undermining lawful power structures for chaos’ sake
- Forging alliances without intent to control

### Religious Symbol
- A black gauntleted fist gripping a spiked mace, framed in a blood-red oval with thorned laurels and a crown above—symbolizing power seized and enforced

### Sacred Animal
- Dire wolf

### Sacred Colors
- Black, crimson, iron

### Cleric Spells
- **1st Level**: Command  
- **3rd Level**: Fireball  
- **4th Level**: Phantasmal Killer  
- **5th Level**: Wave of Despair

### Boons
- **Minor**: Once per day, gain a +1 status bonus to Intimidation checks and saves against fear for 1 minute after issuing a successful Command.
- **Moderate**: Your presence suppresses defiance. Creatures within 10 feet who are frightened or demoralized take a –1 penalty to Will saves.
- **Major**: Once per week, you may issue a divine edict. All creatures within 30 feet must attempt a Will save or be affected by a mass *command* effect tailored to a single-word directive (GM's discretion applies).

### Curses
- **Minor**: Allies hesitate in your shadow. The Aid reaction fails unless the aiding creature succeeds a DC 15 Will save.
- **Moderate**: Loyalty becomes fear. You suffer a –2 penalty to Diplomacy checks and cannot form cooperative tactics without magical compulsion.
- **Major**: Your rule must be absolute. If any ally succeeds a check you failed, you become doomed 1 until the next day.


## Goals



## Relations 



## Current Events



## History



## Notes
