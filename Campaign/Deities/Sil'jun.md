---
tags:
  - "#Character"
  - "#NPC"
  - "#Deity"
art: z_Assets/Deities/Sil'jun.png
pronounced: SIL-JUN
aliases:
  - Hearth Mother
pronouns: She/Her
alignment: Neutral Good
deitypower: Greater God
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
>> **Occupations** | `INPUT[Occupation][inlineListSuggester:occupation]` |
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

Sil'jun, also known as the Hearth Mother, is a gentle yet powerful goddess who is often depicted as a matronly figure with flowing red hair and eyes that seem to hold an inner fire. She is the protector of families and homes, and it is said that the warmth of her embrace can soothe even the coldest of souls.

Sil'jun is known as the mother of all children, as it was her who breathed sentient life into the world. Creating all manners of ancestries from her own creation and from inspired help from the other gods.

Sil'jun is the goddess of life, and her followers believe that she watches over the natural cycle of birth, growth, decay, and rebirth. She is particularly revered by healers and midwives, who call upon her to guide them in their work.

As the goddess of transition, Sil'jun is also associated with the afterlife, and it is said that she guides the souls of the departed to their final resting place. She is a source of comfort for those who mourn, and her followers believe that her presence can bring peace to those who are facing their own mortality.

Despite her gentle nature, Sil'jun is not to be underestimated. She is known to summon great powers to defend her own, almost like a mother and her children.

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
### Example #1

> [!kirk|info] Prompt (Remove me)
> Unravel the ambitions and objectives that drive this deity forward. Explore their overarching goals, whether it involves maintaining cosmic balance, guiding mortals, seeking enlightenment, or pursuing other divine endeavors. Describe how their goals align with their principles and domain. Do they seek to expand their influence, uphold certain values, or achieve specific milestones? How do these goals shape their interactions with mortals, other deities, and the world at large?

## Acquaintances

> [!kirk|info] Prompt (Remove me)
Map out the network of relationships surrounding this deity. Detail their friendships, rivalries, and adversaries among other divine entities and characters. Describe how these relationships have shaped the deity's history, principles, and current actions. Furthermore, explore the organizations, influential figures, or powerful beings that worship or venerate this deity. How do these groups perceive the deity, and what roles do they play in the deity's sphere of influence? Detail the nature of these connections and how they impact the deity's interactions with mortals and other divine beings.

## Current Events

> [!kirk|info] Prompt (Remove me)
> Zoom into the present moment within the divine realm. Describe the current actions, involvements, or initiatives of this deity. Are they undertaking new endeavors, guiding mortals, or engaging in conflicts with other divine entities? Additionally, explore any recent events or developments that have affected the deity's influence or relationship with mortals or other deities. How are these current events shaping their standing within the pantheon or their interactions with worshippers?

## History

> [!kirk|info] Prompt (Remove me)
> Trace the divine lineage and historical narrative associated with this deity. Explore their origins, tales of creation, or myths that establish their presence in the pantheon. Detail significant events, achievements, or conflicts that have shaped their history. How have their interactions with mortals, other deities, or cosmic forces influenced their story? Describe any transformative moments, shifts in power, or turning points in their divine existence. How does their history contribute to their significance and role within the divine hierarchy?

## Notes

