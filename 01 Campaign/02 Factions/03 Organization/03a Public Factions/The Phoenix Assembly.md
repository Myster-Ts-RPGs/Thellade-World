---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Eternal Hearth]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/PhoenixAssembly.png
aliases:
  - Rebirth Circle
  - Phoenix Path
  - Phoenix Assembly
pronounced: FEE-niks uh-SEM-blee
founded: 4 Newdawn -7 PR
organizationtype:
  - Arcane
  - Social
  - Educational
head:
  - "[[Thalia Ashglow]]"
allies:
  - "[[The Eternal Concord]]"
  - "[[The Arcane Wardens]]"
rivals:
  - "[[The Bleeding Tide]]"
  - "[[The Infernal Covenant]]"
  - "[[The Iron Syndicate]]"
location:
  - "[[The Outcast Isles]]"
  - "[[Jambito Isles]]"
  - "[[Jambito]]"
  - "[[Riverbend Hollow]]"
  - "[[Civic Rebirth Annex]]"
  - "[[Kanda Isles]]"
  - "[[Kanda]]"
  - "[[Glimmershade]]"
  - "[[Phoenix Forum Hall]]"
  - "[[Boba]]"
  - "[[Ironveil Commons]]"
  - "[[The  Emberlight Assembly Wing]]"
  - "[[Lambaro Isles]]"
  - "[[Lambaro]]"
  - "[[Glowmire Terrace]]"
  - "[[The Eternal Hearth]]"
  - "[[Mangagoy Isles]]"
  - "[[Mangagoy]]"
  - "[[Ashgate Market]]"
  - "[[Renaissance Bridge Office]]"
  - "[[Mwingu Isles]]"
  - "[[Mwingu]]"
  - "[[Scholar's Ring]]"
  - "[[Hall of Social Illumination]]"
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
> [[The Phoenix Assembly]] is a philosophical, arcane, and civic reform faction working to foster societal rebirth through compassion, innovation, and integration. Their doctrines emphasize cultural unity, responsible magitech advancement, and the dismantling of exploitative hierarchies. Though not pacifist, they prefer persuasion and reform to rebellion, aiming to rise from the scars of the past as a radiant whole.

### Oaths
> “From ash, we kindle change. From ruin, we rise.”

### Mission Statement
> To lead Kanda into a new era of enlightenment, technological revival, and social equity, guided by shared values, rediscovered knowledge, and inclusive progress.

### Laws
> - All Assembly-sponsored inventions must be licensed through communal review.  
> - Debate must be welcomed in all Assembly forums unless it promotes hate or violence.  
> - Assembly envoys must protect refugee or disenfranchised groups they serve.  
> - Arcane practices must never be used to enforce oppression or personal enrichment at societal cost.

### Tenets
> - Unity is power.  
> - Technology must serve the people.  
> - All ancestries, castes, and crafts deserve a voice.  
> - Progress blooms when arrogance burns.

### Prohibitions
> - Collaborating with factions who weaponize inequality, fear, or mysticism.  
> - Hoarding Pre-Rising relics without intent to share or restore.  
> - Using magic to deceive, enslave, or indoctrinate the public.  
> - Suppressing cultural memory or rewriting history for control.

## Current Events
> - [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Lambaro/Lambaro City/Thalia Ashglow|Speaker Thalia Ashglow]] continues to coordinate innovation drives from [[The Eternal Hearth]] while building Assembly enclaves in [[Boba]] and [[Kanda]].  
> - Assembly leaders are investigating corrupt officials blocking education reforms in [[01 Campaign/01 World/07 Districts/Jambito/Riverbend Hollow|Riverbend Hollow]], with help from Eternal Concord liaisons.  
> - Talks with the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Arcane Wardens|Arcane Wardens]] are underway regarding shared magical research protocols.  
> - A sabotage attempt on the Emberlight Assembly Wing in [[Boba]] is suspected to involve sympathizers of [[The Infernal Covenant]].  
> - The group has dispatched moderators to attend the Kingdom-Wide Peace Summit hosted by [[The Eternal Concord]].

## History
> Founded in the twilight years of pre-Rising decline, [[The Phoenix Assembly]] rose from the convictions of a mixed gathering of visionaries, arcanists, and reformers. They believe Kanda must be reborn not through war or prophecy, but through open collaboration and ethical restoration.  
>  
> The symbol of the phoenix was chosen to reflect not only rebirth, but responsibility—each cycle of flame carries the chance to burn anew. Though mocked in early years as naive idealists, the Assembly has gained ground through quiet persistence, especially in cities with technological or educational leanings.

## Notes
- [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Lambaro/Lambaro City/Thalia Ashglow|Speaker Thalia Ashglow]] – Gifted orator, half-elf of mixed heritage, and architect of the Assembly’s cultural revival.  
- [[The Eternal Hearth]] – Central philosophical hub in [[Lambaro]]; both an archive and forum for civic planning.  
- [[Phoenix Forum Hall]] – Policy roundtable and magical innovation site in [[Kanda]]’s [[Glimmershade]].  
- [[01 Campaign/01 World/08 Points of Interest/01 Factions/The Phoenix Assembly/The  Emberlight Assembly Wing|Emberlight Assembly Wing]] – Cultural outreach and education zone in [[Boba]]’s [[Ironveil Commons]].  
- [[Civic Rebirth Annex]] – Small community center in [[Jambito]] offering lectures and healing services.  
- Symbol: A golden phoenix rising from a silver quill and broken chain, flanked by arcs of red fire.  
- Uniforms: Stylized robes with crimson flame-thread motifs, sunburst medallions, and arching feather sigils.
