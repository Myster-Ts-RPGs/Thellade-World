---
tags:
  - "#Character"
  - "#NPC"
art: z_Assets/NPCs/LerlaBiggul.png
pronounced: LEHR-la BIG-gul
aliases:
  - Big
  - Rixy Dersh
ancestry: Halfling
gender: Female
pronouns: She/Her
age: Young Adult
sexuality: Straight
alignment: True Neutral
language:
  - Common
  - Halfling
flaws: Short Temper
occupation:
  - Adventurer
location:
  - "[[Onyxdale]]"
condition: Healthy
party1relation: Ally
whichparty: []
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

Above all else, Lerla's family, friends and community matter to her the most. She is a fierce woman who fights for who she cares about, and will do anything to make sure they are seen to. She'll go out of her way to help them and fight for those who can't fight for themselves. This has led her down a life of petty crime, as in her eyes the proper authorities never do what is needed.

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

[[Randle Biggul]] 

Naveith Nola-Kileana (Riverfist)
Kielash Malgil
Von Yottin
[[Wyn Syrel]] 
[[Vanderin Irius]] 

## Current Events



## History

Lerla Biggul, also known as Rixy Dersh in the underworld. She is a low level thug that works with TBD. They mainly steal from traders passing between the Capitol and Onyxdale near Meshwich, being carful and being sure not to hurt anyone, only targeting defenceless merchants.

Lerla whilst living a life of crime, still has a good strong root in the Meshwich community. She is known as hot headed and isn't much of a small talker. But she is reliable, tough and knows how to sort out problems. The only family she has is her Mother (Tyess Biggul) and Brother [[Randle Biggul]]. Her mother has recently passed away due to the attack on [Meshwich](Meshwich.md) by the dragon. She was frozen in Ice and was dug out and burned in a hasty ceremony after [[Vanderin Irius]] killed a looter.

Lerla discovered a few years ago that her brother [[Randle Biggul]] was apart of a group that killed and stole from a merchant within Meshwich. After a lot of fighting and falling and Lerla threatening to tell their mother, he eventually left home and was last seen heading towards Onyxdale.

## Notes

Was stealing supplies in [[Kamderah]] for [[Meshwich]]
Party stopped them and was in prison with them.
Party had change of mind, now work with Lerla and have an agreement to get food to [[Meshwich]]

