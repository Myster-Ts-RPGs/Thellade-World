---
tags:
  - "#Character"
  - "#NPC"
art: z_Assets/NPCs/NaveithNola-Kileana.png
language:
  - Common
  - Jotun
pronounced: NA-veeth NO-la KIL-EE-ah-nah
aliases:
  - Riverfist
gender: Male
ancestry: Goliath
pronouns: He/Him
age: Young Adult
sexuality: Straight
alignment: True Neutral
occupation:
  - Chief
organization:
  - "[[Dyull Clan]]"
location:
  - "[[Dyull Sanctuary]]"
condition: Healthy
ownedlocation:
  - "[[Dyull Sanctuary]]"
party1relation: Ally
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

### Protector of the Clan
Naveith's primary goal is to protect and preserve the Dyull Clan and their ancestral lands in the Fulcrum Ridge. He is dedicated to ensuring the safety and well-being of his people, defending them from threats and keeping the harmony between the goliaths and their mountain environment.

### Great Hunter
Naveith and his clan follows the the Goddess [[Y'oshka]] (The Score Keeper.) Naveith wishes to becoe a great hunter and aquire many points to gain favour with his god.

## Acquaintances

[[Apagak Nola-Kileana]] - Father

[[Vanderin Irius]] - Friend 
[[Wyn Syrel]] - Friend
[[Lerla Biggul]] - Friend 
[[Kielash Malgil]] - Friend

## Current Events



## History

Naveith Nola-Kileana was born into the Dyull Clan, son to the Chief [[Apagak Nola-Kileana]]. The Dyull Clan is a goliath tribe that has called the rugged peaks of the Fulcrum Ridge their home for generations. From a young age, Naveith displayed exceptional strength and skill in combat, earning him respect and admiration among his clan.

As he grew older, Naveith underwent rigorous training, mastering the art of unarmed combat and honing his survival skills in the treacherous mountain terrain. Through countless battles fought against monstrous threats and rival clans, he rose to prominence as a fearless warrior and a natural leader.

Naveith's bravery and dedication to his people led to his proclamation as Riverfist, a title that represents his indomitable strength and the force with which he protects the Dyull Clan's interests. As the clan's defender, Naveith acts as the bridge between the goliaths and the ancient spirits that inhabit the mountains.

He is known to venture into dangerous territories to gather resources, uncover lost artifacts, and ensure the safety of the clan's sacred sites. Naveith's wisdom and guidance are sought after by both the younger warriors seeking tutelage and the clan elders seeking counsel.

Riverfist's presence is a symbol of strength and unity, instilling confidence in the Dyull Clan and inspiring them to face any challenge that may come their way. His deep connection to the mountains and his unwavering dedication to his people make him a formidable force within the Fulcrum Ridge.

## Notes





