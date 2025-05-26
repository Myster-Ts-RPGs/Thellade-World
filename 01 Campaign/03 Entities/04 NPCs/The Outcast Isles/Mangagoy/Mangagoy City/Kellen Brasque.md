---
tags:
  - "#Character"
  - "#NPC"
  - "#TODO"
art: 90 Assets/Images/NPCs/KellenBrasqueSmall.webp
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
condition: Healthy
location:
  - "[[Evercrate Exports]]"
  - "[[Ashgate Market]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]]"
ownedlocation:
  - "[[Evercrate Exports]]"
pronounced: KELL-ehn BRASK
ancestry: Human
gender: Male
age: Adult
occupation:
  - Merchant
alignment: True Neutral
ideals: |-
  “Everything has a story—even if I have to invent it.”
  Believes commerce is survival, especially in a city where truth is dangerous.
flaws: |-
  Quick to profit from mystery; has passed off cursed items as "rare heirlooms."
  Habitual embellisher—cannot help but dramatize events.
fears: |-
  Getting caught between criminal factions or cults operating through Mangagoy’s shadow trade.
  Losing his voice—he relies on charm and storytelling to survive.
mannerisms: |-
  Frequently polishes his display items while talking, never breaking eye contact.
  Rubs a chipped brass coin between his fingers when nervous.
  Whispers "fair coin, no curses" before every sale.
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
Kellen Brasque is a smooth-talking trinket merchant operating out of [[Evercrate Exports]] in [[Ashgate Market]]. Clad in layered indigo and ochre robes, he peddles curiosities with a silver tongue and a sharper instinct for danger. His cluttered stall overflows with charms, cracked idols, and dubious relics—each with a story he’s more than willing to embellish. Behind the merchant's charm lies a man walking the razor’s edge between commerce and cult activity, whispering “fair coin, no curses” as both shield and signature.


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
- Stay profitable in an unstable economy by tapping into adventurer and cult-related curiosity.
- Avoid entanglement with Mangagoy’s deeper criminal underworld despite trafficking in “dangerous curiosities.”
- Build a quiet reputation as the person who “can find anything—no questions asked.”


## Acquaintances
- [[Marrek Tindall]] — Kellen occasionally supplies the merchant prince with rare relics or street intel from Ashgate Market.
- [[Elira Sain]] — Has been warned multiple times by the Watch-Mage about selling unstable magical items without permits.
- [[Dael Mon]] — Occasionally intercepts goods bound for Kellen when conducting Ashen Vanguard inspections; they maintain a tense respect.


## Current Events
- Recently acquired a **bronze medallion** from a **red-robed stranger** (later identified as cult-linked) and traded it to [[Holin Barsh]] in [[Ember Wharf]].
- Sensed growing tension in magical items—sigils on some trinkets are starting to change after moonrises. Has begun hiding more potent items.
- Keeps a hidden dreamglass stash beneath his stall after noticing increased demand from Glowquarter buyers.
- Nervous about [[Effie]] and [[Hans Dane]] sniffing around—especially after seeing the Ashen Vanguard more active than usual in the market.


## History
- Grew up in the [[Ashgate Market]] among dockworkers and salvage crews, initially working as a “finder” for shipbreakers.
- Transitioned to trinket selling after discovering a cursed idol and managing to flip it for five times its weight in silver.
- Worked briefly under the Emberheart Traders, but left after witnessing one too many disappearances linked to “bad cargo.”
- Since then, he’s remained strictly independent, using [[Evercrate Exports]] as his cover—offloading questionably sourced relics under the guise of historical salvage.


## Notes

- Operates openly from [[Evercrate Exports]] but conducts his high-value trades at night in the side alley between the market and the Glowquarter causeway.
- Keeps a coded ledger hidden inside a hollowed-out “drift idol” shaped like a coiled serpent—can be found if someone succeeds at a DC 24 Perception or Thievery check.
- Will refuse to trade in anything marked by Asmodeus, not out of morality—but because _“every deal with the devil burns the buyer... and the broker.”_
- Would be a valuable informant if pressured—especially if Hans reminds him who currently holds his ledger's cipher.



