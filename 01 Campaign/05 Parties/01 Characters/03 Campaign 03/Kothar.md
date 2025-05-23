---
tags:
  - "#Character"
  - "#Player"
  - "#Group3"
art: 90 Assets/Images/Players/khothartoken.webp
whichparty:
  - "[[Campaign Group 3]]"
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
>>---|---|
>> **Art** | `INPUT[imageSuggester(optionQuery("")):art]` |
>
>> [!metadata|metadataoption]- Bio
>> #### Bio
>>  |
>>---|---|
>> **Played By** |  `INPUT[textArea:playedby]`
>> **Character Sheet** |  `INPUT[textArea:charactersheet]`
>> **Pronounced** |  `INPUT[textArea:pronounced]`
>> **Aliases** | `INPUT[list:aliases]` |
>> **Ancestry** | `INPUT[Ancestry][suggester:ancestry]` |
>> **Heritage** | `INPUT[Heritage][suggester:heritage]` |
>> **Gender** | `INPUT[Gender][:gender]` |
>> **Pronouns** | `INPUT[Pronouns][:pronouns]`
>> **Age** | `INPUT[Age][:age]` |
>
>> [!metadata|metadataoption]- Info
>> #### Player Info
>>  |
>>---|---|
>> **Occupations** | `INPUT[Occupation][inlineListSuggester:occupation]` |
>> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>> **Religions** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):religion]` |
>> **Owned Locations** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):ownedlocation]` |
>> **Current Location** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |
>> **Which Party** | `INPUT[inlineListSuggester(optionQuery(#Party AND !"z_Templates"), useLinks(partial)):whichparty]` |
>> **Condition** | `INPUT[Condition][:condition]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Played By: `VIEW[{playedby}][text]`
> ###### Bio
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Ancestry** | `VIEW[{ancestry}]` |
> **Heritage** | `VIEW[{heritage}]` |
> **Gender** | `VIEW[{gender}]` |
> **Pronouns** | `VIEW[{pronouns}]` |
> **Age** | `VIEW[{age}]` |
> ###### Info
>  |
> ---|---|
> **Occupations** | `VIEW[{occupation}][text]` |
> **Organization** | `VIEW[{organization}][link]` |
> **Religions** | `VIEW[{religion}][link]` |
> **Owned Locations** | `VIEW[{ownedlocation}][link]` |
> **Current Location** | `VIEW[{location}][link]` |
> **Condition** | `VIEW[{condition}]` |

# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!kirk|info] Guide (Remove me)
[Player Handout](https://docs.google.com/document/d/1_eFTuK3teRJSAVbd2QSZxjDTgE_RZH54zZg-3Eoo4Hk/edit?usp=sharing)

> [!metadata|charactersheet]- Character Sheet
> ```custom-frames
frame: Demiplane
style: height: 700px;
>```

> [!metadata|servicerequests]- Service Requests
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, quicknote AS Notes
> FROM "Campaign"
> WHERE econtains(customer, this.file.link) AND contains(tags, "Service") AND !contains(status, "✅") AND !contains(status, "❌")
> SORT file.name ASC

> [!metadata|letters]- Letters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, quicknote AS Notes
> FROM "Campaign"
> WHERE econtains(holder, this.file.link) AND contains(tags, "Letter")
> SORT file.name ASC

> [!metadata|literature]- Literature
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, quicknote AS Notes
> FROM "Campaign"
> WHERE econtains(holder, this.file.link) AND contains(tags, "Literature")
> SORT file.name ASC

## Ideals
### Loves


### Hates


## Goals
### Short-term


### Long-term


## History
### Birth Location


### Childhood


### Journey


### Worship


## Notes
## 🧬 Divine Origin: Kothar’s Name, Heritage, and Prophetic Identity

### 🔁 The Name Reversed – *Kothar* and *Rah’tok*

Kothar’s name is no accident—it is the **divine counterweight** to a long-forgotten betrayal. In ancient Iruxi myth, **Rah’tok** was once a revered warleader and spiritual guide, who brought the lizardfolk (Iruxi) across the stars to **Thellade** during the Time War. But in the chaos of the **Bridge Sundering**, when the light of the gods dimmed, Rah’tok turned to **Vaskirax**, the Demon Lord of Tyranny, and led his people into monstrous pacts.

- **Rah’tok** became the **enslaver of his own kind**, binding their future to domination, pride, and abyssal power.
- His name was whispered in rituals of blood, used to command obedience and erase ancestral ties to the gods of light.

The name **Kothar** is **Rah’tok reversed**—a linguistic redemption and a prophetic echo. It was chosen not by mortals, but by **Aurion**, god of light, flame, and renewal.

- In the Iruxi dialect:
  - **Ko** = flame / dawn / light
  - **Thar** = soul / spirit / heir
  - → **Kothar** = “Child of Flame” or “Star-born Soul”

Thus, his name alone becomes **a sigil of rebellion** against Rah’tok’s legacy—a living glyph of reversal, purification, and hope.

---

### ☀️ Divine Heritage – Aasimar Nephilim, God-Touched by Aurion

Kothar is canonically an **Aasimar Nephilim**, god-touched by **Aurion** himself at birth. He was entrusted to the dwarven cleric **Mirik Brightgaze**, whose prophetic visions foretold:

> _"The tyrant’s name will be unspoken, his mirror shall rise in flame."_

Kothar’s divine essence is more than celestial—it is **restorative**, meant to **reignite the broken path of the Iruxi people**.

- His **Nephilim bloodline** gives him latent powers tied to divine leylines, radiant bindings, and protective flame.
- At certain times—such as during **Embermoon convergences**—his aura can disrupt abyssal sigils and resonate with sealed relics of light.

---

### 🌌 Prophecy and Narrative Arc

Kothar is not only a redeemer—he is a **living trial** sent to undo the sins of his ancestor.

- **Rah’tok**, corrupted but not destroyed, still lingers in **hibernation or temporal stasis**—hidden deep within Thellade’s underlands, beneath mangrove crypts or abyssal ruins tied to **Vaskirax’s cults**.
- Kothar must one day **confront Rah’tok**, not just as an enemy, but as a **reflected legacy**—a living soul bound to break a cycle of spiritual bondage.
- The **divine flame** inside Kothar may be the only power strong enough to destroy the ancient chain.

---

### 🧩 Narrative Threads & Canonical Impact

- **Kothar’s presence** weakens Vaskirax’s foothold wherever sacred ground remains.
- His name may **unlock seals** or cause divine relics to respond, particularly those linked to Aurion or the Pre-Rising Order of Warden Flames.
- Prophets, cultists, and old enemies may **fear the name Kothar**, even without understanding why—it echoes **the undoing of Rah’tok’s pact**.
- **Xal’Zul’s followers** may attempt to erase him before his destiny matures.

---

> _“The tyrant chained a people. The child of flame shall break the link.  
> His name is fire, spoken backward through time. And in its light, the serpents burn.”_  
> —Lost Dawnbringer Verse, fragment recovered near the ruins of the Oathbreaker’s Chain
