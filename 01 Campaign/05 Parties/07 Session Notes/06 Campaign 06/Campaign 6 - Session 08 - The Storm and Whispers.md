---
tags:
  - "#SessionNote"
  - "#TODO"
  - "#Group6"
actual_allies: []
actual_enemies: []
actual_factions: []
actual_locations:
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/The Sundering Deep.md|The Sundering Deep]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Kanda Isles.md|Kanda Isles]]"
  - "[[01 Campaign/01 World/06 Settlements/The Outcast Isles/Kanda Isles/Kanda.md|Kanda]]"
whichparty: "[[Campaign Group 6]]"
sessionnumber: "08"
title: |
  Storm and Whispers
in_game_start: 06 Dawnmarch 212 PR 07:00
in_game_end: ""
sessiondate: 2026-05-18
group:
  - Group 6
present:
  - "[[Grazkiel]]"
  - "[[Varis]]"
  - "[[Spike]]"
  - "[[Kibo Shi]]"
  - "[[Boud-Celsus]]"
encounters:
  - "[[Storm and Whispers]]"
  - "[[Entering Kanda]]"
absent:
  - "[[Garrik]]"
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
> **Present** | `INPUT[inlineListSuggester(optionQuery(#Player AND #Group6 AND !"z_Templates"), useLinks(partial)):present]`|
> **Absent** | `INPUT[inlineListSuggester(optionQuery(#Player AND #Group6 AND !"z_Templates"), useLinks(partial)):absent]`|
> ###### Actual Info 
>  |
> ---|---|
> **Encounter(s)**| `INPUT[inlineListSuggester(optionQuery(#Encounter AND #Group6 AND !"z_Templates"), useLinks(partial)):encounters]`
> **Allies Encountered** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):actual_allies]` |
> **Enemies Encountered** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):actual_enemies]` |
> **Factions Encountered**|`INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):actual_factions]` |
> **Locations Visited** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates")):actual_locations]` |

# [[Campaign Group 6]] - Session 08 - Storm and Whispers

## Session Prep Checklist

### Strong Start
- [x] Opening scene prepared
- [x] Immediate hook for players
- [x] Clear problem or mystery introduced

> [!note|toggle]+ Strong Start Details
> - Opening location: Aboard the *Emberwake*, early dawn, mist-heavy waters ~15 miles from Kanda.  
> - Immediate hook: Dreams have shaken the party. Captain Greaves calls for a storm protocol meeting.  
> - First conflict: Initiate the *Storm and Whispers* skill challenge—sea pressure mounts as supernatural mist rolls in.

---

### Possible Paths
- [x] 3–5 likely directions noted
- [x] Player goals cross-checked
- [x] Open-world consequences updated

> [!note|toggle]+ Possible Paths Details
> 1. Speak to Captain Greaves about the cult cargo (possible ally or confrontation).  
> 2. Attempt to offload or sabotage remaining relics before reaching port.  
> 3. Follow manifest lead: find Tobias Greyash in Kanda’s Chapel Quarter.  
> 4. Deliver Sister Malira and Zakka to the Sun King or Temple of Aurion.  
> 5. Investigate the black-sailed ghost ship’s course (Kibo may want to Scry).  

---

### Key Scenes
- [x] At least 3 prepared set-piece scenes
- [x] Flexible transitions noted
- [x] Adjusted for expected player choices

> [!note|toggle]+ Scenes
> 1. Storm and Whispers – Full 5-stage skill challenge with potential for ship delay or crew loss.  
> 2. Kanda Arrival – Theatre of the Mind dock scene; includes Euril and Pop's disappearance, Grazkiel’s intro.  
> 3. Mob Tension at the Docks – NPCs whisper about the salted ship and Malira’s return; crowd may form if dreams are leaked.  
> 4. Optional Captain Confrontation – Players may push Greaves over his knowledge of the crates.  
> 5. Temple or Bureaucratic Blockade – Early attempt to reach the Sun King is met with red tape unless players get creative.  

---

### Locations
- [x] Key locations updated in Obsidian
- [x] Visual aids or maps ready if needed
- [x] Environmental details or quirks listed
- [x] Location YAMLs linked in Session Note

Notable Locations:
- The Emberwake (ship)
- Kanda City Docks
- Chapel Quarter (Kanda)
- Temple of Aurion
- Captain's Quarters
- Cargo Hold (sealed crate, relic remnants)

---

### Encounters
- [x] Encounters sketched out
- [x] Social encounters outlined
- [x] Skill challenges or chase mechanics prepped
- [x] Encounter YAMLs linked in Session Note

Prepared Encounter Types:
- Skill Challenge: Storm and Whispers
- Roleplay: Captain Greaves, First Mate Caldris
- Social: Dock guards, temple blockades, bureaucratic hurdles
- Potential Combat: Mob riot (if dreams or verses leak), ambush by cult scouts

---

### Treasure and Rewards
- [x] Loot ideas or magic items brainstormed
- [ ] Milestone markers ready
- [x] Roleplay / social rewards considered

> [!note|toggle]+ Loot/Treasure
> 1. Scroll of Warding Dissolution (already acquired)  
> 2. Greyash Coin (reactive icon for hidden glyphs)  
> 3. Chorus Shard (1-use psionic effect, if cyst remains)  
> 4. Priority docking license from Greaves (if swayed)  
> 5. Temple access reward for delivering Zakka and Malira  

---

### Secrets and Clues
- [x] 10 secret facts, rumors, or hooks prepared
- [x] Connect to player backstories if possible

> [!note|toggle]+ Secrets List
> 1. The Second Verse was meant to activate the cyst and echo the Third.  
> 2. “Greyash” is a pseudonym—real name found in Temple criminal ledgers.  
> 3. Cargo label was falsified—payment came from an undersea account in Boba.  
> 4. The salted ghost ship was reanimated by a third party—not the cult.  
> 5. Greaves is unaware of the cargo’s full nature, but lied to protect his smuggling history.  
> 6. The worm-etched coin reacts near verse-inscribed walls or relics.  
> 7. Sister Malira was once a Sunward of Aurion—she lost her title after a failed prophecy.  
> 8. Zakka’s chants are fragments of a lost dwarven prophecy from the Deep Dark.  
> 9. The Unseen Choir Effigy is one of seven related verse relics.  
> 10. Tobias Greyash operates beneath Kanda’s Chapel Quarter via temple tunnels.  

---

### Cleanup Tasks
- [x] Last session notes reviewed
- [x] Player downtime activities processed
- [x] World events updated (politics, factions)

---

### Session Structure
- [x] Intro → Exploration → Conflict → Resolution flow sketched
- [x] Planned session end scenes ready

Suggested Flow:
- Cinematic Dream Intro
- Storm and Whispers Skill Challenge
- RP aboard the Emberwake (Malira, Greaves, etc.)
- Arrival at Kanda (Euril/Pop vanish, Grazkiel joins)
- Decision fork: inform authorities, chase Greyash, conceal info

---

## Pre-Session Highlights

### Cinematic Session Introduction  
Tone: Mysterious, Uneasy  

Not all storms come with thunder.  

The *Emberwake* sails onward—salt-washed decks beneath a whispering sky—but the silence carries too much weight. The Verse hums in the hull. Ashes of the Choir’s relics drift unseen in the cargo hold, and a note sealed in bone-wax names the next contact: Greyash, waiting in Kanda.  

They thought themselves unnoticed.  

But just before midnight, the sea answered back. Black sails rose from the depths. A salted ghost captain, eyes hollow with knowing, whispered a warning before being unmade:  
“We were only the chorus. The hymn is still coming.”  

Now, as dawn breaks across Day 6, the *Emberwake* groans through rising mist. The crew sleeps fitfully. The party wakes from dreams stitched in psalm and shadow—dreams they did not choose, and cannot fully remember.  

The sea is watching.  

Welcome back to Thellade.

---

### YouTube Video Description Summary

Session 8 – Storm and Whispers  

As the *Emberwake* slices across the Sundering Deep, Campaign Group 6 finds itself burdened with more than cargo. Aboard the ship lies a sealed crate tied to the cult of Orcus—its contents resonating with verse fragments too dangerous to speak aloud. A courier manifest names a drop point in Kanda’s Chapel Quarter: a cult agent known only as Greyash.  

But then came the salted ship.  

A spectral pirate vessel emerged under the light of the moons. A ghost captain, drawn by the resonance of the verse, launched an attack meant to silence Sister Malira—the lone survivor of a failed seal site beneath Lambaro. The party fended off the assault... barely.  

And now they dream. Each party member receiving a haunting vision: reflections speaking back, forgotten names, sealed mouths, and black horizons.

---

### Dream Recap – Night of Day 4

Garrik – "The Chains of the Deep"  
Walks the ocean floor. A submerged moon, writhing chain-spines. Cannot speak—his voice is already used.  
Effect: Wakes gagged and sore-throated.  

Kibo – "The One Who Listens"  
Reflection floats behind cabin window, an ear where its mouth should be. His own voice says: “I will carry the verse.”  
Effect: Repeats the phrase aloud on waking.  

Spike – "The Choir of Glass"  
Reflection smiles in the cyst’s surface. When shattered, it sings in a child’s voice. Shards embed in his chest.  
Effect: Divine spells emit harmonic resonance after cast.  

Varis – "Reflections that Speak"  
Reflection speaks: “She cannot escape again.” Grabs him, pulls him into the sea.  
Effect: All Divination spells today return an extra false image.  

Boud-Celsus – "The Choir Cradle"  
Suspended in humming void, mouths rotate below. A whisper: “You will forget your name.”  
Effect: Name sounds wrong when spoken aloud—briefly forgotten.

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


