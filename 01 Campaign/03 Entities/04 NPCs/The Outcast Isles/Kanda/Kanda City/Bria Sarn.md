---
tags:
  - "#Character"
  - "#NPC"
  - "#Canon"
art: 90 Assets/Images/NPCs/BriaSarnSmall.webp
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
pronounced: BREE-uh SARN
aliases:
  - Captain Bria Sarn
  - Spinewatcher
ancestry: Human
heritage: Human - Battle-Trained
gender: Female
age: Mature Adult
alignment: Lawful Neutral
occupation:
  - Commander
organization:
  - "[[The Voidscourge Hunters]]"
ownedlocation:
  - "[[Hunter's Spur Outpost]]"
location:
  - "[[Hunter's Spur Outpost]]"
  - "[[Stonebrace Docks]]"
  - "[[Kanda]]"
condition: Healthy
ideals: |-
  Discipline above all — Without order, the sea wins.

  Containment is protection — What slips through the cracks drowns nations.

  Truth in silence — Those who speak less reveal less.
flaws: |-
  Discipline above all — Without order, the sea wins.

  Containment is protection — What slips through the cracks drowns nations.

  Truth in silence — Those who speak less reveal less.
fears: |-
  Losing control of a containment breach under her command.

  Becoming mentally compromised due to extended exposure to void residue.

  Her surviving squad from the Rift Bloom Crisis learning what was buried to secure their extraction.
mannerisms: |-
  Raps her bracer against steel railings to signal readiness rather than speaking.

  Maintains a hand-written operations log, which she guards obsessively.

  Often stares past the person she’s speaking to, as if watching distant data overlays only she can see.
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

Commander Bria Sarn is the ranking officer at [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Voidscourge Hunters/Hunter's Spur Outpost|Hunter's Spur Outpost]], appointed by the Voidscourge command structure to oversee all marine anomaly interdiction efforts in [[Kanda]]’s southern bay. Her right arm is sealed in a bracer etched with null-runes, a containment necessity after an encounter with a Rift Bloom left her permanently marked. Bria is known for her surgical tactical discipline, deeply ingrained respect for operational chain-of-command, and her absolute intolerance for breach protocol violations. To her subordinates, she is the embodiment of survival through control—and most would follow her into a planar fracture without question.


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
- Prevent a second breach like the one that occurred in 201 PR.
- Secure a permanent inland archive for class-four void fragments.
- Find proof that the southern anomalies are being orchestrated—not spontaneous.


## Acquaintances
- [[Zarek Tellos]] — Operative of [[The Blackwake Corsairs]] stationed nearby at [[01 Campaign/01 World/08 Points of Interest/03 Tavern or Inn/Outcast Isles/Kanda Isles/Kanda/The Mooring Flagon]]. Sarn distrusts him, but uses his dockside network for shipment flagging.
- [[Cindros Thorne]] — Soldier under [[The Order of the Ember Blades]]. Shared command overlap during the Leviathan Breach Crisis. Professional respect, distant.


## Current Events



## History
Commander Bria Sarn began her career in the Kandan coastal defense flotilla but was transferred to the Voidscourge program following a display of initiative during a border skirmish against tidewalk aberrants. She was promoted to full command during the **Leviathan Breach Crisis (198–200 PR)** when three squads were lost beneath the bay and she emerged the sole survivor of her wing—her right arm mutated by void exposure but stabilized through early null-bracer prototype technology. She has since become a decorated isolation tactician, known for sealing threats before higher offices even acknowledge them.


## Notes

- A plaque at the outpost’s lower deck reads: _"What we see, dies in silence."_ She wrote it herself.
- Has privately petitioned the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Rift Scholars Collective|Rift Scholars]] for permission to seal parts of Kanda Bay under interdiction status—twice denied.
- Refers to the void not as “anomaly” or “enemy,” but as “the remainder.” When pressed, she refuses to clarify.

### Dialogue: Captain Bria Sarn — Upon the Party Delivering the Crate to Hunter’s Spur Outpost

#### Initial Reception (Professional, Controlled)

> “Drop it there. Slowly. If that seal hums again, this room becomes a kill zone.”

> “You were carrying this aboard a civilian manifest? And breathing? Either you’re lucky... or deeply stupid.”

> “My team flagged residue consistent with deep-verse interference. From the pattern, I’d wager second binding—maybe fractured. We don’t get that kind of stink unless something escaped containment.”

#### If the Party Is Defensive

> “Don’t waste my time with ‘we didn’t know.’ The damn crate *sings* if you stand close enough. My dockhands nearly blacked out.”

> “The Sea Vultures wouldn’t even move this sort of thing, and they traffic abyssal marrow on festival days.”

> “If you want this covered up, I’m not your handler. I’m the one who calls for lockdown when vault seals fracture.”

#### If the Party Admits They Brought It for Safety

> “Then you’re smarter than most smugglers who roll through here with cursed heirlooms and echo-shards wrapped in tarps.”

> “You’ve got maybe a day before this thing starts attracting the wrong kind of attention. Things that hum to it. Things that remember it.”

> “I’ll put it in Sub-Vault Four. Nothing goes in or out without my glyph and three confirmations. You’ll get one.”

#### If the Party Mentions Greyash

> “Greyash? Tch. That coward hasn't touched our docks in weeks. He got spooked after we blocked a manifest from Lambaro with similar residue.”

> “If your shipment's tied to him, he’s either setting you up, or burning the rest of his trail behind him. Either way, you’re his cover fire now.”

#### If the Party Asks for Her Help

> “Help? I’ll keep the crate locked and flagged, but I don’t have the luxury of chasing phantoms. My charter is clear: containment, not crusade.”

> “You want a lead? Follow the echo. These things resonate. It’ll pull you toward the next verse... or the next grave.”

#### Parting Warning

> “One last thing: if it pulses again, *don’t open it*. Don’t touch it. And don’t pray near it.”

> “Echoes like this? They don’t just listen. They *remember* who speaks.”


