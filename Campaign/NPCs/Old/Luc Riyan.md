---
tags:
  - "#Character"
  - "#NPC"
art: z_Assets/NPCs/LucRiyan.png
pronounced: LOO-ck REE-an
ancestry: Human
heritage: Versatile Heritage
gender: Male
pronouns: He/Him
age: Elderly
sexuality: Straight
alignment: True Neutral
language:
  - Common
ownedlocation:
  - "[[Riyan Household]]"
location:
  - "[[Kolberdon]]"
  - "[[Riyan Household]]"
condition: Healthy
occupation:
  - Stablehand
religion:
  - "[[Clergy of the Hearth Mother]]"
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
> **Occupations** | `VIEW[{occupation}][text]` |
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
> SORT organizationtype ASC, file.name ASC

> [!metadata|literature]- Literature
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, quicknote AS Notes
> FROM "Campaign"
> WHERE econtains(holder, this.file.link) AND contains(tags, "Literature")
> SORT organizationtype ASC, file.name ASC

## Overview

Luc Riyan, a weathered and kind-hearted elderly man, spent his entire life as a stablehand. He possesses an innate understanding of horses and has a comforting presence that makes him a beloved figure among both the animals and the stable workers. Despite his simple occupation, Luc has a wealth of wisdom and stories to share from a lifetime spent in the stables.

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

Luc's primary goal is to ensure the well-being of the horses he cares for and pass on his practical knowledge to the younger stablehands. He dreams of establishing a small community stable where people can learn the art of horse care and appreciate the bond between humans and these magnificent creatures.

## Acquaintances

[[Jeane Riyan]] (Wife)
[[Fen Riyan]] (Daughter)
[[Kei Riyan]] (Son)
Kerris Lemm (Fen's Friend)

## Current Events

Luc Riyan is faced with the challenge of finding suitable successors to continue the stable's legacy as he senses the inevitable changes in the community. He is contemplating organizing a local event to raise awareness about the importance of traditional stable practices and to garner support for the preservation of their way of life.

## History

Luc at a young age developed a deep connection with horses, understanding their needs and personalities. Luc's days were filled with the routine tasks of mucking out stalls, grooming horses, and soothing them during storms. Over the years, he became a repository of practical knowledge about horse care, and his gentle demeanor earned him the respect and admiration of those around him. Luc cherishes the memories of a lifetime spent in the company of horses, sharing his stories and skills with anyone willing to listen.

## Notes





