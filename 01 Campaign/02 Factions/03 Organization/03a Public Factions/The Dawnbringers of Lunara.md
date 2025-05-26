---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Radiant Temple]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/DawnbringersOfLunara.png
founded: 04 Blossomveil -83 PR
aliases:
  - Dawnlight Order
  - Sisters of the Moon
  - The Dawnbringers
  - Dawnbringers of Lunara
organizationtype:
  - Religious
head:
  - "[[Seralyne Vireth]]"
steward:
  - "[[Vaelis Duskwhisper]]"
allies:
  - "[[The Eternal Concord]]"
  - "[[Mangagoy Healing Sanctuary (Faction)]]"
  - "[[The Lumina Guardians]]"
  - "[[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Sunfire Heralds]]"
  - "[[The Verdant Hand]]"
rivals:
  - "[[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Infernal Covenant]]"
  - "[[The Black Sepulcher]]"
  - "[[The Hollow Saints]]"
location:
  - "[[The Outcast Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Kanda Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mwingu Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Middle Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Lambaro Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Jambito Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mwingu Isles]]"
  - "[[Kanda]]"
  - "[[Tallowgate]]"
  - "[[The Radiant Temple]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/JambitoNotes]]"
  - "[[Silverspire Terrace]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/LambaroNotes]]"
  - "[[Glowmire Terrace]]"
  - "[[Chamber of Celestial Binding]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]]"
  - "[[Glowquarter]]"
  - "[[Sanctum of the Dawnsplit Crown]]"
  - "[[Seaside Cape]]"
  - "[[Cradlecliff]]"
  - "[[Moonwell of Lunara]]"
  - "[[Mwingu]]"
  - "[[Watcher's Hollow]]"
  - "[[Moonlight Hospice]]"
  - "[[Shrine of Crystallight Reflection]]"
pronounced: DAWN-bring-ers of loo-NAR-uh
foundedshort: -83.02.04 PR
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
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(occupation, ", ") AS "Occupations", join(link(location), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(tags, "Character") AND econtains(organization, this.file.link) AND !contains(condition, "Dead")
> SORT tags DESC, file.name ASC

## Overview
### Description
> [[The Dawnbringers of Lunara]] are a devoted order of clergy, healers, and seers who serve [[Lunara]], goddess of moonlight, memory, and mercy. The order operates sanctuaries in sites bathed in lunar influence and psychic resonance, offering healing, spiritual purification, and dream-guided clarity. Often found near Moonwells or Crystal Veins, their rituals bind the soul to reflection and celestial truth, resisting both infernal corruption and abyssal forgetfulness.

### Oaths
> “By Lunara’s light, I walk where shadow clings. I forget not the lost, nor the sins which linger.”

### Mission Statement
> To preserve the light of memory, cleanse the soul of void corruption, and offer moonlit healing where shadow spreads.

### Laws
> - Initiates must complete the Rite of Reflected Waters under a full moon.  
> - No magical flame may be conjured within lunar sanctums.  
> - Divination rites may not be performed in secret from the Temple Circle.  
> - All dreambinders must undergo seasonal clarity fasting.

### Tenets
> - Illumination reveals both beauty and brokenness.  
> - The mind is a temple, the dream a sanctum.  
> - Sacred memory transcends time and blood.  
> - A wound unseen festers in silence.

### Prohibitions
> - Desecration of any Moonwell, regardless of affiliation.  
> - Collaboration with [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Infernal Covenant]] or its agents.  
> - Corruption or manipulation of dreams through demonic rites.  
> - Withholding prophetic insight when innocents are imperiled.

## Current Events
> - [[Vaelis Duskwhisper]] led the Dreambinding Ritual for [[Kaelor Thornhide]] in [[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]], assisted by [[Zareth Korrath]] and [[Sowilo Brightgaze]].  
> - Group 6 encountered [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Middle Islands/Seaside Cape/Nymeriel|Sister Nymeriel]] at the [[Moonwell of Lunara]] in [[Seaside Cape]], where [[01 Campaign/05 Parties/01 Characters/06 Campaign 06/Kibo Shi|Kibo]] plucked a Lunabloom flower named **Silvielle**, gaining divine insight.  
> - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Seralyne Vireth|High Oracle Seralyne Vireth]] has ordered reinforcements and spiritual seals at shrines compromised by Abyssal leyline bleed.  
> - The sanctum in Mangagoy was attacked by cultists of [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Infernal Covenant]]; a weakened seal of [[Xal'Zul]] remains unstable beneath the site.

## History
> Founded in 4 Springdawn -83 PR, the Dawnbringers arose from a fractured coven of moon-healers who survived the loss of the Last Dreamwarden Temple. Their first miracle, recorded in the Journals of the Lune-Veil, was a psychic healing of a family cursed to relive the same nightmare.  
> During the Rising, their moonwells became psychic shelters for minds fractured by leyline overload and binding rituals. Their order carries spiritual scars from the Glyphward Pact, having been barred from opposing Asmodeus’ binding due to political interference.  
> In recent years, the order has extended silent aid to factions investigating planar corruption, positioning themselves as sacred counterbalance to infernal and abyssal entropy.

## Notes
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Seralyne Vireth|High Oracle Seralyne Vireth]] – Moon-Elven seer and spiritual leader of the Dawnbringers; based at [[The Radiant Temple]] in [[Kanda]].  
- [[Vaelis Duskwhisper]] – Mangagoy steward, ritual guide, and liaison to the Arcane Wardens.  
- [[Sowilo Brightgaze]] – Celestial-aligned guardian who channels moonfire silently.  
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Middle Islands/Seaside Cape/Nymeriel|Sister Nymeriel]] – Oracle of the Third Veil; mystic at the [[Moonwell of Lunara]]. Ally of the Dawnbringers, though formally aligned with the [[Order of the Shimmering Guide]].  
- [[Kaelor Thornhide]] – Recipient of the Dreambinding Rite after exposure to an echo of [[Veltrazhar]].  
- **Silvielle** – A sentient Lunabloom flower gifted to [[01 Campaign/05 Parties/01 Characters/06 Campaign 06/Kibo Shi|Kibo]] during a moment of divine resonance at the Moonwell.  
- Symbol: A silver crescent moon cradling a droplet of memorylight, multicolored and softly glowing.  
- Uniforms: Silken robes woven with moon-thread; crescent-halo hoods shimmer under lunar light. Higher clergy wear mirrored circlets etched with phases of both moons.


