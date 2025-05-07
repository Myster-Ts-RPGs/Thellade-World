---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Vault of Echoes]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/HollowMask.png
aliases:
  - Hollow Mask
location:
  - "[[The Outcast Isles]]"
  - "[[Kanda Isles]]"
  - "[[Kanda]]"
  - "[[Boba]]"
  - "[[Jambito]]"
  - "[[Lambaro]]"
  - "[[Silverspire Terrace]]"
  - "[[The Vault of Echoes]]"
  - "[[Glimmershade]]"
  - "[[The Mirrored Walk]]"
  - "[[Sunfire Heights]]"
  - "[[01 Campaign/01 World/08 Points of Interest/04 Temple or Shrine/Thassila/The Listening Hollow]]"
  - "[[Arcspire District]]"
  - "[[The Veilhouse of Names]]"
pronounced: HAH-low MASK
founded: 11 Nightveil 96 PR
organizationtype:
  - Espionage
  - Secret
  - Psychic
head:
  - "[[Siris Varnis]]"
steward:
  - "[[Mira Thelis]]"
rivals:
  - "[[The Crimson Shroud]]"
  - "[[The Eternal Concord]]"
foundedshort: 96.07.11 PR
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
> TABLE without id file.link AS "Name", condition AS Condition, aliases AS Aliases, join(occupation, ", ") AS "Occupations", link(location) AS "Location"
> FROM "01 Campaign"
> WHERE contains(tags, "Character") AND econtains(organization, this.file.link)
> SORT tags DESC, file.name ASC

## Overview
### Description
> [[The Hollow Mask]] is a secretive spy syndicate specializing in impersonation, psychic surveillance, and political manipulation. Its agents don shifting personas, infiltrate noble courts, and unmake alliances with a whispered word or altered memory. To speak to the Mask is to risk forgetting who you are—and why you ever asked. They don't wear masks to hide. They wear them to rewrite.

### Oaths
> "We are the silence in the crowd. The shape in the mirror. The truth you forgot."

### Mission Statement
> To destabilize threats to hidden order through infiltration, mind magic, and information disruption.

### Laws
> - No identity persists. Use only what serves the Mask.  
> - All infiltrations must be logged—psychically or physically.  
> - Do not fall in love with your face.

### Tenets
> - Memory is a weapon.  
> - Secrets are currency.  
> - Trust is your deadliest disguise.

### Prohibitions
> - Never wear the same face twice in the same court.  
> - Do not act without a second agent observing.  
> - Do not kill a target until their memory has been recorded.

## Current Events
- [[Siris Varnis]] (‘The Faceless’) is rumored to be orchestrating false flag betrayals across noble houses in Jambito and Boba.  
- [[Mira Thelis]] (‘The Echo’) has been psychically tracking Eternal Concord intelligence drops in Glimmershade.  
- In Lambaro, a diplomat’s complete behavioral shift has triggered quiet inquiries from both the Ashen Vanguard and the Crimson Shroud.

## History
- Founded post-Rising by survivors of the Kingdom’s black court, the Mask was initially tasked with exposing foreign manipulation but quickly fractured into a covert, self-driven organization.  
- Their techniques evolved from traditional subterfuge to include psionic eavesdropping, identity fragmentation, and memory erasure.  
- They no longer speak names, only functions.

### Campaign Connections
[[Campaign Group 4]] – Investigating noble intrigue and corruption in Jambito may intersect with Hollow Mask operatives.  
[[Campaign Group 6]] – Boba-based infiltration involving artifact theft or diplomatic disruption could uncover false identities.  
Multiple parties have encountered unexplained memory gaps, altered statements, or infiltrated councils—likely symptoms of the Mask’s interference.

## Hierarchy
- **Faceless Director:** [[Siris Varnis]] – Known only by rumors and effects, ‘The Faceless’ may not be a single person.  
- **Seer-Observer:** [[Mira Thelis]] – ‘The Echo’, capable of remote psychic resonance, listening through walls and minds.

## Locations
- [[The Vault of Echoes]] (Jambito > Silverspire Terrace) — Whisper archive and identity lab.  
- [[The Mirrored Walk]] (Kanda > Glimmershade) — Illusion training path; memory-shift induction site.  
- [[01 Campaign/01 World/08 Points of Interest/04 Temple or Shrine/Thassila/The Listening Hollow]] (Boba > Sunfire Heights) — Sound-sealed chamber for psychic interception.  
- [[The Veilhouse of Names]] (Lambaro > Arcspire District) — Persona chamber for constructing false identities.

## Notes
- **Threat Level:** Extreme—primarily to court security and political stability.  
- **Symbol:** A blank mask marked by a single vertical eye and no mouth.  
- **Uniforms:** None standard. Agents wear facial tattoos that vanish when exposed to divination magic.  
- **Factional Relationship:** While not formally allied, Hollow Mask operations often foil Crimson Shroud interventions.

### Key Plot Threads
- The Mirrored Writ — A document signed in three names, none of which belong to the signee.  
- The Forgotten Prince — A noble heir whose identity has been overwritten.  
- The Silence Pact — Psychic infiltration contracts bound to planar echoes.  
- Hollowbound — A ritual that splits memory from self, allowing agents to operate without conscious guilt.

### Artifacts and Evidence
- Burned masks with soul-binding runes.  
- Psychic amplifiers disguised as court jewelry.  
- Voice-activated keys linked to persona vaults.  
- Sealed memory tomes with pages only readable under illusion light.
