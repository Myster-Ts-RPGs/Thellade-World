---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group4"
whichparty: "[[Campaign Group 4]]"
sessionnumber: "06"
title: |
  The Histories
encountertype:
  - Combat
allies:
  - "[[Elandor]]"
locations:
  - "[[01 Campaign/01 World/08 Points of Interest/04 Temple or Shrine/Lunara/Sanctum of the Dawnsplit Crown.md|Sanctum of the Dawnsplit Crown]]"
---
> [!infobox]+
> # `=this.whichparty + " - Session " + this.sessionnumber + " - Summary"`
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
`=this.whichparty + " - Session " + this.sessionnumber  + " - " + this.title`

## Encounter-Specific Info

> [!info]- **Social Encounter Details**
> - Important NPCs: [[Elandor]] (Herald of Aurion, Last Timebound Cleric)
> - Factions Involved: [[The Dawnbringers of Lunara]], [[The Eternal Concord]], [[Arcane Wardens]] (historical relevance only)
> - Goals/Objectives: Learn the true origin of Thellade’s sanctity, the nature of the bridges, and the dual histories of The Dark One and the Rising; uncover the truth about divine cooperation and its collapse.
> - Negotiation Leverage: The party's recent divine intervention from Aurion, their survival against Veltrazhar’s Echo, and the reactivation of the sanctum’s sigils signal their worthiness to be entrusted with long-guarded truths.
> - Risks for Failure: Elandor withholds key insight into the original divine accord, including suppressed truths about Asmodeus’ early role; the party leaves with incomplete understanding of the seal’s significance and the coming dangers.
> - Special Rewards: Access to the Sanctum’s Echo Archive; updated map fragment showing ancient sanctum nodes; Lore boost (gain a permanent +1 circumstance bonus to Recall Knowledge about divine or planar history while in Thellade); gain “Bearer of Forgotten Truths” trait for future interactions with divine or guardian entities.

## Quick References

# The Dark One
## 🕯️ Dialogue: "The Bridges and the Breaking"

> _Elandor runs her hand across a wall of cracked golden sigils, their light flickering with each step._

**Elandor (softly):**  
"Before the silence… before the seals… there were bridges."  
_She pauses and looks upward, through a shattered dome that once caught the dawn._  
"They stretched between worlds—ribbons of divine will—woven not by one god, but all of them."

---

> _As she walks, floating slivers of crystal around the party begin to shimmer faintly, showing flashes of ruined cities, stars burning from the inside, skies folding in on themselves._

**Elandor:**  
"The gods built those bridges not for glory... but retreat.  
There was something coming. A hunger not of a realm, not of ambition... but of unbeing."  
_She exhales slowly._  
"They called it 'The Dark One'—because naming it more precisely was impossible. It had no form. Only unraveling."

---

> _She gestures toward a mural partially covered in dust—ghostly figures walking light-bridges into a forested cradle, while shadow swells behind them._

**Elandor:**  
"Thellade was untouched. No one knows why. A spark of sanctuary, spared while the stars fell."  
_She kneels to brush away ash from the mural’s lower edge._  
"The bridges channeled millions. Worlds bled into this haven. But even sanctuary breeds pursuit..."

---

> _She stands slowly, her voice growing quieter, weightier._

**Elandor:**  
"The Dark One turned toward the bridges. It tried to cross—to unravel this world as it had the rest."  
_She lifts her hand, and one of the floating sigils splits, warping in time and collapsing inward on itself._  
"But the gods stood together... one last time."

---

> _She turns to face the party directly._

**Elandor (with reverence):**  
"They broke the bridges. Shattered their own works.  
Each severed strand cost them… more than we can measure."  
_Pause._  
"Some say they weakened themselves. Others say they changed.  
All we know is—after that day, the divine chorus no longer sang in harmony."

---

## 🔥 Dialogue: "The Time That Burned"

> _She leads them down a side hall lined with collapsed temporal glyphs, half-stuck in looping animations of flame and shadow._

**Elandor:**  
"Centuries passed. And then… a second fire came."  
_She pauses by a burnt statue of Lunara and Aurion locked in mutual protection._  
"Demons clawed through the veil. Not one, not a few—but a tide."

---

> _She draws a radiant thread from the air, bending it between her fingers like a timeline._

**Elandor:**  
"They used time—not fully, not as the Dark One did. But echoes of the same madness.  
Backward burns, fractured moments, wounds that healed wrong."  
_She lets the thread snap and fade into motes of light._  
"We called it the Rising. Not for what rose… but for what we lost when it did."

---

> _Her voice lowers, almost inaudible as she walks through the collapsed prayer chamber._

**Elandor (softly):**  
"The gods did not stand together this time. No bridges. No unity. Only bargains. Only bindings."  
_She stops walking._  
"That is when the seals began."
## 🔥 Dialogue: "The Pactbearer's Shadow – The Rising and the Lieutenants"

> _Elandor walks slowly past a shattered dais where once the High Sunward knelt in flame. Her voice echoes with reverence and quiet ache._

**Elandor (solemn):**  
"The Rising did not begin as a war... It began as a whisper. A thinning. The veil between this world and the Abyss… unraveling like old cloth."

---

> _She lifts a hand, and faint spectral images flare along the sanctum walls: druids shaping stone, mages weaving sky-sigils, clerics igniting radiant barriers._

**Elandor:**  
"The peoples of Thellade did not stand idle. Druid, magus, priest—we stood together. We tried to cage the sky.  
To seal the wounds in the world with will alone. But it was not enough."

---

> _A nearby mural reveals monstrous silhouettes breaching earth and sky, coalescing around six distinct Abyssal figures—each monstrous, each named in silence._

**Elandor:**  
"Orcus did not come alone. He loosed six lieutenants—mouths of hunger and ruin—each bent on unraveling the divine threads that held this world together."

---

> _She pauses by a scorched obelisk, half-covered in golden script that flickers between languages, some forgotten._

**Elandor:**  
"We could not repel them… only delay. So we chose the unthinkable. We would bind the lieutenants—trap them between pacts and light.  
But even that required more than Thellade could give."

---

> _She kneels and places her palm to the floor. Infernal sigils bloom faintly beneath her fingers._

**Elandor (quietly):**  
"That was when the High Sunward… *Solivar Maeron*… stepped forward. He gave up his name—his place in the Light—and turned to Asmodeus."

---

> _The air shifts. A hush settles. The sanctum dims to red._

**Elandor:**  
"In secret, he forged the Pact of Emberwake. Asmodeus would lend his chains, his law, his binding power—to seal the six.  
And in return... the cost was steep."

---

> _Crystalline fractures in the sanctum glow faintly, then dull to grey._

**Elandor:**  
"The leylines dimmed. The flow of magic fractured. Aetherglass—once drawn from vibrant streams of power—ceased to grow.  
Wards faded. Artifice withered. What was once vibrant… became silence."

---

> _She leads the party to a cracked mural of Thellade, the Kanda Isles wreathed in mist and broken glyphs._

**Elandor:**  
"A barrier was raised around the Kanda Isles—an arcane quarantine.  
Its wards bore no god's name… only clause and consequence. A boundary of law, not light."

---

> _Her voice drops lower, conspiratorial._

**Elandor:**  
"Only a few know the whole truth. The Arcane Wardens. The highest circles of Aurion and Lunara. And… the covenant keepers of Asmodeus."

---
## 🌑 Dialogue: "The Threads Unravel – Current History"

> _Elandor turns away from the mural of the Kanda Isles, her form flickering slightly, as though time itself is uncertain around her._

**Elandor (whispered):**  
"The Pact still holds... but it bleeds."

---

> _She slowly rises, gaze distant, voice now edged with urgency._

**Elandor:**  
"I have felt it. The bindings crack.  
**Veltrazhar** walks—his chains shattered in echo. **Threxul**, the Desecrator of Hope, has vanished from his seal entirely.  
And **Azael, the Bleeding Crown**, has begun to whisper again."

---

> _Faint pulses run along the sanctum floor, reacting to her words._

**Elandor:**  
"There is another—**Xal’Zul**, the Choir of Worms.  
Bound in many chains… some still hold. Others have snapped like threads left too long in shadow."

---

> _She moves toward a suspended glyphic map, flickering leyline routes overlaid with arcs of uncontrolled magic._

**Elandor:**  
"The leylines are surging—rising in places once long dead.  
Dormant nexuses are rupturing in waves. Spells too simple for consequence now peel at the seams of the world.  
We sealed the lieutenants with divine calculus. Now, even a child's prayer may undo what cost us centuries."

---

> _She looks down, trembling._

**Elandor:**  
"I felt the breach. A shadow older than any Abyssal hand. Not the Dark One itself… but one of its minions.  
It came through first—testing the boundary. Weakening it.  
And in that moment… the seals lost their tension."

---

> _The sanctum groans faintly as if in mourning. Elandor’s light dims._

**Elandor (gravely):**  
"Asmodeus will not forgive this. The power he hoarded from our world—stripped from ley and field—is rushing back.  
The magic is no longer bound. It is wild. Unclaimed."

---

> _She turns back to the party, expression hardened._

**Elandor:**  
"If this continues, Thellade may face ruin not from one direction—but three.  
The Abyss stirs. The Infernal Lords will lash out to reclaim their loss.  
And if the Dark One gathers once more..."

_Pause._

**Elandor (quietly):**  
"Then all this… may only have been the prelude."

## 🕯️ Dialogue: "The Last Light – Plea, Offer, and Tease"

> _Elandor’s gaze lingers on the party as the golden sigils dim and shift into a slow spiral around them. Her voice is no longer heavy with sorrow—but with purpose._

**Elandor:**  
"There is still a path.  
One not paved in seals or sacrifice… but in remembrance."

---

> _She lifts a trembling hand, and light threads extend into the air—each forming the image of a relic: dim, stylized echoes of ancient power._

**Elandor:**  
"When the bridges collapsed… when Thellade was sealed… our leaders scattered relics of the old world.  
Artifacts carried across the bridges—too powerful, too dangerous to remain.  
Each entrusted to the guardians of a land. Each tied to a god. Each… still out there."

---

> _The relic echoes flare once, and begin to slowly rotate in place like constellations._

**Elandor (naming them slowly):**  

- **The Emberward Beacon** — *Aurion’s relic*, hidden beneath the sunken spires of a Pre-Rising shrine deep within the Outcast Isles.  
- **The Moondusk Mirror** — *Lunara’s relic*, rumored lost beneath the glacierfalls near **Folmouth**.  
- **The Woven Flameheart** — *Aevaris’ relic*, secreted away within the tangled ruins beneath **Styrmhold’s arcane colleges**.  
- **The Stillroot Chalice** — *Eldath’s relic*, hidden among the petrified groves near **Montak’s lost oasis**.  
- **The Verdant Crown** — *Faylen’s relic*, buried within a sunken temple beneath **Bergav’s weeping cliffs**.  
- **The Avalanche Core** — *Isfyrra’s relic*, encased in frost-iron deep within the slopes of **Wolf-Hollow’s buried vaults**.  
- **The Guiding Quill** — *Ivelios’ relic*, interred within a crystalline observatory high above **Revalia**.  
- **The Stillveil Locket** — *Nimara’s relic*, sealed inside the mist-laden ruins of **Bayland’s drowned catacombs**.  
- **The Forgeheart Anvil** — *Thalgrim’s relic*, entombed in basalt within the volcanic caverns sacred to the **Blacktop Clans**.  
- **The Oathkeeper’s Chain** — *Valdros’ relic*, broken into links and hidden across the high peaks encircling **Oarkledge**.

---

> _She draws a line from the Emberward Beacon to a stylized map of the Outcast Isles, now glowing faintly._

**Elandor:**  
"You are from the lands where the last bindings remain:  
One is buried beneath the tides near **Mangagoy’s fractured beacon core**.  ([[01 Campaign/03 Entities/02c Orcus' Lieutenants/Zorvithrax]])
A second —still dormant—in the depths beneath **Seaside Cape**." ([[01 Campaign/03 Entities/02c Orcus' Lieutenants/Goriath]])
And the  third… that of [[01 Campaign/03 Entities/02c Orcus' Lieutenants/Xal'Zul|Xal'Zul]], four of his mouths remain bound, one near the City of Boba and three in the Deep Dark

---

> _Her hand lowers. The floating relics dim and drift upward, vanishing like fading stars._

**Elandor (final plea):**  
"These relics were forged to resist what gods alone could not.  
They are not weapons of war… but truths the world has forgotten.  
They may be your only hope against what stirs from the Deep, from the Fire, and from Beyond."

---

> _She steps toward the party, placing a hand over her heart._

**Elandor (softly):**  
"I can guide you to the first. But I cannot walk this path. I am tethered to memory… you are forged of motion."

---

> _She begins to fade, her voice a whisper carried on light._

**Elandor (tease):**  
"And know this—some of the relics have already begun to awaken. Not all will wait to be found.  
And not all who seek them… do so in service of the Light."








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

## 🔍 Breadcrumb Trail to the Emberward Beacon
**Elandor (gazing eastward):**  
"The beacon tied to Aurion… it rests still upon the Isle of Kanda. That much I know. It was the first to be placed, and the last to burn when the Pact was sealed."

_She closes her eyes, voice slowing._

"I remember the chant of the Sunward choir as they marched from the caldera’s edge. South, they went—toward the sea cliffs, where no shadows fall at noon."

_Pause. Her voice grows distant._

"If records remain, they will be buried deep within the temple vaults of Kanda… or perhaps misfiled among the tower scrolls in Boba, where light and fire were once studied together."

**Elandor (softly):**  
"Look for echoes of the sun’s descent… in places where dawn once lived."
### 🏙️ Leads in **Kanda City**
1. **Sunveil Hollow Library Ledger** – A damaged ledger lists construction deliveries to a "beacon terrace" under royal seal, marked only by a glyph of Aurion’s open hand.
2. **Sunveil Vault Custodian’s Notes** – A sealed vault within the Temple of Aurion mentions a “light-bearing descent” leading toward the southern cliffs, accessible only during high sun.
3. **Street Mural in Glimmershade** – A fading Pre-Rising mural shows a line of pilgrims walking southward from the volcano, bearing radiant chains. An inscription reads: *“When the sun bleeds, the fire will rise.”*
4. **Old Cartographer’s Map Fragment** – A crumbling parchment in the Ashfire Bastion’s archives includes a cliffside marked *“Beacon of the Second Flame – DO NOT RETURN.”*

### 🏛️ Leads in **Boba**
5. **Sunfire Tower Astronomer’s Record** – Star charts note an anomalous radiance sighted “beyond the southern ridges of Kanda” three days before the leylines began to surge again.
6. **Sermon Fragment in the Temple of Light** – A homily attributed to a post-Rising cleric claims: *“The light did not die—it fled to stone and sea, waiting for dawn’s echo.”*
7. **Merchant Folklore in Ironveil Commons** – A traveling relic dealer tells of an ancient beacon “that scorched a king’s shadow into the cliffs,” visible only at equinox with a true Aurionite lens.
8. **Crate Manifest in Lowmire Gutter** – A smuggler’s inventory lists “sun-crystals from the fire edge,” confiscated generations ago and last traced to a burned-out chapel near Kanda’s southern bluff.

---

> **Teaser Summary Line (for Elandor or later NPC):**  
> “They say the fire fell south—beyond the reach of memory, beyond the reach of shadow. You will know it by where the sun does not cast shadow at noon.”

> _Elandor steps lightly near a decayed root carving along the sanctum’s edge—a sculpture of ivy and stone once sacred to Faylen._

## The Verdant Crown
**Elandor (with sadness):**  
"The Verdant Crown… it once bloomed at the edge of Serrulata’s cliffs—where the goddess wept after the bridges fell.  
It was buried beneath the rootstone after the Blooming War, sealed by the Faywatchers beneath a living altar."

_She looks up, distant._

"They say if you kneel in the Hall of Thorns in **Bergav**, and speak your grief in the mother tongue of the forest, the ivy will answer.  
But the rootstones have begun to bleed. Something... is unearthing what should sleep."

**Elandor (warning):**  
"If you seek the Crown, start in Bergav’s archives—or its gardens. But tread carefully.  
The dead may already walk beneath the petals."
