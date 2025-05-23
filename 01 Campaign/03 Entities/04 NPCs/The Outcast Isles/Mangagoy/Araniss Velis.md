---
tags:
  - "#Character"
  - "#NPC"
  - "#TODO"
art: 90 Assets/Images/Misc/PlaceholderImage.png
language:
  - Common
location:
  - "[[The Sunken Archive]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mangagoy Isles]]"
condition: Healthy
aliases:
  - The Drowned Scholar
  - Araniss 'The Drowned Scholar' Velis
organization:
  - "[[The Sable Accord]]"
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
>> **Ideals** | `INPUT[textArea:ideals]` |
>> **Flaws** | `INPUT[textArea:flaws]` |
>> **Fears** |  `INPUT[textArea:fears]` |
>> **Mannerisms** |  `INPUT[textArea:mannerisms]` |
>
>> [!metadata|metadataoption]- Party Info
>> #### Party Info
>>  |
>> ---|---|
>> **Party 1 Relation**|`INPUT[PartyRelation][inlineListSuggester:party1relation]`|
>> **Party 1 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group1), useLinks(partial)):party1tie]` |
>> **Party 2 Relation**|`INPUT[PartyRelation][inlineListSuggester:party2relation]`|
>> **Party 2 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group2), useLinks(partial)):party2tie]` |
>> **Party 3 Relation**|`INPUT[PartyRelation][inlineListSuggester:party3relation]`|
>> **Party 3 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group3), useLinks(partial)):party3tie]` |
>> **Party 4 Relation**|`INPUT[PartyRelation][inlineListSuggester:party4relation]`|
>> **Party 4 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group4), useLinks(partial)):party4tie]` |
>> **Party 5 Relation**|`INPUT[PartyRelation][inlineListSuggester:party5relation]`|
>> **Party 5 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group5), useLinks(partial)):party5tie]` |
>> **Party 6 Relation**|`INPUT[PartyRelation][inlineListSuggester:party6relation]`|
>> **Party 6 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group6), useLinks(partial)):party6tie]` |
>> **Traveling With** | `INPUT[inlineListSuggester(optionQuery(#Party AND !"z_Templates"), useLinks(partial)):whichparty]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ![[PlaceholderAudio.webm]]
> ###### Bio
>  |
> ---|---|
> **Pronounced** |  `INPUT[textArea:pronounced]` |
> **Aliases** | `INPUT[list:aliases]` |
> **Ancestry** | `INPUT[Ancestry][suggester:ancestry]` |
> **Heritage** | `INPUT[Heritage][suggester:heritage]` |
> **Gender** | `INPUT[Gender][:gender]` |
> **Age** | `INPUT[Age][:age]` |
> **Alignment** | `INPUT[Alignment][:alignment]` |
> ###### Info
>  |
> ---|---|
> **Languages** | `INPUT[Language][inlineListSuggester:language]` |
> **Occupations** | `INPUT[Occupation][inlineListSuggester:occupation]` |
> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
> **Religions** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):religion]` |
> **Owned Locations** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):ownedlocation]` |
> **Current Location** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |
> **Condition** | `INPUT[Condition][:condition]` |


# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!metadata|letters]- Letters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, quicknote AS Notes
> FROM "01 Campaign"
> WHERE econtains(holder, this.file.link) AND contains(tags, "Letter")
> SORT file.name ASC

> [!metadata|literature]- Literature
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, quicknote AS Notes
> FROM "01 Campaign"
> WHERE econtains(holder, this.file.link) AND contains(tags, "Literature")
> SORT file.name ASC

## Overview

## Overview
Araniss Velis is the enigmatic curator of the Sunken Archives, known to locals as “The Drowned Scholar.” Reclusive and deeply immersed in arcane scholarship, Araniss is rumored to be a former historian who vanished during the Rising and returned with cryptic knowledge of the abyss. They manage the vaults in near-total isolation, often speaking in fragmented recollections or poetic riddles. Their knowledge of pre-Rising texts and forbidden magics makes them a valuable but unsettling presence in Mangagoy's intellectual underground.

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