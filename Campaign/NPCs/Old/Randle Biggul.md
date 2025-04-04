---
tags:
  - "#Character"
  - "#NPC"
art: z_Assets/NPCs/RandleBiggul.png
pronounced: RAN-dull BIG-gul
ancestry: Halfling
gender: Male
pronouns: He/Him
age: Adult
sexuality: Straight
alignment: Chaotic Neutral
language:
  - Common
  - Halfling
occupation:
  - Criminal
location:
  - "[[Onyxdale]]"
  - "[[Umbral Retreat]]"
  - "[[Tipsy Unicorn]]"
condition: Healthy
party1relation: Acquaintance
banner: on
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

Randle is a shifty yet welcoming person, seemingly knowing how to talk his way around people and how to say the right thing. Randle himself doesn't seem to care too much for who gets hurt and just does his job so he can make his money.

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
### Example #1

> [!kirk|info] Prompt (Remove me)
> Unravel the aspirations that drive this NPC forward. What are their primary goals, desires, or ambitions? Explore the motivations behind their actions, whether it's seeking power, redemption, love, revenge, or a sense of belonging. Delve into the depth of their aspirations, considering how these goals shape their decisions and interactions within the world. What drives this NPC and what steps might they take to achieve their life's purpose?

## Acquaintances

[[Lerla Biggul]] 
[[Olden Khemmid]] 

[[Wyn Syrel]] 
[[Vanderin Irius]] 



## Current Events

> [!kirk|info] Prompt (Remove me)
> Zoom into the present circumstances surrounding this NPC. What's happening in their life right now? Detail the ongoing events, challenges, or opportunities they're facing. Are they dealing with a personal crisis, pursuing a new goal, or involved in a conflict? Furthermore, what are they actively striving for at this moment? Explore their immediate objectives, aspirations, or plans. How are these current events and goals shaping their decisions and actions in the present narrative?

## History

Randle, in his younger years was bullied and picked on. It wasn't until early adulthood that he came into his own in a life of crime, where he fell into the wrong crowd and became a bandit along the road between the Capitol and Onyxdale. At first, it was an easy job. Not aiming too high and and not killing anyone. However, that all changed on one job where they stole a precious item and Randle's face was exposed. They left him alive, but months later that same Merchant would wander into Meshwich. When he was made, Randle and his gang came together to kill them. However, Lerla walked in on the events.

After that, Lerla and Randle fell out and argued. Randle after weeks of arguments and fears of his mother finding out, left town and went to follow a lead in Onyxdale. He soon found work there with the Hushed Gang and not long after being recruited by [[Olden Khemmid]] to work at the [[Tipsy Unicorn]].

## Notes





