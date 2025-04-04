---
tags:
  - "#Character"
  - "#NPC"
art: z_Assets/Misc/PlaceholderImage.png
language:
  - Common
  - Draconic
pronounced: ZER-ath EM-bull
ancestry: Dragonborn
gender: Female
pronouns: She/Her
age: Young Adult
sexuality: Bisexual
alignment: True Neutral
occupation:
  - Merchant
location:
  - "[[Kolberdon]]"
  - "[[Homestead General Store]]"
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

Zeraath Embul is a diligent and capable dragonborn who works as Lyle Underbough's assistant at the Homestead General Store in Kolberdon. Her imposing presence is balanced by her friendly nature and exceptional organizational skills, making her an invaluable asset to the store. Zeraath Embul's sharp mind and strong work ethic ensure that the store runs smoothly and efficiently.

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

Zaraath's primary goal is to support the success of the Homestead General Store and to learn all she can about running a business. She aspires to one day open her own shop, where she can combine her love for commerce with her interest in unique and exotic goods.

## Acquaintances

1. Lyle Underbough - Her employer and mentor, who trusts her implicitly and values her contributions to the store.
2. Thrain Ironhide - A blacksmith in Kolberdon who often shares tales of his travels with Zaraath and supplies the store with metal goods.
3. Elara Brightwater - A scholar who occasionally seeks out rare items at the store and has formed a friendship with Zaraath over shared interests in unusual artifacts.
4. Garrick "The Snake" Voss - The ruthless leader of the local criminal syndicate who has forced Zaraath into stealing from the store to protect her family.

## Current Events

Despite her outward dedication to the store, Zeraath Embul has recently begun stealing from the Homestead General Store. She is driven by a desperate need to pay off a substantial debt to a local criminal syndicate led by a ruthless figure known as Garrick "The Snake" Voss. This syndicate has threatened her family, who live nearby in Kolberdon, demanding payment for protection that Zeraath Embul had unwittingly become entangled in. Zeraath Embul feels trapped between her loyalty to Lyle and the urgent need to protect her loved ones, leading her to make increasingly risky decisions.

## History

Zeraath Embul hails from a distant land, where she grew up in a family of traders and merchants. From a young age, she was immersed in the world of commerce, learning the intricacies of trade and the value of building strong relationships. Seeking new opportunities and adventures, Zeraath Embul traveled to Kolberdon, where she found work at the Homestead General Store. Her dedication and hard work quickly earned her Lyle's trust and respect. Zeraath Embul has since become an integral part of the store's operations. However, her life took a dark turn when her family became entangled with Garrick "The Snake" Voss's local criminal syndicate. Threatened with harm to her loved ones if she did not comply, Zeraath Embul began stealing from the store to settle the dangerous debt and protect her family from the ruthless criminals.

## Notes





