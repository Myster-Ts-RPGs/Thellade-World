---
tags:
  - "#Organization"
  - "#TODO"
hq: "[[Vault of Muffled Truths]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Local
art: 90 Assets/Images/Misc/PlaceholderImage.png
location:
  - "[[Vault of Muffled Truths]]"
  - "[[Glowquarter]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]]"
pronounced: OR-dur of SY-lent EK-ohz
founded: 12 Nightveil 0068 PR
foundedshort: 0068.07.12 PR
head:
  - "[[Telmira of the Echos]]"
rivals:
  - "[[The Ashen Vanguard]]"
  - "[[Mangagoy Healing Sanctuary (Faction)]]"
  - "[[The Black Sepulcher]]"
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
> The [[Order of Silent Echoes]] is an esoteric cult rooted in the Glowquarter of [[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]], shrouded in riddles, moonlight, and reverse-echo prophecy. Believed to trace back to Pre-Rising echo-banishing rites, the Order communes with dormant echoes—whispers of ancient power or broken gods—and manipulates these remnants through ritual silence and sacred inversion. It is led by [[Telmira of the Echoes]], a veiled elven seer whose guidance is said to come in riddled phrases and reverse-intoned hymns.

### Oaths
> “Speak only when the echo fades. Act only when silence ends.”

### Mission Statement
> To preserve, listen for, and shape the echoes of forgotten truth in a world that speaks too loudly.

### Laws
> - Silence is sacrosanct within the sanctum.
> - Never reveal the nature of the echo to the unbound.
> - Guard Room 7 at [[Whisperwind Suites]] without question.

### Tenets
> - Truth hides in what was forgotten.
> - Reversal reveals the sacred path.
> - Only silence may hold the Echoes back.

### Prohibitions
> - Never speak the names of the dead aloud.
> - Never enter the Vault of Muffled Truths alone.
> - Never interfere with the dreams of the uninitiated.

## Current Events
- The Order is investigating a dream-plague afflicting residents of the [[Glowquarter]], tied to leyline disturbances and whispered fragments of [[Xal’Zul]]'s verse.
- Whisperer [[Telmira of the Echoes]] has begun retreating for longer periods into the sanctum, emerging only when the moon reaches its apex.
- Steward-level agents appear to be moving through [[Whisperwind Suites]], potentially linked to Room 7’s reinforced seal.

## History
- (Generated) Founded in 68 PR during a post-Rising schism among Lunaran faithful regarding the interpretation of binding echoes.
- Became active in Mangagoy in the mid-Second Century PR, hiding within the Glowquarter during arcane reconstruction.
- Secretly absorbed Pre-Rising survivors of a group known as the Echo Tribunal.

### Campaign Events
- [[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 3|Campaign Group 3]]
  - Encountered echo-spirits and leyline corruption tied to the Order during the Embermoon Surge Riots.
  - [[Telmira of the Echoes]] is suspected to have interfered with the sealing beneath the [[Temple of Aurion and Lunara]].
  - [[Sowilo Brightgaze]] identified dream-echo anomalies in patients tied to Order rituals.

## Hierarchy
- **Whisperer:** [[Telmira of the Echoes]] – Elven seer and dream-riddle interpreter; rarely speaks directly, always veiled.
- **Regional Contacts / Lieutenants:**
  - [[Lirien Halowvale]] – Oversees Room 7 and echo-bound guests at [[Whisperwind Suites]].
  - [[Fenwick]] – Apprentice infiltrator embedded at [[Glowglass Arcanum]] under [[Zaetril]].

## Locations
### Primary Hideouts
- [[Vault of Muffled Truths]] (Generated) – Hidden beneath the Glowquarter; rituals take place in reverse-sealed stone sanctums.
  
### Secondary Hideouts
- Room 7, [[Whisperwind Suites]] – Veiled echo convergence site maintained by steward lieutenants.

## Notes
- **Threat Level:** High
- **Speculative Rift:** Some members may believe they are safeguarding against abyssal resurgence; others may be working toward echo reconstitution.
- **Allied Factions:** NONE
- **Rival Factions:** [[The Ashen Vanguard]], [[Mangagoy Healing Sanctuary]], [[Cult of Orcus]]
- **Symbol:** A downward-facing crescent with an echo glyph spiraling inward.
- **Uniforms:** Veiled robes in silver and slate gray, fingers marked with silent glyph tattoos.

### Key Plot Threads
- Investigating the dream-plague spreading from the Glowquarter to noble guests.
- Securing or disrupting rituals beneath the Vault of Muffled Truths.
- Monitoring [[Fenwick]]’s dual allegiances at [[Glowglass Arcanum]].
- Room 7 may house a dormant Echo Anchor.

### Artifacts and Evidence Found
- Broken moonstone mirror engraved with reversed Lunaran script.
- Echo-braided cords recovered beneath [[Whisperwind Suites]].
- Sigil-etched brass key recovered during an encounter in Room 7.
- Testimony from [[Sowilo Brightgaze]] describing reversed divine resonance.




