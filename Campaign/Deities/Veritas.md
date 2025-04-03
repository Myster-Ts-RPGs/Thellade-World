---
tags:
  - "#Character"
  - "#NPC"
  - "#Deity"
art: z_Assets/Deities/Veritas.png
aliases:
  - The Unveiler
pronouns: He/Him
alignment: True Neutral
deitypower: Greater God
condition: Healthy
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
>> **Pronouns** | `INPUT[Pronouns][:pronouns]` |
>> **Alignment** | `INPUT[Alignment][:alignment]` |
>
>> [!metadata|metadataoption]- Deity Info
>> #### Deity Info
>>  |
>>---|---|
>> **Ideals** | `INPUT[textArea:ideals]` |
>> **Flaws** | `INPUT[textArea:flaws]` |
>> **Fears** |  `INPUT[textArea:fears]` |
>> **Mannerisms** |  `INPUT[textArea:mannerisms]` |
>> **Power** | `INPUT[DeityPower][:deitypower]` |
>> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
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
> **Pronouns** | `VIEW[{pronouns}]` |
> **Alignment** | `VIEW[{alignment}]` |
> ###### Info
>  |
> ---|---|
> **Power** | `VIEW[{deitypower}]` |
> **Owned Locations** | `VIEW[{ownedlocation}][link]` |
> **Current Location** | `VIEW[{location}][link]` |
> **Condition** | `VIEW[{condition}]` |


# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!metadata|organizations]- Related Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "Campaign"
> WHERE econtains(worship, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC

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



## Acquaintances



## Current Events



## History



## Notes

Veritas, the God of Truth, is a wise and just deity who values knowledge, insight, and understanding. He is often depicted as a small, imposing figure with piercing eyes that seem to see through all deception and falsehood. Veritas is a patron of scholars, historians, and truth-seekers of all kinds. He is also worshipped by those who seek to uncover the mysteries of the universe and understand the true nature of things such as scientists, alchemists, mages and inventors.

Veritas is associated with the symbol of scales, which represent the idea of balance and justice. His temples are often filled with libraries, archives, and other repositories of knowledge, and his priests are renowned for their ability to discern truth from lies.

Veritas is a powerful and respected deity, and he is feared by those who would seek to deceive others or keep knowledge hidden. His followers are dedicated to the pursuit of truth and the advancement of knowledge, and they are known for their unwavering commitment to justice and fairness.

Veritas is often depicted as a stern, bearded figure with piercing eyes that seem to see through any falsehoods. He is revered by scholars, judges, and seekers of truth, who often invoke his name when they seek guidance or insight.

Veritas's teachings emphasize the importance of seeking knowledge and understanding, and he encourages his followers to question assumptions and seek out the evidence before coming to conclusions. He is also known for his uncompromising stance against deception and dishonesty and is said to punish those who engage in falsehoods or deceit for their own personal and selfish gains.

In many myths and stories, Veritas is portrayed as a clever strategist and solver of mysteries, who is able to unravel even the most complicated puzzles and reveal hidden truths. He is also associated with divination and prophecy, and some believe that he can offer glimpses into the future for those who seek his guidance.