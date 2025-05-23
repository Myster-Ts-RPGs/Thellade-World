---
tags:
  - Quest
art: z_Assets/Misc/PlaceholderImage.png
---

```meta-bind-js-view 
{art} as art {banner} as banner
--- 
if (context.bound.art !== "z_Assets/Misc/PlaceholderImage.png" && context.bound.banner === "on")  { 
    const str = ` ![[${context.bound.art}|banner-fade]]` ;
    return engine.markdown.create(str); 
} else { return ""; }
```

> [!metadata|metadata]- Metadata 
>> [!metadata|metadataoption]- System
>> #### System
>>  |
>> ---|---|
> **Tags** | `INPUT[Tags][inlineListSuggester:tags]` |
>
>> [!metadata|metadataoption]- Art
>> #### Art
>>  |
>> ---|---|
>> **Art** | `INPUT[imageSuggester(optionQuery("")):art]` |
> **Banner** | `INPUT[toggle(onValue(on), offValue(off)):banner]` |
>
>> [!metadata|metadataoption]- Info
>> #### Info
>>  |
>> ---|---|
>> **Aliases** | `INPUT[list:aliases]` |
>> **Quick Notes** |  `INPUT[textArea:quicknote]`
>> **Adventure** | `INPUT[Null][suggester(optionQuery(#Adventure AND !"z_Templates"), useLinks(partial)):adventure]` |
>> **Status** | `INPUT[Status][:status]` |

> [!infobox]
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> #### Quest Info
>  |
> ---|---|
> **Adventure** | `VIEW[{adventure}][link]` |
> **Status** | `VIEW[{status}]` |

# **`=this.file.name`** 

## Overview
### Summary



### Storyline



### Inciting Action



### Resolution



## Scenes & Actors
### Characters



### Creatures



### Locations



### Random Encounters



## Notes

|Quest Giver|Hook|Location Given|
|---|---|---|
|[[Tharos Emberbane]]|A relay pad in the League Hall is miscalibrated—explorers are being teleported into the wrong ruins, with one team missing entirely. Can the party recalibrate it from the field?|[[The League Hall]] (Amberveil Market)|
|[[Kalli Resh]]|A shipment of ley-attuned crystals vanished between Kanda and Jambito. One of the crates reappeared in the local black market.|[[The Glowing Exchange]]|
|[[Vaelin Dros]]|Untranslated hymn-echoes have begun leaking from beneath the vault—he suspects a ritual artifact was stolen.|[[Vault of Forgotten Hymns]]|
|[[Valtheris Voss]]|The Crimson Shroud has lost contact with an embedded agent watching the Hollow Mask in Glimmershade. They need a quiet retrieval.|[[Glimmershade]]|
|[[Veyna Thaloris]]|The Chancellor seeks a discreet team to verify the location of an unauthorized summoning circle—planted beneath the Kanda City Administrative Academy.|[[Kanda City Administrative Academy]] (Tallowgate)|
|[[Cindros Thorne]]|A cache of Ember Blades weapons has gone missing from the vaults. Surveillance glyphs show no breach.|[[Swordflame Encampment]] (Ashfire Bastion)|
|[[Marrek Tindall]]|A repeat customer attempted to sell a broken relic bearing Emberheart sigils, and fled when questioned. Marrek wants it traced quietly.|[[The Glowing Exchange]]|
|[[Riva Talorin]]|A map sent from the Field Archives shows a canyon that no longer exists. Riva wants boots on the ground before alerting the League.|[[The League Hall]]|
|[[Ulthar Grom]]|An Ashen Vanguard patrol returned with memory gaps and glowing sigils on their palms. Ulthar suspects psionic tampering in Frostlock Commons.|[[Frostlock Commons]]|
|[[Korvik Drann]]|Drann offers a grim deal: help retrieve a former Deathmarshal’s lost reliquary before it falls into rebel hands—or suffer the fallout.|[[Kanda]]|
|[[Daelric Voss]]|A scholar from the Concord Arcanum has gone rogue, taking with them pages from the Crimson Lexicon. Recover or silence them.|[[The Crimson Lexicon]]|
|[[Vaelthas Morwyn]]|The Bone Key delivers a cryptic message: “The Choir stirs in stone.” He’ll explain—but only after the party agrees to act as emissaries.|[[Kanda]]|
|[[Zarek Tellos]]|Street whispers claim the King’s Rest crypt seals have cracked. Zarek wants this dismissed—or proven.|[[King’s Rest]]|
|[[Eldrik Vail]]|A relic hunter has violated the terms of a Crimson Shroud contract and now hides in the city. Vail wants them... silenced.|[[Kanda]]|
|[[Archive Tower Custodian]] (Unnamed)|Glyph-ink runoff has begun seeping into street drains. The tower’s warding reservoir may be leaking—investigation required.|[[Archive Tower]] (Wardspire District)|

🌙 The Radiant Temple (Moonveil District)

|Quest Giver|Hook|Location Given|
|---|---|---|
|[[High Oracle Althaea Sirelen]]|The Echoing Pool beneath the temple shows Azeal's blood burning on sacred stone. She believes a lost prophecy hidden in the moonlight glyphs must be re-read.|[[The Radiant Temple]]|
|[[Acolyte Fenwyn]]|Azeal’s name echoes in dream-visions of initiates. Fenwyn asks the party to watch over a ritual sleeper and protect their mind.|[[The Radiant Temple]]|
|[[Oracle Keeper Velmira]]|Velmira has locked a tome containing Pre-Rising lunar invocations. It now hums at night. She requests protective escort for a full-moon unlocking.|[[The Radiant Temple]]|
|[[Chantwarden Lys]]|A fellow chantwarden vanished during the recent dual-moon ritual. Her last chant was corrupted mid-harmony. The remnants still echo.|[[The Radiant Temple]]|
|[[Archivist Tellin Sair]]|A sealed scroll referencing _"the Crown that Bleeds"_ has torn itself open. The ink is alive. Tellin needs containment assistance.|[[The Radiant Temple]]|

---

🛡️ The Hunter’s Spur Outpost (Emberhollow District)

|Quest Giver|Hook|Location Given|
|---|---|---|
|[[Captain Bria Sarn]]|She received a report that relic residue found on Lambaro matches old Emberborn signatures. She's ordered a field scan of related sigils across Kanda.|[[The Hunter’s Spur Outpost]]|
|[[Quartermaster Derra Holdt]]|The outpost's detector array triggered last night. Something passed through the ward line from the north. The party is to investigate.|[[The Hunter’s Spur Outpost]]|
|[[Scout-Lieutenant Ornek Valen]]|One of the scouts assigned to Lambaro has gone AWOL. His last known location: the lower ward drains beneath Ashfire Bastion.|[[The Hunter’s Spur Outpost]]|
|[[Tech-Warden Aerys]]|A detector crystal exploded when exposed to a Lambaro soil sample. Aerys wants to know if the crystals themselves are being corrupted.|[[The Hunter’s Spur Outpost]]|
|[[Bria Sarn]] (again)|She suspects a leak inside the Spur. If the Lambaro incident was predicted, someone may be feeding info to cultic cells. She requests a covert loyalty test.|[[The Hunter’s Spur Outpost]]|

---

🏛️ The Chancellor’s Hall (Tallowgate District)

|Quest Giver|Hook|Location Given|
|---|---|---|
|[[Chancellor Veyna Thaloris]]|Following the Lambaro report, she authorizes a discreet scry to verify Azeal's last known spiritual residue. The party must secure the required Pre-Rising focus.|[[The Chancellor’s Hall]]|
|[[Advisor Quelen Dorr]]|Dorr believes that the release of Azeal activated sleeper agents within Kanda. He requests the party identify and interrogate a list of suspected cult sympathizers.|[[The Chancellor’s Hall]]|
|[[Legate Iren Vos]]|Azeal’s name appears in a Pre-Rising military dossier. Vos gives the party access—but only if they recover a second missing volume from a restricted archive.|[[The Chancellor’s Hall]]|
|[[Ruthen Marks, Public Liaison]]|Political panic brews after whispers of “the Bleeding Crown” spread. Marks needs the party to deliver a calming “explanation” to the press—a risky diplomatic op.|[[The Chancellor’s Hall]]|
|[[Velira Caen, Royal Historian]]|Velira offers coin and favor if the party can locate a surviving Emberwake Officer or passenger from Lambaro. One of them saw Azeal directly.|[[The Chancellor’s Hall]]|