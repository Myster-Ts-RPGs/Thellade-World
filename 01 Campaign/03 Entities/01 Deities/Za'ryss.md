---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/ZaryssTransparent.png
sanctification:
  - Must Choose Unholy
pronounced: ZAH-riss
aliases:
  - The Whispering Web
attributes:
  - Charisma
  - Intelligence
skills:
  - Deception
  - Occultism
favored_weapon: Dagger, Blowgun
primarydomains:
  - Ambition
  - Trickery
  - Secrecy
  - Nightmares
secondarydomains:
  - Knowledge
  - Darkness
  - Pain
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

Za’ryss, the Whispering Web, is the goddess of secrets, nightmares, and the cruel clarity of ambition. Her words twist through dreams, coiling around hearts and minds, whispering truths no one dares admit aloud. She is the poison in the chalice, the truth buried under pleasantries, and the shadow behind every throne.

Za’ryss weaves her power through forgotten tunnels, forbidden texts, and corrupted faiths. Her faithful dwell in hidden sanctuaries, manipulating nobles, unraveling trust, and preying on the weak-minded. Cultists and spies pray to her for protection in shadows and favor in treachery. Though feared and reviled, she is never ignored—Za’ryss teaches that fear is a tool, lies are currency, and ambition is divine birthright.

### Area of Concern
- Secrets, Nightmares, Cruelty, Ambition

### Edicts
- Exploit secrets and hidden knowledge for personal power  
- Sow mistrust, fear, and betrayal among the powerful  
- Whisper truth clothed in lies to manipulate others  
- Embrace ambition without moral restraint  

### Anathema
- Reveal your true motives without advantage  
- Allow weakness to flourish unchecked  
- Show mercy where fear is more effective  
- Expose sacred secrets of Za’ryss to non-believers  

### Religious Symbol
- A spider of blackened silver perched atop a web of shadow, with a bleeding eye at its center

### Sacred Animal
- Widow spider or night serpent

### Sacred Colors
- Black, violet, silver

### Cleric Spells
- **1st Level**: Spider Sting  
- **2nd Level**: Animal Form  
- **3rd Level**: Enthrall  
- **4th Level**: Phantasmal Killer  

### Boons
- **Minor**: Gain a +1 status bonus to Deception checks when concealing your identity or motives.  
- **Moderate**: Once per day, when a target critically fails a Will save against your Illusion or Emotion spell, they become Frightened 2 and Flat-Footed for 1 round.  
- **Major**: When you reduce a creature to 0 HP with a fear or illusion effect active on them, you immediately become invisible for 1 minute (as per *Invisibility*) without expending a spell slot.

### Curses
- **Minor**: You find it difficult to be honest; you must succeed at a DC 5 flat check to speak direct truth about yourself.  
- **Moderate**: Whenever you attempt to aid someone openly and without deception, you become Sickened 1 and Flat-Footed until your next turn.  
- **Major**: You can no longer benefit from the *Inspire Courage* or *Inspire Defense* effects of allies; any attempt to bolster your morale or protection fails unless it comes through fear, coercion, or secrecy.



## Goals



## Relations 



## Current Events



## History



## Notes

