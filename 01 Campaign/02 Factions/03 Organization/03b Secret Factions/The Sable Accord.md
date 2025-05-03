---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Veil of Midnight]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Global
  - Extra-Dimensional
  - Cross-Planar
art: 90 Assets/Images/Organizations/SableAccord.png
rivals:
  - "[[The Rift Scholars Collective]]"
  - "[[The Mistwalkers]]"
  - "[[The Arcane Wardens]]"
  - "[[The Eternal Concord]]"
  - "[[The Ashen Vanguard]]"
aliases:
  - Sable Accord
  - The Ebon Circle
location:
  - "[[Neroshade]]"
  - "[[The Starlost Reach]]"
  - "[[The Veil of Midnight]]"
  - "[[The Outcast Isles]]"
  - "[[Kanda Isles]]"
  - "[[Kanda]]"
  - "[[Sunveil Hollow]]"
  - "[[The Umbral Vault]]"
  - "[[Lambaro Isles]]"
  - "[[Lambaro]]"
  - "[[Glowmire Terrace]]"
  - "[[The Hollow Spire]]"
  - "[[Mangagoy Isles]]"
  - "[[The Sunken Archive]]"
  - "[[Middle Isles]]"
  - "[[The Twilight Nexus]]"
  - "[[Mwingu Isles]]"
  - "[[Mwingu]]"
  - "[[The Black Aetherium]]"
  - "[[Jambito Isles]]"
  - "[[Jambito]]"
  - "[[Silverspire Terrace]]"
  - "[[The Obsidian Hall]]"
head:
  - "[[Lyrel Nightshade]]"
founded: 11 Nightveil 94 PR
organizationtype:
  - Arcane
  - Religious
pronounced: SAY-buhl uh-KORD
foundedshort: 94.07.11 PR
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
> [[The Sable Accord]] is a clandestine society of arcane scholars, planar engineers, and magically empowered nobles who operate from the fringes of legitimacy. Branded as heretics by the [[Arcane Wardens]] and political threats by the [[Eternal Concord]], they seek to recover and advance forbidden magical theory—particularly Pre-Rising spellwork, planar convergence, and reality shaping. Their sanctums stretch across the Isles, hidden in demiplanes, vaults, and arcane sanctuaries.

### Oaths
> “What was lost must be found. What is forbidden must be reclaimed.”

### Mission Statement
> To preserve, refine, and master forgotten or outlawed magical arts through controlled experimentation, reclamation of Pre-Rising knowledge, and the stabilization of planar instabilities before they unravel the known world.

### Laws
> • The knowledge of the Accord belongs to the Accord  
> • Obey the Ebon Circle in all matters of containment and access  
> • Speak no truth of the Accord to those bound by foreign oaths

### Tenets
> • Magic is not innately moral—its use defines its purpose  
> • The planes are tools, not threats  
> • Rejection of knowledge is the first step toward tyranny

### Prohibitions
> • Betraying the location of Accord sanctuaries  
> • Interfering with an active planar ritual without authorization  
> • Assisting the [[Arcane Wardens]] or [[Eternal Concord]] in any capacity

## Current Events
- [[Lyrel Nightshade]] has completed a three-year planar binding algorithm known as the Spiral Chain, believed to allow stable passage through astral rifts.  
- [[Varethis Thaldris]] has sealed three minor rifts near [[Mwingu]] following leyline instability traced to suppressed Warden spelltech.  
- [[Vaelris Korrin]] has reported growing rift storms interfering with navigation around the [[Twilight Nexus]].  
- [[Campaign Group 5]] is on the verge of direct contact with Accord agents via [[Felyn]], who has been marked for potential induction.  
- [[Maelis Durn]] has begun internal experiments using mutagenic enchantments retrieved from Pre-Rising dueling archives.

## History
- 11 Duskwane 94 PR (Generated): [[Lyrel Nightshade]] founds the Accord following exile from the Royal Academy.  
- 101 PR: The Accord constructs [[The Veil of Midnight]] inside a folded demiplane, hidden between shadow-aligned leylines.  
- 127 PR: The [[Ebon Circle]] is formally established with five founding masters.  
- 139 PR: [[The Black Aetherium]] ruptures a localized rift near [[Mwingu]]; the event is concealed by memory suppression and coordinated political bribes.  
- 162 PR: The Accord's Sanctum Codex is fractured by an internal betrayal; fragments allegedly sold to unknown Abyssal agents.  
- 210 PR: The Accord establishes observation posts in every major region of the Isles, including [[The Silent Observatory]] and [[The Obsidian Hall]].

### Campaign Events
- [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 1|Campaign Group 1]]  
  - Detected unstable scroll fragments near [[Mwingu]] linked to [[Varethis Thaldris]]’s experiments in [[The Black Aetherium]]  
  - Investigated failed Warden scrying zones where Accord glyphs were recovered

- [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 5|Campaign Group 5]]  
  - [[Felyn]] is actively being recruited through encoded messages and indirect mentorship via [[Maelis Durn]]  
  - Arcane constructs recovered in [[Boba]] traced to Accord dueling and crafting rituals

## Hierarchy
- **Supreme Leader:** [[Lyrel Nightshade]] – 'Master of the Forbidden Path'; architect of Accord ideology and master of planar obscuration  
- **Council-Level Members (The Ebon Circle):**  
  - [[Thalvian Vex]] – 'Keeper of the Hidden Flame'; enforcer of secrecy and loyalty  
  - [[Seraphina Aldren]] – 'Mistress of the Black Wells'; head of ritual transformation and essence extraction  
  - [[Kaelos Sorran]] – 'Master of the Shattered Veil'; planar rift specialist and summoner  
  - [[Malryss Fen]] – 'Seer of the Lost Future'; divination and chronomancy seer

- **Regional Contacts / Lieutenants:**  
  - [[Andric Vaylen]] – 'The Black Veil Councilor'; noble patron operating from [[Kanda]] – [[Sunveil Hollow]] – [[The Umbral Vault]]  
  - [[Elyssara Vornis]] – 'The Silent Archivist'; relic keeper in [[Lambaro]] – [[Glowmire Terrace]] – [[The Hollow Spire]]  
  - [[Maelis Durn]] – 'The Hollow Hand'; alchemical researcher in [[Kanda Isles]] – [[The Silent Observatory]]  
  - [[Araniss Velis]] – 'The Drowned Scholar'; archivist of [[Mangagoy Isles]] – [[The Sunken Archive]]  
  - [[Tyren Zorath]] – 'The Forgotten'; lorebroker in [[Jambito]] – [[Silverspire Terrace]] – [[The Obsidian Hall]]  
  - [[Varethis Thaldris]] – 'The Echo'; rift scholar in [[Mwingu]] – [[Scholar's Ring]] – [[The Black Aetherium]]  
  - [[Vaelris Korrin]] – 'The Stormbound'; artifact retriever in [[Middle Isles]] – [[The Twilight Nexus]]

## Locations
### Primary Hideouts
- [[The Veil of Midnight]] – Central headquarters, located in the Demiplane of [[Neroshade]] – [[The Starlost Reach]]

### Secondary Hideouts
- [[The Hollow Spire]] – Ruined alchemical forge repurposed as a lab in [[Lambaro]]  
- [[The Black Aetherium]] – Rift experiment site in [[Mwingu]]  
- [[The Umbral Vault]] – Forbidden knowledge archive in [[Kanda]] – [[Sunveil Hollow]]  
- [[The Silent Observatory]] – Remote arcane observatory in [[Kanda Isles]]  
- [[The Sunken Archive]] – Submerged relic containment site in [[Mangagoy Isles]]  
- [[The Obsidian Hall]] – Noble-linked broker site in [[Jambito]]  
- [[The Twilight Nexus]] – Free-floating arcane structure near a planar rift in [[Middle Isles]]

## Notes
- **Threat Level:** Extreme  
- **Speculative Rift:** Philosophical fractures exist within the [[Ebon Circle]] between containment-focused scholars and those who favor direct magical escalation.  
- **Symbol:** A ring of seven broken sigils surrounding an eye weeping starlight.  
- **Uniforms:** No formal attire; members wear concealment cloaks, null-sigil gloves, and personalized planar-threaded robes.

### Key Plot Threads
- [[Malryss Fen]]'s visions suggest the Arcane Wardens will attempt a planar seal that could destabilize leyline currents across the Isles  
- [[Lyrel Nightshade]] seeks to embed Accord-aligned sigilcasters within noble houses via controlled mentorships  
- [[Vaelris Korrin]] has located what may be a Pre-Rising planar anchor buried beneath a minor isle  
- [[Thalvian Vex]] suspects someone in the Circle is leaking ritual codices to outside parties  
- [[Felyn]] may be elevated as a formal acolyte, gaining access to Accord sanctums and relics

### Artifacts and Evidence Found
- Fragment of a reversed chronoglyph keyed to [[Malryss Fen]]  
- Burned pages of the Spiral Chain treatise recovered near a failed ritual site in [[Mwingu]]  
- Null-sigil pendant tied to a memory-erasure glyph within [[The Obsidian Hall]]  
- Planar-thread robes woven with anti-scrying runes, recovered by [[Campaign Group 1]]  
- Felyn’s encoded invitation, containing veiled references to Accord crafting protocols

### Access Ritual – The Circle of Seven Shadows
> To reach [[The Veil of Midnight]] within the Demiplane of [[Neroshade]], one must perform a ritual known as *The Circle of Seven Shadows*. This can only occur at a site touched by Accord presence (such as [[The Silent Observatory]] or [[The Obsidian Hall]]). Required elements include:  
> – A black aether crystal collected under lunar convergence  
> – Seven mirrored glyphs etched on obsidian slates placed in a heptagram  
> – The phrase “Veyna’Zar Thalrun Mel’Korash” spoken as twilight fully falls  
> – A willingly offered secret, never before revealed, whispered into the sigil circle  
>
> The ritual, if properly attuned to a known anchor, opens a portal for thirteen minutes. Keys to this passage are soulbound Accord sigils, issued only by the [[Ebon Circle]]. Rumors suggest rogue variants of this ritual may have leaked.

