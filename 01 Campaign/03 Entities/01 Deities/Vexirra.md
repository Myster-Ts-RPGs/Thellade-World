---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/VexirraTransparent.png
sanctification:
  - Must Choose Unholy
pronounced: VEK-sirr-uh
aliases:
  - The Whispering Shadow
attributes:
  - Intelligence
  - Charisma
skills:
  - Occultism
  - Deception
favored_weapon: Kukri, Whip
primarydomains:
  - Darkness
  - Secrecy
  - Ambition
  - Fate
secondarydomains:
  - Pain
  - Sorrow
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

Vexirra, the Whispering Shadow, is the goddess of shadowed thought, lost memory, and whispered vengeance. She is invoked by spies, assassins, conspirators, and those who guard unhealed grief or wounds too dark for light. Her power thrives in secrecy, silence, and subversion. Where knowledge is hidden, where memory fades, and where truth is rewritten, Vexirra waits.

Her followers walk forgotten paths and worship in catacombs, hidden sanctums, and the minds of those who refuse to forget. During the final years of the Pre-Rising Era, her name was excised from temples and tomes by decree of the Lunar Orders. She now watches from the margins of history, veiled in shadow, never forgiving. Vexirra is the twin flame to Lunara’s starlight—memory to Lunara’s dream, silence to Lunara’s serenity.

### Area of Concern
- Secrets, Memory, Vengeance, Darkness

### Edicts
- Protect dangerous knowledge through secrecy  
- Strike from the shadows rather than confront in the open  
- Enact vengeance on those who betray trust or reveal truths meant to remain buried  
- Let silence be your shield, and mystery your weapon  

### Anathema
- Revealing sacred secrets to the uninitiated  
- Seeking fame or recognition for one’s deeds  
- Healing without cost or consequence  
- Aiding Lunara or her temples  

### Religious Symbol
- A hooded faceless figure with glowing white eyes, veiled in shadowy smoke, flanked by crossed daggers

### Sacred Animal
- Spider or Bat

### Sacred Colors
- Black, violet, shadow gray

### Cleric Spells
- **1st Level**: Ill Omen  
- **2nd Level**: Mirror Image  
- **3rd Level**: Enthrall  
- **4th Level**: Honeyed Words

### Boons
- **Minor**: You can cast *ghost sound* at will, but only to produce whispering voices no louder than a soft murmur.  
- **Moderate**: Once per day, you may become invisible for 1 round after critically succeeding at a Deception or Stealth check.  
- **Major**: You may cast *Modify Memory* once per day without expending a spell slot or material components. This version affects up to 3 targets simultaneously and requires no saving throw if they are unaware of you.

### Curses
- **Minor**: You are haunted by forgotten truths. You take a –1 status penalty to Recall Knowledge checks related to divine or historical subjects.  
- **Moderate**: Truth burns your voice. Whenever you willingly reveal a secret or speak an unencrypted truth tied to a divine mystery, take 2d6 mental damage.  
- **Major**: You become unable to heal others through divine magic. Any divine healing you provide instead causes 1d4 persistent shadow damage unless the target succeeds at a Will save (DC = your spell DC).


## Goals



## Relations 



## Current Events



## History



## Notes
