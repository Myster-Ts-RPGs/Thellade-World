---
tags:
  - "#Location"
  - "#District"
  - "#TODO"
art: 90 Assets/Images/Districts/TheEmberWharf.png
districttype:
  - Harbor
  - Industrial
  - Dockyard
location:
  - "[[Mangagoy]]"
pronounced: EM-ber-born ˈwɔɹf
organization:
  - "[[The Emberheart Traders]]"
  - "[[The Ashen Vanguard]]"
  - "[[The Blazing Pledge]]"
  - "[[The Bleeding Tide]]"
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
> **Type** | `INPUT[DistrictType][inlineListSuggester:districttype]` |
> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
> **Location** | `INPUT[inlineListSuggester(optionQuery(#Settlement AND !"z_Templates"), useLinks(partial)):location]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Type** | `VIEW[{districttype}][text]` |
> **Location** | `VIEW[{location}][link]` |

# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!recite]- Introduction
> The scent hits first—brine and burnt oil, the tang of wet stone and old spells still clinging to the piers. You step onto the cobbled causeway of The Ember Wharf just as a cargo sloop groans at anchor, steam rising from its enchant-forged hull. The lanterns that sway overhead hum faintly with embedded glowstones, casting amber halos that dance across puddles left by the tide.
> 
> Beyond the bustle of crates and ropes, dockhands bark orders in a dozen dialects. Customs clerks, their fingers etched with spell-seals, glare at passersby with arcane suspicion. Here, even paperwork hums with latent energy.
> 
> To your right, a two-story stone building rises near the central pier—its windows pulsing with quiet wardlight, its blue slate roof chipped by wind and time. A golden scale emblem sways above the door: the Emberheart Trade Office.
> 
> To your left, a weathered watchpost towers over the edge of the wharf. Vanguard sentries clad in crimson-trimmed plate whisper into rune-bound sending stones, eyes scanning the horizon. One of them—older, dwarven, unflinching—locks eyes with you for a moment, then turns away.
> 
> And beneath it all, just barely audible, a sound like whispering steam: leyline runoff bleeding into the harbor’s edge, too slow to see… too strange to ignore.

> [!metadata|map]- Map
> ```leaflet
> id: TBD
> image: [[PlaceholderImage.png]]
> lock: true
> recenter: true
> noScrollZoom: false
> ### Use this [LINK](https://docs.google.com/spreadsheets/d/1jKQxktYSUFcCJhEkAAPr1wMVBTqUdpEfA5XveUXI17I/edit?usp=sharing) to work out your map's bounds.
> ### bounds: [[0,0], [0, 0]] (Remove the ### and these parentheses with the content within from this line to enable the bounds)
> height: 600px
> width: 640px
> lat: 0
> long: 0
> minZoom: 1
> maxZoom: 6.5
> defaultZoom: 1
> zoomDelta: 0.5
> unit: miles
> scale: 1
> darkMode: false
> ```

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)"
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "POI")
> SORT tags DESC, poitype ASC, file.name ASC

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Organization")
> SORT tags DESC, file.name ASC

## Overview
> [!quote]+ Theme
> “Where flame kisses tide and whispers ride the surf.”

The Ember Wharf is Mangagoy’s lifeline to the broader Sundering Deep. Its volcanic-glass docks were reinforced with warded basalt after the Third Tempest. Trade here is brisk and loud—magitech components, sealed relics, and arcane driftmetal move side-by-side with squid ink, spice jars, and sea hemp. A unique mix of maritime muscle and magewright vigilance defines the local flavor, where even a tavern brawl might involve a fire rune or two.

The Ember Wharf seethes with the scents of sea salt and arcane smoke. Crates and brass-latched barrels line the slick piers, while scarred dockhands and spellmarked customs clerks eye each ship with suspicion. Lanterns infused with glowstone sway in their enchanted hinges, casting orange halos over tide-slick cobblestones. At the far edge, the whisper of leyline runoff can be heard, bleeding into the deep with a faint hiss.

## Keyed Locations
- [[The Driftwood Cask]]

## Current Events
- Increased customs patrols have tightened entry protocols after the discovery of abyss-tainted salt crystal hidden in cargo from Seaside Cape.
- Strange blue auroras ripple over the Wharf during Embermoon phases—local sailors whisper of old pacts being broken.

## History
- The district earned its name when the first leyfused lanterns were lit here during the post-Rising resettlement efforts.
- Once called Emberwharf, it was renamed after the Emberborn Compact—a union of pyromancers and dockwrights who reclaimed the harbor from sea-wights during the Drowned Incursion.

## Notes
- Dockhands and customs clerks are known to be spellmarked for magical contraband detection.
- Glowstone lanterns embedded along the tide path pulse with latent heat during lunar alignments.
- [[Shadow of the Wharf]] – Ongoing investigation led by Commander Kraya of the Ashen Vanguard into raiders teleporting in and out of the harbor.

 
