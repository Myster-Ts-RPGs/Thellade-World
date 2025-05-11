---
tags:
  - "#Character"
  - "#Deity"
  - "#Canon"
art: 90 Assets/Images/Deities/VelessaTransparent.png
sanctification:
  - Can Choose Holy or Unholy
allies: []
enemies: []
pronounced: VEH-less-uh
attributes:
  - Charisma
  - Dexterity
skills:
  - Deception
  - Performance
favored_weapon: Whip, Rapier
primarydomains:
  - Passion
  - Confidence
  - Trickery
  - Creation
secondarydomains:
  - Fate
  - Ambition
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

Velessa, the Crimson Muse, is the radiant goddess of desire, beauty, cunning, and vengeance. She is the spark behind every sonnet, every seduction, and every perfectly plotted downfall. Her devotees understand that love and retribution are both forms of art—and no artist should hold back. Though radiant and indulgent, she is never harmless; wrong her, and the roses will grow from your grave.

Velessa dances where desire meets destiny. Some say she was born from the first shared glance between two mortals—and that she will sing the last love song before the stars die. Her temples are equal parts gallery, garden, and stage, places where confession and seduction are sacraments. Her priesthood includes spies, courtesans, playwrights, and assassins, all of whom know: beauty can bless or burn.

### Area of Concern
- Love, Passion, Beauty, Revenge

### Edicts
- Delight in pleasure, artistry, and aesthetic expression  
- Right personal slights with clever, poetic vengeance  
- Weave truth and falsehood like silk in conversation  
- Kindle desire in yourself and others without shame  

### Anathema
- Suppressing beauty, love, or authentic self-expression  
- Taking crude vengeance without subtlety or flair  
- Defacing works of art out of jealousy or disdain  
- Forcing love or loyalty through cruelty  

### Religious Symbol
- A golden lyre entwined with thorned roses, its strings glowing like sunset embers

### Sacred Animal
- Fox or Hummingbird

### Sacred Colors
- Crimson, gold, blush pink

### Cleric Spells
- **1st Level**: Charm  
- **2nd Level**: Mirror Image  
- **3rd Level**: Enthrall  
- **4th Level**: Honeyed Words

### Boons
- **Minor**: Gain a +1 status bonus to Deception or Diplomacy checks when engaging in flirtation, persuasion, or poetic performance.  
- **Moderate**: Once per day when wronged or insulted, you may cast *Suggestion* without expending a spell slot.  
- **Major**: Your presence enraptures. Enemies who attempt to harm you must succeed at a Will save or become *fascinated* for 1 round. Allies affected by your performance or charm spells gain temporary hit points equal to half your level.

### Curses
- **Minor**: You lose the ability to blush or cry. Attempts to form romantic or artistic bonds take a –1 status penalty.  
- **Moderate**: If you suppress your passions or refuse to express yourself truthfully, you become stupefied 1 until the next dawn.  
- **Major**: When you spurn love or beauty out of fear or shame, your body begins to wither. You cannot benefit from healing spells or effects for 24 hours, and your Charisma-based checks suffer a –2 penalty until absolved by confession or artistic rebirth.


## Goals



## Relations 



## Current Events



## History



## Notes
