---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/VeylaTransparent.png
sanctification:
  - Must Choose Holy
pronounced: VAY-lah
aliases:
  - The Watcher Beyond
attributes:
  - Wisdom
  - Charisma
skills:
  - Religion
  - Diplomacy
favored_weapon: Scythe, Longspear
primarydomains:
  - Death
  - Fate
  - Vigil
  - Truth
secondarydomains:
  - Soul
  - Duty
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

Veyla, the Watcher Beyond, is the goddess who judges the souls of the departed and oversees the sacred passage between life and death. She is impartial, patient, and unshakable, believed to maintain the Great Balance across the cosmic cycle. Worshiped by morticians, judges, prophets, and gravekeepers, she speaks only when fate requires—and when she does, her voice is law.

Veyla was silent for a century after the Rising, believed to be watching as mortals struggled with the weight of their survival. Her reemergence through oracles and twilight dreams marked the return of divine judgment. She neither encourages nor fears death—it is her domain and duty. Her followers are the stewards of endings and the heralds of truth in a world scarred by lies.

### Area of Concern
- Death, Fate, Truth, Transition

### Edicts
- Preserve the dignity of death and burial  
- Reveal truth and uphold prophecy  
- Destroy undeath and unnatural prolongation of life  
- Pass no judgment until the hour demands it  

### Anathema
- Creating or serving undead  
- Using prophecy for personal gain  
- Disrupting or desecrating burial rites  
- Delaying the natural end of a soul’s journey  

### Religious Symbol
- A dusky hourglass encircled in violet laurels, flanked by four falling petals—each representing a phase of life

### Sacred Animal
- Raven or Jackal

### Sacred Colors
- Dusky violet, bone white, deep gray

### Cleric Spells
- **1st Level**: Mindlink  
- **2nd Level**: Calm  
- **3rd Level**: Ghostly Weapon  
- **4th Level**: Vision of Death  

### Boons
- **Minor**: Once per day, when you witness a creature’s death, gain a +1 status bonus to Will saves for 1 minute.  
- **Moderate**: You may cast *Speak with Dead* once per day without expending a spell slot, but only to seek truth, not manipulation.  
- **Major**: If you die while fulfilling a prophecy or revealing a buried truth, you remain conscious for 1 minute as a spiritual echo—able to speak and cast non-damaging divine spells before fading.

### Curses
- **Minor**: You feel discomfort in places where death is mocked or denied. Take a –1 circumstance penalty to Diplomacy in such locations.  
- **Moderate**: Whenever you knowingly delay a destined death, you become Drained 1 until the soul is laid to rest.  
- **Major**: If you ever resurrect or protect an undead creature knowingly, you lose the ability to cast divine spells until you atone at a consecrated crypt or shrine of judgment.



## Goals



## Relations 



## Current Events



## History



## Notes

