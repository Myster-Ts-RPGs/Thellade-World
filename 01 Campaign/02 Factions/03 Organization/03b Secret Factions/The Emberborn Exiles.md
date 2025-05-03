---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Emberborn Exiles/The Veiled Anthenaeum]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/EmberbornExiles.png
aliases:
  - Emberborn Exiles
pronounced: EM-ber-born EX-iles
founded: 29 Emberwake 84 PR
organizationtype:
  - Secret
  - Scholarly
  - Radical
head:
  - "[[Taryn Solen]]"
steward:
  - "[[Orin Vexis]]"
location:
  - "[[The Outcast Isles]]"
  - "[[Kanda Isles]]"
  - "[[Lambaro Isles]]"
  - "[[Mangagoy Isles]]"
  - "[[Kanda]]"
  - "[[Boba]]"
  - "[[Lambaro]]"
  - "[[Mangagoy]]"
  - "[[Glimmershade]]"
  - "[[Sunfire Heights]]"
  - "[[Market Row]]"
  - "[[Binders' Lane]]"
  - "[[The Mirror Cloister]]"
  - "[[The Rifted Archive]]"
  - "[[The Cinderglass Study]]"
  - "[[The Veiled Anthenaeum]]"
rivals:
  - "[[The Arcane Wardens]]"
  - "[[The Eternal Concord]]"
foundedshort: 84.04.19 PR
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
> [[The Emberborn Exiles]] are a network of radical Rift Scholars, arcane theorists, and political dissidents who reject the Kingdom of Kanda’s sanctioned magical orthodoxy. Condemned as dangerous reformers by the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Arcane Wardens|Arcane Wardens]] and [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Eternal Concord|Eternal Concord]], they operate in secret to advance arcane freedom, planar experimentation, and sociopolitical reform. While they lack central hierarchy, they are united by a manifesto: knowledge must be liberated, not regulated.

### Oaths
> "Burn the veil. Ignite the mind. Truth is worth the fire."

### Mission Statement
> To dismantle the arcane status quo, expose the limitations of sanctioned scholarship, and build a new magical society grounded in planar communion, forbidden insight, and academic autonomy.

### Laws
> - Never reveal the identity of a fellow Exile.  
> - Defy enforced magical ignorance at every opportunity.  
> - Safeguard artifacts of knowledge from misuse or seizure.

### Tenets
> - No truth is too dangerous to pursue.  
> - Arcane stagnation is a form of tyranny.  
> - Revolution begins with revelation.

### Prohibitions
> - Do not surrender to Arcane Wardens without resistance.  
> - Do not burn knowledge, even if it's dangerous.  
> - Do not become what you seek to overthrow.

## Current Events
- [[Taryn Solen]] has been reported giving subversive speeches under false identities in political salons across Kanda.  
- [[Orin Vexis]] remains hidden in Glimmershade, secretly corresponding with Rift Scholar sympathizers and nobles disillusioned with the Concord.  
- In Lambaro, mysterious sigils and pre-Rising glyphs tied to planar rituals have surfaced in excavated industrial zones.

## History
- Originated from the Rift Scholar defection wave during the Reconstruction Era.  
- First major ideological rupture occurred when Magister Orin Vexis publicly denounced the Eternal Concord’s ban on planar research.  
- The name “Emberborn” emerged from a metaphor in Vexis’s final published paper: *“From Ash, the Rift Rekindles.”*  
- Now branded as a cult of arcane radicalism, they persist as a decentralized but connected scholarly underground.

### Campaign Connections
[[Campaign Group 2]] – Lambaro Rift activity, artifact pursuit, and exposure to Rift Scholar politics make future intersection likely.  
[[Campaign Group 6]] – Taryn Solen’s influence may reach into covert circles explored by Group 6.  
All Parties recovering Pre-Rising knowledge or resisting magical bureaucracy are at risk of indirect Exile entanglement.

## Hierarchy
- **Firebrand Leader:** [[Taryn Solen]] — Charismatic, eloquent, and unseen in public by name. May use illusions or proxies.  
- **Magister Emeritus:** [[Orin Vexis]] — Disgraced Rift Scholar, archivist, and theorist behind the planar awakening framework.

## Locations
- [[The Veiled Anthenaeum]] (Kanda > Glimmershade) — Hidden archive and central safehouse for Vexis.  
- [[The Mirror Cloister]] (Boba > Sunfire Heights) — Secret meeting hall among progressive political theorists.  
- [[The Rifted Archive]] (Lambaro > Market Row) — Smuggled industrial documents and recovered planar glyphs stored here.  
- [[The Cinderglass Study]] (Mangagoy > Binders' Lane) — Experimental artifact vault and planar laboratory hidden behind a false alchemical studio.

## Notes
- **Threat Level:** Considered existential to magical regulatory order by the Arcane Wardens.  
- **Symbol:** A burning scroll crossed with a stylized planar ring.  
- **Uniforms:** None official. Many wear red-threaded cuffs or glowing glass pendants imbued with planar light.  
- **Public Perception:** Vilified by state-aligned institutions; quietly admired by rebellious scholars and progressive nobles.

### Key Plot Threads
- The Mirror Manifesto — A subversive text allegedly penned by Taryn, circulating among Lambaro’s youth.  
- The Veil Burns Twice — A former Eternal Concord mage now working with the Exiles.  
- Echoes of the Planes — Planar surges linked to Exile experiments in artifact-rich ruins.  
- Concord in Ash — A pending magical tribunal set to investigate “theories of destabilizing correspondence” blamed on Exile philosophy.

### Artifacts and Evidence
- Rift lenses with multiplanar resonance inscriptions.  
- Ember-scripted scrolls that alter based on proximity to leylines.  
- Planar tuning forks linked to deep-space echo vibrations.  
- Political pamphlets encoded with firebrand runes readable only under moonlight.
