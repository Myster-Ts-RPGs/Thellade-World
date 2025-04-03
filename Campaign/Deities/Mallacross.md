---
tags:
  - "#Character"
  - "#NPC"
  - "#Deity"
art: z_Assets/Deities/Mallacross.png
aliases:
  - Harbinger of Death
pronouns: He/Him
alignment: Lawful Neutral
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



## History



## Notes

Mallacross, the God of Death, is a powerful and feared figure in the pantheon of deities. He is often depicted as a tall, gaunt figure. Instead of a living face, Mallacross has that of a skull, with dark void eyes that seem to penetrate the soul. Mallacross is a god of transition, guiding souls from the realm of the living to the afterlife when no ritual of death has occurred such as those of the [[Sil'jun|Hearth Mother]].

Whilst the transition with Mallacross is less pleasant for the souls than it would be with a funeral, the souls do eventually find peace. Especially when Mallacross and his followers work against necromancy and the defiance of death. While some may view him as a harbinger of doom, he is also seen as a necessary force that helps maintain balance in the world.

Mallacross is not cruel or sadistic, but he is stern and unyielding. He understands that death is a natural part of life, and he believes that all things must eventually return to the earth. Mallacross above all else maintains the cycle of life and sees many forms of necromancy as evil. Mallacross is known to turn a blind eye towards healing and resurrection magic. However, the reasoning behind it must be sound and only makes exceptions for those who have a higher purpose and whose work is not done in the world of the living. He is revered by many, particularly those who work with the dead, such as funeral directors, morticians, and grave keepers. Mallacross is also invoked by those who seek to confront their fears and come to terms with their own mortality.

The worship of Mallacross is often associated with funerary rites and ancestor worship. Many cultures hold festivals and ceremonies in his honour, and it is believed that he can be appeased with offerings of food, drink, and other gifts. While he is not a malevolent deity, those who anger him may find themselves plagued by nightmares, illness, or other misfortunes. Overall, Mallacross is a complex figure whose influence is felt by all who live and die in the world.