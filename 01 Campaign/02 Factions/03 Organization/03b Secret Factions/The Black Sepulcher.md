---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Crypt of the Eclipsed Sun]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/BlackSepulcher.png
rivals:
  - "[[The Arcane Wardens]]"
  - "[[The Crystal Seekers Guild]]"
  - "[[The Dawnbringers of Lunara]]"
  - "[[The Emberborn League]]"
  - "[[The Lumina Guardians]]"
  - "[[The Order of the Ember Blades]]"
  - "[[The Voidscourge Hunters]]"
  - "[[The Wardens of the Deep Dark]]"
  - "[[The Eternal Concord]]"
  - "[[Order of Silent Echos]]"
aliases:
  - Black Sepulcher
  - The Cult of Orcus
  - Cult of Orcus
location:
  - "[[The Outcast Isles]]"
  - "[[Kanda Isles]]"
  - "[[Jambito Isles]]"
  - "[[Middle Isles]]"
  - "[[Kanda]]"
  - "[[Mangagoy]]"
  - "[[Jambito]]"
  - "[[The Blooded Maw]]"
  - "[[The Crypt of the Eclipsed Sun]]"
  - "[[The Ossuary of Whispers]]"
  - "[[The Shattered Gate]]"
  - "[[The Tomb of Unending Hunger]]"
  - "[[Red Dunes]]"
  - "[[Deepwall Reach District]]"
  - "[[Sunveil Hollow]]"
  - "[[The Ember Wharf]]"
  - "[[Mangagoy Isles]]"
head:
  - "[[Malakar Venmire]]"
pronounced: BLAK SEP-ul-ker
founded: 24 Stardrift 93 PR
organizationtype:
  - Cult
  - Secret
steward:
  - "[[Sarla Vask]]"
allies:
  - "[[The Bleeding Tide]]"
foundedshort: 93.08.14 PR
---

```meta-bind-js-view 
{art} as art {banner} as banner
--- 
if (context.bound.art !== "90 Assets/Images/Misc/PlaceholderImage.png" && context.bound.banner === "on")  { 
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
> **Art** | `INPUT[imageSuggester(optionQuery("")):art]` |
> **Banner** | `INPUT[toggle(onValue(on), offValue(off)):banner]` |
>
>> [!metadata|metadataoption]- Info
>> #### Info
>>  |
>> ---|---|
> **Pronounced** |  `INPUT[textArea:pronounced]`
> **Aliases** | `INPUT[list:aliases]` |
> **Founded** | `INPUT[text:founded]` |
> **Founded Short**| `INPUT[text:foundedshort]` |
> **Type** | `INPUT[OrganizationType][inlineListSuggester:organizationtype]` |
> **Status** | `INPUT[OrganizationStatus][inlineListSuggester:organizationstatus]` |
> **Scope** | `INPUT[OrganizationScope][inlineListSuggester:organizationscope]`|
> **Hierarchy** | `INPUT[Null][suggester(optionQuery("Campaign/Organizations/Hierarchies"), useLinks(partial)):hierarchy]` | 
> **Head** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):head]` |
> **Steward** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):steward]` |
> **Parent Organization** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
> **HQ** | `INPUT[Null][suggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):hq]` |
> **Operating Areas** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |
> **Allies** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):allies]` |
> **Rivals** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):rivals]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Founded** | `VIEW[{founded}][text]` |
> **Founded Short**| `INPUT[text:foundedshort]` |
> **Type** | `VIEW[{organizationtype}][text]` |
> **Status** | `VIEW[{organizationstatus}][text]` |
> **Scope** | `VIEW[{organizationscope}][text]` |
> **Hierarchy** | `VIEW[{hierarchy}][link]` |
> **Head** | `VIEW[{head}][link]` |
> **Steward** | `VIEW[{steward}][link]` |
> **Parent Organization** | `VIEW[{organization}][link]` |
> **HQ** | `VIEW[{hq}][link]` |
> ###### Party
>  |
> ---|---|
> **Party 1 Reputation** | `INPUT[text:party1reputation]` |
> **Party 2 Reputation** | `INPUT[text:party2reputation]` |
> **Party 3 Reputation** | `INPUT[text:party3reputation]` |
> **Party 4 Reputation** | `INPUT[text:party4reputation]` |
> **Party 5 Reputation** | `INPUT[text:party5reputation]` |
> **Party 6 Reputation** | `INPUT[text:party6reputation]` |
# `=this.file.name` <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!metadata|geography]- Region
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(tags, "Region") AND econtains(organization, this.file.link)
> SORT dominion ASC, file.name ASC

> [!metadata|county]- Subregion
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(tags, "Subregion") AND econtains(organization, this.file.link)
> SORT dominion ASC, file.name ASC

> [!metadata|settlements]- Settlements
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, settlementtype AS Type, defence AS Defences, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(tags, "Settlement") AND econtains(organization, this.file.link)
> SORT dominion ASC, file.name ASC

> [!metadata|district]- Districts
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(districttype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(tags, "District") AND econtains(organization, this.file.link)
> SORT districttype ASC, file.name ASC

> [!metadata|location]- Specific Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(location), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(tags, "POI") AND econtains(organization, this.file.link)
> SORT poitype ASC, file.name ASC

> [!metadata|organizations]- Child Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(tags, "Organization") AND econtains(organization, this.file.link)
> SORT organizationtype ASC, file.name ASC

> [!metadata|allies]- Allies
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE econtains(allies, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC

> [!metadata|rivals]- Rivals
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE econtains(rivals, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC

> [!metadata|characters]- Characters
> ```dataview
> TABLE without id file.link AS "Name", condition AS Condition, aliases AS Aliases, join(occupation, ", ") AS "Occupations", link(location) AS "Location"
> FROM "01 Campaign"
> WHERE contains(tags, "Character") AND econtains(organization, this.file.link)
> SORT tags DESC, file.name ASC

## Overview
### Description
> The [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Black Sepulcher|Black Sepulcher]] is a fanatical cult devoted to [[Orcus]], the Demon Lord of Undeath. They seek to break the ancient barrier that sealed the Abyss beneath the Outcast Isles during the Rising, unleashing a wave of eternal undeath. Divided into regional cells and ruled by the infamous Council of Bone, the cult wages a war of secrets, sacrifices, and arcane sabotage to shatter reality and offer it to Orcus.
![[90 Assets/Images/Organizations/CultOfOrcus.png|128]]

### Oaths
> "Life is a lie. Death is truth. Undeath is devotion."

### Mission Statement
> To weaken and ultimately destroy the barrier sealing Orcus’ domain, ushering in a new age where all life bows before undeath and the will of Orcus.

### Laws
> - Obedience to the Council of Bone is absolute.
> - Secrets must be buried in bone, not parchment.
> - No mercy for those who reject undeath.

### Tenets
> - Undeath is freedom.
> - Flesh is a prison.
> - Truth is found in silence and rot.

### Prohibitions
> - No revealing of cult rites or locations.
> - No resurrection by divine means.
> - No allegiance to gods of light or life.

## Current Events
- [[Malakar Venmire]]’s quest for lichdom nears completion; signs point to a ritual underway beneath the Red Dunes.
- [[Sarla Vask]], recently resurrected by necromantic rites, has resumed her role as the 'Voice of Orcus.'
- The cult continues to destabilize the seal at the [[the Shattered Gate|Shattered Gate]], aiming to open a rift into the Abyss.
- Cult activity in [[Mangagoy]] and [[Jambito]] has escalated, including public sacrifices and the corruption of local clergy.

## History
- Formed after the Rising by necromancers who survived the first sealing of Orcus.
- The Council of Bone emerged in 126 PR to unify cult operations across the Isles.
- Multiple summoning attempts were interrupted between 188–212 PR by heroes, though key lieutenants remain active.
- Ritual fragments of the Book of Orcus are still being recovered to prepare the final shattering spell.

### Campaign Events

[[Campaign Group 1]]
  - Fought cult-backed mercenaries hired via [[The Bleeding Tide]] in the Mwingu borderlands.
  - Disrupted a summoning ritual of an Orcus lieutenant near the surface above Blackwater Crossing.
  - Engaged [[Aldrek Venmire]], a former Eternal Concord scribe turned cultist, now deceased.

[[Campaign Group 4]]
  - Investigated corrupted relics and summoning glyphs in Jambito tied to [[Sarla Vask]] and the cult’s attempts to disrupt the faith of Lunara.
  - Rescued survivors from an incomplete sacrifice deep within the Tomb of Unending Hunger.

[[Campaign Group 6]]
  - Discovered pages of the Book of Orcus within a defiled temple crypt.
  - Learned of celestial alignments that accelerate the weakening of the Isles’ barrier.

## Hierarchy
- **Supreme Arch-Necromancer:** [[Malakar Venmire]] – Known as 'The Graveborn,' he seeks lichdom and serves as Orcus' would-be emissary.
- **Steward / Voice of Orcus:** [[Sarla Vask]] – 'The Harbinger,' undead oracle of the Abyss.
- **Council of Bone Members:**
  - [[Solkar Nyx]] – 'The Pale Flame', Archmage of necromantic innovation and undead abominations.
  - [[Korvik Drann]] – 'The Hollow', military commander of undead legions.
  - [[Vaelthas Morwyn]] – 'The Bone Key', riftcaller and abyssal summoner.

## Regional Contacts
- **Kanda:** [[Marthis Valtrin]] – 'The Hollow Lord', noble patron and political shield.
- **Mangagoy:** [[Karn Thren]] – 'The Bleeding Prophet', leads sacrifices and terror magic.
- **Jambito:** [[Veyna Daros]] – 'The Cold Grin', corrupts knowledge within arcane circles.
- **Middle Isles:** [[Varros Melkaar]] – 'The Rusted Blade', rune-breaker and abyssal translator.

## Locations
### Primary Base
- [[The Crypt of the Eclipsed Sun]] (Middle Isles > Red Dunes) — Abyssal sanctum protected by wards, undead, and chthonic guardians.

### Ritual Sites
- [[The Ossuary of Whispers]] (Kanda)  
- [[The Blooded Maw]] (Mangagoy)  
- [[The Tomb of Unending Hunger]] (Jambito)  
- [[The Shattered Gate]] (Middle Isles)

## Notes
- **Threat Level:** Extreme
- **Speculative Rift:** Some whispers suggest [[Sarla Vask]] believes herself the true prophet, not [[Malakar Venmire]].
- [[The Bleeding Tide]] is used as proxies in Mwingu and Boba.
- **Symbol:** A blackened skull with a spiked crown, jaw open, surrounded by a circular ring of broken runes.
- **Uniforms:** Robes of black, bone, and crimson. Senior cultists wear jawbone pendants; leaders wear robes embroidered with abyssal glyphs.

### Key Plot Threads
- “The Maw Awakens” — Ritual in Mangagoy to summon the Maw.
- “The Shattered Gate” — Barrier collapse near the Red Dunes.
- “The Book of Orcus” — Recovery of fragmented ritual tome.
- “The False Prophet” — The reanimation and agenda of [[Sarla Vask]].
- “The Unending March” — The planned deployment of [[Korvik Drann]]’s undead army.

### Artifacts and Evidence Found
- Infernal tomes bound in flayed skin.
- Fractured relics from Lunaran temples.
- Animated skeleton keys used to unlock abyssal crypts.
- Abyssal pact scrolls signed in noble blood.
- Corrupted versions of the Book of Orcus found in multiple regions.




