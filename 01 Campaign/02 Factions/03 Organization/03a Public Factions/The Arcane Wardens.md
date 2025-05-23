---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[Wardspire Tower]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - National
art: 90 Assets/Images/Organizations/ArcaneWardens.png
pronounced: ar-KANE WAR-dens
founded: 07 Emberwake -1 PR
organizationtype:
  - Regulatory
location:
  - "[[The Outcast Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mwingu Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Lambaro Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Kanda Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mangagoy Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Jambito Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Middle Isles]]"
  - "[[Kanda]]"
  - "[[Jambito]]"
  - "[[Eastwatch District]]"
  - "[[Wardspire District]]"
  - "[[Boba]]"
  - "[[Lambaro]]"
  - "[[Arcspire District]]"
  - "[[Seaside Cape]]"
  - "[[Tideglass Heights]]"
  - "[[Mwingu]]"
  - "[[Scholar's Ring]]"
  - "[[Glyphwarden Outreach Office]]"
  - "[[Wardspire Tower]]"
  - "[[01 Campaign/01 World/08 Points of Interest/05 Government/Outcast Isles/Kanda Isles/Boba/Arcane Embassy of Boba]]"
  - "[[Warden Outpost and Archives]]"
  - "[[Leyline Monitoring Shelter]]"
  - "[[Field Observation Suite]]"
head:
  - "[[Selvik Thorne]]"
allies:
  - "[[The Eternal Concord]]"
  - "[[Mangagoy Healing Sanctuary (Faction)]]"
  - "[[The Order of the Ember Blades]]"
  - "[[The Phoenix Assembly]]"
  - "[[The Voidscourge Hunters]]"
  - "[[The Wardens of the Deep Dark]]"
rivals:
  - "[[The Black Sepulcher]]"
  - "[[The Eternal Concord]]"
  - "[[The Red Runners]]"
  - "[[The Bleeding Tide]]"
  - "[[The Crimson Gauge]]"
  - "[[The Blackwake Corsairs]]"
  - "[[The Crimson Shroud]]"
  - "[[The Emberborn Exiles]]"
  - "[[The Midnight Covenant]]"
  - "[[The Sable Accord]]"
  - "[[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Veilbound Circle]]"
aliases:
  - Wardens of the Glyph
  - Arcane Wardens
banner: off
foundedshort: -1.04.07 PR
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
> The Arcane Wardens are the [[Kingdom of Kanda]]’s elite regulatory force dedicated to the oversight of arcane magic and planar energies. Formed in the wake of escalating magical catastrophes, their reach now extends to every major isle in the Outcast region. Known for their unyielding pursuit of arcane order, they issue licenses, control forbidden research, and oversee the protection of Pre-Rising magical artifacts and leylines.

### Oaths
> "We bind our will to order, our flame to the law, and our wards to the world."

### Mission Statement
> To secure the arcane future of the Isles by regulating powerful magic, enforcing magical law, and safeguarding against extradimensional threats through coordinated national oversight.

### Laws
> - All planar experimentation must be approved and observed.  
> - Pre-Rising magical relics are Crown-protected property.  
> - Enchantment, domination, and necromancy are regulated schools.  
> - Teleportation and planar travel are forbidden without state sanction.

### Tenets
> - Magic must serve structure and balance.  
> - Knowledge is sacred, but dangerous unbound.  
> - Vigilance is the duty of all those gifted.

### Prohibitions
> - Summoning without registration.  
> - Collaboration with entities from the Deep Spiral or Twelve Hells.  
> - Possession of unlicensed Pre-Rising artifacts.  
> - Interfering with active Warden seals or glyphs.

## Current Events
> - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Selvik Thorne|Archmage Selvik Thorne]] and [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Boba/Kaelen Duskbloom|Ambassador Kaelen Duskbloom]] have both been referenced in Group 5 sessions.  
> - Group 3 is approaching a Warden-controlled binding beacon in the [[Mangagoy Temple]].  
> - Group 4 uncovered forbidden infernal texts tied to the Warden’s Pre-Rising sealing rituals.  
> - The weakening of leylines and magical interference suggests Warden-sealed wards are under strain.

## History
> The Arcane Wardens were born in the waning decades of the Pre-Rising Age, a response to the first demonic incursion that ravaged the mainland. When the invasion reached the Isles, they struck a desperate accord with [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Infernal Covenant]] (Asmodeus), sealing the invading lieutenants of Orcus with infernal assistance. In return, the Isles were enveloped by the Rising—an arcane shield that reshaped travel and spellcasting across the region.
>
> The cost was high: diminished arcane potency, forbidden histories, and the silencing of those involved. [[The Whispering Hand]], Asmodeus’s appointed witness, ensured no record of the pact could escape glyphbinding. The Wardens have since walked a line between public servant and secret keeper.

## Notes
- [[The Whispering Hand]] — infernal witness to the binding pact, erased from most records.
- [[The Glyphward Pact]] — Warden-led sealing of Orcus’s lieutenants with infernal assistance.
- Internal dissent over the ethics of the pact is rumored among junior wardens.
- [[Ghelp]] — Kobold investigator acting under Warden authority in Mangagoy.
- [[Elda Brightspark]] — Cleric of [[Lunara]], arcane historian, consultant to the Wardens in Mangagoy.
- The Arcane Wardens maintain active collaboration with the [[01 Campaign/01 World/08 Points of Interest/06 Library, Archive, School, Research/The Outcast Isles/Mangagoy/Mangagoy Healing Sanctuary|Mangagoy Healing Sanctuary]], especially through liaison [[Elda Brightspark]] on matters of arcane corruption and Pre-Rising healing techniques.
- Associated NPCs: Archmage Selvik Thorne, Ambassador Kaelen Duskbloom, Ghelp, Elda Brightspark
- Symbol: A silver glyph-eye inscribed over an open book, flanked by warding runes.
- Uniforms: Midnight blue robes with silver arcane threadwork. Regional wardens wear mantle glyphs unique to their isle.






