---
tags:
  - "#Character"
  - "#LegendaryBeing"
  - "#TODO"
art: 90 Assets/Images/Misc/PlaceholderImage.png
allies: []
enemies: []
pronounced: ELL-uhn-dor
aliases:
  - Herald Elandor
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
>> **Alignment** | `INPUT[Alignment][:alignment]` |
>
>> [!metadata|metadataoption]- Deity Info
>> #### Deity Info
>>  |
>>---|---|
>> **Power** | `INPUT[DeityPower][:deitypower]` |
>> **Mythic Influence** | `INPUT[MythicInfluence][inlineListSuggester:mythic_influence]` |
>> **Signature Abilities** | `INPUT[SignatureAbilties][inlineListSuggester:singature_abilities]` |
>> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>> **Owned Locations** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):ownedlocation]` |
>> **Current Location** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |
>> **Condition** | `INPUT[Condition][:condition]` |
>
>> [!metadata|metadataoption]- Relations
>> #### Relations
>>  |
>> ---|---|
>> **Allies** | `INPUT[inlineListSuggester(optionQuery(#Deity AND !"z_Templates"),optionQuery(#Demigod AND !"z_Templates"),optionQuery(#LegendaryBeing AND !"z_Templates"), useLinks(partial)):allies]` |
>> **Enemies** | `INPUT[inlineListSuggester(optionQuery(#Deity AND !"z_Templates"), optionQuery(#Demigod AND !"z_Templates"), optionQuery(#LegendaryBeing AND !"z_Templates"), useLinks(partial)):enemies]` |
>> **Mortal Ties** | `INPUT[inlineListSuggester(optionQuery(#Planet OR #Region OR #Subregion OR #Settlement OR #Organization OR #Ancestry), useLinks(partial)):mortal_ties]` |
>> ...


> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ![[PlaceholderAudio.webm]]
> ###### Bio
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Alignment** | `VIEW[{alignment}]` |
> **Mythic Influence** | `VIEW[{mythic_incluence}][text]` |
> **Signature Abilities**| `VIEW[{signature_abilities}][text]` |
>
> ###### Info
>  |
> ---|---|
> **Power** | `VIEW[{deitypower}]` |
> **Owned Locations** | `VIEW[{ownedlocation}][link]` |
> **Current Location** | `VIEW[{location}][link]` |
> **Mortal Ties** | `VIEW[{mortal_ties}][link]` |
> **Condition** | `VIEW[{condition}]` |


## **Legendary Being: `=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!recite]- Introduction
> Herald Elandor appears as a radiant, translucent figure—a woman in her late 40s clad in ceremonial robes of flowing sunsteel thread and lunar-woven silk. Her features are etched with wisdom and sorrow, and a luminous corona of braided hair crowns her brow like sunbeams in eclipse. Auric chains hang loosely at her wrists, symbolic of her vow to remain in vigil until the final light fails.
>
>Her form flickers slightly as if viewed through sunrise mist. When she speaks, her voice resonates with layered harmonics—like multiple versions of herself echoing in harmony, stretched across time.

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
> WHERE (contains(tags, "Deity") OR contains(tags, "Demigod") OR contains(tags, "DemonLord") OR contains(tags, "LegendaryBeing"))
> AND contains(allies, this.file.link)
> SORT file.name ASC

> [!metadata|organizations]- Enemies
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS "Aliases"
> FROM "01 Campaign"
> WHERE (contains(tags, "Deity") OR contains(tags, "Demigod") OR contains(tags, "DemonLord") OR contains(tags, "LegendaryBeing"))
> AND contains(enemies, this.file.link)
> SORT file.name ASC



## Overview

> [!summary]- Overview  
> **Role**: Echo-bound Herald, keeper of the Dawn-Marked Seal

**Disposition**:  
Serene but intense. Elandor is driven by duty and reverence. Her words are measured, and she speaks as one who has endured centuries of solitude and silence. She does not see herself as fully alive, nor fully dead—she is “held in oath,” preserved by the unfinished will of Aurion.

### 🔆 Background

Herald Elandor was once the High Dawnkeeper of the Aurionic Sanctum beneath Lambaro—chosen not for power, but for clarity of spirit. During the final days of the Binding War, she remained in the sanctum as it was sealed mid-rite, time folding over the location like a golden shroud. The ritual that would reinforce the southern beacon was never completed. She never left.

To this day, she stands at the still point of the sanctum’s time fracture, tethered by Aurion’s divine command. Though her body is long dead, her echo persists—neither ghost nor memory, but an oath-anchored guardian.

She knows the sanctum is breaking. She has watched for signs of renewal or corruption. When the party arrives, she will recognize them as both potential saviors and unintended heirs to a fading divine trust.

---

### 🧠 Personality Traits

- **Ideals**: Duty above desire; time is sacred; oaths once spoken must echo forever
    
- **Flaws**: Cannot act outside ordained purpose unless directly released
    
- **Fears**: That her watch was in vain; that Aurion has gone silent
    
- **Mannerisms**: Tilts her head when listening to timelines others cannot hear. Frequently quotes incomplete prophecies. Moves like she’s still surrounded by acolytes who aren’t there.
    
- **Goals**: To pass on the Dawn-Marked Seal, finish the ritual that began centuries ago, and ensure the temple’s collapse is not in vain.
    

---

### 🧠 She Knows:

- The _names_ of the prior timebound keepers (may serve as passphrases).
    
- That the 4th beacon seal was never completed.
    
- That the rising chaos is a reflection of weakened bindings.
    
- That one among the party is “out of time” in ways even she cannot see clearly.
    
- The Ritual of Final Dawn can only be completed if light and darkness speak as one.
    

---

### 🗣️ Sample Dialogue

> “You bear the weight of an hour I have not yet seen. But I know your hands—I've seen them in firelight. You are meant to be here.”
> 
> “I am bound, not by chains—but by the final breath of a god who asked me to wait.”
> 
> “There were once four lights in this chamber. One failed. One was unfinished. One is you.”
### Area of Concern
- 

### Religious Symbol
- 

## Goals



## Relations 



## Current Events



## History
### Origin Story



## Notes

