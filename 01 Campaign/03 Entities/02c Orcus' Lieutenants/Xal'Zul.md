---
tags:
  - "#Character"
  - "#NPC"
  - "#TODO"
art: 90 Assets/Images/Misc/PlaceholderImage.png
language:
  - Common
aliases:
  - Xal’Zul the Choir of Worms
  - The Choir of Worms
condition: Bound Material Plane
location:
  - "[[The Deep Dark]]"
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
>> **Ancestry** | `INPUT[Ancestry][suggester:ancestry]` |
>> **Heritage** | `INPUT[Heritage][suggester:heritage]` |
>> **Creature Type** | `INPUT[textArea:ancestry]` |
>> **Creature Sub-Type** | `INPUT[textArea:heritage]` |
>> **Gender** | `INPUT[Gender][:gender]` |
>> **Age** | `INPUT[Age][:age]` |
>> **Alignment** | `INPUT[Alignment][:alignment]` |
>
>> [!metadata|metadataoption]- NPC Info
>> #### NPC Info
>>  |
>>---|---|
>> **Languages** | `INPUT[Language][inlineListSuggester:language]` |
>> **Ideals** | `INPUT[textArea:ideals]` |
>> **Flaws** | `INPUT[textArea:flaws]` |
>> **Fears** |  `INPUT[textArea:fears]` |
>> **Mannerisms** |  `INPUT[textArea:mannerisms]` |
>> **Occupations** | `INPUT[Occupation][inlineListSuggester:occupation]` |
>> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>> **Religions** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):religion]` |
>> **Owned Locations** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):ownedlocation]` |
>> **Current Location** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |
>> **Condition** | `INPUT[Condition][:condition]` |
>
>> [!metadata|metadataoption]- Party Info
>> #### Party Info
>>  |
>> ---|---|
>> **Traveling With** | `INPUT[inlineListSuggester(optionQuery(#Party AND !"z_Templates"), useLinks(partial)):whichparty]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ![[PlaceholderAudio.webm]]
> ###### Bio
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Ancestry** | `VIEW[{ancestry}]` |
> **Heritage** | `VIEW[{heritage}]` |
> **Gender** | `VIEW[{gender}]` |
> **Age** | `VIEW[{age}]` |
> **Alignment** | `VIEW[{alignment}]` |
> ###### Info
>  |
> ---|---|
> **Languages** | `VIEW[{language}][text]` |
> **Occupation** | `VIEW[{occupation}][text]` |
> **Organization** | `VIEW[{organization}][link]` |
> **Religions** | `VIEW[{religion}][link]` |
> **Owned Locations** | `VIEW[{ownedlocation}][link]` |
> **Current Location** | `VIEW[{location}][link]` |
> **Condition** | `VIEW[{condition}]` |


# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!metadata|letters]- Letters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, quicknote AS Notes
> FROM "01 Campaign"
> WHERE econtains(holder, this.file.link) AND contains(tags, "Letter")
> SORT file.name ASC

> [!metadata|literature]- Literature
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, quicknote AS Notes
> FROM "01 Campaign"
> WHERE econtains(holder, this.file.link) AND contains(tags, "Literature")
> SORT file.name ASC

## Overview

###  Bindings
- [[Lambaro Isles]] - [[Deepmark Sanctum]] - RELEASED - 1st Verse
- [[Blackwater Crossing]]  in [[the Deep Dark]] - [[Ygra Brambleward]]'s Hut - RELEASED - 2nd Verse
- [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Kanda Isles/Boba|Boba]] - [[The Binders' Vault]] under [[01 Campaign/01 World/08 Points of Interest/09 Landmarks/Kanda Isles/Boba/The Hollow Chamber]] - 3rd Verse
- [[Blackwater Crossing]]  in [[the Deep Dark]] - [[The Vault of Memory]] - Stabilized - 4th Verse
- [[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]] - [[Dawnsplit Chapel]] - Stabilized - 5th Verse
- [[Daggerfall Hollow]]  in [[the Deep Dark]] - [[The Black Echo Vault]] - Unknown - 6th Verse
- [[Shadowthread Warrens]] in [[the Deep Dark]] near [[Deepmere]] - [[The Vault of Whispers]] - Unknown - 7th Verse

## The Verses of Xal'Zul

---

### The 1st Verse — *The Verse of Binding*
> *Used during the Rising to seal Xal’Zul’s fragmented mind across seven harmonic anchor points. Rare and sacred. Mostly forgotten.*

“When the world was wounded, the silence stood—  
Three voices called from stone and wood.  
With name unspoken, with truth unknown—  
We sang the cage of thought alone.  

By light of dawn, by waning star,  
We sealed the mouth with sacred scar.  
Let memory sleep where the earth forgets—  
Where the song begins, the sun resets.”

---

### The 2nd Verse — *The Verse of Unbinding*  
> *Recovered by cultists and remnants of the Black Sepulcher. A song of unraveling used to collapse divine anchors.*

“When the voice is stilled, the chain may break—  
The breath unsung shall birth the ache.  
Let the root uncoil, the mouth unfold—  
For memory dies when the song is told.”

“Name not the sun, nor mark the sky—  
Where worms remember, gods must die.  
In spiral dark, the bonds unwind—  
And silence falls upon the mind.”

---

### The 3rd Verse — *The Verse of Emergence*  
> *Forbidden and incomplete. If spoken fully, may allow Xal’Zul to awaken and sing through thought, dreams, or the dead.*

“We sang of void before the dawn—  
Where time is teeth and stars are gone.  
From coil to hymn, from word to flesh—  
The Choir feeds where thought is fresh.”

“The name returns where none remain—  
The godless bell is struck again.  
One mouth to echo, one to bind—  
And one to eat the waking mind.”

---

### The 4th Verse  
> *Vault of Memory — Blackwater Crossing*  
> Stabilized through sacrificial rite.  
> Those who enter forget themselves. Some remember things that never were.

> _Stabilized, but leaking echoes from unrecoverable thought._

“From names erased and truths denied—  
The past walks back, unsanctified.  
The mirror cracks where time is fed—  
And whispers rise from minds long dead.”

“Let memory’s chain be softly torn,  
Let unmarked grief be gently worn.  
Seal thought within the vaults below—  
Where none recall, and none may know.”

---

### The 5th Verse  
> *Dawnsplit Chapel — Mangagoy*  
> Stabilized by ritual. Emberlight bleeds from the altar when the moon wanes.  
> Sect guardians claim speaking the verse aloud reveals the future… in reverse.

> _Burns in flame and omen, calling backwards through prophecy._

“By ash and hymn the dawn was cleft,  
The song reversed, the truth bereft.  
What fire forgets, the smoke will see—  
And futures blaze where none should be.”

“When stars fall backward into flame,  
And priests unwrite the holy name—  
Let emberlight in silence preach,  
What time recoils but cannot reach.”

---

### The 6th Verse  
> *The Black Echo Vault — near Daggerfall Hollow*  
> Echoes preemptively. Those who venture too far are found whispering deaths that have not happened yet.

> _Not silent—reverberating deaths that have yet to happen._

“Beneath the stone, the breath is caught—  
A scream returned the mind forgot.  
Each echo twists the speaker’s name—  
And ends begin before they came.”

“The halls reply where none have tread,  
The tongue repeats what has not bled.  
Let sound rebound and futures stall—  
For silence cannot hold it all.”

---

### The 7th Verse  
> *Vault of Whispers — between Deepmere and the Echoing Depths, Shadowthread Warrens*  
> The Vault sings in absence. Divination fails. Footprints vanish.  
> Journals lose names. Thoughts slip away. Memory does not remain whole.

> _Where even memory slips. Thought is devoured before it forms._

“The breath unborn, the thought unsaid—  
The shadow walks where meaning bled.  
No voice may shape, no tongue may try—  
For even silence learns to lie.”

“Unmarked, unknown, the footsteps fade—  
Each self unmade, each name betrayed.  
Let secrets fall where darkness weeps—  
And bind the verse where no one sleeps.”

---

### Other

#### Zakka’s Chant *(Mouth-bound Echo)*  
“When the world was wounded, the silence stood—  
Three voices called from stone and wood.  
With name unspoken, with truth unknown,  
We sang the cage of thought alone.  
By light of dawn, by waning star,  
We sealed the mouth with sacred scar.  
Let memories sleep where the earth forgets—  
Where the song begins, the sun resets.”




> [!column|2 no-title]
>
> 
>> [!metadata|ideals] Ideals
> `VIEW[{ideals}][text]`
>
>> [!metadata|flaws] Flaws
> `VIEW[{flaws}][text]`
> 
>> [!metadata|fear] Fears
> `VIEW[{fears}][text]`
>
>> [!metadata|mannerism] Mannerisms
> `VIEW[{mannerisms}][text]`

## Goals



## Acquaintances



## Current Events



## History



## Notes





