---
tags:
  - "#Character"
  - "#NPC"
  - "#Canon"
art: 90 Assets/Images/NPCs/DornalSyleSmall.png
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
pronounced: VAWST HAD-rih-nell
ancestry: Human
heritage: Human - Warden
gender: Male
age: Mature Adult
alignment: Chaotic Neutral
occupation:
  - Priest
condition: Healthy
aliases:
  - Dornal Syle
ideals: |-
  “Truth is perception shaped by belief.”
  Knowledge should be bent toward release, not control.
  Death is not the end—it is a signal.
flaws: |-
  Believes most people secretly want to be manipulated “for their own good.”
  Utterly detached from consequences of his actions.
  Overconfident in the subtlety of his rituals.
fears: |-
  Being truly seen—either magically or emotionally.
  Failing the sacrificial timetable set by the Council of Bone.
  That the real Dornal Syle might escape and disrupt the operation.
mannerisms: |-
  Speaks in three-part affirmations (e.g., “Dream, Dust, and Direction.”)
  Avoids direct confrontation or eye contact unless casting.
  Ritualistically smells each cup of tea before drinking.
  Has a nervous tic of tapping his left boot when near leyline forks.
organization:
  - "[[The Rootcoil Smugglers]]"
religion:
  - "[[The Throneless Wake]]"
location:
  - "[[Daggerfall Hollow]]"
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

> Currently impersonating [[Dornal Syle]], a missing Arcane Warden. True identity confirmed through magical residue and Rootcoil records.

### Description
A gaunt man of indeterminate age, eyes always slightly glazed as if mid-revelation. Wore a violet cloak weathered by travel, frayed at the hem. His voice is gentle, deliberate, and thick with affectation—he speaks in reverent tones with unnatural stillness. Commonly seen with a broken prayer wheel, fungus-etched amulets, and a pack of herbal tinctures laced with hallucinogenic spores. Those near him often recall his presence as “dreamlike” or “softly disorienting.”

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


### Goals
- Complete the scheduled offering of [[Dornal Syle]] during the new moon of Deimos (09 Dawnmarch 212 PR).
- Ensure the mouth of [[01 Campaign/03 Entities/02c Orcus' Lieutenants/Xal'Zul|Xal’Zul]] at the [[01 Campaign/01 World/08 Points of Interest/11 Magical/Outcast Isles/The Black Echo Vault|Black Echo Vault]] opens unimpeded.
- Leave no traceable links to the Rootcoil Smuggler Cell in [[Blackwater Crossing]].

### Current Events
- Last seen on a small boat heading east from [[Blackwater Crossing]] toward [[Daggerfall Hollow]].
- Left behind psionically tuned glyph anchors and spore residue in [[Marnie of the Mycelium]]’s home.
- Is in possession of a bone-carved leyline shard that resonates with forked energy paths.
- Likely embedded with other Rootcoil agents already operating within or near the Hollow.

### History
- Constructed the “Dornal Syle” identity from a set of corrupted death records tied to an Arcane Warden listed as missing.
- Replaced the real [[Dornal Syle]] after capturing him at the [[Thornhill]] digsite during a leyline anomaly survey.
- Implanted false memories and altered local records (registry, inn logs) to support the alias.
- Known to specialize in “soft abductions”—magical manipulations that leave victims unaware they’ve been compromised.
- Coordinated with Rootcoil agents to remove tracking gear from his mount and seed psionic glyphs beneath [[Blackwater Chapel]].

### Notes
- Carries a **Sigil of False Receipt** to manipulate courier routes and arcane beacon trails.
- Fungal residue found matches **sporehallucin** strains native to the Mycelium Depths, not the surface.
- Identified by [[Marnie]] of the Mycelium under compulsion; later confirmed through magical recall.
- His behavior and signature phrasing have been catalogued by both [[Vezer]] and [[Felzik]].
- Possesses a **sacrificial tally token** hidden in his left boot—evidence linking him directly to the [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Black Sepulcher|Black Sepulcher]].



## 🕷️ Dornal Syle – Rootcoil Acolyte

**Apparent Role**: Traveling hedge priest of Lunara (false identity)  
**True Affiliation**: [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Black Sepulcher|The Black Sepulcher]] – Rootcoil Smuggler Cell  
**Threat Level**: Moderate (CR 2 equivalent)  
**Current Status**: Last seen departing Blackwater Crossing on boat, headed east toward Daggerfall Hollow

---

### 🧾 Public Persona

- Wore a weathered violet cloak, carried a broken prayer wheel (claimed [[The Moonwake Path]] faith - [[Lunara]])
    
- Introduced himself as a **wandering dream-seer**, offering blessings and herbal insight
    
- Kept a traveling altar with fungus-etched charms and bottled “vision spores”
    

> _Town records confirm he signed the Border Registry as “Dornal Syle, itinerant theologian.”_  
> _He stayed two nights at the Hollow Hearth Inn and was seen speaking with Marnie and a half-blind courier supervisor._

---

### 🧪 Real Identity

- **True name unknown**—Dornal Syle is a false persona constructed from fragmented death records
    
- Operative of the **Rootcoil Smuggler Cell**, trained in **memory seeding**, **psionic scripting**, and **ritual misdirection**
    
- Specializes in “soft abductions”—cases where victims don’t realize they’ve been manipulated
    

---

### 🪄 Abilities

- **Arcane Trickery**: Uses minor illusion, disguise self, and a ritual-bound _Echoed Memory Seed_ spell
    
- **Sigil Binding**: Carries a bone-carved focus shard tuned to a leyline fork near Daggerfall Hollow
    
- **Poison Knowledge**: Expert in fungal extracts, often uses trace amounts of sporehallucin in calming teas
    

---

### 🧠 Behavior Notes

- Speaks slowly, with reverent pauses—intended to build trust
    
- Always uses **three-part affirmations** to establish authority (e.g., _“Truth, Dream, and Purpose guide us”_)
    
- Avoids speaking directly about Orcus, but carries a **sacrificial tally token** hidden inside his left boot (unidentified unless searched)
    

---

### 🧩 Clues to His Involvement

- **Marnie’s kettle** contains a residue of violet-bloom spores (not native to region)
    
- A **hidden glyph** under her mushroom shelf acts as a memory anchor—tuned to Dornal’s focus
    
- Town stable records show he **paid extra to remove his horse’s tracking bridle**, uncommon among pilgrims

## Where he got the name
### ✅ Verified Canonical Details

- **Name**: Dornal Syle
    
- **Affiliation**: _Arcane Wardens_
    
- **Mentioned Context**:
    
    > “Dornal Syle, former junior Warden assigned to the [[Thornhill]] dig, vanished two months ago while surveying leyline disruptions near the lower cavern shelf. His journal was recovered near a collapsed tunnel but contained only fragments—some mentioning the 'Watcher in the Deep' and references to broken sigils."
    
- **What Actually Happened**:
    
    > Syle was captured (He was decypering too much information about [[Xal'Zul]] and [[The Black Sepulcher]] wanted him out of the way) by members of the Rootcoil Smuggle cell at the Thornhill dig. He is currently being held in isolation in Daggerfall Hollow to be used as a sacrifice to release the mouth of [[Xal'Zul]] at - [[Daggerfall Hollow]] in [[the Deep Dark]] - [[The Black Echo Vault]]  - 6th Verse. This is scheduled to occur on 09 Dawnmarch 212 PR when the moon Deimos is new (yes I know we are underground but lunar phases are still a thing).
---

### 📌 Summary of Key Points

- **Role**: Junior member of the Arcane Wardens' team at the Thornhill excavation site.
    
- **Disappearance**: Went missing during a leyline survey.
    
- **Evidence Found**: His partially burned or water-damaged journal contained cryptic references—some interpretable as linked to abyssal influence or planar bleed.
- **What Party May Remember with Recall Knowledge**: The name may strike familiarity from their work at the Thornhill excavation site, but unless they roll a critical success on a DC 18 check, they will not have heard about his journal.