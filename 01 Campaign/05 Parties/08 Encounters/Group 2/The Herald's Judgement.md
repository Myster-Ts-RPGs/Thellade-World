---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group2"
whichparty: "[[Campaign Group 2]]"
---
> [!infobox]+
> # `=this.group + " - Session " + this.sessionnumber + " - Summary"`
>  |
> ---|---|
> **Session Number** | `INPUT[text:sessionnumber]`|
> **Title**|`INPUT[textArea:title]`|
> **Encounter Type(s)**|`INPUT[EncounterType][inlineListSuggester:encountertype]` |
> **Allies Planned** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):allies]` |
> **Enemies Planned** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):enemies]` |
> **Factions Planned**|`INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):factions]` |
> **Locations Planned** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates")):locations]` |

# Echoes of the Dawnsplit: The Herald's Judgement

## Encounter-Specific Info

> [!info]- **Social Encounter Details**
> - Important NPCs: Herald Elandor (Spirit of the Last Timebound Cleric of Aurion)
> - Factions Involved: None directly, though Aurion’s faithful and the Eternal Concord have doctrinal stakes
> - Goals/Objectives: Convince Herald Elandor that the party is worthy of continuing the mission Aurion began; prove their intent to protect the sanctum, not defile it
> - Negotiation Leverage: The party has already restored partial function to the sanctum’s mechanism and aided surviving refugees in the ruins
> - Risks for Failure: The Herald may lock the sanctum in temporal stasis again, ejecting the party and denying access to the sanctum’s heart; valuable insight into the beacon and the Maw’s corruption may be lost
> - Special Rewards: Boon of the Dawnsplit Flame (a temporary divine blessing), access to sealed lower sanctum, cryptic visions of Aurion’s original design for the beacons

> [!info]- **Skill Challenge Details**
> - Skills Required: Religion, Diplomacy, Arcana, Deception (if lying), Performance (if invoking symbolic oaths)
> - Success Threshold: 4 out of 6 checks
> - Degrees of Failure:
>   - 0–2: Elandor vanishes in anguish, sealing the sanctum (critical failure)
>   - 3: Elandor withdraws—no help, but no retaliation (failure)
>   - 4+: Elandor entrusts the party with the sanctum’s defense (success)
> - Time Constraints: 3 dialogue rounds before the sanctum begins to destabilize
> - Consequences for Success/Failure:
>   - Success opens the next chamber and unlocks the Dawnwell relic
>   - Failure leaves the party blind to the Maw’s creeping influence under the sanctum and may trigger a surge of temporal backlash


### 🩹 **Scene 1: Awakening in the Time-Locked Temple (Healing the Injured)**

> _[Elandor kneels beside a wounded party member, her hands glowing with threads of soft golden light as she stabilizes them. Her voice is serene, echoing faintly from beyond time.]_

- **“You are safe… for now. Be still. The echoes will pass.”**
    
- **“The light has not left you—only dimmed. Let it kindle again.”**
    
- **“The temple has waited long for hearts that still carry warmth.”**
    
- **“I am Elandor, last herald of Aurion… or the memory of her.”**
    
- **“Your injuries are echoes of the chaos that presses at the veil. But in this place, light still answers.”**
    

---

### 🕯️ **Scene 2: Setting the Tone for the Challenges**

> _[As the party explores the golden-hued temple, Elandor walks with them. Her form shimmers as she gestures to suspended sigils and fractured time-loops.]_

- **“This sanctum was once a beacon… now it flickers on the edge of forgetfulness.”**
    
- **“Beyond this threshold lie memories twisted by the Abyss. You will walk where time no longer flows.”**
    
- **“Do not trust every path that seems clear. Some truths are traps. Others are keys.”**
    
- **“To preserve what remains of the flame, you must prove yourselves against what should never have been.”**
    
- **“Your foes may wear bodies—but they are lies given flesh.”**
    

---

### 🌅 **Scene 3: Enticing Members to Stay (for Kieran or others)**

> _[Elandor turns to a specific character as they gaze into a timeless mural or hear echoes of lost hymns.]_

- **“Your spirit sings to the temple. It would welcome your voice across the ages.”**
    
- **“In here, art does not fade. Inspiration does not sleep. Stay, and let your light become part of the flame.”**
    
- **“You hear them, don’t you? The verses unfinished… the stories waiting for your hand.”**
    
- **“To remain would not be exile. It would be enshrinement.”**
    
- _(To Kieran)_: **“The Crimson Muse is ever changeful. But here—here, beauty is immortal.”**
    

---

### 🎁 **Scene 4: Giving Gifts Before Departure**

> _[As the final light pulses and the temporal weave begins to fray, she stands before each of them, placing a glowing palm near their chest, a sigil forming briefly in the air.]_

- **“The road ahead will burn. Let this be a light within you when darkness presses in.”**
    
- **“Take this—each gift is drawn not from me, but from the flame your heart stirred awake.”**
    
- **“One step further, and the veil between worlds will thin again. You will not see me… but I will be watching.”**
    
- **“Not all torches are meant to return. If you carry this light, do not let it flicker in fear.”**
## Quick References
### **Rare (1 allowed)**

- **Sunblade (Level 4, Rare)**  
    _A radiant longsword forged from solidified dawnlight, this weapon deals additional radiant damage and emits bright light in a 20-foot radius. It is especially effective against undead and creatures vulnerable to light._
    

### **Uncommon**

- **Radiant Bracers (Level 3, Uncommon)**  
    _These golden bracers grant the wearer resistance to necrotic damage and once per day can emit a burst of sunlight, blinding nearby enemies._
    
- **Chrono Crystal (Level 2, Uncommon)**  
    _A palm-sized crystal that allows the user to cast _haste_ on themselves once per day, accelerating their actions for a short duration._
    

### **Common**

- **Healing Elixir (Level 3, Common)**  
    _A potion that restores a significant amount of health when consumed, essential for sustaining the party during prolonged engagements._
    
- **Sunfire Talisman (Level 2, Common)**  
    _When affixed to a weapon, this talisman allows the weapon to deal additional fire damage on its next successful hit._
    
- **Lightbearer’s Cloak (Level 4, Common)**  
    _A cloak that grants the wearer advantage on saving throws against darkness and shadow-based effects._

