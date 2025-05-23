---
tags:
  - "#SessionNote"
  - "#TODO"
  - "#Group2"
actual_allies: []
actual_enemies: []
actual_factions: []
actual_locations: []
whichparty: "[[Campaign Group 2]]"
sessionnumber: ""
title: ""
in_game_start: ""
in_game_end: ""
sessiondate: 2026-04-24
group:
  - Group 2
present: []
encounters: []
absent: []
---

> [!infobox]+
> # `=this.group + " - Session " + this.sessionnumber + " - Summary"`
> ###### Info
>  |
> ---|---|
> **Session Number** | `INPUT[text:sessionnumber]`|
> **Title** | `INPUT[textArea(class(meta-bind-full-width)):title]`|
> **Session Date** | `INPUT[datePicker:sessiondate]`|
> **In-Game Start**|`INPUT[text:in_game_start]`|
> **In-Game End** |`INPUT[text:in_game_end]`|
> **Present** | `INPUT[inlineListSuggester(optionQuery(#Player AND #Group2 AND !"z_Templates"), useLinks(partial)):present]`|
> **Absent** | `INPUT[inlineListSuggester(optionQuery(#Player AND #Group2 AND !"z_Templates"), useLinks(partial)):absent]`|
> ###### Actual Info 
>  |
> ---|---|
> **Encounter(s)**| `INPUT[inlineListSuggester(optionQuery(#Encounter AND #Group2 AND !"z_Templates"), useLinks(partial)):encounters]`
> **Allies Encountered** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):actual_allies]` |
> **Enemies Encountered** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):actual_enemies]` |
> **Factions Encountered**|`INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):actual_factions]` |
> **Locations Visited** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates")):actual_locations]` |
#  `=link(this.whichparty) + " - Session " + this.sessionnumber + " - " + this.title`

## Pre -Session
### Twitch Intro
The golden mist has not yet faded from your thoughts.

Somewhere beyond time, in a place not charted by map nor mind, your feet touched sacred stone—an echo of a world sealed by divine hands. There, in the veiled sanctum of Aurion, you stood not as mortals, but as witnesses. Whispers carried by light itself unveiled secrets long buried: of gods who bargained, of seals unraveling, of a hunger that stirs beyond the veil.

You were marked—touched by the gods Aron, Lunara, and Velessa. Sigils now burn unseen on your souls, calling you beacons in a growing dark. And yet, even as answers emerged, deeper riddles linger: What ancient voice spoke from the Choir Vault? What fracture stirs within the faith itself?

Now cast back into the waking world, you return not simply with weapons and wounds—but with the Light That Remains.
### YouTube
🕯 *Pathfinder 2e – Thellade Campaign: Group 2*  
🎲 Session 08: [Insert Title]  
📍 Setting: The Outcast Isles – Kingdom of Kanda  

After a desperate confrontation with abyssal forces, the party awakens within the time-locked Sanctum of the Dawnsplit Crown—a divine refuge sealed away since the Rising. There, they encounter spectral echoes of ancient priests, sacred artifacts tied to the gods, and a dire prophecy hidden in fractured hymns. Each is tested, rewarded, and marked with the sigils of Aron, Lunara, and Velessa—chosen to stand against the darkness encroaching on Kanda.

But revelations come with burdens. One of Orcus’ lieutenants stirs beneath the veil. The seals are weakening.

Can the Light That Remains hold back what lurks beyond?

🧭 Join us as divine mysteries unravel, ancient truths emerge, and the weight of destiny deepens...

#Pathfinder2e #FantasyTTRPG #Thellade #OutcastIsles #ActualPlay #HomebrewSetting

## 📋 Session Prep Checklist

### 🧭 Strong Start
- [x] Opening scene prepared
- [x] Immediate hook for players
- [x] Clear problem or mystery introduced

> [!note|toggle]+ Strong Start Details
> - Opening location: Outer chambers of the Dawnsplit Sanctum, the veil between worlds thinning.
> - Immediate hook: Visions fade as the party awakens in the half-real, light-scarred sanctuary—sigils glowing faintly on their skin.
> - First conflict: Disturbances ripple through the sanctum—auras flicker, and a fractured echo of Elandor's voice warns: "The seals are failing. You must choose where to shine the light next."

---

### 🛤️ Possible Paths
- [x] 3–5 likely directions noted
- [x] Player goals cross-checked
- [x] Open-world consequences updated

> [!note|toggle]+ Possible Paths Details
> 1. Use the Dawnsplit Flamefont to activate a second vision or restore a broken seal.
> 2. Trace the echo of the Riftbound Harmonics to another divine vault.
> 3. Return to Lambaro via recall sigil—report visions to Thalia or Dr. Aruni.
> 4. Seek out the Crystal Seekers to analyze the glowing sigils.
> 5. Attempt to stabilize the sanctum’s failing chorus before it collapses permanently.

---

### 🧱 Key Scenes
- [x] At least 3 prepared set-piece scenes
- [x] Flexible transitions noted
- [x] Adjusted for expected player choices

> [!note|toggle]+ Scenes
> 1. Final communion with the Dawnsplit Flamefont—divine sigils burn into each PC’s essence.
> 2. Sudden spectral incursion as the sanctum's seal pulses violently—guardians flicker between reality.
> 3. Each PC experiences a cryptic echo (personalized vision) when touching the Choir Vault.
> 4. A hidden memory chamber opens if the party uses the proper harmonic sequence (skill challenge).
> 5. A message from Thalia arrives via divine sending—one of the outer seals has been breached.

---

### 🏰 Locations
- [x] Key locations updated in Obsidian
- [x] Visual aids or maps ready if needed
- [x] Environmental details or quirks listed
- [x] Location YAMLs linked in Session Note

---

### ⚔️ Encounters
- [x] Encounters sketched out
- [x] Social encounters outlined
- [ ] Skill challenges or chase mechanics prepped
- [ ] Encounter YAMLs linked in Session Note

---

### 🎲 Treasure and Rewards
- [x] Loot ideas or magic items brainstormed
- [ ] Milestone markers ready
- [x] Roleplay / social rewards considered

> [!note|toggle]+ Loot/Treasure
> 1. Sanctified Choir Moonstone – stores one divine vision per week (usable for prophecy).
> 2. Dawnsplit Signet (minor divine boon: 1/day reroll against undead or abyssal).
> 3. Whispered Fragment – contains half-formed memory tied to a Verse.
> 4. Radiant Salve (heals 3d6, cures one negative condition, 2 uses).
> 5. Choir Vault Echo Key – required to open a hidden vault later in the campaign.

---

### 🔥 Secrets and Clues
- [x] 10 secret facts, rumors, or hooks prepared
- [x] Connect to player backstories if possible

> [!note|toggle]+ Secrets ListW
> 1. Kieran’s bloodline is tied to an ancient order of divine bards.
> 2. Tyra’s sigil mirrors one worn by Aurion’s last paladin before the Rising.
> 3. Elandor’s echo was fragmented—part of his essence may still be trapped.
> 4. One of the Seven Seals has cracked near Mangagoy—divine interference blocked full vision.
> 5. The Dawnsplit Oculus can be realigned during a lunar convergence to open a rift to the Divine Chorus.
> 6. Velessa’s presence seems newer than the others—suggesting a shifting divine hierarchy.
> 7. The memory vault hints that one divine realm was destroyed outright.
> 8. The Riftborn are reacting to divine signatures—someone is guiding them.
> 9. A corrupted Echo of Elandor may have escaped into the Deep Dark.
> 10. A Pre-Rising cleric’s soul is still bound beneath the sanctum altar.

---

### 🧹 Cleanup Tasks
- [x] Last session notes reviewed
- [ ] Player downtime activities processed
- [x] World events updated (politics, factions)

---

### 📖 Session Structure
- [x] Intro → Exploration → Conflict → Resolution flow sketched
- [x] Planned session "end scenes" ready


### Quick References
> [!metadata|location] Locations
> ```dataview
> TABLE WITHOUT ID
>   locations AS "Locations",
>   file.link as "Encounter"
> FROM "01 Campaign"
> WHERE 
>   whichparty = this.whichparty
>   AND sessionnumber = this.sessionnumber
>   AND contains(tags, "#Encounter")
> SORT file.name ASC
> ```

>[!metadata|location] Encounters
> ```dataview
> TABLE WITHOUT ID
>   file.link AS "Encounter",
>   factions AS "Factions",
>   encountertype AS "Type(s)",
>   allies AS "Allies",
>   enemies AS "Enemies"
> FROM "01 Campaign"
> WHERE 
>   whichparty = this.whichparty
>   AND sessionnumber = this.sessionnumber
>   AND contains(tags, "#Encounter")
> SORT file.name ASC
> ```

## During
### Events

### Quick References
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

"These relics were forged to resist what gods alone could not.  
They are not weapons of war… but truths the world has forgotten.  
They may be your only hope against what stirs from the Deep, from the Fire, and from Beyond."

"I can guide you to the first. But I cannot walk this path. I am tethered to memory… you are forged of motion."

"And know this—some of the relics have already begun to awaken. Not all will wait to be found.  
And not all who seek them… do so in service of the Light."

## 🔍 Breadcrumb Trail to the Emberward Beacon

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

"The beacon tied to Aurion… it rests still upon the Isle of Kanda. That much I know. It was the first to be placed, and the last to burn when the Pact was sealed."
_She closes her eyes, voice slowing._
"I remember the chant of the Sunward choir as they marched from the caldera’s edge. South, they went—toward the sea cliffs, where no shadows fall at noon."
_Pause. Her voice grows distant._
"If records remain, they will be buried deep within the temple vaults of Kanda… or perhaps misfiled among the tower scrolls in Boba, where light and fire were once studied together."
"Look for echoes of the sun’s descent… in places where dawn once lived."


>[!metadata|encounter] Encounters
> ```dataview
> TABLE WITHOUT ID 
> 	file.link AS "Encounter",
> 	locations AS "Location",
> 	factions AS "Factions",
> 	allies AS "Allies",
> 	enemies AS "Enemies"
> FROM "01 Campaign" 
> WHERE contains(whichsession, this.file.link) AND contains(tags, "#Encounter")
> SORT file.name ASC
> ```


> [!column|2 no-title]
>> [!metadata|characters] Other Allies
>> ```dataview
>> TABLE WITHOUT ID ally AS "Allies"
>> FROM ""
>> FLATTEN actual_allies AS ally
>> WHERE file.name = this.file.name
>> SORT ally
>> ```
>
>> [!metadata|characters] Other Enemies
>> ```dataview
>> TABLE WITHOUT ID enemy AS "Enemies"
>> FROM ""
>> FLATTEN actual_enemies AS enemy
>> WHERE file.name = this.file.name
>> SORT enemy
>> ```
>
>> [!metadata|organizations] Other Factions
>> ```dataview
>> TABLE WITHOUT ID faction AS "Factions"
>> FROM ""
>> FLATTEN actual_factions AS faction
>> WHERE file.name = this.file.name
>> SORT faction
>> ```
>
>> [!metadata|location] Other Locations
>> ```dataview
>> TABLE WITHOUT ID location AS "Locations"
>> FROM ""
>> FLATTEN actual_locations AS location
>> WHERE file.name = this.file.name
>> SORT location
>> ```





### Travel & Rest



### Loot, Rewards & Purchases



## Post
### New Creations



### Detailed Notes from Transcript and VTT Log


