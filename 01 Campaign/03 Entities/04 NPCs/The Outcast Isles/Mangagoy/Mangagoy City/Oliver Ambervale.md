---
tags:
  - "#Character"
  - "#NPC"
  - "#TODO"
art: 90 Assets/Images/NPCs/OliverAmbervaleSmall.webp
language:
  - Common
location:
  - "[[Mangagoy]]"
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
Oliver Ambervale is a catfolk noble of House Ambervale, known more for his political maneuvering than battlefield presence. His public support of the Eternal Concord masks deeper concerns about the rising tide of cult influence. Adoptive father to Tian Ling, he walks a careful line between patronage and pragmatic withdrawal from court affairs.



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


### 🗣️ Dialogue — Lord Oliver Ambervale, After the Attack

> _Setting: The party arrives breathless at the threshold of the Ambervale Estate following the ambush tied to Kelthorne’s agents. Guards are already repositioning. The air smells of burned parchment and bloodied silk. Lord Oliver Ambervale stands in the grand entry hall, coat unfastened, a bloodied bandage visible beneath one shoulder. Despite the chaos, his posture is composed—barely._

---

**Lord Ambervale (voice low, sharp):**  
> "You’re late—but not too late, thank the Dawn."  
> "They came not for gold… not even for leverage. They came to erase something."

**(He turns slightly, revealing a scorched ledger in his hand.)**

**Lord Ambervale:**  
> "Kelthorne’s rot runs deeper than ink. He’s shifting the civic archive—rewriting my estate’s holdings by flame and proxy."

**(He looks up at the party.)**

**Lord Ambervale:**  
> "If you hadn’t drawn them off when you did, I’d be ash in my study, and every route to Beacon Vault 4 lost to fire."

---

**Optional if Kothar is present and active:**  
**Lord Ambervale (glancing toward Kothar):**  
> "You… I’ve seen your face drawn in margin glyphs—something older than this estate, older than my house’s claim. Who are you really, scaled one?"

---

**Lord Ambervale (resolute, gripping the edge of a scorched table):**  
> "This was no robbery. This was a silencing."  
> "I won’t be silenced. Not by nobles who war with ink while hiding behind shadows."  
> "So tell me—will you help me finish this ledger… or must I write my vengeance alone?"


### 🗣️ Dialogue — Lord Oliver Ambervale Explains the Letter to Tian

**Lord Ambervale (steady, but voice tinged with regret):**  
> "Tian… the letter I sent you, it was never meant to move through open channels. Not in this city. Not with Kelthorne watching every ink-stroke."

**(He retrieves a copy from a concealed drawer—creases in the parchment worn by folding and refolding. He taps the second paragraph.)**

**Lord Ambervale:**  
> "That phrase—_‘our debts remain entwined in ash and time’_—wasn’t about estate finance. It referenced the Emberwell Pact... the unrecorded accord signed between House Ambervale and the Temple of Aurion during the Second Dawn. Only those who knew the pact would understand the weight behind that line."

**(He traces the margin with his finger.)**

**Lord Ambervale:**  
> "I also embedded a pattern in the way the stanzas were structured—triadic meter. Three words, pause, three lines. It's the cadence used by my great-grandfather when communicating with resistance allies during the Charter Purge. It means: _I am under threat but cannot name my enemy._"

**(He looks directly at Tian now.)**

**Lord Ambervale:**  
> "And the seal... the ink was mixed with dawnsap resin—reactive to leylight. If you'd read it in the glow of a civic beacon, you'd have seen the true cipher beneath. A map fragment. Leading here."

**(He lowers his voice, urgency breaking through his practiced tone.)**

**Lord Ambervale:**  
> "I knew Kelthorne was moving on me. I didn't know when. But you were the only one I trusted to read between the lines. Because we both know what truth costs in Mangagoy."


## 📜 Pre-Rising Relics & Documents Stored in Lord Ambervale’s Vault

### 🔐 Location: Ambervale Estate – Sealed Vault Chamber (Sublevel III)
> Access requires dual-glyph activation using House Ambervale’s crest and a pulse sigil attuned to a civic beacon conduit.

---

### 📘 Documents & Notes

1. **The Emberwell Codex (Redleaf Edition)**
   - Illuminated manuscript describing leyline fluctuations during the final year of the Bridge Wars.
   - Contains fragmented commentary on “Warden Beacon 4” being realigned by Aurion’s agents.

2. **Scroll of Emergent Dawn**
   - A fragmentary prophecy said to be penned by the last Dawnbringer of Old Kanda.
   - Warns of a time when "the tyrant’s chain stirs and the flame must unbind the ash."

3. **Letter of Denial, Signed by High Arcanist Vedrim Cael**
   - A rejected petition for aid filed by House Ambervale during the final eclipse before the Sundering.
   - Marginal notes by Oliver’s ancestor describe meeting with a masked figure calling themselves “the Emissary of the Fifth Flame.”

4. **Map Fragment: The Verge of Bound Names**
   - Cartographic scrap hidden in the binding of a family registry.
   - Appears to match leyline triangulations near Beacon Vault 4 and the Sewer Hideout.
   - Glyph annotations in an unknown sigil dialect—possibly Dawnscript or an early form of Celestial.

5. **Treatise on Sigil Resistance in Pre-Rising Metalwork**
   - Notes on auric alloy used in relics blessed by Aurion to resist abyssal unbinding.
   - Margin includes a crude sketch of Hans' medallion and annotations labeled: “Vibrate during Embermoon. Matches relic-class pattern X17-A.”

---

### 🗡️ Physical Relics

1. **Flint-Sigil Warden’s Vambrace**
   - Armguard once worn by a Pre-Rising templar of Aurion.
   - Inert unless exposed to leyline surge; believed to suppress minor echo anomalies.

2. **Ember-Threaded Scrollcase**
   - Contains a partially sealed message believed to have been written during the Collapse of the Brimvault.
   - Sealed by a sunburst sigil keyed to a name no longer found in current civic registries.

3. **Aurion’s Unquenched Flame (Shard)**
   - A fragment of divine material, stored in a lead-lined reliquary.
   - Warm to the touch, pulses gently when exposed to Embermoon resonance.
   - Ambervale believes it to be part of the containment material used during the Vestige sealing.

4. **Beacon Dial Anchor (Unmarked)**
   - An inert fragment of Beacon 4’s original anchoring array.
   - Functions as a resonant “breadcrumb” for aurionic alignment tracking.
   - Capable of interfacing with the Whispervault’s Oculus mirror array.

5. **Velan Mirror Sigil (Cracked)**
   - A handheld reflective plate once used by the Flamebound Order.
   - Can reveal memory echoes if aligned within a consecrated vault under celestial convergence.

---

> **Lord Ambervale’s Notes:**  
> _“The Ministry of Relic Enforcement never found these, because they never knew what to look for. Truth doesn’t survive in ledgers—it survives in what we hide from the flames.”_
