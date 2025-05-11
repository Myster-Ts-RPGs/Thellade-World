---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/LunaraTransparent.png
sanctification:
  - Must Choose Holy
allies: []
enemies: []
pronounced: LOO-nah-rah
aliases:
  - The Shimmering Guide
attributes:
  - Charisma
  - Wisdom
skills:
  - Occultism
  - Diplomacy
favored_weapon: Starknife, Sickle
primarydomains:
  - Moon
  - Healing
  - Repose
  - Star
secondarydomains:
  - Dreams
  - Introspection
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

Lunara, the Shimmering Guide, is the moonlit whisper that calms restless hearts and the guardian of dreams beneath twilight skies. She is venerated as the goddess of hidden paths, quiet revelation, and hope unseen. Her presence is felt in moments of stillness—when moonlight filters through branches, when footsteps falter at a crossroads, and when a nightmare gives way to peace. She watches over those who journey far from home and those who walk between the worlds of waking and dream.

Lunara is the eternal wanderer between the stars, her silver path shining above even the darkest nights. During the Rising, her Shards were instrumental in saving mortals across the Isles. She grants peace to the restless, light to the lost, and hope to those gripped by despair. Worship of Lunara flourishes among travelers, night guardians, dreamwalkers, and the faithful who remember the stars even when they cannot see them.

### Area of Concern
- Moonlight, Hope, Safe Travel, Protection from Darkness

### Edicts
- Guide the lost with patience and light
- Defend against the encroachment of darkness
- Inspire dreams and ease nightmares
- Keep your word to those who journey with you

### Anathema
- Abandoning travelers or the vulnerable in danger
- Snuffing out sources of light in sacred places
- Using deception to trap the innocent in fear
- Embracing the void, shadow, or hopelessness
- Desecrating lunar shrines or ignoring celestial cycles

### Religious Symbol
- A radiant crescent moon cradling a seven-pointed star, trailed by starlight

### Sacred Animal
- Owl

### Sacred Colors
- Silver, indigo, soft blue

### Cleric Spells
- **1st Level**: Gentle Landing  
- **2nd Level**: Calm  
- **3rd Level**: Moonlight Ray  
- **4th Level**: Peaceful Bubble

### Boons
- **Minor**: Once per day, cast *light* or *moonlight ray* as an innate spell, even in magical darkness.
- **Moderate**: Allies resting within 20 feet of you recover 1 extra HP per level and reduce their frightened value by 1 after a full rest.
- **Major**: Once per week, you may call down a silver beam from the stars to banish magical darkness, suppress fear effects, and awaken sleeping allies in a 30-foot radius.

### Curses
- **Minor**: Your dreams twist. You are always fatigued after a night without magical protection or sacred lunar light.
- **Moderate**: You become unnerved by silence. You suffer a –2 penalty to Perception in darkness or quiet settings.
- **Major**: You lose your way in the dark. While outside in moonless or overcast nights, you are always considered flat-footed and cannot benefit from reactions.


## Goals



## Relations 



## Current Events



## History



## Notes
