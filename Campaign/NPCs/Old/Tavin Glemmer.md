---
tags:
  - "#Character"
  - "#NPC"
art: z_Assets/NPCs/TavinGlemmer.png
language:
  - Common
  - Gnomish
pronounced: TAH-vin GLEM-mer
aliases:
  - Tav
ancestry: Gnome
heritage: Wellspring Gnome
gender: Male
pronouns: He/Him
age: Elderly
sexuality: Gay
alignment: True Neutral
ideals: Curiosity, generosity, tradition
flaws: Greed, Forgetful, Stubborn
fears: Loneliness, Bankruptcy, Darkness
mannerisms: Nervous chuckle, Fiddles with Beard, Speaks in Rhymes
occupation:
  - Merchant
organization:
  - "[[Odinys Merchant's Guild]]"
religion:
  - "[[Clergy of the Hearth Mother]]"
ownedlocation:
  - "[[Enigma Emporium]]"
location:
  - "[[Kolberdon]]"
  - "[[Enigma Emporium]]"
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
> ![[TavinGlemmerAudio.webm]]
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

Tavin Glemmer is a whimsical and eccentric gnome who owns and operates the Enigma Emporium in Kolberdon. With his keen eye for the unusual and the obscure, Tavin fills his store with an eclectic assortment of curiosities, trinkets, and oddities from distant lands and mysterious realms. Visitors to the Enigma Emporium are always greeted with Tavin's infectious enthusiasm and his knack for spinning fantastical tales about the origins of his wares.

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

Tavin's primary goal is to continue expanding the Enigma Emporium's collection of rare and enigmatic items, delighting customers with new discoveries and surprising finds. He hopes to foster a sense of wonder and curiosity among the townsfolk of Kolberdon, encouraging them to explore the mysteries of the world around them.

## Acquaintances

1. Marri Zol - The proprietor of Paws & Claws Emporium, with whom Tavin shares a friendly rivalry and occasionally trades unique items.
2. Quom Debs - The owner of Guilded Gemstone, who appreciates Tavin's eye for quality craftsmanship and occasionally showcases his wares in Tavin's store.
3. Rahix - A fetchling researcher with a fascination for the arcane and the unknown, who frequents the Enigma Emporium in search of rare artifacts and magical oddities.

## Current Events

Tavin Glemmer is preparing for the grand unveiling of his latest acquisition: a mysterious relic said to hold ancient powers of divination. As rumors swirl through Kolberdon about the artifact's origins and potential significance, Tavin eagerly anticipates the influx of curious customers and adventurers eager to uncover its secrets.

## History

Tavin Glemmer was born into a family of gnome merchants who traversed the realms in search of rare and valuable treasures. From a young age, Tavin accompanied his parents on their journeys, learning the art of trade and the joy of discovery. When he inherited the Enigma Emporium from his parents, Tavin infused the store with his own unique flair, transforming it into a haven for seekers of the strange and the extraordinary. Over the years, Tavin's store has become a beloved fixture in Kolberdon, drawing in visitors from far and wide who are drawn to its aura of mystery and wonder.

## Notes





