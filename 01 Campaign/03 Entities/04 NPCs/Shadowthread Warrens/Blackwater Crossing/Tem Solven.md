---
tags:
  - "#Character"
  - "#NPC"
  - "#TODO"
art: 90 Assets/Images/Misc/PlaceholderImage.png
language:
  - Common
party1relation:
  - Unmet
party2relation:
  - Unmet
party3relation:
  - Unmet
party4relation:
  - Unmet
party5relation:
  - Unmet
party6relation:
  - Unmet
pronounced: TEHM SAWL-ven
location:
  - "[[Blackwater Crossing]]"
  - "[[Shadowthread Warrens]]"
condition: Healthy
ancestry: Human
gender: Female
aliases:
  - Knight-Archivist Tem Solven
ideals: |-
  Memory is sacred. Flame is the record keeper.

  Believes that divine truth lies not in scripture, but in the remnants of what fire fails to consume
flaws: |-
  Struggles to confront trauma directly—deflects with meticulous scholarly ritual

  Holds prejudice against Lunaran archivists, whom she views as “dreamers who erase rather than remember”
fears: |-
  That the Burned Temple beneath the Crossing is no longer sanctified

  That Solvane’s memory will be extinguished from the world if her shrine decays entirely
mannerisms: |-
  Draws flame sigils with her fingertip in dust or ash when deep in thought

  Will not speak the names of gods she does not serve aloud unless ritually prepared

  Flinches visibly when unnatural cold is present—reactive trauma from the blaze that consumed Solvane’s temple
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
- Recover and transcribe lost hymns of Solvane found etched into stone near leyline fractures
- Unlock the memory-sealed inner sanctum believed buried beneath Blackwater Crossing’s foundation
- Determine whether the heat anomalies in the deeper tunnels reflect a Seal’s inversion—i.e., divine barriers overheating under abyssal pressure


## Acquaintances



## Current Events



## History



## Notes
- Was chosen by flame-right rather than ordination—her left hand still bears the ceremonial brand
- Her knowledge of ablation glyphs used to contain Pre-Rising spiritual entities may become pivotal in preventing a second seal failure
- Keeps a journal encrypted in mirrored Draconic cipher, only readable through an obsidian locket warmed by consecrated fire




