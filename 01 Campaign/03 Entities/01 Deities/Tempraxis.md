---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/TempraxisTransparent.png
sanctification:
  - Can Choose Holy or Unholy
allies: []
enemies: []
pronounced: TEM-prah-kiss
aliases:
  - The Stormfather
attributes:
  - Strength
  - Constitution
skills:
  - Nature
  - Athletics
favored_weapon: Trident, Spear
primarydomains:
  - Nature
  - Water
  - Air
  - Lightning
secondarydomains:
  - Ambition
  - Might
  - Duty
font:
  - Heal or Harm
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

Tempraxis is the Stormfather—the divine embodiment of the sea’s fury and the sky’s judgment. He is tempest and tide, the roaring wind and the crashing wave. Some call him a guardian of balance, others a god of wrath; both are true. Sailors pray to appease him, druids invoke him for strength, and warlords hail his rage when unleashing nature’s wrath. He is revered by storm-callers, sea-priests, and those who thrive in chaos and beauty alike.

Tempraxis is said to have formed the barrier of the Smokey Shoals by slamming his trident into the sea floor in a rage during the Rising. Unlike purely benevolent or malevolent gods, he represents the untamed duality of nature—destruction and renewal. His followers are often drawn from coastal cultures, sky-speakers, and even some militant druids who see in him the divine might of unshackled elements.

### Area of Concern
- Tempests, Oceans, Lightning, Fury

### Edicts
- Respect the power of storms and the wild sea
- Break stagnation—let change crash like thunder
- Answer insult with overwhelming force
- Protect natural balance through strength and awe

### Anathema
- Suppressing the natural cycle of change
- Desecrating sacred waters or skies
- Fleeing from a worthy confrontation
- Allowing pride to silence the voice of the storm

### Religious Symbol
- A thundercloud split with a bolt of blue lightning framed by a crown of black coral and stylized raindrops

### Sacred Animal
- Storm eagle

### Sacred Colors
- Deep blue, gray, electric white

### Cleric Spells
- **1st Level**: Breathe Fire  
- **2nd Level**: Entangling Flora  
- **3rd Level**: Lightning Bolt  
- **4th Level**: Draw the Lightning

### Boons
- **Minor**: Once per day, you can channel storm energy to deal 1d4 additional electricity damage on a successful melee attack.
- **Moderate**: Storm winds swirl around you. You gain resistance 3 to electricity and are immune to effects that would forcibly move you.
- **Major**: Once per week, you may invoke a localized storm. For 1 minute, rain lashes the battlefield, ranged attacks take a –2 penalty, and all lightning spells gain +2 status bonus to their damage.

### Curses
- **Minor**: The storm’s presence follows you. You suffer a –1 penalty to Stealth checks in natural terrain.
- **Moderate**: Tempests rule your emotions. After taking a critical hit, you must succeed a DC 17 Will save or be confused for 1 round.
- **Major**: You are ever in conflict. You cannot benefit from the Refocus activity unless it occurs in hazardous weather or near natural lightning.
