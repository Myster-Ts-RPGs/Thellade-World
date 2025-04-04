---
tags:
  - "#Character"
  - "#NPC"
art: z_Assets/NPCs/BerrardCalboot.png
language:
  - Common
  - Dwarven
  - Elven
  - Halfling
  - Gnomish
pronounced: BER-rard CAL-boot
aliases:
  - Head Master Berrard Calboot
ancestry: Dwarf
gender: Male
pronouns: He/Him
age: Adult
sexuality: Straight
alignment: True Neutral
occupation:
  - Mage
  - Teacher
organization:
  - "[[Phoenix Consort]]"
location:
  - "[[Valdian]]"
  - "[[Eclipse Academy of the Arcane]]"
condition: Healthy
party1relation: Acquaintance
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
>> **Ancestry** | `INPUT[Ancestry][suggester:ancestry]` |
>> **Heritage** | `INPUT[Heritage][suggester:heritage]` |
> **Creature Type** | `INPUT[textArea:ancestry]` |
> **Creature Sub-Type** | `INPUT[textArea:heritage]` |
>> **Gender** | `INPUT[Gender][:gender]` |
>> **Pronouns** | `INPUT[Pronouns][:pronouns]` |
>> **Age** | `INPUT[Age][:age]` |
>> **Sexuality** | `INPUT[Sexuality][:sexuality]` |
>> **Alignment** | `INPUT[Alignment][:alignment]` |
>
>> [!metadata|metadataoption]- NPC Info
>> #### NPC Info
>>  |
>>---|---|
>> **Languages** | `INPUT[Language][inlineListSuggester:language]` |
>> **Ideals** | `INPUT[textArea:ideals]` |
>> **Flaws** | `INPUT[textArea:flaws]` |
>> **Fears** |  `INPUT[textArea:fears]` |
>> **Mannerisms** |  `INPUT[textArea:mannerisms]` |
>> **Occupations** | `INPUT[Occupation][inlineListSuggester:occupation]` |
>> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>> **Religions** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):religion]` |
>> **Owned Locations** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):ownedlocation]` |
>> **Current Location** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |
>> **Condition** | `INPUT[Condition][:condition]` |
>
>> [!metadata|metadataoption]- Party Info
>> #### Party Info
>>  |
>> ---|---|
>> **Traveling With** | `INPUT[inlineListSuggester(optionQuery(#Party AND !"z_Templates"), useLinks(partial)):whichparty]` |
>> **Party 1 Relation** | `INPUT[Party1Relation][:party1relation]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ![[PlaceholderAudio.webm]]
> ###### Bio
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Ancestry** | `VIEW[{ancestry}]` |
> **Heritage** | `VIEW[{heritage}]` |
> **Gender** | `VIEW[{gender}]` |
> **Pronouns** | `VIEW[{pronouns}]` |
> **Age** | `VIEW[{age}]` |
> **Sexuality** | `VIEW[{sexuality}]` |
> **Alignment** | `VIEW[{alignment}]` |
> ###### Info
>  |
> ---|---|
> **Languages** | `VIEW[{language}][text]` |
> **Occupation** | `VIEW[{occupation}][text]` |
> **Organization** | `VIEW[{organization}][link]` |
> **Religions** | `VIEW[{religion}][link]` |
> **Owned Locations** | `VIEW[{ownedlocation}][link]` |
> **Current Location** | `VIEW[{location}][link]` |
> **Condition** | `VIEW[{condition}]` |


# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!metadata|letters]- Letters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, quicknote AS Notes
> FROM "Campaign"
> WHERE econtains(holder, this.file.link) AND contains(tags, "Letter")
> SORT file.name ASC

> [!metadata|literature]- Literature
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, quicknote AS Notes
> FROM "Campaign"
> WHERE econtains(holder, this.file.link) AND contains(tags, "Literature")
> SORT file.name ASC

## Overview



> [!column|2 no-title]
>
> 
>> [!metadata|ideals] Ideals
> `VIEW[{ideals}][text]`
>
>> [!metadata|flaws] Flaws
> `VIEW[{flaws}][text]`
> 
>> [!metadata|fear] Fears
> `VIEW[{fears}][text]`
>
>> [!metadata|mannerism] Mannerisms
> `VIEW[{mannerisms}][text]`

## Goals

### Teacher & Mentor
Berrard's primary goal is to pass on his vast knowledge of the arcane arts to aspiring wizards at the Eclipse Academy. He strives to nurture their talents and guide them towards becoming skilled practitioners of magic. As a member of the Phoenix Consort, he also works towards safeguarding the balance between magic and the natural order of the world.

### Knowledge & Preservation
Berrard is motivated by his unwavering dedication to the pursuit of knowledge and the preservation of ancient magical traditions. He seeks to expand the understanding and mastery of magic, as well as to protect the realms from the dangers that arise when magic falls into the wrong hands. Berrard's motivation stems from a deep-seated belief that the responsible use of magic can bring about positive change and enlightenment.

## Acquaintances



## Current Events



## History

Berrard Calboot hails from a lineage of renowned dwarven wizards who have long served as the custodians of arcane wisdom. He trained diligently in the magical arts from an early age, displaying an extraordinary aptitude for spellcasting and an insatiable thirst for knowledge. As his reputation grew, Berrard assumed the role of headmaster at the Eclipse Academy of the Arcane, a prestigious institution that trains promising young mages.

As a member of the Phoenix Consort, a secretive group of elite mages, Berrard collaborates with other accomplished spellcasters to protect the realms from magical threats. They study ancient texts, delve into forgotten ruins, and share their discoveries to better understand the intricacies of magic and its potential impact on the world.

Berrard's wisdom, expertise, and dedication have made him a highly respected figure among both the wizarding community and the wider realm. His presence at the Eclipse Academy and within the Phoenix Consort ensures that his influence reaches far and wide, shaping the future of magic and those who wield it.

## Notes

Headmaster of the [[Eclipse Academy of the Arcane]] 

Bernard has spoken to the Party [[Motley Few]] and have agreed to letting the party borrow the elemental gem. The party has signed an agreement so if they do indeed take the gem, as payment Bertrand would like all 4 gems to the vault. In result making him the owner of the vault. The plans for this is currently unknown, but it would make a great vault to hold valuables.



