---
tags:
  - "#Character"
  - "#NPC"
art: z_Assets/Misc/PlaceholderImage.png
language:
  - Common
pronounced: ROD-uh-rik VANT-HEL-ee-ON
aliases:
  - Stormcrowned Sovereign of the Isles
ancestry: Human
heritage: Versatile Heritage
gender: Male
age: Mature Adult
ideals: Stability, legacy, naval supremacy
flaws: Distrustful of mainland monarchs; prone to secrecy and shadow alliances
fears: Losing the Isles to internal strife, betrayal by his governors
occupation:
  - Noble
ownedlocation:
  - "[[The Outcast Isles]]"
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
>> **Creature Type** | `INPUT[textArea:ancestry]` |
>> **Creature Sub-Type** | `INPUT[textArea:heritage]` |
>> **Gender** | `INPUT[Gender][:gender]` |
>> **Age** | `INPUT[Age][:age]` |
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
> **Age** | `VIEW[{age}]` |
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
King Roderic Vanthelion is a proud, weatherworn ruler, known for his steely gaze, ash-silver hair braided with coral, and the storm-mantle cloak of his line. Raised in the tide-drenched halls of Kanda’s citadel, Roderic bears the weight of both the crown and the sea. A wartime heir, he took the throne after his elder sister vanished in the early post-Rising conflicts. Roderic believes in unity through strength and diplomacy through pressure.

Though often described as austere, he is not unfeeling. His love for the Isles is absolute, and his loyalty to their survival justifies ruthless pragmatism. He is a strategic genius at sea, a harsh reformer on land, and an idealist in moments of solitude.


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



## Relationships
- **Steward:** [[Steward Malden Virelock]] – Trusted confidant, legal executor
- **Heir Apparent:** [To be defined – consider a son/daughter, niece/nephew, or secret heir]
- **Tensions with:** [[Governor Elara]] (seen as too sympathetic to revolutionary ideals)    
- **Allies:** Royal Navy [[Admiral Elgiran Dorn]] (not yet detailed)
- [[The Silent Oath]] (Traditionalist royalist inner circle – potentially a secret society?)

## Current Events



## History



## Notes
***Court Rumors & Plot Threads***
- His crown was reforged from the mast of a ship lost during The Rising.
- Secretly maintains a pact with an ancient sea spirit bound beneath [[Kanda City]].
- It is whispered he keeps letters from the missing [[Princess Evalyne]] hidden in a sealed vault.




