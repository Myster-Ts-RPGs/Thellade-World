---
questObtained: 
questStatus: Not Started
questGiver: 
questLocationObtained: 
questSessionObtained: 
questNotes: 
questLootAvail: 
questLookEarned: 
NoteIcon: quest
obsidianUIMode: preview
tags:
  - quest
---

# `=this.file.name`

> [!infobox]+
> # `=this.file.name`
> ## Quest Details
> Type |  Stat |
> ---|---|
> Date Obtained | `INPUT[datePicker:questObtained]` |
> Status | `INPUT[inlineSelect(option(Not Started), option(In Progress), option(Complete)):questStatus]` |
> Quest Giver | `INPUT[suggester(optionQuery(#npc)):questGiver]` |
> Quest Location | `INPUT[suggester(optionQuery(#Category/Settlement)):questLocationObtained]` |
> Session Obtained | `INPUT[suggester(optionQuery(#journal)):questSessionObtained]` |
> Available Loot | `INPUT[suggester(optionQuery(#item)):questLootAvail]` |
> Acquired Loot | `INPUT[suggester(optionQuery(#item)):questLookEarned]` |

[[Karnak]]'s dreams have grown vivid—haunting visions of mist-draped jungle paths, whispering spirits, and his loyal companion [[Lunair]] standing defiant against a looming shadow. His former mentor, [[Samaliel Lanai]], appears within these visions and warns: **[[Lunair]] calls to you. She is not safe.**

The jungle itself seems alive with ancient magic, shifting paths and conjuring illusions. Something stalks [[Lunair]]—a beast born of primal fury—and only [[Karnak]] and his allies can reach her in time.

This is no symbolic dream: [[Lunair]] is real, and she is in danger. To reach her, the party must brave the living maze of the **Veiled Jungle**, overcome five escalating trials, and confront the monstrous force closing in.

Will the party reach [[Lunair]] before it’s too late?

### 🎯 Objectives

- [ ] Navigate the enchanted Veiled Jungle
- [ ] Overcome the five-stage skill challenge
- [ ] Reach [[Lunair]] before she is lost or captured
- [ ] Confront the primal beast stalking her
- [ ] Reforge the sacred bond between beast and master

## 🧾 Quest: Beastmaster’s Trial

**Quest Type:** Major  
**Status:** Active  
**Location:** The Veiled Jungle  
**Assigned To:** [[Karnak]] and the party  
**Reward:** Spiritual bond strengthened, unique boon from Lunair, rare primal essence

---

### 🗺️ Notes

- The jungle is fey-influenced and resists mundane navigation.
- Lunair is likely located in a spiritual grove tied to the beast’s presence.
- [[Samaliel]]'s vision may hint at alternate magical paths or dangers ahead.



## 🌙 Dream Sequence: Karnak’s Vision

> *This dream unfolds the night before the party enters the Veiled Jungle. It is vivid, emotionally charged, and clearly more than a simple dream...*

---

**(As Karnak settles into sleep, the sounds of the warehouse fade, replaced by the rhythmic hum of insects and rustling leaves. A vivid dream unfolds…)**

---

Your eyes open to mist swirling gently through towering jungle trees. The air is thick, rich with the scent of blooming orchids and rain-soaked earth. Ahead, a familiar form appears—**Samaliel Lanai**, your elven mentor, poised gracefully on a moss-covered stone, his calm eyes locked onto yours.

> **“The time has come, Karnak,”** he says, his voice low and steady. **“Lunair calls to you. She is not safe.”**

His form begins to fade, becoming one with the rising mist as his voice echoes among the ancient trees. You take a step forward, drawn by something deeper than words.

Then you see her—**Lunair**, your loyal companion, her sleek fur shimmering beneath the scattered light of the moon. Her golden eyes lock onto yours, filled with urgency and fear. Her body is tense, alert—and behind her, the jungle shifts.

The foliage parts.

A hulking, shadowed beast prowls forward, its eyes glowing with amber fury. It moves with silent menace, sniffing the air, tracking something. **Lunair doesn’t flee—she stands her ground, but the danger is clear.**

> **“She awaits your aid,”** Samaliel’s voice returns, now more urgent. **“You must find her, Karnak—deep in the jungle’s heart. Before the beast does.”**

The jungle pulses with rising tension.

The vision fades…  
…but the call lingers.


## 🧭 Beastmaster's Trial: Jungle Journey Skill Challenge

> **Challenge Type:** 5-Stage Group Skill Challenge  
> **Party Level:** 2  
> **Success Threshold:** 3+ stages passed  
> **Failure Threshold:** 3+ stages failed  
> *Critical Success = 2 successes, Critical Failure = 2 failures*

Each stage provides 5 skill/action options from PF2e Remaster rules. Use DCs based on difficulty guidelines:  
- **Incredibly Easy (10)**  
- **Very Easy (13)**  
- **Easy (16)**  
- **Average (18)**  
- **Hard (20)**  
- **Very Hard (25)**

---

### 🌿 Stage 1: The Jungle Veil *(Mystical Terrain Navigation)*  
> The jungle resists passage—paths loop strangely, wildlife avoids certain areas, and the canopy seems to subtly shift.

#### ✅ Skill Options

**Survival (Track) — “Following Lunair’s Trail”**  
- **DC 18 (Average)**  
- *You search for signs of Lunair’s passage through thick undergrowth.*  
  - **Success:** You find clear pawprints and redirect the group confidently.  
  - **Failure:** The trail is lost in a patch of magically regrown plants.

**Nature — “Read the Jungle’s Pulse”**  
- **DC 16 (Easy)**  
- *You observe how the animals and plants behave, looking for magical disturbance.*  
  - **Success:** You detect avoidance behavior and avoid a cursed glade.  
  - **Failure:** You lead the group into a spore-choked bramble patch.

**Arcana — “Dispel the Terrain Illusion”**  
- **DC 20 (Hard)**  
- *You attempt to identify and unravel fey illusions masking real paths.*  
  - **Success:** You dispel the magic and uncover the hidden trail.  
  - **Failure:** A magical backlash causes confusion and sensory overload.

**Perception — “Hear What’s Not Said”**  
- **DC 18 (Average)**  
- *You listen for unnatural repetition in sound or movement.*  
  - **Success:** You detect a repeating ambient loop and steer true.  
  - **Failure:** You follow a looped sound illusion into a predator’s hunting ground.

**Occultism — “Attune to the Spirits”**  
- **DC 20 (Hard)**  
- *You reach out to jungle spirits for guidance.*  
  - **Success:** A spirit leads you with whispers and moonlight.  
  - **Failure:** Mischievous spirits mislead you as a prank.

**Complication on Failure:**
- The party becomes disoriented. Each PC must make a **DC 12 Fortitude/Constitution save** or gain the **Fatigued** condition.
- On a *critical failure*: The party arrives **late**—[[Lunair]] is already in danger when found.
---

### 🌉 Stage 2: Canopy’s Edge *(Crossing a Dangerous Chasm)*  
> The jungle drops away suddenly—a deep ravine. You must find a way across using roots, vines, or canopy pathways.

#### ✅ Skill Options

**Athletics (Climb / Leap)**  
- **DC 18 (Average)**  
- *You climb a knotted root system or make a long leap across.*  
  - **Success:** You find strong handholds or clear the jump.  
  - **Failure:** A loose rock or weak branch causes a slip.

**Acrobatics (Balance / Tumble Through)**  
- **DC 16 (Easy)**  
- *You move carefully across hanging vines or rotting bridges.*  
  - **Success:** You maintain balance and cross with ease.  
  - **Failure:** You slip and barely catch yourself.

**Perception (Seek Path)**  
- **DC 18 (Average)**  
- *You search for a hidden or safer way around the drop.*  
  - **Success:** You find a fallen log bridging the gap.  
  - **Failure:** You spot a false path leading to a dead end.

**Crafting (Create Anchors or Harnesses)**  
- **DC 20 (Hard)**  
- *You rig ropes or makeshift gear to aid the crossing.*  
  - **Success:** Everyone crosses safely with aid.  
  - **Failure:** The gear fails under strain.

**Thievery (Pick and Set Gear Locks)**  
- **DC 18 (Average)**  
- *You adjust climbing gear or pulleys for a safe descent.*  
  - **Success:** You expertly rig secure harnesses.  
  - **Failure:** A knot slips loose, forcing an emergency recovery.

**Complication on Failure:**
- One random PC slips (roll 1d6). That PC takes **1d6 falling damage** and must succeed on a **DC 18 Reflex save** or lose key gear (e.g., potion, weapon, map).
---

### 🐜 Stage 3: The Whispering Swarm *(Mental and Auditory Disruption)*  
> A swarm of glowing, magical insects surrounds the party, whispering illusions, riddles, and luring sounds.

#### ✅ Skill Options

**Will Save — “Ignore the Whispers”**  
- **DC 18 (Average)**  
- *You center your mind and push out the voices.*  
  - **Success:** You remain calm and ignore the distraction.  
  - **Failure:** You wander briefly, lured by a false voice.

**Performance — “Harmonize with Jungle Sounds”**  
- **DC 16 (Easy)**  
- *You mimic local sounds to drown out the whispers.*  
  - **Success:** The swarm disperses momentarily.  
  - **Failure:** Your rhythm syncs poorly and attracts more bugs.

**Deception — “Trick the Swarm”**  
- **DC 20 (Hard)**  
- *You mimic a predator’s call to fool the swarm into retreat.*  
  - **Success:** The swarm scatters.  
  - **Failure:** The swarm becomes agitated.

**Diplomacy — “Appeal to Fey Spirits”**  
- **DC 18 (Average)**  
- *You attempt to speak with the spirits among the insects.*  
  - **Success:** The swarm shifts, revealing a clear path.  
  - **Failure:** The spirits turn capricious and play pranks.

**Nature — “Analyze Their Pattern”**  
- **DC 18 (Average)**  
- *You watch their behavior and try to determine a path through.*  
  - **Success:** You guide the party through safely.  
  - **Failure:** You misjudge their nesting area and cause them to swarm.

**Complication on Failure:**
- A PC receives a **false vision** of Lunair’s location. The party suffers a **-2 penalty on Navigation checks** in the next stage.
- Each PC also takes **-1 to Wisdom saves** until they complete a long rest.

---

### 🐍 Stage 4: Predator’s Trail *(Avoiding a Stalking Beast)*  
> A massive predator watches you from the jungle—silent, patient, and deadly.

#### ✅ Skill Options

**Stealth (Avoid Notice)**  
- **DC 18 (Average)**  
- *You move quietly to stay out of the predator’s awareness.*  
  - **Success:** You pass undetected.  
  - **Failure:** A snapped branch alerts the beast.

**Nature — “Use Scent to Distract”**  
- **DC 18 (Average)**  
- *You lay out predator urine or food scraps to lure it away.*  
  - **Success:** The predator diverts to investigate.  
  - **Failure:** It circles back faster than expected.

**Thievery — “Set a Distraction Trap”**  
- **DC 20 (Hard)**  
- *You rig a noise-making device or trap to divert attention.*  
  - **Success:** A clatter pulls the predator away.  
  - **Failure:** The trap misfires and draws it closer.

**Perception — “Track the Tracker”**  
- **DC 18 (Average)**  
- *You watch the foliage and anticipate its moves.*  
  - **Success:** You outmaneuver it through a thicket.  
  - **Failure:** You misjudge its distance and nearly get flanked.

**Acrobatics — “Leap Through Dense Vines”**  
- **DC 16 (Easy)**  
- *You spring through tangled terrain to put distance between you.*  
  - **Success:** You leave a false trail.  
  - **Failure:** You’re slowed and must double back.

**Complication on Failure:**
- The predator attacks: trigger a **combat encounter**.
- Alternatively, it damages the environment (bridge collapse, flooding), forcing a reroute and delaying arrival.
---

### 🌕 Stage 5: The Echoing Grove *(Spiritual Jungle Resonance)*  
> A sacred area of the jungle resonates with unseen power—spirits linger, and your path depends on understanding their signs.

#### ✅ Skill Options

**Religion — “Appease the Spirits”**  
- **DC 18 (Average)**  
- *You offer a prayer and a token to the forest spirits.*  
  - **Success:** The grove shifts to reveal a true path.  
  - **Failure:** The offering is rejected, causing the grove to veil itself.

**Arcana — “Interpret Magical Resonance”**  
- **DC 20 (Hard)**  
- *You listen for magical vibrations in the trees and stones.*  
  - **Success:** You detect a harmonic trail guiding you onward.  
  - **Failure:** You misread the aura, leading the party in circles.

**Occultism — “Read Spirit Echoes”**  
- **DC 18 (Average)**  
- *You trace the spiritual echoes that ripple like soundwaves.*  
  - **Success:** The echoes lead straight to Lunair’s grove.  
  - **Failure:** You’re momentarily possessed and disoriented.

**Survival — “Follow Residual Trails”**  
- **DC 18 (Average)**  
- *You track movement across soft earth and leaf litter.*  
  - **Success:** You find signs of Lunair passing through.  
  - **Failure:** The tracks loop and mislead you.

**Perception — “Spot the Spirit Signs”**  
- **DC 16 (Easy)**  
- *You notice ethereal glow, rustling with no wind, and subtle clues.*  
  - **Success:** You identify the guardian sigils and navigate correctly.  
  - **Failure:** You step into a spiritual dead zone, causing confusion.

**Complication on Failure:**
- The party reaches a **corrupted reflection** of the grove. The area is cursed or disoriented.
- Add a twist to the final encounter: Lunair is wounded, unconscious, or mind-linked to the beast.

---

### 🎯 Skill Challenge Outcome Summary

| Result              | Outcome                                                                 |
|---------------------|--------------------------------------------------------------------------|
| **3 or more Successes** | The party reaches Lunair in time. She is prepared but in danger. You may arrive undetected or with an advantage. |
| **2 Successes, 3 Failures** | The party arrives late or exhausted. Lunair is wounded or actively defending herself. Add difficulty or penalties to the upcoming encounter. |
| **4 or more Failures** | The party is too late. Lunair has been captured, mind-linked, or gravely wounded. The beast may be empowered or transformed. Rescue becomes urgent and dangerous. |

---
## 🐾 Combat Encounter: The Apex Predator

**Trigger:** This encounter occurs if the party fails Stage 4: Predator’s Trail.

**Encounter Type:** Combat  
**Difficulty:** Moderate (for 6 PCs, Level 2)  
**Environment:** Dense, misty jungle clearing with low visibility and thick underbrush.

---

### 📍 Scene Description

As the party stumbles into a fern-choked clearing, the hairs on the back of their necks rise in unison. There’s no wind. No birdsong. The jungle is holding its breath.

Suddenly, the underbrush explodes as a massive, sleek predator—**a primeval guardian beast**—lunges from concealment. Its hide is gnarled with thorny growths, its amber eyes glow with unnatural malice. Smaller jungle creatures—twisted by its corrupting aura—circle in from the trees.

This is no ordinary creature. It is **guardian, stalker, and executioner**—a living test for those unworthy to protect the spirit-bonded beasts of the jungle.

---

### 🐅 Creatures

#### 1x **Jungle Stalker Alpha**  
- Use: **Smilodon (Sabertooth Tiger)** *(Bestiary 1)* as base  
- Substitute: **Dire Wolf**, **Great Cat**, or **Jungle Drake (scaled)**  
- Traits: Agile, Stealthy, Ambush predator  
- Special Trait: **Spirit-Honed Pounce** – If it moves 20+ feet before attacking, it deals an extra 1d6 mental damage (jungle spirit backlash)

#### 2x **Thorn-Touched Vine Raptors**  
- Use: **Velociraptor** *(Bestiary 1)* or **Lizard (Venomous)**  
- Add: **Entangling Vines** (1/day ability) – DC 16 Reflex or become Immobilized until end of next turn  
- Tactics: Try to pin or flank isolated PCs

#### 2x **Spirit-Warped Monkeys**  
- Use: **Monkey Swarm** *(Bestiary 2)* or **Use Bat Swarm Stats but reflavor as monkeys dropping from trees**  
- Trait: Distracting (–1 to Perception for adjacent PCs), can climb and throw nuts or bark from range  
- Tactics: Occupy ranged casters or climb trees to harass from above

---

### 🎯 Tactics

- **Jungle Stalker Alpha** opens with **Stealth**, using the underbrush to approach unnoticed, then targets whoever appears weakest (or isolated).
- It prioritizes spellcasters and animal companions (it *hates* bonded creatures).
- It uses **Spirit-Honed Pounce** to leap between targets.
- **Vine Raptors** move in tandem, flanking and using **Entangling Vines** to trap PCs in place for the Stalker.
- **Spirit-Warped Monkeys** stay mobile, leaping from branches to distract, disable actions, and provide cover for the alpha.

---

### 🌿 Environment Features

- **Heavy Underbrush**: Difficult terrain unless cleared
- **Elevated Roots & Branches**: DC 14 Athletics to climb, provides cover
- **Low Light / Mist**: –1 to ranged attacks and Perception checks unless darkvision or low-light vision

---

### 💰 Loot & Clues

**On the Guardian Beast’s remains**:
- A **jungle-carved totem**, glowing faintly with Lunair’s essence—this is proof she passed this way recently.
- **Spirit-Shard Fang (minor magical item)** – Can be socketed into a druidic or primal weapon; grants +1 to Nature checks to track bonded beasts for 24 hours after activation.
- **Ritual Tattoo Ink (uncommon item)** – Can be used by an alchemist or ritualist to create a protective glyph or blessing against spiritual corruption.

**Narrative Clue**:
- The beast’s fur contains traces of Lunair’s blood—but fresh and shallow, implying she escaped but is close by.
- A **broken branch with golden fur and panther claw-marks** leads northeast from the battle site.

---
## 🐻🌕 Combat Encounter: The Moon-Cursed Guardian

**Encounter Type:** Major Combat (Final Trial)  
**Location:** The Heartgrove Clearing, beneath the full moon  
**Difficulty:** Severe (adjust to party level as needed)  
**Trigger:** The party reaches Lunair’s location too late—the beast has found her.

---

### 📍 Scene Description

The jungle opens into a ring of stone and root—ancient druidic ruins now overgrown with moss. Moonlight shines unnaturally bright through the canopy, bathing a trembling Lunair in silver light. She stands her ground, eyes glowing, body low, ready to defend.

Across from her, the foliage parts.

It towers—hulking, beastial, somewhere between bear and man. Muscles ripple beneath jet-black fur. Glowing yellow eyes lock onto Lunair... and then shift to you. It bellows, shaking the leaves from the trees.

> **This is not a monster—it is a guardian, long cursed, bound to protect the balance of the jungle... but the boundary that kept its mind intact has failed.**

---

### 🧬 Creature: **Moon-Cursed Guardian (Werebear Variant)**

- **Use:** Start with **Werebear (Bestiary 2)** or **Werewolf/Weretiger template**  
- **Adjust:** Add **Corrupted Guardian** traits  
- **Level Recommendation:** Scale to Level 4–6 Elite depending on group (Moderate-to-Severe encounter for 6x Level 2 PCs)

#### 🔮 Variant Traits
- **Spirit-Bound Curse**: This is not a typical lycanthrope. This being was once a jungle guardian—transformed unwillingly by a **spiritual hex** tied to the jungle’s now-broken boundary.
- **Second Transformation**: This is only its second shift. It still resists its beast form, leading to moments of hesitation or pain during combat (see tactics).
- **Moon-Catalyzed Rage**: Gains **+1 damage per Strike** while the moon is visible (or until obscured by magic/cloud).

---

### ⚔️ Combat Tactics

- The Guardian opens with a **mighty roar (Demoralize/Intimidate burst)** and immediately targets Lunair if she is not yet rescued.
- It uses **Grapple**, **Rend**, or **Bear Hug-style multiattacks** to isolate prey.
- At 50% HP, it suffers a **moment of hesitation**—make a Will save or lose an action that round (representing internal struggle).
- If Lunair is protected by the party, it shifts focus to whoever is most “spiritually bonded” (i.e., animal companions or druids).

---

### 🐾 Environment Effects

- **Full Moonlight** grants it passive buffs unless the moon is obscured (e.g., via spell or spirit intervention).
- **Totemic Stone Circle** is infused with primal energy. A successful **Nature or Religion check (DC 20)** can activate a protective ward (granting a +1 bonus to AC or saves for 3 rounds within the circle).
- **Lunair** will fight only defensively unless a PC spends an action to “Command an Animal” or uses Diplomacy/Nature to convince her to help.

---

### 💀 On Defeat

The beast collapses, snarling—and then begins to shrink. Fur fades. The beast’s hulking body twists and writhes, and in moments, a **humanoid form** lies broken in the moss, breathing shallowly.

The transformation fades completely, revealing a gaunt jungle elf dressed in rotted ceremonial armor. His wrists bear branded sigils—the same patterns seen on ancient jungle guardians in ruin carvings.

> **“It… it was supposed to protect... not consume… I remember now. The boundary... it cracked.”**

He passes out or dies depending on your tone—but leaves vital clues.

---

### 📖 Lore & The Curse

- The **Moon-Cursed Guardian** was once a **Warden of the Boundary**, one of several ancient jungle spirits given form by druids to protect the balance between mortal and spiritual realms.
- When the **Boundary of the Deep Wilds** began to fail (perhaps due to demiplanar collapse, deforestation, forgotten rites, or external tampering), the binding glyphs began to **corrupt**.
- This was the **second full moon since the boundary’s breach**—the first shift nearly killed him. The second fully overtook his mind.

---

### 🪙 Loot & Clues

- **Moon-Fused Totem Shard** *(Uncommon Magical Item)*  
  - Use as a key to open sealed druidic shrines  
  - Glows near broken boundaries  
  - Grants +1 bonus to Nature checks when identifying spiritual anomalies

- **Fragmented Warden Sigil**  
  - Tattoo-like glyph on his shoulder; can be copied or studied  
  - Clue for identifying other cursed guardians or reversing the transformation

- **Broken Binding Bracer**  
  - Contains a **hexed druidic rune**—a combination of primal and occult magic  
  - Clue to how the curse was originally placed or spread

---

### 🔮 Future Quest Hooks

1. **Restore the Boundary**  
   - Seek out ancient totem sites and perform cleansing rites  
   - Possible rituals require divine/primal casters, special ingredients, or planar allies

2. **Track the Source of the Curse**  
   - Who broke the boundary? A mortal enemy? A demon? A forgotten pact?  
   - Perhaps a corrupted druidic circle, a fey prince, or an outsider faction seeking to weaponize beast-spirits

3. **Hunt or Redeem Other Wardens**  
   - This guardian was not the only one bound… and not all will be as lucky  
   - The jungle may have **several cursed guardians** that must be freed, slain, or re-bound

4. **Lunair’s Legacy**  
   - Lunair now carries a fragment of the guardian’s spirit, passed through battle  
   - She may develop new abilities, or be targeted by those who wish to control her

---

### 🧠 Notes

- You can add tension by having the beast roar echo through the jungle as the party rests or camps.




### Rewards

- List the rewards here.
