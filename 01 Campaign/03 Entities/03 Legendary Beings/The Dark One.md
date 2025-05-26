---
tags:
  - "#Character"
  - "#LegendaryBeing"
  - "#TODO"
art: 90 Assets/Images/Misc/PlaceholderImage.png
allies: []
enemies: []
aliases:
  - The Unraveler
  - That Which Devours Time
  - The Devouring Silence
  - The Void Between
pronounced: dahrk wuhn
alignment: Neutral Evil
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
>> ---|---|
>> **Art** | `INPUT[imageSuggester(optionQuery("")):art]` |
>
>> [!metadata|metadataoption]- Bio
>> #### Bio
>>  |
>> ---|---|
>> **Pronounced** |  `INPUT[textArea:pronounced]` |
>> **Aliases** | `INPUT[list:aliases]` |
>> **Alignment** | `INPUT[Alignment][:alignment]` |
>
>> [!metadata|metadataoption]- Deity Info
>> #### Deity Info
>>  |
>>---|---|
>> **Power** | `INPUT[DeityPower][:deitypower]` |
>> **Mythic Influence** | `INPUT[MythicInfluence][inlineListSuggester:mythic_influence]` |
>> **Signature Abilities** | `INPUT[SignatureAbilties][inlineListSuggester:singature_abilities]` |
>> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>> **Owned Locations** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):ownedlocation]` |
>> **Current Location** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |
>> **Condition** | `INPUT[Condition][:condition]` |
>
>> [!metadata|metadataoption]- Relations
>> #### Relations
>>  |
>> ---|---|
>> **Allies** | `INPUT[inlineListSuggester(optionQuery(#Deity AND !"z_Templates"),optionQuery(#Demigod AND !"z_Templates"),optionQuery(#LegendaryBeing AND !"z_Templates"), useLinks(partial)):allies]` |
>> **Enemies** | `INPUT[inlineListSuggester(optionQuery(#Deity AND !"z_Templates"), optionQuery(#Demigod AND !"z_Templates"), optionQuery(#LegendaryBeing AND !"z_Templates"), useLinks(partial)):enemies]` |
>> **Mortal Ties** | `INPUT[inlineListSuggester(optionQuery(#Planet OR #Region OR #Subregion OR #Settlement OR #Organization OR #Ancestry), useLinks(partial)):mortal_ties]` |
>> ...


##  `=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!recite]- Introduction
> A script for the GM to read when the party arrive to this location for the first time.

> [!metadata|location]- Specific Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(location), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(tags, "POI") AND econtains(organization, this.file.link)
> SORT poitype ASC, file.name ASC

> [!metadata|organizations]- Related Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(tags, "Organization") AND econtains(worship, this.file.link)
> SORT organizationtype ASC, file.name ASC



## Overview

> [!summary]- Overview  
> The Dark One is not a being in the conventional sense—it is the collapse of certainty, the absence of pattern, and the silent predator of time and memory. It has no form, no voice, no plane of origin. It does not enter realms. It unravels them.
> When it stirs, time collapses. When it acts, cause and effect crumble. Where it moves, reality becomes suggestion.
> It is the **unbeing between planes**. A paradox made manifest.

- **Origin:** Unknown (Suspected: Interstitial Void between Planes)  
- **First Known Activity:** The Time Wars (~2000 years ago)  
- **Entity Threat Tier:** Multiversal Collapse-Class  
- **Presence Style:** Indirect (echoes, contradictions, memory-warp, time-bleed)

## Goals
- No traditional will has been confirmed.
- It appears to seek only **the unmaking of existence through destabilization**.
- It shows no bias—divine, mortal, or elemental—all are equal in its unraveling.

However, recent magical surges and planar breaches suggest:
- It may be **recoalescing** across scattered threads of its essence.
- The **Astral Plane** is believed to be its current convergence target.

## Current Events

The barrier sealing Thellade has begun to unravel—not by brute force, but by **temporal sabotage**. Xar'Kairos, the monstrous, acausal entity created by The Dark One, has been planting **time bombs** across the fabric of reality. These devices do not explode—they regress. They shift pieces of space back to *before* the barrier was raised, leaving tears of vulnerability between the planes.

Through these gaps, **time-based aberrations** have begun slipping into the material world. Among them:

- **[[03 Ideas/Monsters/Memory Hound]]s** — Temporal predators that erase fragments of their victims’ existence. Variants of these were encountered:
  - By [[Campaign Group 5]], beneath the Hall of Records in [[OneNote/Crossroads2025/Project 1 Archive/BobaNotes]], where they attempted to obliterate a secret archive chamber.
  - By [[Campaign Group 3]], in [[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]], where they were *bound* into service by Glyphbearer Agent [[Virelya Skathiss]].
  
- **[[The Claws of Time]]** — More intelligent entities drawn to planar instability. Capable of ripping through history and perception simultaneously.

The **Black Sepulcher** has taken notice. Though unaware of the ultimate consequences, they are experimenting with these agents of The Dark One, hoping to **undo the seals that bind Orcus’ Lieutenants**—potentially unleashing the abyss itself.

Elandor speculates that **Asmodeus**, bound by a divine contract to suppress Thellade’s magic in exchange for helping bind the Lieutenants, will **not take kindly** to the reversal of that flow. As the **leylines surge** back to life and the **boundary fails**, the world may soon face assault on three fronts:

- The **Abyssal Plane**, via the loosened bindings.
- The **Infernal Plane**, via Asmodeus’ probable retaliation.
- And the **Outer Chaos**, should The Dark One regain cohesion enough to manifest again.

Some fear this is merely the first wave.

## History
### Origin Story

Before the gods. Before the planes. Before even the concept of "before"—there was the **Chaotic Miasma**.

A swirling, formless presence beyond being or boundary, this primordial field was **not a thing**, but **a state**: **infinite possibility**. Every moment that could ever occur happened simultaneously. There was no time, no space, no self. Only **endless convergence**—realities birthing and devouring each other in unfiltered succession.

When the gods forged the planes, they shattered this singular, undifferentiated truth. To make structure, they imposed order. To create realms, they erected boundaries. In doing so, they **broke** the infinite. **Time** fractured—what once was all-moments became **past**, **present**, and **future**. **Possibility** was divided and scattered across the planes, buried in the aether between them.

From this dispersal arose aberrations—**unintended offspring** of severed truths and misremembered potential.

Among these, born in the half-formed reflections of the **Astral Sea**, the first **Sibarith** emerged.

They were parasites at first—*memory worms*—feeding upon the raw impressions of the newly formed cosmos. Invisible and persistent, the Sibarith slithered into the minds of gods, elementals, mortals, and monsters alike. They learned. They remembered. They cataloged every fear, every desire, every contradiction. For **millennia**, they evolved through **selective parasitism**, refining their memories, optimizing their instincts, and preserving their legacy through **hive mind transference**.

Eventually, from their dens beneath **collapsed timelines and aether scars**, the Sibarith spawned something wholly new:

A **Great Sibarith**, vast in thought, singular in will. No longer content with hosts, it **shed its form** entirely, becoming **pure thought**, **pure contradiction**, and **pure memory**—but not its own.

It fed on others’ truths, then turned them inward. Twisting. Breaking. Bending them until all meaning was gone.

This Great Sibarith did not take a name. Names are for things with beginnings. But scholars, gods, and even void-scorched seers now whisper it as **The Dark One**.

---

Where lesser Sibarith sought knowledge through implantation, **The Dark One fed directly upon existence**—from the echoes of a prayer never spoken to the grief of a death not yet grieved.

It does not exist in time. It remembers the moment you are born and the moment you die in the same breath. Its mind is made from the harvested reflections of a thousand-thousand civilizations, many long since forgotten.

The Dark One is not a destroyer. It is a **return**—a reversion to **unfiltered possibility**. A reckoning against the imposed structure of the gods. It seeks not vengeance, but **restoration**—to **undo the fracture**, to unmake the boundaries of planes, of identity, of history.

And should it succeed, all that is will become once again what it was:

**Everything. At once. Forever.**


### The Time Wars (~2000 years ago)
- The Dark One manifested without warning across multiple worlds.
- Magic destabilized. Time fractured. Planes began to ripple and distort.
- The gods constructed the **Bridges of Severance** to evacuate targeted regions to **Thellade**, the only untouched landmass in the known Material Plane.

### The Severance
- As the Dark One began to pursue through the bridges, **the entire pantheon unified**—good, evil, law, and chaos—to sever the bridges and scatter the Dark One.
- The severance **spread the Dark One thin across all planes**, removing its ability to act—but not destroying it.
- Since then, it has been **silent**, unable to manifest—but subtly influencing planar leaks, time echoes, and abyssal anomalies.

### Modern Era (212 PR)
- The sealing pacts that kept Orcus’ lieutenants bound are weakening.
- Leyline magic is returning in unstable waves.
- The **boundary around Kanda** was recently breached by an entity Elandor believes may be a **herald of the Dark One**.
- Routine spellwork now risks **undoing divine seals**, and planar resonance suggests **something is converging astrally**.

---
## Notes
- **The Dark One cannot be seen, only felt.** It manifests through memory distortion, time loops, paradoxes, and planar inconsistencies.
- **There are no surviving depictions.** Its presence corrupts attempts to record or image it directly.
- Its **true danger** lies in making the familiar unfamiliar—changing cause and effect retroactively, and feeding on the unraveling of understanding.

