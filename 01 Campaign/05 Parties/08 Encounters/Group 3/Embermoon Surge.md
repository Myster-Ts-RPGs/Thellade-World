---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group3"
whichparty: "[[Campaign Group 3]]"
encountertype:
  - Skill
locations:
  - "[[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy.md|Mangagoy]]"
sessionnumber: "09"
title: |
  Embermoon Surge
allies:
  - "[[Zareth Korrath]]"
  - "[[Kraya Feldrum]]"
factions:
  - "[[The Ashen Vanguard]]"
  - "[[The Black Sepulcher]]"
---
> [!infobox]+
> # Session Overview
>  |
> ---|---|
> **Session Number** | `INPUT[text:sessionnumber]`|
> **Title**|`INPUT[textArea:title]`|
> **Encounter Type(s)**|`INPUT[EncounterType][inlineListSuggester:encountertype]` |
> **Allies Planned** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):allies]` |
> **Enemies Planned** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):enemies]` |
> **Factions Planned**|`INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):factions]` |
> **Locations Planned** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates")):locations]` |

# Encounter  Overview
[[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 3|Campaign Group 3]] - Session 09 - [[01 Campaign/05 Parties/08 Encounters/Group 3/Embermoon Surge|Embermoon Surge]]

## Encounter-Specific Info


> [!info]- **Skill Challenge Details**
> - Skills Required: Athletics, Acrobatics, Religion, Diplomacy, Deception, Intimidation, Thievery, Crafting, Nature, Stealth, Society, Arcana, Medicine, Performance, Survival, Occultism
> - Success Threshold: 3 of 5 Stages
> - Degrees of Failure: 3+ failed stages triggers consequences
> - Time Constraints: Real-time pressure during riots (narrative urgency)
> - Consequences for Success/Failure: See “Overall Success Consequences” and “Failure Consequences for the Challenge” sections



### 🧩 Stage 1: Cracks in the Radiant Path
**Description:**  
As the party exits the temple, tremors open new fissures in the road and warded lanterns explode in showers of unstable light. Panicked civilians run in every direction, some already warped by divine feedback.

**Skill Options:**  
- **Athletics (DC 20)** – Leap or climb around broken paving and flame-burst rubble  
- **Acrobatics (DC 20)** – Nimbly dodge cascading debris  
- **Religion (DC 20)** – Identify active sacred glyphs and guide others safely through  
- **Diplomacy (DC 20)** – Calm a nearby cluster of panicking refugees to prevent a stampede  

**Success Effect:**  
+1 bonus to all subsequent initiative rolls during riot events  

**Failure Consequence:**  
Each party member suffers 1d6 nonlethal damage from falling debris; Zareth must split off briefly to aid survivors  

---

### 🧩 Stage 2: Riotlines in the Market
**Description:**  
Ashgate Market is chaos. Civilians loot stalls, riot wardings flicker, and an Emberheart supply caravan is being dragged toward an inferno by possessed porters.

**Skill Options:**  
- **Deception (DC 20)** – Distract the looters or corrupt guards  
- **Intimidation (DC 20)** – Scatter a mob closing in on Zareth  
- **Thievery (DC 20)** – Disable an unstable leyline capacitor on the caravan  
- **Crafting (DC 20)** – Recalibrate a damaged warding node before it explodes  

**Success Effect:**  
Recover a usable magic item or relic (GM’s choice); Emberheart agents owe the party a favor  

**Failure Consequence:**  
A backlash knocks out one PC’s primary magic item for the rest of the day (e.g., bracer, wand, focus)  

---

### 🧩 Stage 3: Collapse on the Eastern Stair
**Description:**  
As the party ascends the stone road toward the central overlook, part of the Highhold stairwell collapses under riot-damaged supports. Screaming sounds echo below.

**Skill Options:**  
- **Nature (DC 20)** – Assess structural stability and direct the party accordingly  
- **Athletics (DC 20)** – Carry a companion across a widening chasm  
- **Stealth (DC 20)** – Avoid detection by a patrol of ley-ridden guards arresting non-rioters  
- **Society (DC 20)** – Recall alternate civic routes to bypass the damage  

**Success Effect:**  
Bypass one group of riot-hardened cultists entirely (GM removes one enemy from next fight)  

**Failure Consequence:**  
Party takes the long route; delay causes them to arrive mid-combat at the next scene  

---

### 🧩 Stage 4: Beacon Breach
**Description:**  
A corrupted fragment of the 4th beacon discharges from a nearby vault collapse, spilling magic into the street and mutating nearby vines, dust, and masonry.

**Skill Options:**  
- **Arcana (DC 20)** – Suppress or bind the beacon fragment’s leak  
- **Medicine (DC 20)** – Stabilize a passing guard with glyph-burn scarring  
- **Performance (DC 20)** – Rally civilians with an inspiring declaration or celestial hymn  
- **Survival (DC 20)** – Find a path through the now-hazardous ground  

**Success Effect:**  
Party earns 1 Hero Point each for their next divine encounter  

**Failure Consequence:**  
Zareth takes damage and gains Stupefied 1 until the riot ends  

---

### 🧩 Stage 5: Hall of Shattered Oaths
**Description:**  
Outside City Hall, summoned riot beasts and collapsing civil order grind the law into fragments. The Ashen Vanguard is barely holding a perimeter. Kraya Feldrum calls to the party, gesturing to a wounded clerk carrying arcane correspondence.

**Skill Options:**  
- **Intimidation (DC 20)** – Break the assault with a fearsome command or divine wrath  
- **Occultism (DC 20)** – Dispel or dismantle an active corruption ritual  
- **Athletics (DC 20)** – Shield-charge through a barricade to reach Feldrum  
- **Arcana (DC 20)** – Reinforce a breach with raw power drawn from the leylines  

**Success Effect:**  
Commander Feldrum grants the party official field authority during future investigations  

**Failure Consequence:**  
Party earns the ire of local guards for “freelancing” and is denied support during downtime  

---

### 🌟 Overall Success Consequences – Embermoon Surge Skill Challenge

#### ✅ City-Wide Impact
The party is credited by both the Ashen Vanguard and the Temple of Aurion for helping stabilize the chaos.  
Civilians begin spreading stories of the group's heroism—earning them a local nickname or reputation tag (e.g., “The Beacon’s Bulwark” or “Surge Wardens”).

#### 🧭 Mechanical Benefits
- **Favor Token** from:
  - Commander Kraya Feldrum (Ashen Vanguard) **OR**  
  - Sunwarden Zareth Korrath (Temple of Aurion and Lunara)  
  _(Can be used to gain critical information, override a civic penalty, or secure help in a future crisis.)_  
- **+1 circumstance bonus** on all **Diplomacy** and **Request** checks in **Mangagoy** for the next **7 in-game days**  
- **Field Status: Cleared to Assist** (granted by Vanguard or Temple) — allows bypassing checkpoints and accessing restricted zones during leyline investigations

#### ⚠️ Failure Consequences for the Challenge (3+ failed stages)
- Zareth Korrath is injured during the riot and **unavailable for the next 2 sessions**
- One of the **Ember Wharf’s leyline anchors fails**, altering how magic functions in that district permanently
- Group suffers **disadvantage** on all noble/political interactions during the next major Mangagoy event

---

### 💎 Optional Loot Reward
**Divine Surge Fragment**  
A damaged but resonant glyph shard found near the fourth beacon.  
- **Type:** One-use Spellheart  
- **Function:** Can be affixed to a holy symbol or focus  
- **Effect:** Grants spells cast from that focus the “**Extended Range**” trait and **+1 status bonus to Spell DC**

## 🎭 Embermoon Surge Dialogue – Success & Failure Outcomes

---

### ✅ On Success – Surge Stabilized

#### **[[Kraya Feldrum]]**
> *"Mangagoy still stands because of you. You earned more than my thanks—you earned my trust. You're not just bystanders in this war anymore. You're assets."*  
> *"Field status granted. Vanguard patrols won’t stop you. Use it wisely—or I'll revoke it myself."*

#### **[[Warden Draven]]**
> *"The wards flickered... but held. Your intervention realigned enough of the surge to prevent catastrophe. I'll be filing your names with the central ledger for priority access."*  
> *"Just understand—magic remembers who steadies it... and who doesn't."*

#### **[[Brom Thunderbew]]**
> *"By my beard, I saw you dive straight into the riot and haul folks out like it was a festival game! You lot got guts—and a sense of duty, like the old days."*  
> *"If the city's got more like you... maybe we ain't doomed after all."*

#### **[[Ralden Voss]]**
> *"You’ve made quite an impression—and not just on the streets. Word travels fast in these halls. Consider doors... less closed, for now."*  
> *"But understand, heroism fades quickly. Don’t waste the goodwill you’ve sparked."*

---

### ❌ On Failure – Surge Uncontained

#### **[[Kraya Feldrum]]**
> *"I gave you a chance to prove yourselves. Instead, I’ve got wounded officers and citizens whispering about chaos."*  
> *"Don’t expect field status. From this point on, you’ll go where I tell you—or not at all."*

#### **[[Warden Draven]]**
> *"The surge was not contained. Not properly. Magical scars like this... they do not fade quickly."*  
> *"You may still assist, but under scrutiny. And if the leylines falter again, you’ll answer for it."*

#### **[[Brom Thunderbew]]**
> *"Damn shame, really. I thought you lot had the backbone. People needed help—real help—not fancy spells and promises."*  
> *"Next time, either commit… or step aside and let the real protectors do their job."*

#### **[[Ralden Voss]]**
> *"I understand chaos. But failure—public, visible failure—casts long shadows."*  
> *"The city’s elite are not inclined to forgive disruptions. You may find doors closed that once stood open."*




## Quick References

> [!column|2 no-title]
>> [!metadata|characters] Allies
>> `VIEW[{allies}][link]`
>
>> [!metadata|characters] Enemies
>> `VIEW[{enemies}][link]`
>
>> [!metadata|organizations] Factions
>> `VIEW[{factions}][link]`
>
>> [!metadata|location] Locations
>> `VIEW[{locations}][link]`
