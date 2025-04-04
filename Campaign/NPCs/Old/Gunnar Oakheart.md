---
tags:
  - "#Character"
  - "#NPC"
art: z_Assets/NPCs/GunnarOakheart.png
pronounced: GU-nar OAK-hart
ancestry: Dwarf
aliases:
  - Jarl Gunnar Oakheart
gender: Male
pronouns: He/Him
age: Mature Adult
sexuality: Straight
alignment: True Neutral
language:
  - Common
  - Dwarven
occupation:
  - Jarl
ownedlocation:
  - "[[Kolberdon]]"
location:
  - "[[Kolberdon]]"
  - "[[Jarl's Hall (Kolberdon)]]"
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
> SORT file.name ASC

> [!metadata|literature]- Literature
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, quicknote AS Notes
> FROM "Campaign"
> WHERE econtains(holder, this.file.link) AND contains(tags, "Literature")
> SORT file.name ASC

## Overview

Jarl Gunnar Oakheart is a stalwart and revered leader who governs the prosperous farming town of Kolberdon with wisdom and strength. As a dwarf deeply connected to the earth and its bounty, he takes great pride in overseeing the town's agricultural endeavors, ensuring that Kolberdon remains the breadbasket of the region. Under his guidance, Kolberdon has flourished into a thriving community known for its resilience and prosperity.

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

Jarl Gunnar's primary goal is to protect the welfare of his people and uphold the traditions of their ancestors. He seeks to strengthen Kolberdon's defenses, forge alliances with neighboring settlements, and ensure the continued prosperity of its farming industry.

## Acquaintances

> [!kirk|info] Prompt (Remove me)
Map out the intricate web of relationships surrounding this NPC. Who comprises their family, friends, and rivals? Explore the dynamics within these connections, detailing the history and events that shaped these relationships. What bonds tie them to their family or friends, and what conflicts or events have led to rivalries? Uncover the stories, shared experiences, or betrayals that have influenced the course of these relationships, shaping the NPC's interactions and choices.

## Current Events

Jarl Gunnar Oakheart is faced with troubling reports of shadow monsters lurking on the outskirts of Kolberdon, preying upon travelers and livestock alike. Concerned for the safety of his people, he has dispatched scouts to investigate the phenomenon and bolstered the town's defenses against potential incursions. While striving to maintain calm among the populace, Jarl Gunnar works tirelessly to uncover the source of these dark creatures and devise a strategy to protect Kolberdon from their malevolent influence.

## History

Jarl Gunnar Oakheart was born into a respected dwarven clan that has long governed Kolberdon. From a young age, he was taught the values of duty, honor, and loyalty to his people. When he assumed the mantle of Jarl, Gunnar dedicated himself to the prosperity and well-being of Kolberdon, drawing upon the wisdom of his ancestors to guide his decisions. Throughout his tenure, he has earned the admiration and respect of his fellow dwarves and the inhabitants of Kolberdon alike, cementing his legacy as a wise and just leader who stands as a bulwark against adversity.

## Notes





