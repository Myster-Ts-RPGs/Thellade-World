---
tags:
  - "#Character"
  - "#NPC"
art: z_Assets/Misc/PlaceholderImage.png
language:
  - Common
  - Halfling
  - Dwarven
pronounced: LIE-lull UN-DER-boww
ancestry: Halfling
gender: Male
pronouns: He/Him
age: Mature Adult
sexuality: Straight
alignment: True Neutral
occupation:
  - Merchant
organization:
  - "[[Odinys Merchant's Guild]]"
ownedlocation:
  - "[[Homestead General Store]]"
location:
  - "[[Kolberdon]]"
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

Lyle Underbough is a cheerful and resourceful halfling who runs the Homestead General Store in Kolberdon. Known for his friendly demeanor and keen business acumen, Lyle ensures that his store is always well-stocked with the essentials and unique goods that the farming community needs. His welcoming personality and dedication to his customers make him a beloved figure in Kolberdon.

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

Lyle's primary goal is to keep the Homestead General Store thriving as the go-to place for all of Kolberdon's needs. He aims to expand his inventory with more specialty items and establish strong relationships with local farmers and artisans to feature their products in his store.

## Acquaintances

1. Jarl Gunnar Oakheart - The Jarl of Kolberdon, who appreciates Lyle's contributions to the community and often stops by the store for supplies and a friendly chat.
2. Marigold Greenhill - A local farmer who supplies fresh produce to Lyle's store and shares a close friendship with him.
3. Tilda Bramblefoot - A fellow halfling and talented baker whose goods are a staple in Lyle's store, drawing in customers from across the settlement.

## Current Events

Lyle Underbough is organizing a community market day at the Homestead General Store, inviting local farmers, artisans, and craftsmen to set up stalls and showcase their products. He hopes this event will strengthen community bonds and boost local trade, providing a platform for small businesses to thrive.

## History

Born and raised in Kolberdon, Lyle Underbough grew up in a tight-knit halfling family that valued hard work and community. From a young age, he was fascinated by the bustling activity of the town's markets and stores. After inheriting the Homestead General Store from his parents, Lyle poured his heart and soul into the business, expanding its inventory and building a reputation for quality and reliability. Over the years, Lyle's store has become a cornerstone of Kolberdon, where townsfolk know they can find everything they need along with a warm smile and friendly conversation.

## Notes





