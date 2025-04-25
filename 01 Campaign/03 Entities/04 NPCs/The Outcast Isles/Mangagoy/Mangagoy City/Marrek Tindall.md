---
tags:
  - "#Character"
  - "#NPC"
art: 90 Assets/Images/NPCs/MarrekTindallSmall.webp
language:
  - Common
  - Draconic
organization:
  - "[[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Emberheart Traders]]"
ownedlocation:
  - "[[01 Campaign/01 World/08 Points of Interest/01 Factions/The Emberheart Traders/Emberheart Trade Office]]"
location:
  - "[[01 Campaign/01 World/08 Points of Interest/01 Factions/The Emberheart Traders/Emberheart Trade Office]]"
  - "[[The Ember Wharf]]"
  - "[[Mangagoy]]"
pronounced: MAH-rek TIN-dul
condition: Healthy
ancestry: Human
gender: Male
age: Mature Adult
alignment: Lawful Neutral
occupation:
  - Merchant
heritage: Versatile Heritage - Suli
ideals: |-
  - Stability through commerce
  - Prestige earned by control of the tide
flaws: |-
  - Overconfident in his legal immunity
  - Treats people like assets
fears: |-
  - Irrelevance in the political world of Mangagoy
  - Being outmaneuvered by nobles or pirates
mannerisms: |-
  - Flicks silver coin across his knuckles when thinking
  - Hums trade ballads from Kanda when alone
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
- Secure a full regional trade monopoly for the Emberheart Traders
- Use Mangagoy as leverage to ascend into the royal economic council of Kanda

## Acquaintances
- **Durgo One-Foot**: Smuggler contact turned competitor; uneasy détente
- **Commander Kraya Feldrum**: Investigating his cargo; hostile professional tension
- **Halden Reeve**: Longtime supplier of rare spices; mutual benefit
- **Zaetril**: Deals in enchanted shipping wards; respects his intellect but not his ethics

## Current Events
- Under scrutiny for vanishing trade crates during the last storm surge&#8203;:contentReference[oaicite:0]{index=0}
- Suspected of bribing two minor customs officials in Ashgate Market (unproven)

## History
- Once served as a royal appointee to the Merchant Guild of Boba before defecting during the Succession Accord, earning him both wealth and distrust.
- Founded Mangagoy’s current **Emberheart Traders branch** from scratch, forcing out the previous trade authority through legal maneuvering and silent buyouts.

## Notes
- Keeps a magically encrypted ledger bound in sharkskin beneath his desk.
- Has a standing contract with the Velvet Lantern for discreet meeting space rental.
- Rumored to have a spy among the Ashen Vanguard clerical staff.





