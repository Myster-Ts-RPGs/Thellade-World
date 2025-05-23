---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group3"
whichparty: "[[Campaign Group 3]]"
sessionnumber: "10"
title: Tracing the Sigil Echo - Maelthaz
encountertype:
  - Environment
  - Investigation
allies:
  - "[[Zareth Korrath]]"
  - "[[Kaelor Thornhide]]"
  - "[[Vaelis Duskwhisper]]"
  - "[[Varian Kel]]"
factions:
  - "[[The Dawnbringers of Lunara]]"
  - "[[The Black Sepulcher]]"
locations:
  - "[[01 Campaign/01 World/08 Points of Interest/04 Temple or Shrine/Lunara/Sanctum of the Dawnsplit Crown.md|Sanctum of the Dawnsplit Crown]]"
  - "[[01 Campaign/01 World/08 Points of Interest/06 Library, Archive, School, Research/The Outcast Isles/Mangagoy/Mangagoy Healing Sanctuary.md|Mangagoy Healing Sanctuary]]"
  - "[[01 Campaign/01 World/08 Points of Interest/06 Library, Archive, School, Research/The Outcast Isles/Mangagoy/Whispervault Archive.md|Whispervault Archive]]"
enemies:
  - "[[Maelthaz the Chained Seer]]"
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

# Encounter  Overview
## Encounter-Specific Info

> [!info]- **Investigation/Mystery Encounter Details**
> - Scene Description: The investigation begins in the sealed lower corridor of the [[Whispervault Archive]] beneath [[Binders’ Lane]]. The party is drawn here after uncovering a string of ritual traces—Unnaming sigils, null-resonant glyph echoes, and altered civic records—each pointing to this long-sealed beacon node chamber. The air grows unnaturally still; divine energy feels thin, like it's been forcibly exhaled from the space.
>
> - Clues Available:
>   - **Glyphbearer Ritual Remnant (Ashgate Market):** Arcana or Occultism reveals a directional echo signature, pointing northeast. The relay node had an incomplete Unnaming scaffold; the missing component matches beacon node geometry.
>   - **Spoilage Beacon Distortion (Food Encounter):** Religion identifies a hollowed anchor sigil within a moonblessing ward. Occultism confirms that the glyph layer is intentionally drained—one part of a three-node ritual array.
>   - **Zareth Korrath Testimony (Optional):** If consulted, Zareth recalls a divine echo anomaly logged during a previous calibration effort.  
>     > _“The pattern you’ve shown me… that echo of silence—it’s older than the Surge. Something like it was detected in the archives during the last Beacon calibration. But we were told to seal the corridor and say nothing.”_
>   - **Recovered Ledger Fragment (from Evercrate trash crate or Whispervault delivery bin):** A civic routing note marked with “Null Layer Access – Mael.†” and listing corridor coordinates only found beneath the archive’s sealed floor.
>
> - Skill Checks for Discoveries:
>   - **Arcana (DC 22):** Confirms beacon tile warping is due to residual Unnaming tether energy. The distortion signature is consistent with Maelthaz's planar suppression glyphwork.
>   - **Occultism (DC 21):** Identifies partial name-nullification matrix residue under the tile slab. One binding glyph is still active and responds to Embermoon resonance.
>   - **Religion (DC 20):** Detects prayerward failure. Speaking a sacred name within 30 ft of the sealed plate causes a “hollow speech” effect—divine responses are muted or reversed. The effect matches patterns tied to the removal of Kaelor Thornhide’s scream.
>   - **Society (DC 18):** Analyzes civic access logs and identifies fabrication. The last “technician” entry is forged—cross-referencing the badge ID reveals it was duplicated from a Black Sepulcher sympathizer listed on Driftwood Bay’s security manifest.
>
> - False Leads or Red Herrings:
>   - A student arcane circle one floor above contains elaborate glyphwork but serves as a legitimate divination training ward. May initially be mistaken for source.
>
> - Final Objective (Find Killer, Recover Item, Solve Puzzle):
>   - Confirm Maelthaz’s presence at this exact location during the Beacon Surge.
>   - Discover this beacon vault was used to **complete or test part of the Unnaming Rite** that severed Kaelor Thornhide’s divine voice.
>   - Recover the “anchor glyph fragment” left behind—a shard of the ritual structure tied to “The Tapering of the Voice,” a ritual text referenced in corrupted registry logs.
>   - Establish that this vault is only one part of a **three-node structure**, and Maelthaz’s full rite must be unraveled or reconstructed across multiple anchor sites.

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

## 📽️ Cinematic Sequence: Entering the Whispervault Archive

Fog clings to the cobbles as the party ascends the vine-choked path to the Whispervault Archive. The air thickens—quiet, cold, dense with a silence that presses against their thoughts. From the shadowed gables and pointed arches, the building looms like a confession long unspoken.

Their Ashen Vanguard pins glint red under the last of the midday light as they step beneath the worn stone arch. A sigil flickers in a recessed seal overhead—an echo of detection, not invitation. Then, a dull chime thrums beneath their boots.

The door opens—not with fanfare, but with gravity.

Inside, lanterns gutter to life. No flame—just memorylight, a pale shimmer drawn from echo-forged glyphglass set in the walls. Before them, amidst towering rows of chained tomes and floating sigil-keys, stands a slouched elven figure in frayed robes.

---

### 📖 Index Chamber – Meeting Vellon Mor

Vellon Mor does not speak at first. He watches. Then, with a rasp like an old page turning:

> _"You're early for your expiration, and late for your clearance. What thread of madness brings the Ashen marked into a hollow archive?"_

He taps a quill against his palm, glancing once at the sigils on the party’s badges. His eyes linger a moment longer on the glyph residue clinging to one of their satchels.

**Skill Checks to Persuade Vellon Mor (DCs vary by approach):**

- **Diplomacy (DC 19):**  
  Calmly explain the ritual echo traced from the Ashgate surge and its connection to a known Unnaming glyph.

- **Society (DC 20):**  
  Reference Beacon Registry B-12 and use the civic terminology Vellon would recognize.

- **Occultism (DC 21):**  
  Identify the trace Unnaming fragment as a Covenant-bound scaffold—demonstrating knowledge beyond public record.

- **Using Ashen Vanguard Pin** (Advantage or circumstance bonus +2 if presented with correct name authorization from Commander Feldrum):  
  _“This investigation is sanctioned under directive Flame-Writ Echo. We are here for what’s buried—not forgotten.”_

If convinced, Vellon begrudgingly guides them to a winding stair at the archive’s rear. His voice is low:

> _“Fine. But don’t touch the vaults. They remember. More than I do.”_

---

### 🗝️ Annulment Archive – Confronting Varian Kel

The descent brings a change in temperature—and pressure. The air tastes metallic. Below, among sealed alcoves and glowing prohibition wards, a man in a tailored shadowcloak stands over a silver-ringed dais.

He does not turn.

> _"The Unnaming echo you followed didn’t fracture. It bent. And bent things break the right way only once."_  
>  
> **Varian Kel** steps forward, holding a page bound in oath-thread. He appraises the party with cold certainty.

> _“I thought the Surge’s aftermath had already swallowed its witnesses. And yet here you are. Seeking Beacon 4.”_

He gestures toward a door behind him—sigil-locked, glimmering with residual emberlight.

---

### 🔻 Civic Beacon Vault – Tracing the Sigil Echo

The chamber is tight. Echo-warped beacon plates line the floor. One still pulses—weak, slow, but unmistakably divine in origin. The room stinks faintly of burned wax and severed glyph-blood.

**Skill Checks:**

- **Arcana (DC 22):** Identify the beacon warping as echo-burn from an Unnaming Rite. It matches Maelthaz’s known sigil architecture.

- **Occultism (DC 21):** Confirm residual chalklines behind the inspection panel match known null-glyph symmetry.

- **Religion (DC 20):** Detect that invocation in this room fails entirely—the Voice is gone.

- **Society (DC 18):** Forge connection between access records and Black Sepulcher identifiers.

As clues fall into place, Varian grows still. His voice is lower now:

> _“This was never meant to be found. You’re walking the voice’s burial trail.”_

He motions them out—toward a final spiraling stair that opens only at midnight or under sanctioned authority.

---

### 🌒 Observation Oculus – Witnessing the Echo

A round chamber opens into quiet vastness. Glyphs rotate around a suspended obsidian pool. Wisps drift—speech without sound, memory without mouth. When the party approaches, the echo-stilled fragments from Beacon 4 stir in their satchels.

Varian stands beside them now—not as a gatekeeper, but as an observer.

> _“Ask your questions. The vault will answer. But it will not forget you were here.”_

**End of Sequence**


# Oculus Chamber Echo: The Sundered Vow

> _The memory unfurls in a ghostlight shimmer, forming the image of an isolated stone cottage shrouded in pine and stormlight. The walls are inscribed with wards. Scrolls, bone-carved fetishes, and sigil-etched driftwood line the shelves. In the center, Warven-son kneels in meditation beside a dim ember brazier. A sudden pulse flares at the door—three figures step through the wardlines._

---

### Araniss Velis — The Sable Accord

_The vision shifts to that as seen by Warven-son. A poised elven female dressed in violet-inked ceremonial robes steps forward. Her voice cuts through the stillness with cold certainty._

She moves like a ripple through starlight—tall, statuesque, wrapped in a midnight mantle woven with fading constellations. Her hair is plaited silver-black, eyes glinting with the pale blue sheen of planar attunement. The left side of her face bears an arcane surgical seam, barely concealed. Every step distorts the ground slightly, as if gravity twists to accommodate her.

**Araniss Velis**: "Warven-son. Keeper of the Hammerline. You’ve held secrets not yours to keep."

**Warven-son**: "You dare defile this ground with planar hunger? This medallion is not a key for you."

**Araniss Velis**: "It is a conduit. And the glyph is older than your oath."

---

### Ressa Thelis — The Gilded Daggers

_The vision shifts again. A wiry human female dressed in reinforced soot-leather techgear with sigil-scribed bracers crouches beside the entryway. Sparks dance along her knuckles._

She moves like a live wire in a windstorm—scar-knuckled, grease-streaked, and twitching with kinetic impatience. Her oil-slicked jacket is webbed with runic fuses and segmented armor plates. A high-voltage thrum pulses through the copper lattice embedded in her spine. Her right eye is a grafted lens modulator; her left cheek bears a stylized flame-wrench tattoo, half-burned by previous sabotage.

**Ressa Thelis**: "Skip the ritual, Velis. He’s not talking. I’ll take the hammerpiece, you carve what you want from his brain."

**Warven-son**: "You think invention is license? This—this is legacy. Justice doesn't answer to thieves."

**Ressa Thelis**: "Progress doesn’t wait for permission, old man."

---

### Red-Robed Stranger — Unknown Affiliation

_The echo trembles. A gaunt humanoid figure shrouded in a layered crimson robe hovers at the edge of the room. No features are visible beneath the hood._

They move like a shadow across broken glass—fluid, angular, and disturbingly silent. Their robes shimmer with shifting runes that rearrange when not observed. Each breath releases a shimmer of distorted air. Their voice is layered—spoken once in a whisper, once in a scream, both at once.

**Red-Robed Stranger**: "Enough. Your quarrels delay convergence. Strip the anchor. Silence the bloodline. We only need the glyph."

_They raise an obsidian glyph-disc. Warven-son stumbles back as the medallion on his chest begins to hum violently._

**Warven-son**: "By Grabthar’s hammer... by the sons of Warvan... may you be unmade in the fire that follows."

**Ressa Thelis**: "You’re out of time, cleric."

_A blade arcs. Blood hits the wall. The medallion is torn free. Warven-son’s fingers twitch once toward a wall rune—and then fall still._

---

## Memory Shift: The Hidden Flame

_The golden echo fractures again, this time reforming as a firelit room of stone and packed soil. Smoke curls lazily from a hearth, and herbs dry from a crooked beam overhead. A boy—barely nine winters old—sits cross-legged on a woven mat. Before him, bent with age and marked with luminous scarification, kneels an ancient dwarf whose voice cracks with time but rings with weight._

**Great-Grandfather Tharn of the Emberline**:  
> “Listen well, little flame. This—” _(he lifts the medallion)_ “—is not merely steel and silver. This is a story, sealed in metal. A bond, older than our clan’s claim to name.”

_He presses the medallion into young Warven-son’s palms. The child flinches as it hums faintly._

**Tharn**:  
> “When the world cracked and time wept, we stood at the edge of all things. The gods faltered, but Aurion did not. In a time beyond record—on the Bridge of Severance—they sealed His Vestige. Not to destroy… but to preserve. To wait.”

_The scene shifts—no longer the cottage. The sky above is silver and broken. Ten figures stand in a circle atop a blackstone span hanging over a sea of stars. At the center, a sunburst shape of living light struggles within an arcane seal._

**Tharn (voice continues over the vision)**:  
> “The Beacon was forged from a sliver of His flame, a piece too great to be scattered. It was hidden in a cliff, buried beneath basalt and oathfire. We were there, child—our line. Called not for strength, but for remembrance.”

_The medallion glows brighter in the boy’s hand._

**Tharn**:  
> “Each generation, it is passed. Not to wield—but to guard. To wait for the time when the light must burn again. You will keep it. You will carry the name. And should the world grow cold, you will show them how to burn.”

_The vision fades with Tharn’s hand closing over Warven-son’s, the medallion between their palms, the fire reflecting in both their eyes._


---
# 🔮 Oculus Chamber Vision – *The Turning of Rah'tok, and the Naming of Kothar*

The air grows cold in the **Observation Oculus** as the glyph mirrors flare to life. One by one, silvery images fracture into being, swirling into a coherent stream of light and memory. The resonance of divine leylines hums against the soul.

And then… you see it.

---

### 🌉 *The Crossing*

The stars above are foreign—alien constellations, half-sketched across the night. Great stone arches—*the Bridges of Passage*—span void and sea, connecting shattered worlds during the final days of the Time War.

A vast host of Iruxi stand on the edge of a new world: **Thellade**. Their scales glisten like wet rubies, sapphires, and emeralds beneath the light of two moons. Tribal leaders bear staves of molten crystal, and at their head marches **Rah’tok**—broad-shouldered, golden-scaled, eyes like obsidian suns. Upon his back, a jagged blade, barbed with celestial iron.

He raises his hand and speaks, but the echo offers no words—only a sharp feeling: **conviction, protection, destiny**. The Iruxi cheer as they step across the final threshold. The bridge fades behind them.

A new chapter begins.

---

### 🛑 *The Sundering*

But the vision fractures. Now you see **Rah’tok alone**, kneeling at a great obsidian monolith in a jungle hollow choked with mist.

His voice whispers:  
> _"The gods have dimmed. The light wavers. Where is Aurion’s fire now? Where is our dawn?"_

Then… **another voice answers**—low, coiling, like a blade dragged across wet stone:

> _"Dawn burns out. But in shadow, strength lives on."_  
> _"I offer not hope, but dominion. Not light, but eternity."_  
> _"Take the crown, Rah’tok. Let fire die. Let your people rise anew."_

From the mists slithers **Vaskirax**—serpentine jaws half-seen in the shadow of the trees. A coiled crown of bone and obsidian hovers above his hand.

Rah’tok reaches out.

And the jungle dies.

### 👩‍👦 *The Naming of Kothar*

The echo shifts.

A dim chamber of red stone. A dying Iruxi woman—**Mirik**, her scales worn and dulled by exhaustion—cradles her newborn: **red-scaled, bright-eyed**, swaddled in woven dawnleaf. Her breath is ragged, but her eyes burn with certainty.

As she holds her son close, her vision flickers—and **a being of golden radiance appears before her**. Wings of refracted flame fold behind its back, and its form pulses with the warmth of dawn. Though its face is hidden within the glow, Mirik does not flinch. The air grows calm.

The angelic figure—a **herald of Aurion**—kneels, a voice like soft bells rising after storm:

> _"This child bears the spark of reversal.  
> The tyrant’s name shall falter at its echo.  
> Name him not in sorrow—but in flame."_

The being gently extends a hand, touching the child’s brow. A sigil blazes there—**Ko-thar**—etched in celestial and Iruxi glyphs, glowing momentarily like the rising sun.

Mirik’s voice, though strained, carries unwavering clarity as she whispers to her child:

> _“Kothar… so the shadow will know its end.”_  
> _“May you show my kind what forgiveness truly is.”_

The echo fades—and shifts again.

---

**The temple of Aurion.**  
The night is deep and silent, save for the knocking on the sanctuary doors. A young dwarven cleric—**Sowilo Brightgaze**—pauses in her scripture study, grumbling at the hour, but the sound of a weakened voice calling “Help…” draws her from her books.

She opens the doors to find **Mirik**, bleeding and barely standing, a hide-wrapped bundle cradled in one arm. Mirik stumbles forward, presses the child into Sowilo’s arms, and utters her final words—words Sowilo would not understand until years later, when she learned the Iruxi tongue:

> _"Protect him… protect my child, so he may show my kind what forgiveness truly is."_

Sowilo, stunned, peels back the hide to see a newborn lizardfolk—scales a brilliant, impossible red. She meets Mirik’s gaze and nods, even without knowing why.

Mirik collapses, her final strength spent. In her final thoughts is not fear, but peace—knowing she had followed the stars, and placed her son beneath the Dawnbringer’s light.

And across the child’s brow, unseen by mortal eyes, the name **Kothar** glows briefly, like flame on stone.


### 💠 Lore Nuggets Embedded in the Vision

- **The bridge they crossed** was one of the last planar links before the Sundering—a remnant still rumored to be buried beneath the **Brimstone Deep**.
- **Rah’tok’s weapon** was forged from a god-splinter—its fragments may still empower cults of Vaskirax today.
- The **coiled bone crown** appears again in present-day cult iconography in Mangagoy's Deep Dark.
- **Kothar’s star-birth mark** resonates when near relics of Aurion or sacred glyphs from the original pact.
- The child’s swaddling cloth bore a sigil lost to modern temples—a **Warden Flame** that no longer exists in scripture.

---

The vision fades.

Only the silence of the Oculus remains… and the lingering warmth of a divine ember in your chest.

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

---
## 🕳️ Historical Event: The Collapse of the Brimvault

### 🗓️ Approximate Date:
- Final decade of the **Pre-Rising Era** (likely between 5–10 years before the Sundering)

### 📍 Location:
- Deep beneath the **Ashen Bastion District** or possibly **under the Ember Vein Faultline**, now geologically unstable and uncharted

---

### 📖 Overview:

The **Brimvault** was a fortified underground sanctum constructed during the late **Time War**, intended to house unstable relics, sealed vestiges, and volatile beacon fragments. It was maintained jointly by high-ranking **Aurionic Flamebound**, **Dawnbringers**, and early **Civic Beacon architects**.

It collapsed catastrophically following an arcano-seismic event linked to:

- An **attempted interface with an unanchored Pre-Rising Beacon**
- **Leyline inversion surges** during one of the final recorded Beacon misalignments
- Possible **internal sabotage** or **ritual interference** by unknown parties—some speculate the involvement of the earliest **Black Sepulcher acolytes**

---

### 🔥 Key Outcomes:

- Dozens of relics lost or **interred beneath molten stone and divine backlash**
- Several **divine fragments** (including Aurionic) presumed entombed or corrupted
- **Memory resonance** from the event still bleeds through subterranean glyph vaults near Mangagoy and Highhold Rise
- **The Whispervault Archive** contains partial cartography and relic manifests tied to the Brimvault’s final cycle, sealed under classification "BrX-R7"

---

### 🧩 Narrative Significance:

- Lord Ambervale’s **Ember-Threaded Scrollcase** is believed to have originated from a courier attempting to flee the Brimvault during collapse
- **Aurion’s Unquenched Flame (Shard)** in Ambervale’s possession may be **material scraped from the Brimvault’s inner seal core**
- **Beacon Dial Anchor** fragments—once thought symbolic—may have been used in emergency redirection rituals before the collapse

---

> _"When the vault broke, the flame bled backward. That was no accident. That was the world forgetting what it owed the light."_  
> — Unknown archivist note found in the Whispervault, unsigned
