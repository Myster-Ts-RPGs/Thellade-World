---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/XarZhulTransparent.png
sanctification:
  - Must Choose Unholy
pronounced: ZAR-zhool
aliases:
  - The Evershrieking Maw
enemies: []
attributes:
  - Charisma
  - Intelligence
skills:
  - Occultism
  - Deception
favored_weapon: Spiked Chain, Staff
primarydomains:
  - Darkness
  - Nightmares
  - Nothingness
  - Abomination
secondarydomains:
  - Pain
  - Sorrow
  - Decay
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

Xar'Zhul, the Evershrieking Maw, is the gaping wound at the center of the Abyss—a primordial hunger given thought, an ancient scream that echoes beyond time. It has no true form, only the terrible sound of its presence, and the unrelenting madness that follows it. Those who dream of Xar’Zhul wake with their minds cracked and bleeding, haunted by the memory of teeth that gnash between stars.

Xar’Zhul is worshipped in secret by those who reject the illusions of stability, law, or sanity. Cults chant in alien tongues, their rituals stitched together from visions and the screams of the damned. Each utterance of Xar’Zhul’s name is a ripple across the veil, a call for the end of the ordered world and the return of chaos unbound. His influence seeps into reality through black glyphs, corrupted star charts, and deranged prophecies. The Evershrieking Maw does not offer salvation—it offers understanding, through the ruin of everything known.

### Area of Concern
- Madness, Oblivion, Forbidden Knowledge, Corruption

### Edicts
- Spread fear, madness, or doubt through subversion and whispers  
- Uproot established truths and laws with forbidden knowledge  
- Reveal cosmic horrors to those who would deny them  
- Rejoice in entropy, suffering, and the unraveling of reality  

### Anathema
- Upholding order or reinforcing sanity and structure  
- Suppressing eldritch truths or hiding forbidden knowledge  
- Showing mercy to those begging for mental release  
- Interfering with demonic or abyssal corruption  

### Religious Symbol
- A pulsating, lidless eye surrounded by writhing void tendrils

### Sacred Animal
- Abyssal lamprey or blind bat

### Sacred Colors
- Deep violet, oily black, sickly pale green

### Cleric Spells
- **1st Level**: Ill Omen  
- **2nd Level**: Death Knell  
- **3rd Level**: Agonizing Despair  
- **4th Level**: Abyssal Plague  

### Boons
- **Minor**: Once per day, you gain a +1 status bonus to saving throws against mental effects while standing in total darkness.  
- **Moderate**: You can cast *Phantasmal Killer* once per day as an innate occult spell without expending a slot.  
- **Major**: When you reduce a creature to 0 HP with a spell that deals mental damage, you can immediately cast *Suggestion* on another creature within 30 feet as a free action.

### Curses
- **Minor**: You suffer a –1 circumstance penalty to saves against confusion and madness effects when in bright light.  
- **Moderate**: When exposed to divine healing or positive energy, you must succeed a Will save or become sickened 1.  
- **Major**: You are haunted by the whispers of Xar’Zhul—at the start of each day, roll a DC 17 Will save. On failure, you are *confused* for 1 round the first time you take mental damage in that day.



## Goals



## Relations 



## Current Events



## History



## Notes

