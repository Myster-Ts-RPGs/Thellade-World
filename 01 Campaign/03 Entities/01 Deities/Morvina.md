---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/MorvinaTransparent.png
sanctification:
  - Can Choose Unholy
allies: []
enemies: []
pronounced: MOR-vee-nah
aliases:
  - The Thorned Crown
attributes:
  - Charisma
  - Constitution
skills:
  - Intimidation
  - Occultism
favored_weapon: Scythe, Thorn Whip
primarydomains:
  - Death
  - Pain
  - Ambition
  - Sorrow
secondarydomains:
  - Secrecy
  - Darkness
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

Morvina, the Thorned Crown, is the goddess of misfortune, bitter endings, and inevitable demise. She is the cruel whisper at the end of hope, the laughter behind a tragic fall, and the slow rot of forgotten prayers. Her touch manifests in sudden disasters, flukes of chance, and painful irony—always delivering ruin where none was expected.

Her faithful embrace despair as a sacred truth and see beauty in the finality of failure. Temples to Morvina are overgrown ruins, desecrated halls, or hidden crypts where the desperate bargain for survival—or vengeance. Her clergy offer no comfort, only acceptance that life ends in thorns. Those who deny her are blind; those who worship her are prepared.

### Area of Concern
- Misfortune, Ruin, Spite, Catastrophe

### Edicts
- Spread despair or inevitability of suffering
- Encourage misfortune and reveal the futility of hope
- Embrace decay, endings, and the beauty of failure
- Punish those who tempt fate or boast of fortune

### Anathema
- Offer false hope or deny the finality of death
- Defend those who defy fate’s cruel hand
- Sabotage the natural end of things for personal gain
- Act with persistent optimism or joyful naivety

### Religious Symbol
- A crimson rose dripping blood, encircled by a crown of jagged black thorns

### Sacred Animal
- Vulture or Widow Spider

### Sacred Colors
- Deep red, charcoal black, ashen gray

### Cleric Spells
- **1st Level**: Ill Omen  
- **2nd Level**: Mirror Image  
- **3rd Level**: Vampiric Feast  
- **5th Level**: Wave of Despair

### Boons
- **Minor**: Once per day when a creature within 30 feet critically fails a save, you gain a +1 status bonus to your next damage roll or DC.
- **Moderate**: The weight of endings surrounds you. You gain resistance 3 to positive damage and a +2 bonus to saves against emotion effects.
- **Major**: Once per week, declare a “fall from grace.” One enemy that critically succeeds on an attack instead suffers a failure and is frightened 2.

### Curses
- **Minor**: Hope eludes you. You cannot benefit from circumstance bonuses granted by allies unless you are wounded.
- **Moderate**: Joy is fleeting. Whenever you critically succeed at a saving throw, you become drained 1.
- **Major**: Fate recoils at your denial. If you ever cast a spell with the emotion or good trait, you become doomed 2 and clumsy 1 for 1 hour.


## Goals



## Relations 



## Current Events



## History



## Notes
