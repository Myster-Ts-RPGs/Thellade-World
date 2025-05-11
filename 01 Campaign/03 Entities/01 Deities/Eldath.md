---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/EldathTransparent.png
sanctification:
  - Must Choose Holy
allies: []
enemies: []
pronounced: EL-dath
aliases:
  - The Iron Sentinel
attributes:
  - Strength
  - Wisdom
skills:
  - Athletics
  - Religion
favored_weapon: Warhammer, Heavy Crossbow
primarydomains:
  - Protection
  - Vigil
  - Duty
  - Confidence
secondarydomains:
  - Might
  - Truth
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

Eldath, the Iron Sentinel, is the Still Shield—the silent watch that never falters. He is the god invoked by last stands, quiet oaths, and unbroken lines. His presence is felt in the heartbeat before battle, the unwavering stare of a guardian, and the sacred pause before judgment. Those who follow Eldath do not seek glory, only resolve—standing as the final defense when all else has failed. His temples are often hidden strongholds, carved deep into stone or built atop ancient battlegrounds, where vows echo louder than chants.

Eldath is the patron of those who hold the line when others flee—sentinels, sworn protectors, watchmen, and guardians of ancient relics or truths. He was one of the divine figures instrumental in the arcane sealing of Thellade during the Rising. Though seen as rigid and unyielding, his faith exalts patience, integrity, and shield-bearing courage. His followers often become the silent walls between chaos and civilization.

Temples to Eldath are often located at key crossroads, city walls, or hidden within fortresses. His rites are quiet, but unshakable—based in the rhythm of vigilance and service. To invoke Eldath is to swear one’s spine against the world’s collapse.

### Area of Concern
- Protection, Vigilance, Guardianship, Honor

### Edicts
- Stand firm in defense of the innocent
- Maintain your post until your duty is complete
- Speak truth, even when it is difficult
- Guard sacred places and vulnerable lives

### Anathema
- Abandoning your post or duty without just cause
- Betraying a sworn oath, especially one of protection
- Allowing avoidable harm to come to those under your care
- Defacing sacred ground or symbols of protection
- Striking first in anger rather than standing in defense

### Religious Symbol
- A clenched gauntlet on a radiant tower shield, wrapped in silver chain

### Sacred Animal
- Stag (representing watchfulness and noble protection)

### Sacred Colors
- Iron Gray, Bronze, Deep Gold

### Cleric Spells
- **1st Level**: Sanctuary  
- **2nd Level**: Share Life  
- **3rd Level**: Strength of Mind  
- **4th Level**: Discern Lies

### Boons
- **Minor**: Once per day, you may delay a condition’s onset by one round, allowing a vulnerable ally to recover.
- **Moderate**: While you remain stationary, you gain resistance 3 to physical damage and a +1 bonus to saving throws.
- **Major**: Once per week, invoke Eldath’s name to form a radiant ward. For 1 minute, allies within 10 feet gain resistance 5 to all damage and cannot be forcibly moved.

### Curses
- **Minor**: Your body stiffens with duty. You take a –1 penalty to Reflex saves while wearing medium or heavy armor.
- **Moderate**: Your words ring hollow. You suffer a –2 penalty to Diplomacy checks when not defending someone else.
- **Major**: Your post is cursed. You cannot willingly retreat from battle, and if you leave an ally behind, you gain the Doomed 1 condition until that ally is safe.


## Goals



## Relations 



## Current Events



## History



## Notes
