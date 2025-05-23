---
tags:
  - "#Character"
  - "#NPC"
  - "#TODO"
art: 90 Assets/Images/NPCs/SeralyneVirethSmall.webp
language:
  - Common
aliases:
  - High Oracle Seralyne Vireth
  - The High Oracle
  - High Oracle Vireth
ancestry: Elf
heritage: Elf - Ancient
organization:
  - "[[The Dawnbringers of Lunara]]"
religion:
  - "[[The Moonwake Path]]"
ownedlocation:
  - "[[The Radiant Temple]]"
location:
  - "[[The Radiant Temple]]"
  - "[[Tallowgate]]"
  - "[[Kanda]]"
condition: Healthy
occupation:
  - Priest
gender: Female
age: Mature Adult
alignment: Neutral Good
pronounced: SEHR-uh-linn VEER-eth
ideals: |-
  Clarity must be earned through shadow
  Prophecy is not to dictate—but to warn
  Balance between light and obscurity is sacred
flaws: |-
  Often too vague for urgent civic needs
  Places signs and symbols above practical logistics
  Refuses to interpret prophecy for profit or politics—even when pressured
fears: |-
  That her visions will stop when most needed
  That she has already missed a vital sign she was meant to see
  That Lunara’s silence is growing
mannerisms: |-
  Tends to pause mid-sentence, listening for echoes only she can hear
  Moves in half-steps when walking temple halls, as if following unseen markers
  Maintains a precise rhythm of daily rituals—even during citywide crisis
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

> [!infobox|wsmall]+
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

> [!recite]- Introduction  
> A hush falls over the vaulted sanctuary as **High Oracle Seralyne Vireth** descends the moon-carved steps, her eyes unfocused and distant. Light dances from her silver-threaded robes like a second aura—pale and slow, as if reacting to unseen tides. She does not look at you.  
>  
> She does not need to.  
>  
> Around her neck hangs a pendant etched with a fractured crescent—symbol of Lunara’s path made imperfect by the truths it reveals. As she speaks, her voice carries the resonance of one who listens to dreams more intently than waking words.  
>  
> And in that moment, you know: she has already seen the path you walked to reach her… and the one you hope to avoid.

## Overview

**High Oracle Seralyne Vireth** is the spiritual head of the **Dawnbringers of Lunara** in Kanda and presiding oracle of [[The Radiant Temple]] in [[Tallowgate]]. She is both revered and feared—seen as a divine interpreter of Lunara’s will, capable of glimpsing past and future as seamlessly as she walks the present. Seralyne speaks sparingly, favoring layered prophecy and symbolic vision over direct command. Yet when she does act, entire districts adjust their course.

---

## Acquaintances
- [[Malira Fenj]] – regarded as an unstable, possibly necessary dream-echo bearer  
- [[Alenwyn Duskforge]] – philosophical rival from the Temple of Aurion  
- [[High Chancellor Cedric Thalor]] – maintains formal distance; has denied temple funding petitions  
- [[Zakka]] – a curiosity; Seralyne permits his presence but refuses to explain why

---

## Current Events

- The Radiant Temple’s moon glyph began pulsing irregularly after the arrival of the relic aboard the *Emberwake*  
- Seralyne has withdrawn from public ceremony, claiming “the veil is flexing”  
- Multiple Dawnbringers have independently recorded dreams matching elements of the party’s recent visions  
- The Oracle has requested a chamber sealed with both Lunaran and Aurionic wards—unprecedented and alarming

---

## History

- Trained in the Pale Abbey during the final century of isolation  
- Known to have survived the shattering of the previous Oracle’s mind during the Ashwake Tide  
- Proclaimed High Oracle in 191 PR after predicting the collapse of a leyline beneath Boba six days before it occurred  
- Authored “The Third Veil,” a text banned by the Arcane Wardens but preserved within The Radiant Temple

---

## Notes

- Seralyne has not left [[Tallowgate]] in 18 years  
- She receives visitors only on moons aligned to her divination cycle—unless overridden by temple law  
- Has once prophesied the return of a “Moonbound King” tied to a false verse  
- Rumored to have direct memory of visions she received before her own birth—though no record confirms this


