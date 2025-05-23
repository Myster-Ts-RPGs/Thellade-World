---
tags:
  - "#Character"
  - "#NPC"
  - "#TODO"
art: 90 Assets/Images/NPCs/CedricThalorSmall.webp
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
location:
  - "[[The Chancellor's Hall]]"
  - "[[Wardspire District]]"
  - "[[Kanda]]"
occupation:
  - Chancellor
  - Governor
  - Mayor
condition: Healthy
aliases:
  - High Chancellor
  - High Chancellor Thalor
  - High Chancellor Cedric Thalor
pronounced: SEH-drick THAY-lor
ancestry: Human
ideals: |-
  Stability above sentiment — A functioning city is a just city.
  Record is authority — If it is not documented, it does not exist.
  Grace is earned, not expected.
flaws: |-
  Slow to trust new information unless it matches pre-validated channels
  Incapable of expressing vulnerability or doubt in public spaces
  Dismissive of religious or arcane prophecy unless it impacts policy
fears: |-
  Internal collapse of record infrastructure
  Unchecked arcane influence disrupting legal systems
  That King Roderic will break his passive stance and reclaim authority suddenly
mannerisms: |-
  Always touches the side of his index finger to his temple before signing any document
  Speaks in complete, formally structured sentences, even in informal settings
  Wears a token ring on each hand—one for civil law, one for mercantile contract law
heritage: Human - Skilled
gender: Male
age: Elderly
alignment: Lawful Neutral
ownedlocation:
  - "[[The Chancellor's Hall]]"
religion:
  - "[[The Pactbound Flame]]"
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

> [!recite]- Introduction  
> The chamber hushes as a tall figure steps into the light—not armored, not robed, but dressed in stately, layered silks woven with threads of lawglyphs and ancestral record. His eyes scan without pause, reading the room like a ledger. **High Chancellor Cedric Thalor** does not smile.  
>  
> His voice carries weight without raising in pitch. It’s not charisma that silences the room, but inevitability. Here is the man who has signed orders that have changed islands. Who knows where every coin in Kanda sleeps.  
>  
> When he speaks, it is already understood that the next words spoken *by anyone else* will be a response.


High Chancellor Cedric Thalor is the civil and bureaucratic head of both [[Kanda City]] and the greater [[Kanda Isle]]. While King [[Roderic Vanthelion]] remains the ceremonial and sovereign monarch, real governance flows from Cedric’s offices in [[Wardspire District]], through the sprawling bureaus and contract halls of the Chancellor’s Hall. He is a man known not for ambition, but for precision. There are no rumors about Cedric—only policies, and the people who fail to meet them.

---


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

---

## Acquaintances
- **[[King Roderic Vanthelion]]** – Ceremonial monarch of Kanda; Thalor formally answers to him, though their relationship is shaped more by legal fiction than policy interference.
- **[[Bria Sarn]]** – Commander of [[Hunter’s Spur Outpost]]; reports critical Voidwatch security matters to Thalor through secure courier.
- - **[[Cindros Thorne]]** – Commander within [[The Order of the Ember Blades]]; sometimes cooperates with city directives during riot or martial deployments.
- - **[[Elenora Mistveil]]** – Corresponds with Thalor’s office as head of the [[Rift Scholars Collective]] regarding vault and relic containment policy.
- **[[Veyna Thaloris]]** – Distant kin and political wildcard; unknown to most, she serves the Infernal Covenant, raising questions about how Thalor has retained his sweeping power
- **[[Telvar Quent]]** – Archivist of [[The Sunken Reliquary Wing]]; his containment records are one of the few Thalor personally reviews quarterly.

---

## Current Events
- Recently blocked a Corsair-backed bill to create a “floating tribunal” on dock inspections  
- Has personally reviewed the sealed manifest containing the Greyash shipment, but has not yet commented  
- Working to expel an unregulated prophecy cult operating beneath [[Tallowgate]] tunnels  
- Is quietly observing the conflict between the Temple of Aurion and the Lunaran Radiant Temple over artifact custody rights

---

## History
- Born to the Thalor Steward line—minor nobles turned civic clerks following the collapse of the Royal Legates  
- Trained in dispute codification and civil architecture across multiple pre-Rising records recovered from Deepmere  
- Rose to prominence by solving the Merchant Guild tax collapse during the Floodgate Riots of 181 PR  
- Appointed High Chancellor by King Vanthelion in 193 PR, following the Quiet Declaration of civic autonomy

---

## Notes
- Known to memorize entire ledgers line-by-line to detect forged entries without referencing paper  
- Is one of only four officials in Kanda allowed direct override of Temple actions within city limits  
- Keeps two duplicate keyrings: one ceremonial, one for shadow archives  
- Rumored to have sealed the Deepdark Courtroom beneath the Hall—used once during the Leviathan Breach







