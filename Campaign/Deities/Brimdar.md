---
tags:
  - "#Character"
  - "#NPC"
  - "#Deity"
art: z_Assets/Deities/Brimdar.png
pronounced: BRIM-dar
aliases:
  - The Creator
  - The Dawnhammer
pronouns: He/Him
alignment: True Neutral
deitypower: Greater God
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
>> **Pronouns** | `INPUT[Pronouns][:pronouns]` |
>> **Alignment** | `INPUT[Alignment][:alignment]` |
>
>> [!metadata|metadataoption]- Deity Info
>> #### Deity Info
>>  |
>>---|---|
>> **Ideals** | `INPUT[textArea:ideals]` |
>> **Flaws** | `INPUT[textArea:flaws]` |
>> **Fears** |  `INPUT[textArea:fears]` |
>> **Mannerisms** |  `INPUT[textArea:mannerisms]` |
>> **Power** | `INPUT[DeityPower][:deitypower]` |
>> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
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
> **Pronouns** | `VIEW[{pronouns}]` |
> **Alignment** | `VIEW[{alignment}]` |
> ###### Info
>  |
> ---|---|
> **Power** | `VIEW[{deitypower}]` |
> **Owned Locations** | `VIEW[{ownedlocation}][link]` |
> **Current Location** | `VIEW[{location}][link]` |
> **Condition** | `VIEW[{condition}]` |


# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!metadata|organizations]- Related Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "Campaign"
> WHERE econtains(worship, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC

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



## Acquaintances



## Current Events



## History (WIP)

Brimdar, also known as "The Creator" or "The Dawnhammer" is the patron deity of dwarves. Brimdar is revered for his mastery of all forms of crafting and is said to have crafted the first dwarf and all the mountains, caves, and mines that dwarves call home.

Brimdar is depicted as a bearded dwarf with a muscular build and wearing a blacksmith's apron. He is often shown with a hammer in one hand and a chisel in the other, symbolizing his craftmanship and shaping of the world.

According to legend, Brimdar created the dwarves as a gift to the world, imbuing them with his love of crafting and his desire to shape the world. He also created the first forge, which he used to craft all manner of wondrous and magnificent things, including weapons, tools, and works of art.

As the dwarves became more numerous and spread out across the world, they built shrines and temples to Brimdar, whilst spreading his influence and bringing all manner of ancestries under Brimdar. Many who now ask for his blessing and guidance in their crafting endeavours. Brimdar would often appear to his followers in visions, providing them with inspiration and guidance for their projects.

Despite his benevolent nature, Brimdar was also a fierce defender of his followers and their creations. He was said to have fought against evil gods and monsters who threatened dwarves, their underground homes and their crafts, wielding his mighty hammer with fearsome power.

To this day, many people still worship Brimdar and offer prayers and offerings to him before beginning any new crafting project. They believe that by seeking his blessing and guidance, they can ensure the success and quality of their work and that their creations will endure for generations to come.

## Notes

