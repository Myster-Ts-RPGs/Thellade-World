---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Citadel of Flame]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - National
art: 90 Assets/Images/Organizations/EmberBlade.png
head:
  - "[[Taryn Fiero]]"
founded: 18 Stormwake -11 PR
organizationtype:
  - Order
  - Military
  - Arcane
allies:
  - "[[The Arcane Wardens]]"
  - "[[The Ashen Vanguard]]"
rivals:
  - "[[The Black Sepulcher]]"
  - "[[The Infernal Covenant]]"
location:
  - "[[The Outcast Isles]]"
  - "[[Jambito Isles]]"
  - "[[Jambito]]"
  - "[[Eastwatch District]]"
  - "[[Blademage Weighstation]]"
  - "[[Kanda Isles]]"
  - "[[Kanda]]"
  - "[[Ashfire Bastion District]]"
  - "[[Swordflame Encampment]]"
  - "[[Lambaro Isles]]"
  - "[[Lambaro]]"
  - "[[Arcspire District]]"
  - "[[Emberblade Training Yard]]"
  - "[[Mangagoy Isles]]"
  - "[[Mangagoy]]"
  - "[[Highhold Rise]]"
  - "[[The Citadel of Flame]]"
  - "[[Middle Isles]]"
  - "[[Seaside Cape]]"
  - "[[Driftwarf Docks]]"
  - "[[Flamewatcher Outpost]]"
  - "[[Mwingu Isles]]"
  - "[[Mwingu]]"
  - "[[Sanctuary of Evenlight]]"
  - "[[Crimson Rift Forward Post]]"
pronounced: EM-ber BLADES
aliases:
  - Ember Blades
  - Order of the Ember Blades
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
> [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Order of the Ember Blades|The Order of the Ember Blades]] is an elite martial-arcane order dedicated to safeguarding Kanda from planar incursions, abyssal corruption, and internal cultic threats. Forged from the recognition that steel alone could not face the dangers beyond the barrier, their knights blend sword mastery with tightly honed battle-magic. Their home fortress, [[The Citadel of Flame]] in [[Mangagoy]], trains warriors whose blades can cut spirit and spell alike.

### Oaths
> "When steel falters, flame endures. When barriers fall, we rise."

### Mission Statement
> To defend Kanda against extraplanar threats through a union of martial skill and arcane mastery, maintaining vigilance wherever the veil grows thin.

### Laws
> - All initiates must pass the Trial of Flame and Frost before full induction.  
> - Arcane teachings of the Order may not be sold, bartered, or transferred to non-members.  
> - Battle magic may only be wielded with discipline; reckless spellcasting is treason to the Order.  
> - A Blademage must answer any legitimate threat against the kingdom's barrier.

### Tenets
> - The sword alone does not suffice.  
> - Magic is a weapon, not a crutch.  
> - Vigilance honors those who fell unprepared.  
> - The flame that tempers can also purge.

### Prohibitions
> - Practicing abyssal, necromantic, or infernal magic without direct oversight.  
> - Abandoning an assignment related to planar threat containment.  
> - Training known cultists, or bartering with forbidden forces.  
> - Concealing signs of planar instability from commanding officers.

## Current Events
> - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Taryn Fiero|Master Blademage Taryn Fiero]] coordinates the training of mobile strike teams at [[The Citadel of Flame]], prepared to respond to possible breaches following leyline disruptions.  
> - New trials have been initiated across all Isles to recruit future Blademages—especially in response to growing signs of cultist reactivation.  
> - A covert Emberblade team is investigating missing relics from a ruined temple north of [[Seaside Cape]], possibly tied to [[The Black Sepulcher]].  
> - Rumors persist that [[The Infernal Covenant]] is seeking to infiltrate arcane training grounds, prompting stricter initiation vetting.

## History
> Formed on 18 Stormwake -11 PR, in the years leading to the Rising, the Order was founded by Master-Arcanist Veloria Flamebrand after a failed attempt to repel a minor abyssal breach. Recognizing that neither pure magic nor pure might could defend the Isles alone, she forged a new doctrine—a union of blade and spell in one soul.  
>  
> During the Rising, the Order fought alongside the Arcane Wardens and Blazing Pledge, holding key convergence points when the barrier threatened collapse. Though their numbers have never been vast, their strength lies in their synergy and their relentless oath to prevent catastrophe.

## Notes
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Taryn Fiero|Master Blademage Taryn Fiero]] – Human of uncertain age, duel-wielder of flamebound blades; master of hybrid battle-magic techniques.  
- [[The Citadel of Flame]] – Main headquarters located in [[Mangagoy]]'s [[Highhold Rise]], both a fortress and arcane training bastion.  
- [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Order of the Ember Blade/Blademage Weighstation|Blademage Weighstation]] – River-hold near [[Eastwatch District]], [[Jambito]], serving as a regional training and logistics node.  
- [[Swordflame Encampment]] – Base in [[Kanda]]'s [[Ashfire Bastion District]] near key barrier nodes.  
- [[Flamewatcher Outpost]] – A cliffguard post protecting leyline fractures outside [[Seaside Cape]].  
- Symbol: A downward flaming sword crossed with a half-moon shield, wreathed in crimson and gold arcs.  
- Uniforms: Crimson half-cloaks, blacksteel scale armor, arcane runes faintly etched across weaponry and gauntlets.
