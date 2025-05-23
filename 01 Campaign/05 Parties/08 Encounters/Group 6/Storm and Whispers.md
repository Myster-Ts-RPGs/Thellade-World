---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group6"
whichparty: "[[Campaign Group 6]]"
sessionnumber: "08"
title: Storm and Whispers
encountertype:
  - Skill
locations:
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/The Sundering Deep.md|The Sundering Deep]]"
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

# Encounter Overview  
[[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 6|Campaign Group 6]] – Session 08 – [[01 Campaign/05 Parties/08 Encounters/Group 6/Storm and Whispers|Storm and Whispers]]

## Encounter-Specific Info

> [!info]- **Skill Challenge Details**
> > - Success Threshold: 3 of 5 Stages
> - During a stage, each skill must be used at least once before duplicate skills are allowed and then no more than 2 characters on the same skill.
> - **Once** during the series of skill checks each character may use an alternate skill **at a DC of 19** if you can flavor the use of that skill thematically with what is needed for the stage, and it cannot duplicate a skill already used in that stage.
> - Degrees of Failure:  
>   - 0 stage failures: Captain grants full logistical support to the party for travel and cult investigation  
>   - 1 stage failure: Arrival is delayed by 6 in-game hours  
>   - 2 stage failures: Arrival is delayed by 12 in-game hours  
>   - 3+ stage failures: Arrival is delayed by 1 in-game day  
>   - 4+ stage failures: A random crewmember is lost overboard and cannot be recovered  
>   - 5+ stage failures: The ship breaks apart on the shoals; party stranded at sea for 2d4 days awaiting rescue  
> - Status Bonus Adjustments:  
>   - If **all** party members succeed a stage: +1 status bonus on next checks  

---

### 🧩 Stage 1: Currents Beneath the Calm  
**Description:**  
Ten miles off Kanda’s reefline, a false calm overtakes the sea. The clouds have parted, but beneath the glassy surface, things shift. A resonant hum vibrates through the hull, barely perceptible to non-spellcasters.

**Skill Options:**  
- **Survival (DC 18)** – Help chart a safe course compensating for cross-drift  
- **Nature (DC 19)** – Analyze the behavior of seabirds and fish fleeing the path ahead  
- **Athletics (DC 20)** – Assist with tension lines as drag currents begin to torque the hull  
- **Perception (DC 20)** – Spot undercurrents by tracking floating debris and seafoam  

**Success Effect:**  
Early correction avoids structural stress; no additional penalties applied  

**Failure Consequence:**  
Course destabilized; Acrobatics and Reflex checks  receive –1 status penalty in Stage 2 

### 🧩 Stage 2: The Whisperwake Swell  
**Description:**  
The winds drop suddenly—then return in a thundering burst. Whispers ride the gale. The crew mutters about old sea-tales where drowned voices steer ships to ruin.

**Skill Options:**  
- **Acrobatics (DC 18)** – Stabilize footing and navigate crosswind patterns  
- **Arcana (DC 19)** – Isolate the magical resonance and suggest course corrections  
- **Thievery (DC 20)** – Reseal and brace loose gear before it becomes deadly debris  
- **Reflex Save (DC 20)** – Catch yourself mid-slip as the deck shifts underfoot  

**Success Effect:**  
Ritual and deck equipment remain secure; Crafting rolls in Stage 3 gain +1  

**Failure Consequence:**  
Flying gear injures a deckhand; morale drops, Diplomacy and Religion suffer –1 status penalty in Stage 3  

### 🧩 Stage 3: Eye of the Unspoken  
**Description:**  
As the Emberwake pushes through the stillness, a break in the clouds reveals a shape beneath the water. Massive. Watching. It does not attack—but it is known. The crew begins to pray.

**Skill Options:**  
- **Diplomacy (DC 19)** – Keep the crew focused and calm in the face of awe  
- **Stealth (DC 19)** – Adjust wake and helm to pass silently over the lurking thing  
- **Crafting (DC 20)** – Reinforce strain points where the ship creaks under tension  
- **Religion (DC 20)** – Lead a deckwide rite of appeasement  

**Success Effect:**  
Crew steadies themselves through fear; no morale penalties in Stage 4  

**Failure Consequence:**  
Whispers deepen—Stage 4 Athletics and Intimidation checks suffer –1  in Stage 4

### 🧩 Stage 4: Fire in the Fog  
**Description:**  
Sudden static arcs crackle across the water. The fog returns—but it glows from within, streaked with lightning and glowing glyph-light. The sea smells of blood and burnt kelp.

**Skill Options:**  
- **Intimidation (DC 19)** – Force crew into action before they freeze up  
- **Society (DC 19)** – Recall naval legends tied to this phenomenon and act accordingly  
- **Athletics (DC 20)** – Execute sharp-angle tacking to ride just ahead of the surges  
- **Acrobatics (DC 20)** – Climb and release caught rigging to prevent collapse  

**Success Effect:**  
Storm mostly avoided; Stage 5 DCs remain at baseline  

**Failure Consequence:**  
Static backlash warps instruments; Stage 5 DCs increase by 1  


### 🧩 Stage 5: Dread Horizon  
**Description:**  
The horizon darkens unnaturally as if something waits at the threshold of the storm’s edge. Each breath is labored. The ship feels like it's being drawn toward something it cannot see.

**Skill Options:**  
- **Performance (DC 20)** – Calm the crew and party members 
- **Athletics (DC 20)** – Hold a straining tiller or anchor against an unseen force  
- **Survival (DC 20)** – Gauge barometric shifts and cloudline changes for escape  
- **Fortitude Save (DC 20)** – Resist the oppressive presence pressing against your lungs  
- **Religion (DC 20)** – Request assistance from your deity in subduing the storm
- **Occultism (DC 20)** – Force the entity to assist the ship instead of hindering
- **Deception (DC 20)** – Pretend that nothing is wrong and that nobody should be worried

**Success Effect:**  
The ship breaks free of the pressure zone, skies ahead begin to clear  

**Failure Consequence:**  
Residual pressure causes sea-sickness and crew fatigue; –1 to all interactions upon arrival unless rested


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
