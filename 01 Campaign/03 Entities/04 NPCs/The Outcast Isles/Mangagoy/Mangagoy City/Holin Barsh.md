---
tags:
  - "#Character"
  - "#NPC"
  - "#Canon"
art: 90 Assets/Images/NPCs/HolinBarshSmall.webp
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
ownedlocation:
  - "[[The Rivet & Rune]]"
location:
  - "[[The Rivet & Rune]]"
  - "[[The Ember Wharf]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]]"
condition: Healthy
pronounced: HOH-lin BARSH
ancestry: Dwarf
heritage: Dwarf - Forge
gender: Male
age: Mature Adult
alignment: Lawful Neutral
occupation:
  - Blacksmith
ideals: |-
  “Metal remembers. You just have to listen between the hammerstrikes.”
  Believes divine craftsmanship is sacred—even when the gods themselves fall silent.
flaws: |-
  Secretive to a fault; often withholds information if he suspects greater danger.
  Resents authority that demands loyalty without earning trust.
fears: |-
  The return of Pre-Rising divine weaponry into the wrong hands.
  Becoming a pawn in factional wars over relics he was asked to safeguard.
mannerisms: |-
  Frequently mutters smithing proverbs when thinking.
  Has a ritual of tapping relics three times with a tuning chisel before working.
  Stares through people when assessing truth—like he’s measuring them for a coffin plate.
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
Holin Barsh is a reclusive dwarven relic-smith working out of [[The Rivet & Rune]] in [[The Ember Wharf]]. With a soot-streaked beard and volcanic-tempered armor, he forges in near silence—known more for his work than his words. Though not officially sanctioned, his skill with divine relics and ward-bound metalwork is unmatched in Mangagoy. Rumors claim his forge can coax memory from metal and awaken echoes long buried. Holin trusts few, speaks less, but sees everything.


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
- Uncover and preserve the function of Pre-Rising divine relics before cults can corrupt them.
- Avoid entanglement in political or infernal struggles—but protect Mangagoy’s people from their fallout.
- Leave behind a vault of “sealed truths” for the next generation of wardens and scholars.

## Acquaintances
- [[Vaelis Duskwhisper]] — Occasional consultant for reforging blessed alloys used in ritual wards. Quiet mutual respect.
- [[Commander Kraya Feldrum]] — Has refused her attempts to conscript him as a warforger for the Ashen Vanguard.
- [[Zareth Korrath]] — Assisted in repairing sanctuary plates within the Temple of Aurion; deeply respects the Sunwarden’s burden.


## Current Events
- Took possession of a **cracked sunburst medallion** traded by a dreamglass seller in [[Ashgate Market]] (from Hans' lead).
- Has not displayed the medallion publicly—it now rests in a locked rune-coffer behind his forge, which glows faintly during moonrise.
- Investigating an unknown material inlaid in the medallion that resonates with both divine and abyssal leylines.
- Suspects the object was not crafted recently, but **restored or unearthed from a sealed vault.**


## History
- Trained in relic-mending beneath the volcanic forges of the Montakumu Range before migrating to Mangagoy after the Rising.
- One of the few surviving smiths capable of working with **aethersteel**, **sun-iron**, and **glyph-bound silver**.
- Founded **[[The Rivet & Rune]]** as both smithy and quiet repository for tools too dangerous to destroy.
- Has reforged wardplates for temples and vaults, though never officially licensed by the Kanda Guild Registry.

## Notes
- Keeps detailed, ciphered blueprints of all major relics he handles—hidden behind the false wall in his anvil altar.
- His cat, _Scoria_, is trained to fetch tools—and bite anyone who opens the forge lockbox without his command word.
- Will refuse to hand over the medallion without a divine or arcane proof that the party means to guard, not exploit, it.
- The medallion responds subtly to Holin’s forge—it vibrated slightly when the Embermoon last crested the sky.




