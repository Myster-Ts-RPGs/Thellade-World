---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Wraith's Wake]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/CrimsonShroud.png
aliases:
  - Crimson Shroud
  - The Unseen Hand
pronounced: KRIM-zuhn SHROWD
founded: 14 Emberwake 88 PR
organizationtype:
  - Secret
  - Espionage
steward:
  - "[[Valtheris Voss]]"
location:
  - "[[The Outcast Isles]]"
  - "[[Kanda Isles]]"
  - "[[Kanda]]"
  - "[[Tallowgate]]"
  - "[[The Red Veil]]"
  - "[[Boba]]"
  - "[[Brimstone Docks]]"
  - "[[The Hollow Chamber]]"
  - "[[Mangagoy]]"
  - "[[Glowquarter]]"
  - "[[The Specter's Rest]]"
  - "[[Lambaro Isles]]"
  - "[[Mangagoy Isles]]"
  - "[[Lambaro]]"
  - "[[Crucible Hollow]]"
  - "[[The Umbral Vault]]"
  - "[[Mwingu]]"
  - "[[The Tideflats]]"
  - "[[The Silent Sanctum]]"
  - "[[Jambito Isles]]"
  - "[[Mwingu Isles]]"
  - "[[Jambito]]"
  - "[[Deepwall Reach District]]"
  - "[[The Forgotten Archive]]"
  - "[[Middle Isles]]"
  - "[[The Wraith's Wake]]"
head:
  - "[[Eldrik Vail]]"
rivals:
  - "[[The Ashen Vanguard]]"
  - "[[The Eternal Concord]]"
  - "[[The Arcane Wardens]]"
  - "[[The Cursed Blades]]"
  - "[[The Hollow Mask]]"
foundedshort: 88.04.14 PR
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
> The [[Crimson Shroud]] is a clandestine organization of assassins, archivists, and illusionists operating across the Outcast Isles. Originally formed as a royal intelligence network, the Shroud now acts independently to protect Kanda’s continuity from existential threats—political, revolutionary, or arcane.

### Oaths
> "Loyalty weighs heavier than gold, cuts sharper than steel, and poisons deeper than betrayal."

### Mission Statement
> To preserve the stability and legacy of Kanda through covert operations, information warfare, and selective elimination.

### Laws
> - Obey the Shrouded Council without question.  
> - Protect the Shroud’s existence at all costs.  
> - The mission's success outweighs personal survival.

### Tenets
> - Knowledge is dominion.  
> - Stability over idealism.  
> - History bends to the unseen hand.

### Prohibitions
> - No alliances with infernal or abyssal forces.  
> - No public disclosure of the Shroud’s missions.  
> - No action without sanction from the Shrouded Council.

## Current Events
- [[Lord Edrik Vail]] ('The Crimson Shade') remains undiscovered while manipulating court politics through shadows and proxies.
- [[Valtheris Voss]] expands recruitment of elite operatives from newly destabilized regions like Mangagoy and Innerwatch.
- Assassination targets across Boba and Kanda Isles have increased following political unrest.

## History
- Secretly founded during the final century before the Rising under King Alvarion IV.
- Adapted from royal secret police into an independent organization during the chaos post-Rising.
- Key operations include the silent elimination of traitor houses during the Boba Reformation.

### Campaign Connections
[[Campaign Group 1]]
- Discovered evidence of Shroud-led assassinations in the Tideflats under Mwingu.
- Found partial records of Shroud deployments within the ruins of a failed revolution in Kanda.

## Hierarchy
- **Master of the Shroud:** [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Eldrik Vail|Lord Eldrik Vail]][[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Eldrik Vail|The Crimson Shade]] — True identity masked by his public persona.
- **First Blade:** [[Valtheris Voss]] — Chief executor of field missions.

### Shrouded Council (Unseen Hand)
- [[Valtheris Voss]] — First Blade, Master of Assassinations  
- [[Lirien Vayne]] — Whisperer, Mistress of Secrets  
- [[Orik Solen]] — Revenant Marshal, Master of Field Warfare  
- [[Myrthas Grell]] — Phantom Alchemist, Sabotage Specialist  
- [[Savant Stone]] — Silent Judge, Internal Enforcer

## Regional Operatives
- **Kanda:** [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Eldrik Vail|Lord Eldrik Vail]] – Secretly directs missions while posing as a court advisor.  
- **Boba:** [[Marlon Draen]] – Dockside recruiter and silent broker.  
- **Mangagoy:** [[Ralek Torsen]] – Street-level blackmailer and field handler.  
- **Lambaro:** [[Vasira Dellos]] – Merchant blade and data smuggler.  
- **Mwingu:** [[Jalvor Therin]] – Illusionist for disruption campaigns.  
- **Jambito:** [[Sariya Relleth]] – Archive infiltrator and false record creator.  
- **Middle Isles (Mobile Operations):** [[Varros Darin]] – Naval intelligence liaison.

## Locations
### Major Operational Bases
- [[The Red Veil]] (Kanda > Tallowgate)  
- [[The Hollow Chamber]] (Boba > Brimstone Docks)  
- [[01 Campaign/01 World/08 Points of Interest/01b Secret Factions/The Crimson Shroud/The Specter's Rest|The Specter's Rest]] (Mangagoy > Glowquarter)  
- [[The Umbral Vault]] (Lambaro > Crucible Hollow)  
- [[The Silent Sanctum]] (Mwingu > The Tideflats)  
- [[The Forgotten Archive]] (Jambito > Deepwall Reach District)  
- [[01 Campaign/01 World/08 Points of Interest/07 Ships/The Outcast Isles/The Wraith's Wake|The Wraith's Wake]] (Mobile Ship)

## Notes
- **Threat Level:** Extreme
- **Speculative Rift:** Tensions simmer between [[Valtheris Voss]] and [[Lirien Vayne]] over future leadership succession.
- **Symbol:** A crimson dagger silhouette split by an inkblot eye, surrounded by silent runic script.
- **Uniforms:** Blackened crimson cloaks with spell-woven fibers that deaden sound and obscure sight.

### Key Plot Threads
- The Secret Succession of the Shrouded Council  
- The Cold Trade: Silent contracts with noble houses  
- Restoration of the Forgotten Archive’s hidden vaults  
- Tracking the origins of the Crimson Shade

### Artifacts and Evidence
- Encrypted mission logs disguised as temple ledgers.  
- Assassin's tokens bearing the crimson eye insignia.  
- Memory crystals containing royal blackmail material.  
- Alchemical mists used to erase evidence at assassination sites.
