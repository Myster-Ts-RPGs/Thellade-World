---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/AevarisTransparent.png
sanctification:
  - Must Choose Holy
allies: []
enemies: []
pronounced: AY-vuh-ris
attributes:
  - Intelligence
  - Charisma
skills:
  - Arcana
  - Occultism
favored_weapon: Dagger, Staff
primarydomains:
  - Magic
  - Creation
  - Knowledge
secondarydomains:
  - Glyph
  - Air
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

Aevaris, The Woven Flame, is the weave incarnate—the goddess who embodies the living essence of arcane structure. She is the patron of magical law, spellcraft, arcane innovation, and the balance between chaos and structure within all magical forms. Said to have spun the Aetherlace—a celestial web that tethers mortal spellcasting to cosmic order—Vexirra is revered by wizards, artificers, and magical scholars across Thellade. Her temples are sanctuaries of study and experimentation, and her priests wear deep violet robes embroidered with shifting runes.

Within the sanctums of Aevaris, silence is sacred and every rune inscribed is a prayer. Her followers believe that magic itself is a language spoken by the universe, and only those who master its grammar may reshape reality. Pilgrims leave offerings of broken wands and failed spellbooks, believing Aevaris transforms flawed attempts into future insight. When arcane storms roll across the sky, many claim to see the Aetherlace shimmer in the clouds—a sign that Aevaris is watching, calculating, and ever weaving.

### Area of Concern
- Magic, Spellcasting, Knowledge, Balance

### Edicts
- Preserve and expand magical knowledge
- Guide others in responsible use of magic
- Innovate within the arcane without shattering balance
- Protect magical sites and artifacts

### Anathema
- Destroying magical lore without cause
- Corrupting magic for personal tyranny
- Withholding essential magical teaching out of arrogance
- Attempting to sever mortals from the Weave

### Religious Symbol
- A golden balance scale holding red and blue flames, surrounded by a ring of arcane runes, with an open blue eye watching from above—representing equilibrium between arcane forces and the divine sight of the Weave

### Sacred Animal
- Owl

### Sacred Colors
- Violet, silver, blue

### Cleric Spells
- **1st Level**: Mystic Armor  
- **2nd Level**: Mirror Image  
- **3rd Level**: Haste  
- **4th Level**: Translocate

### Boons
- **Minor**: A single sigil manifests over the caster’s palm; once per day, the target of a spell affected by the caster’s magic treats a failed save as a success.
- **Moderate**: Gain the ability to inscribe a spell into the air as a free action, causing the next spell with a verbal component to become silent and uncounterable.
- **Major**: The Weave bends to your will. Once per week, cast a spell without components that cannot be countered, disrupted, or resisted (GM’s discretion for limits).

### Curses
- **Minor**: Spells occasionally misfire, targeting unintended adjacent squares.
- **Moderate**: Arcane knowledge fades; suffer a penalty to all Recall Knowledge checks involving magical subjects.
- **Major**: The Weave rejects your touch. All spells have a 25% failure chance and backlash for 1d6 damage per level.

## Goals



## Relations 



## Current Events



## History



## Notes



