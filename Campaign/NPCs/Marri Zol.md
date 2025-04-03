---
tags:
  - "#Character"
  - "#NPC"
art: z_Assets/NPCs/MarriZol.png
pronounced: MAR-ee ZOL
ancestry: Dwarf
gender: Female
pronouns: She/Her
age: Mature Adult
sexuality: Straight
alignment: True Neutral
language:
  - Common
  - Dwarven
occupation:
  - Merchant
organization: []
ownedlocation:
  - "[[Paws & Claws Emporium]]"
location:
  - "[[Onyxdale]]"
  - "[[Paws & Claws Emporium]]"
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

Marri Zol, a resilient and compassionate dwarf, is the dedicated proprietor of Paws & Claws Emporium in the heart of Onyxdale. With her boundless love for animals and keen business sense, she has transformed her shop into a thriving hub for pet enthusiasts throughout the settlement. Marri Zol's warm demeanor and extensive knowledge make her establishment a beloved cornerstone of the community.

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

Marri Zol's primary goal is to ensure the well-being of the pets under her care and to promote responsible pet ownership among the people of Onyxdale. She dreams of expanding her shop's offerings to include grooming services, training classes, and educational workshops, creating a comprehensive resource for pet lovers far and wide.

## Acquaintances

> [!kirk|info] Prompt (Remove me)
Map out the intricate web of relationships surrounding this NPC. Who comprises their family, friends, and rivals? Explore the dynamics within these connections, detailing the history and events that shaped these relationships. What bonds tie them to their family or friends, and what conflicts or events have led to rivalries? Uncover the stories, shared experiences, or betrayals that have influenced the course of these relationships, shaping the NPC's interactions and choices.

## Current Events

Marri Zol is organizing a community pet adoption event in partnership with the local animal shelter, showcasing a variety of adorable pets available for adoption at Paws & Claws Emporium. She hopes to find loving homes for the shelter's animals while also raising awareness about the importance of pet adoption and responsible pet ownership.

## History

Born into a family of skilled animal caretakers and breeders, Marri Zol developed a deep love for animals from a young age. She spent her formative years learning about animal care and husbandry, eventually channeling her passion into the establishment of Paws & Claws Emporium in Onyxdale. Over the years, Marri Zol's shop has flourished, becoming a beloved destination for pet enthusiasts seeking high-quality products, expert advice, and, above all, a warm and welcoming atmosphere. Marri Zol takes great pride in her role as a steward of animal welfare, ensuring that every pet that enters her shop receives the love, care, and attention it deserves.

## Notes





