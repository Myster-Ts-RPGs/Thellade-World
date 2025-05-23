---
tags:
  - "#Location"
  - "#Settlement"
  - "#TODO"
art: 90 Assets/Images/Misc/PlaceholderImage.png
location:
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Jambito Isles]]"
  - "[[The Outcast Isles]]"
settlementtype: Small City
population: 9,385
import:
  - Timber
  - Iron
  - Magical Trinkets
export:
  - Pottery
  - Rare Fish
  - Salt
organization:
  - "[[The Arcane Wardens]]"
  - "[[The Ashen Vanguard]]"
  - "[[The Blazing Pledge]]"
  - "[[The Crystal Seekers Guild]]"
  - "[[The Dawnbringers of Lunara]]"
  - "[[The Emberborn League]]"
  - "[[The Eternal Concord]]"
  - "[[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Gilded Hammer Union]]"
  - "[[The Lumina Guardians]]"
  - "[[The Order of the Ember Blades]]"
  - "[[The Phoenix Assembly]]"
  - "[[The Voidscourge Hunters]]"
  - "[[The Wardens of the Deep Dark]]"
  - "[[The Red Runners]]"
  - "[[The Black Sepulcher]]"
  - "[[The Crimson Shroud]]"
  - "[[The Cursed Blades]]"
  - "[[The Hollow Mask]]"
  - "[[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Infernal Covenant]]"
  - "[[The Mistwalkers]]"
  - "[[The Sable Accord]]"
  - "[[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Veilbound Circle]]"
dominion:
  - "[[01 Campaign/02 Factions/01 Government/Regional/The Kingdom of Kanda]]"
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
>> **Tags** | `INPUT[Tags][inlineListSuggester:tags]` |
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
>> **Pronounced** |  `INPUT[textArea:pronounced]`
>> **Aliases** | `INPUT[list:aliases]` |
>> **Type** | `INPUT[SettlementType][:settlementtype]` |
>> **Terrain** | `INPUT[Terrain][inlineListSuggester:terrain]` |
>> **Defences** | `INPUT[Defence][:defence]`
>> **Location** | `INPUT[inlineListSuggester(optionQuery(#Region AND !"z_Templates"), optionQuery(#Subregion AND !"z_Templates"), optionQuery(#Reach AND !"z_Templates"), useLinks(partial)):location]` |
>
>> [!metadata|metadataoption]- Demographics
>> #### Demographics
>>  |
>> ---|---|
>> **Dominion** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):dominion]` |
>> **Rulers** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):ruler]` |
>> **Leaders** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):leader]` |
> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>> **Government Type** | `INPUT[GovernmentType][inlineListSuggester:governmenttype]` |
>> **Population** |  `INPUT[textArea:population]`
>
>> [!metadata|metadataoption]- Commerce
>> #### Commerce
>>  |
>> ---|---|
>> **Imports** | `INPUT[Goods][inlineListSuggester:import]` |
>> **Exports** | `INPUT[Goods][inlineListSuggester:export]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Type** | `VIEW[{settlementtype}][text]` |
> **Terrain** | `VIEW[{terrain}][text]` |
> **Defences** | `VIEW[{defence}]` |
> **Location** | `VIEW[{location}][link]` |
> ###### Demographics
>  |
> ---|---|
> **Rulers** | `VIEW[{ruler}][link]` |
> **Leaders** | `VIEW[{leader}][link]` |
> **Dominion** | `VIEW[{dominion}][link]` |
> **Government Type** | `VIEW[{governmenttype}][text]` |
> **Population** | `VIEW[{population}][text]` |
> ###### Commerce
>  |
> ---|---|
> **Imports** | `VIEW[{import}][text]` |
> **Exports** | `VIEW[{export}][text]` |
> ###### Party
>  |
> ---|---|
> **Party 1 Reputation** | `INPUT[text:party1reputation]` |
> **Party 2 Reputation** | `INPUT[text:party2reputation]` |
> **Party 3 Reputation** | `INPUT[text:party3reputation]` |
> **Party 4 Reputation** | `INPUT[text:party4reputation]` |
> **Party 5 Reputation** | `INPUT[text:party5reputation]` |
> **Party 6 Reputation** | `INPUT[text:party6reputation]` |

# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>
> [!recite]- Introduction
> A script for the GM to read when the party arrive to this location for the first time.

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

> [!metadata|district]- Districts
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(districttype, ", ") AS Type
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "District")
> SORT districttype ASC, file.name ASC

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(location[0]), ", ") AS "Location", join(link(organization), ", ") AS "Organization(s)"
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "POI")
> SORT tags DESC, poitype ASC, file.name ASC

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Organization")
> SORT tags DESC, file.name ASC

> [!metadata|characters]- Characters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(occupation, ", ") AS "Occupations", join(link(organization), ", ") AS "Organizations"
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Character") AND !contains(condition, "Dead")
> SORT tags DESC, file.name ASC

## Overview
> [!quote]+ Theme
> *“Where sand meets stone, and roots grasp the sky.”*



## Current Events



## History



## Notes

```dataviewjs

const city = dv.current().file.name.replace(/\.md$/, "");

const cityAliases = [city, dv.current().file.name];

  

// === HELPERS ===

function normalizeLocationField(entry) {

    if (!entry.location) return [];

    let locs = Array.isArray(entry.location) ? entry.location : [entry.location];

    return locs.map(l =>

        String(l).replaceAll('"', '').replaceAll("[[", "").replaceAll("]]", "").trim()

    );

}

function normalizeTags(entry) {

    if (!entry.tags) return [];

    let tags = Array.isArray(entry.tags) ? entry.tags : [entry.tags];

    return tags.map(t => t.toLowerCase().trim());

}

function matchesLocation(entry, targets) {

    const locs = normalizeLocationField(entry).filter(x => x);

    const normTargets = targets.filter(x => x);

    return locs.some(loc =>

        normTargets.some(t =>

            String(loc).toLowerCase().includes(String(t).toLowerCase())

        )

    );

}

function isDistrict(entry) {

    return normalizeTags(entry).includes("#district");

}

function isPOI(entry) {

    return normalizeTags(entry).includes("#poi");

}

function isNPC(entry) {

    return normalizeTags(entry).includes("#npc");

}

  

// === DATA ===

const allPages = dv.pages();

const allNPCs = allPages.where(p => isNPC(p));

const districts = allPages.where(p => isDistrict(p) && matchesLocation(p, cityAliases));

const pois = allPages.where(p => isPOI(p));

  

// === GET NPCs FOR A POI ===

function getNPCsForPOI(poiName) {

    return allNPCs.where(n => matchesLocation(n, [poiName]));

}

  

// === CITY-LEVEL POIs ===

const cityPOIs = pois.where(p =>

    matchesLocation(p, cityAliases) &&

    !districts.some(d => matchesLocation(p, [d.file.name, d.file.basename]))

);

  

// === DISTRICT-LEVEL POIS ===

const districtPOIs = pois.where(p =>

  districts.some(d => matchesLocation(p, [d.file.name, d.file.basename]))

);

  

// === PREPARE DISTRICT POI MAP ===

const districtPOIMap = {};

for (let poi of districtPOIs) {

  const districts = (poi.location ?? []).filter(loc => typeof loc === "string" && loc.includes("District:"));

  for (let d of districts) {

    const label = d.replace("District:", "").trim();

    if (!districtPOIMap[label]) districtPOIMap[label] = [];

    districtPOIMap[label].push(poi);

  }

}

  

// === OUTPUT ===

if (!districts.length && !cityPOIs.length) {

    dv.paragraph("No districts or POIs found.");

} else {

    const root = dv.el("div");

    // === CITY-LEVEL POIs ===

    if (cityPOIs.length) {

      const cityDetails = dv.el("details", "", { cls: "city-block" });

      const citySummary = dv.el("summary", "", {});

      const cityPage = dv.page(city); // fix: get the page object for the city

      citySummary.appendChild(dv.el("span", cityPage.file.link)); // clickable city name

      citySummary.appendChild(dv.el("span", ` (${cityPOIs.length} POIs)`)); // count

      cityDetails.appendChild(citySummary);

      for (let poi of cityPOIs) {

        const npcList = getNPCsForPOI(poi.file.name);

        const poiDetails = dv.el("details", "", { attr: { style: "margin-left: 1.5em;" } });

        const poiSummary = dv.el("summary", "", { attr: { style: "margin-left: 1.5em;" } });

        poiSummary.appendChild(dv.el("span", poi.file.link)); // clickable link

        poiSummary.appendChild(dv.el("span", ` (${npcList.length} NPCs)`));

        poiDetails.appendChild(poiSummary);

        if (npcList.length) {

          const npcDiv = dv.el("div", "", { attr: { style: "margin-left:2em;" } });

          for (let npc of npcList) {

            npcDiv.appendChild(dv.el("p", npc.file.link, { cls: "npc-entry", attr: { style: "margin:0;" } }));

          }

          poiDetails.appendChild(npcDiv);

        }

        cityDetails.appendChild(poiDetails);

      }

      root.appendChild(cityDetails);

    }

    // === DISTRICT-LEVEL POIs ===

    for (let district of districts) {

        const districtPOIs = pois.where(p =>

            p.location?.some(loc =>

                loc.path?.includes(district.file.path) ||

                loc.name?.includes(district.file.name) ||

                loc.basename?.includes(district.file.basename)

            )

        );

        if (!districtPOIs.length) continue;

        const districtDetails = dv.el("details", "", { cls: "district-block" });

        const districtSummary = dv.el("summary", "", {});

        districtSummary.appendChild(dv.el("span", district.file.link));  // clickable district name

        districtSummary.appendChild(dv.el("span", ` (${districtPOIs.length} POIs)`));  // count

        districtDetails.appendChild(districtSummary);

        for (let poi of districtPOIs) {

            const npcList = getNPCsForPOI(poi.file.name);

            const poiDetails = dv.el("details", "", { attr: { style: "margin-left: 1.5em;" } });

            const poiSummary = dv.el("summary", "", { attr: { style: "margin-left: 1.5em;" } });

            poiSummary.appendChild(dv.el("span", poi.file.link));  // clickable link

            poiSummary.appendChild(dv.el("span", ` (${npcList.length} NPCs)`));  // appended count

            poiDetails.appendChild(poiSummary);

            if (npcList.length) {

                const npcDiv = dv.el("div", "", { attr: { style: "margin-left:2em;" } });

                for (let npc of npcList) {

                    npcDiv.appendChild(dv.el("p", npc.file.link, { cls: "npc-entry", attr: { style: "margin:0;" } }));

                }

                poiDetails.appendChild(npcDiv);

            }

            districtDetails.appendChild(poiDetails);

        }

        root.appendChild(districtDetails);

    }

    dv.container.appendChild(root);

}

  
  
  

```