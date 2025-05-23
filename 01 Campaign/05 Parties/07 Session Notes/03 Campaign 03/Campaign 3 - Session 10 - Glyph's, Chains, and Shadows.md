---
tags:
  - "#SessionNote"
  - "#TODO"
  - "#Group3"
actual_allies: []
actual_enemies: []
actual_factions: []
actual_locations:
  - "[[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy.md|Mangagoy]]"
whichparty: "[[Campaign Group 3]]"
sessionnumber: "10"
title: Glyphs, Chains, and Shadows
in_game_start: 04 Dawnmarch 212 PR 13:46
in_game_end: ""
sessiondate: 2025-05-21
group:
  - Group 3
present:
  - "[[Tian Ling]]"
  - "[[Kothar]]"
  - "[[Hans Dane]]"
  - "[[Ephi]]"
  - "[[Batrok]]"
  - "[[Karnak]]"
encounters:
  - "[[Debrief and Rubble Search]]"
  - "[[Food Spoilage in the Market]]"
  - "[[Hans' Medallion Trail]]"
  - "[[Tracing the Sigil Echo - Maelthaz]]"
  - "[[Kelthorne's Shadow]]"
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
> **Present** | `INPUT[inlineListSuggester(optionQuery(#Player AND #Group3 AND !"z_Templates"), useLinks(partial)):present]`|
> **Absent** | `INPUT[inlineListSuggester(optionQuery(#Player AND #Group3 AND !"z_Templates"), useLinks(partial)):absent]`|
> ###### Actual Info 
>  |
> ---|---|
> **Encounter(s)**| `INPUT[inlineListSuggester(optionQuery(#Encounter AND #Group3 AND !"z_Templates"), useLinks(partial)):encounters]`
> **Allies Encountered** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):actual_allies]` |
> **Enemies Encountered** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):actual_enemies]` |
> **Factions Encountered**|`INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):actual_factions]` |
> **Locations Visited** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates")):actual_locations]` |

#  [[Campaign Group 3]] - Session 10 - Glyphs, Chains, and Shadows

## Pre-Session

### Cinematic Session Introduction (Twitch Recap – Mysterious Tone)

> The fires of the riot have cooled, but the city is far from quiet. Beneath Mangagoy’s cracked streets and fractured wards, something stirs—a whisper without a mouth, a shadow without a source.  
>  
> In the wake of the Embermoon Surge, threads unravel: glyphs shimmer in forgotten alleys, names echo where silence once reigned. The Ashen Vanguard speaks of stabilization, but the pulse beneath the stone says otherwise.  
> 
> Smoke coils into the pale sky over the Ashgate District. The streets are scorched with sigil-burn and riot magic, sanctified glyphs flicker erratically in broken wards, and the remnants of divine shock still thrum in the cobblestones.
> 
> The party stands among the aftermath—fresh from their clash with the Glyphbearer Agent, a corrupted caster of an unknown order wielding sigil-anchored magic, weaponized ritual glyphs, and binding light. The Agent's spells immobilized some of the party members, sheared through both flesh and essence, and reweaved her vitality.
> 
> She did not fight alone. Accompanied by Memory Hounds—twisted psionic beasts steeped in mental residue—and masked Cutthroats trained in distraction and assassination, the Agent nearly turned the stairways of Ashgate into an execution and extrication ground.
> 
> Now, the streets are silent but raw. The last echoes of divine power still tremble in the fabric of the city.
> 
> As the party regroups, maps burned and secrets spilled, they are no longer chasing the storm.  
>  
> The storm is watching them.

---

### YouTube Video Description Summary

> The Embermoon Surge has passed, but the scars it left across Mangagoy are fresh and bleeding. The Ashgate District smolders in silence, its streets carved by divine backlash and occult sabotage. As sanctified glyphs crackle and memory-laced beasts dissipate into smoke, the party takes stock of what they've survived—and what still hunts them.
>
> With the Ashen Vanguard granting them field authority, rumors stirring of a tetherpoint beneath Highhold Rise, and the group reeling from a brutal ambush by a Glyphbearer Agent and her summoned Memory Hounds, they now stand amid arcane wreckage and unraveling threads. The attack was no random strike. It was extraction... or perhaps a warning.
>
> Now burdened with rumors, a burned map, a sealed letter, and questions no one seems willing to answer, the party must decide where to turn next.
>
> And someone—or something—is still listening.
>
> When silence lingers too long, it’s not always peace.  
> Sometimes it’s a breath, waiting to speak.



## 📋 Session Prep Checklist
### 🧭 Strong Start
- [x] Opening scene prepared
- [x] Immediate hook for players
- [x] Clear problem or mystery introduced

> [!note|toggle]+ Strong Start Details
> - Opening location: Alley near [[Tallowgate]] and [[Gullsway]], minutes after the ambush
> - Immediate hook: The party regroups and immediately resumes their investigation into the source of sabotage and hidden glyphwork—"skullduggery in the streets"
> - First conflict: A trail of arcane residue or disturbed rubble leads toward a hidden cache or mark left by the Glyphbearer agents, raising questions about how deep Kelthorne’s operation runs

### 🛤️ Possible Paths
- [x] 3–5 likely directions noted
- [x] Player goals cross-checked
- [x] Open-world consequences updated

> [!note|toggle]+ Possible Paths Details
> 1. Investigate arcane residue, symbols, or markings in the rubble and side alleys around Ashgate tied to glyphbearer movement
> 2. Continue to track leads on Kelthorne’s involvement using evidence from the attack and the recovered map
> 3. Locate Maelthaz and retrieve Kaleor’s scream to begin reversing the werebear curse and restoring druidic duties
> 4. Follow the next leg of Hans’ medallion trail through underground markets or technomantic smugglers
> 5. Finalize the legal deed transfer of the sewer hideout by completing remaining civic tasks or confronting obstructive bureaucrats

### 🧱 Key Scenes
- [x] At least 3 prepared set-piece scenes
- [x] Flexible transitions noted
- [x] Adjusted for expected player choices

> [!note|toggle]+ Scenes
> 1. Debrief and rubble search—players uncover a ritual sigil half-buried in the cobbles linked to a secondary glyph relay
> 2. Shadowed surveillance scene—someone watches the party from the rooftops, hinting Kelthorne still has eyes on them
> 3. Failed crop delivery scene in the central square as rotted produce floods a merchant stall, drawing Temple attention
> 4. Visit to the Temple of Lunara or city archives to uncover Maelthaz’s last known activity
> 5. Surprise encounter with a memory-warped NPC who handled the medallion unknowingly

### 🏰 Locations
- [x] Key locations updated in Obsidian
- [ ] Visual aids or maps ready if needed
- [x] Environmental details or quirks listed
- [ ] Location YAMLs linked in Session Note

### ⚔️ Encounters
- [x] Encounters sketched out
- [x] Social encounters outlined
- [ ] Skill challenges or chase mechanics prepped
- [ ] Encounter YAMLs linked in Session Note

### 🎲 Treasure and Rewards
- [x] Loot ideas or magic items brainstormed
- [ ] Milestone markers ready
- [x] Roleplay / social rewards considered

> [!note|toggle]+ Loot/Treasure
> 1. Fragmented glyph rod with embedded tracking rune (faintly reacts to Kothar)
> 2. Cracked lens used by glyphbearers to trace civic leyline paths
> 3. Bundle of memory-frayed courier parchments—tie-in to medallion and smuggling ring
> 4. Temple-forged Seal Tag—missing official used it to bypass warded records
> 5. Sigil-infected cobblestone sample—potential ritual residue from Maelthaz’s earlier work

### 🔥 Secrets and Clues
- [x] 10 secret facts, rumors, or hooks prepared
- [x] Connect to player backstories if possible

> [!note|toggle]+ Secrets List
> 1. Hidden glyphs etched along the gutters show timing runes for coordinated attacks
> 2. Kelthorne's agents used sewer echoes to delay memory detection spells
> 3. A clerk in the Civic Archive has been silently rewriting map records—working for someone unknown
> 4. Part of Maelthaz's original rite was recreated on the western slope of Driftwood Bay
> 5. Hans' medallion once passed through the hands of a Daggerfall smuggler now working in Ashgate sanitation
> 6. Rotting produce is only found in food blessed under a false Lunaran sigil
> 7. Kaleor’s scream pulses faintly within a corrupted wellspring beneath the Market District
> 8. One of the Memory Hounds was tagged with a brand linked to a pre-Rising archive
> 9. The sewers under Ashgate may contain an unfinished echo chamber tied to Maelthaz's original summoning
> 10. A thief recently bragged about finding “a piece of Aurion’s voice” in an abandoned drywell

### 🧹 Cleanup Tasks
- [x] Last session notes reviewed
- [x] Player downtime activities processed
- [x] World events updated (politics, factions)

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


# 🧠 Session 10 GM Prep Guide – Glyphs, Chains, and Shadows

## 🧩 Overlapping Plot Threads

| Thread | Connects To | Description |
|--------|-------------|-------------|
| **Hans' Medallion** | Debrief, Hideout, Kelthorne | Medallion echoes near corrupted glyphwork; shared ledger trail with Evercrate and Barsh; relic resists echo-null effects. |
| **Maelthaz’s Sigil Echo** | Food Rot, Vault, Kelthorne | Glyph residue at Ashgate and Beacon 4 shows lattice pattern consistent with Maelthaz’s Unnaming Rites. |
| **Kelthorne’s Espionage** | Rubble, Vault, Medallion | His agents were traced to Beacon 4. Ledger tampering matches falsified relay manifests. |
| **Food Spoilage** | Vault, Hans, Market | Corruption spreads via failed Lunaran glyphs and leyline fractures. Echo patterns map toward Beacon infrastructure. |
| **Echoes Beneath (Hideout)** | All | Dreamglass shipment, red-robed stranger glyphs, and null oath phrases link hideout to Beacon operations and Sepulcher cult logistics. |

---

## 🔍 Encounter-Specific Clue Chains

### 📜 Debrief and Rubble Search
- Glyphbearer array incomplete.
- Echo leads northeast—Beacon Vault geometry.
- Brasque manifest (Evercrate) altered.
- Coinprint residue = Red-Robed Stranger origin glyph.

### 🧿 Hans’ Medallion Trail
- Item vibrates near leyline residue.
- Recovered in Barsh’s vault sealed with divine fracture glyphs.
- Medallion reacts to sigilwork near Whispervault and the Hideout.

### 🔻 Tracing the Sigil Echo – Maelthaz
- Residue chalk matches Kaelor’s scream point.
- Civic access log forged by Kelthorne agent.
- Ritual fragment still active in Vault.

### 🍠 Food Spoilage in the Market
- Druidic glyphs inverted.
- Caused by beacon echo overload.
- Source traces to Beacon 4’s network node.
- Vendor recalls spoilage “only after Evercrate handled it.”

### 🕵️ Kelthorne’s Shadow
- Courier spotted at Whispervault.
- Falsified Beacon maps routed through Gilded Parcel.
- Emberheart ledger overwrite suggests sigil rerouting.

### 🧱 Echoes Beneath – Claiming the Hideout
- Null-bound sigil slab under floor.
- Tunnel opens to Zeek’s Salvage (smuggler's corridor).
- Trapdoor rune reacts to Deimos light—same as Maelthaz resonance signature.

---

## 🗂️ Recommended Encounter Flow

1. **Debrief and Rubble Search** → anchor clues + ritual echoes.
2. **Hans’ Medallion Trail** → emotional spotlight, connect relic to bigger picture.
3. **Food Spoilage** → environmental dread + theological failure.
4. **Kelthorne’s Shadow** → political prep, sets up later noble confrontation.
5. **Whispervault + Maelthaz Trace** → revelation moment, Beacon 4 fallout.
6. **Echoes Beneath** → reward, secrets, possible base customization intro.

---

## 🧠 NPC Links to Watch

| NPC | Links | Clue Roles |
|-----|-------|------------|
| [[Zareth Korrath]] | Food Rot, Vault Access | Echo suppression witness, divine authority voice. |
| [[Kellen Brasque]] | Medallion, Debrief | Facilitated sigil transfer, under pressure. |
| [[Varian Kel]] | Vault, Whispervault | Confirms Beacon pattern, warns of Maelthaz return. |
| [[Commander Kraya Feldrum]] | Hideout, Authority Pin | Can formalize base claim; grants civic support. |

---

## 🎯 Session Tips

- Use echo pulses (light shifts, vibration, static bursts) when players near sigil-laced areas.
- Visually map the “Unnaming Triangle” in real-time for dramatic pacing.
- Flavor dialogue with memory-loss motifs, glyph terminology, and divine fracture lexicon.
- Drop future seeds subtly: mention Driftwood Bay anchor, references to Vault 2 and Vault 5.

---

## 🗝️ Narrative Beat Reminders

- The glyphbearer was a ritual node—not the caster.
- Kaelor's divine voice was unmade in Whispervault Vault 4.
- The hideout was part of the null relay chain Maelthaz used to move echo-bound relics.
- Kelthorne is not the architect—he’s a facilitator for Black Sepulcher logistics.

