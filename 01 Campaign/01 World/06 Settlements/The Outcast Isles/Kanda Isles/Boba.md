---
tags:
  - "#Location"
  - "#Settlement"
  - "#TODO"
art: 90 Assets/Images/Settlements/Boba.png
location:
  - "[[Kanda Isles]]"
  - "[[The Outcast Isles]]"
settlementtype: Large City
population: 13,500
import:
  - Armor
  - Parchment
  - Maps
export:
  - Wine
  - Coral
  - Alabaster
organization:
  - "[[The Arcane Wardens]]"
  - "[[The Ashen Vanguard]]"
  - "[[The Blackwake Corsairs]]"
  - "[[The Council of Daggers]]"
  - "[[The Crimson Shroud]]"
  - "[[The Crystal Seekers Guild]]"
  - "[[The Cursed Blades]]"
  - "[[The Emberborn Exiles]]"
  - "[[The Emberheart Traders]]"
  - "[[The Eternal Concord]]"
  - "[[The Gilded Hammer Union]]"
  - "[[The Hollow Mask]]"
  - "[[The Phoenix Assembly]]"
  - "[[The Red Ash Mauraders]]"
  - "[[The Sea Vultures]]"
  - "[[The Silver Chain]]"
  - "[[The Sunfire Heralds]]"
  - "[[Boba Academy of Civil Affairs (Faction)]]"
pronounced: BOH-bah
updated: 2025-04-30
party1reputation: "0"
party2reputation: "0"
party3reputation: "0"
party4reputation: "0"
party5reputation: "0"
party6reputation: "0"
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
>> **Founded** | `INPUT[text:founded]` |
>> **Founded Short**| `INPUT[text:foundedshort]` |
>> **Type** | `INPUT[SettlementType][:settlementtype]` |
>> **Defenses** | `INPUT[Defence][:defence]`
>> **Location** | `INPUT[inlineListSuggester(optionQuery(#Region AND !"z_Templates"), optionQuery(#Subregion AND !"z_Templates"), optionQuery(#Reach AND !"z_Templates"), useLinks(partial)):location]` |
>
>> [!metadata|metadataoption]- Demographics
>> #### Civic Overview
>>  |
>> ---|---|
>> **Rulers** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):ruler]` |
>> **Leaders** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):leader]` |
>> **Dominion** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):dominion]` |
>> **Government Type** | `INPUT[GovernmentType][inlineListSuggester:governmenttype]` |
>> **Military Presence** |`INPUT[textArea:militarypresence]`
>> **Threats** |`INPUT[textArea:threats]`
>> **Religions** | `INPUT[Religion][inlineListSuggester:religions]` |
>> **Population** |  `INPUT[textArea:population]`
>> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>
>> [!metadata|metadataoption]- Commerce
>> #### Commerce
>>  |
>> ---|---|
>> **Imports** | `INPUT[Goods][inlineListSuggester:import]` |
>> **Exports** | `INPUT[Goods][inlineListSuggester:export]` |
>> **Trade Partners**|`INPUT[inlineListSuggester(optionQuery(#Settlement AND !"z_Templates"), useLinks(partial)):tradepartners]` |
>> **General Level** | `INPUT[text:levelgeneral]` |
>> **Magic Level** | `INPUT[text:levelmagic]` |
>> **Tech Level** | `INPUT[text:leveltech]` |
> 
>> ###### Party
>>  |
>> ---|---|
>> **Party 1 Reputation** | `INPUT[text:party1reputation]` |
>> **Party 2 Reputation** | `INPUT[text:party2reputation]` |
>> **Party 3 Reputation** | `INPUT[text:party3reputation]` |
>> **Party 4 Reputation** | `INPUT[text:party4reputation]` |
>> **Party 5 Reputation** | `INPUT[text:party5reputation]` |
>> **Party 6 Reputation** | `INPUT[text:party6reputation]` |



> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Updated**| `VIEW[{updated}][text]` |
> **Founded** | `VIEW[{founded}][text]` |
> **Type** | `VIEW[{settlementtype}][text]` |
> **Defenses** | `VIEW[{defence}]` |
> **Location** | `VIEW[{location}][link]` |
> ###### Demographics
>  |
> ---|---|
> **Rulers** | `VIEW[{ruler}][link]` |
> **Leaders** | `VIEW[{leader}][link]` |
> **Dominion** | `VIEW[{dominion}][link]` |
> **Government Type** | `VIEW[{governmenttype}][text]` |
> **Military Presence** | `VIEW[{militarypresence}][text]` |
> **Threats** | `VIEW[{threats}][text]` |
> **Religions** | `VIEW[{religions}][link]` |
> **Population** | `VIEW[{population}][text]` |
> 
> <span style="display:block; text-align:center; font-size:0.9em;"><strong>Racial Makeup</strong></span>
> - <span style="font-size:0.8em;"><strong>Humans</strong> – 45% (Kandan Natives, Merchant Class)</span>
> - <span style="font-size:0.8em;"><strong>Elves</strong> – 20% (Moonshade Diaspora, Diplomatic Caste)</span>
> - <span style="font-size:0.8em;"><strong>Dwarves</strong> – 15% (Blackrock Lineage, Smiths)</span>
> - <span style="font-size:0.8em;"><strong>Halflings</strong> – 10% (Dockworkers, Trade Guilds)</span>
> - <span style="font-size:0.8em;"><strong>Tieflings</strong> – 5%</span>
> - <span style="font-size:0.8em;"><strong>Other</strong> – 5% (Gnomes, Kobolds, Rare Lineages)</span>
>
> ###### Commerce
>  |
> ---|---|
> **Imports** | `VIEW[{import}][text]` |
> **Exports** | `VIEW[{export}][text]` |
> **Trade Partners** | `VIEW[{tradepartners}][link]` |
> **General Level** | `VIEW[{levelgeneral}][text]` |
> **Magic Level** | `VIEW[{levelmagic}][text]` |
> **Tech Level** | `VIEW[{leveltech}][text]` |
> ###### Party
>  |
> ---|---|
> **Party 1 Reputation** | `VIEW[{party1reputation}][text]` |
> **Party 2 Reputation** | `VIEW[{party2reputation}][text]` |
> **Party 3 Reputation** | `VIEW[{party3reputation}][text]` |
> **Party 4 Reputation** | `VIEW[{party4reputation}][text]` |
> **Party 5 Reputation** | `VIEW[{party5reputation}][text]` |
> **Party 6 Reputation** | `VIEW[{party6reputation}][text]` |

# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span><span style="float: right; font-size: medium"><em>Updated: </em>`VIEW[{updated}]`</span>


> [!quote]+ Theme
> *“Gold flows like water, but secrets flow deeper.”*

> [!recite]- Introduction
> Perched at the threshold of sea and sun, **Boba** is a city of gleaming ambition and gilded shadows. Known as the **Gateway to the Kanda Isles**, its towering sandstone walls guard a teeming metropolis where diplomacy, commerce, and clandestine dealings flourish side by side. Merchant ships from a dozen isles crowd the harbor, their sails heavy with exotic wares and veiled allegiances. The scent of salt and saffron lingers in the narrow alleyways of the **Brimstone Docks**, while scholars and spies alike trade truths in the echoing halls of **Sunfire Tower**.
> 
>Nobles in silk-trimmed regalia walk beneath enchanted lanterns, even as the undercurrents of factional strife pull beneath the surface. **The Sunfire Heralds**, **The Silver Chain**, and a dozen other groups vie for influence here, where gold speaks louder than law. Yet amidst the splendor and decay, the people of Boba remain resilient—crafty artisans, pious clerics, drifting pirates, and power-brokers who understand that in this city, survival is an art.
>
>Whether you're a trader seeking fortune, a fugitive seeking shadows, or a hero chasing echoes of the Rising, **Boba** offers all things—at a price.

## Overview
Boba is a **large port city** on the **Kanda Isles** within the **Outcast Isles**, boasting a population of approximately **13,500**. Known as the "Gateway to the Kanda Isles," it serves as a critical nexus for **diplomatic envoys**, **mercenary guilds**, **smuggling networks**, and **noble factions** vying for influence. From the gleaming spires of Sunfire Heights to the treacherous gutters of Lowmire Gutter, Boba embodies the convergence of power and peril.

Founded before the Rising, the city rose to prominence as a haven for those seeking profit amid chaos—merchants, pirates, scholars, and warlords alike. **Merchant ships** from across the Sundering Deep dock in Brimstone Docks, bearing exotic wares, secret pacts, and silent cargoes. Within the heart of the city, arcane scrolls change hands as quickly as silver daggers, and whispers carry more weight than royal decrees.

Dominant factions include the **Sunfire Heralds**, **The Silver Chain**, and the clandestine **Obsidian Veil**, whose agents operate behind the curtain of noble salons and market tents alike. **Underground fighting rings**, **arcane experiments**, and **forbidden duels** are not uncommon beneath the city's surface.

> “In Boba, fortunes rise with the tide—and drown just as swiftly.”

- **Function in Region**: Diplomatic seat, arcane research hub, smuggling corridor, naval staging post
- **Notable Features**: Sits at the convergence of leyline faults, features sunstone-infused sandstone architecture, multi-bridge urban tiers
- **Notable Laws or Customs**:
    - Duel permits are legally issued by the Hall of Unity, allowing sanctioned magical or martial disputes.
    - Registered trade factions must tithe 7% of all profits to the Boba Port Authority.
    - A citywide silence is observed during the Emberfall Festival in remembrance of the Rising’s victims.

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
## Location NPC List
```dataviewjs
{
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
	function normalizeField(entry, key) {
		if (!entry[key]) return [];
		let val = Array.isArray(entry[key]) ? entry[key] : [entry[key]];
		return val.map(v => String(v).trim());
	}
	function normalizeLink(val) {
		if (typeof val !== "string") return val;
		return val.replace(/\|.*$/, "").replace(/^\[\[|\]\]$/g, "").trim();
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
	const allPOINames = pois
		.where(p => matchesLocation(p, cityAliases))
		.map(p => normalizeLink(p.file.name));
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
	// === SPECIALITY POI DISPLAY FORMATTING ===
	function getPOITypeDisplay(poi) {
		const types = normalizeField(poi, "poitype");
	
		if (types.includes("Tavern")) {
			const tavernTypes = normalizeField(poi, "taverntype");
			if (tavernTypes.length) return ` – Tavern [${tavernTypes.join(", ")}]`;
			return " – Tavern";
		}
		if (types.includes("Inn")) {
			const lodgingTypes = normalizeField(poi, "lodgingtype");
			if (lodgingTypes.length) return ` – Inn [${lodgingTypes.join(", ")}]`;
			return " – Inn";
		}
		if (types.includes("Shop")) {
			const shopTypes = normalizeField(poi, "shoptype");
			if (shopTypes.length) return ` – Shop [${shopTypes.join(", ")}]`;
			return " – Shop";
		}
		if (types.length) return ` – ${types.join(", ")}`;
		return "";
	}
	
	
	
	// === OUTPUT ===
	if (!districts.length && !pois.length) {
		dv.paragraph("No districts or POIs found.");
	} else {
		const root = dv.el("div", "", {});
		// === CITY-LEVEL POIs ===
		if (cityPOIs.length) {
			const cityDetails = dv.el("details", "", { cls: "city-block" });
			const citySummary = dv.el("summary", "", {});
			const cityPage = dv.page(city);
			citySummary.appendChild(dv.el("span", cityPage.file.link));
			citySummary.appendChild(dv.el("span", ` (${cityPOIs.length} POIs)`));
			cityDetails.appendChild(citySummary);
			for (let poi of [...cityPOIs].sort((a, b) => a.file.name.localeCompare(b.file.name))) {
				const npcList = getNPCsForPOI(poi.file.name);
				const poiDetails = dv.el("details", "", { attr: { style: "margin-left: 1.5em;" } });
				const poiSummary = dv.el("summary", "", { attr: { style: "margin-left: 1.5em;" } });
				poiSummary.appendChild(dv.el("span", poi.file.link));
				poiSummary.appendChild(dv.el("span", ` (${npcList.length} NPCs)${getPOITypeDisplay(poi)}`));
				poiDetails.appendChild(poiSummary);
				if (npcList.length) {
					const npcDiv = dv.el("div", "", { attr: { style: "margin-left:2.5em;" } });
					for (let npc of [...npcList].sort((a, b) => a.file.name.localeCompare(b.file.name))) {
						const orgs = normalizeField(npc, "organization");
						const line = dv.el("p", "", { cls: "npc-entry", attr: { style: "margin:0;" } });
						line.appendChild(dv.el("span", npc.file.link));
						line.appendChild(dv.el("span", " – "));
						if (orgs.length) {
							orgs.forEach((org, i) => {
								const orgPage = dv.page(org);
								line.appendChild(orgPage ? orgPage.file.link : dv.el("span", org));
								if (i < orgs.length - 1) line.appendChild(dv.el("span", ", "));
							});
						} else {
							line.appendChild(dv.el("span", "None"));
						}
						npcDiv.appendChild(line);
					}
					poiDetails.appendChild(npcDiv);
				}
				cityDetails.appendChild(poiDetails);
			}

		// ✅ MOVED: CITY-ONLY NPCs go **inside** cityDetails now
		const allDistrictNames = districts.map(d => d.file.name);
		const allPOILocations = Array.from(pois.map(p => normalizeField(p, "location")).values).flat().map(normalizeLink);
		const cityOnlyNPCs = allNPCs.where(n => {
			const rawLocs = normalizeField(n, "location");
			const normLocs = rawLocs.map(normalizeLink);
			const matchCity = normLocs.some(loc =>
				cityAliases.some(alias => loc.toLowerCase().includes(alias.toLowerCase()))
			);
			const matchDistrict = normLocs.some(loc =>
				allDistrictNames.some(name => loc.toLowerCase().includes(name.toLowerCase()))
			);
			const matchPOI = normLocs.some(loc =>
				allPOINames.some(name => loc.toLowerCase().includes(name.toLowerCase()))
			);
			return matchCity && !matchDistrict && !matchPOI;
		});
		if (cityOnlyNPCs.length > 0) {
			const otherDetails = dv.el("details", "", { attr: { style: "margin-left: 3em;" } });
			const otherSummary = dv.el("summary", "Other Notable NPCs", { cls: "city-npcs-header" });
			otherDetails.appendChild(otherSummary);
			const npcDiv = dv.el("div", "", { attr: { style: "margin-left: 0.8em;" } });
			for (let npc of [...cityOnlyNPCs].sort((a, b) => a.file.name.localeCompare(b.file.name))) {
				const orgs = normalizeField(npc, "organization");
				const line = dv.el("p", "", { cls: "npc-entry", attr: { style: "margin: 0;" } });
				line.appendChild(dv.el("span", npc.file.link));
				if (orgs.length) {
					line.appendChild(dv.el("span", " – "));
					orgs.forEach((org, i) => {
						const orgPage = dv.page(org);
						line.appendChild(orgPage ? orgPage.file.link : dv.el("span", org));
						if (i < orgs.length - 1) line.appendChild(dv.el("span", ", "));
					});
				}
				npcDiv.appendChild(line);
			}
			otherDetails.appendChild(npcDiv);
			cityDetails.appendChild(otherDetails); // ✅ append to cityDetails, not root
		}

		root.appendChild(cityDetails);
	}

		// === DISTRICT LEVEL POIs ===
		for (let district of [...districts].sort((a, b) => a.file.name.localeCompare(b.file.name))) {
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
			districtSummary.appendChild(dv.el("span", district.file.link));
			districtSummary.appendChild(dv.el("span", ` (${districtPOIs.length} POIs)`));
			const types = normalizeField(district, "districttype");
			const typeLabel = types.length ? ` – ${types.join(", ")}` : "";
			districtSummary.appendChild(dv.el("span", ` ${typeLabel}`));
			districtDetails.appendChild(districtSummary);
			for (let poi of [...districtPOIs].sort((a, b) => a.file.name.localeCompare(b.file.name))) {
				const npcList = getNPCsForPOI(poi.file.name);
				const poiDetails = dv.el("details", "", { attr: { style: "margin-left: 1.5em;" } });
				const poiSummary = dv.el("summary", "", { attr: { style: "margin-left: 1.5em;" } });
				poiSummary.appendChild(dv.el("span", poi.file.link));
				poiSummary.appendChild(dv.el("span", ` (${npcList.length} NPCs)${getPOITypeDisplay(poi)}`));
				poiDetails.appendChild(poiSummary);
				if (npcList.length) {
					const npcDiv = dv.el("div", "", { attr: { style: "margin-left:2.5em;" } });
					for (let npc of [...npcList].sort((a, b) => a.file.name.localeCompare(b.file.name))) {
						const orgs = normalizeField(npc, "organization");
						const line = dv.el("p", "", { cls: "npc-entry", attr: { style: "margin:0;" } });
						line.appendChild(dv.el("span", npc.file.link));
					if (orgs.length) {
						line.appendChild(dv.el("span", " – "));
						orgs.forEach((org, i) => {
							const orgPage = dv.page(org);
							line.appendChild(orgPage ? orgPage.file.link : dv.el("span", org));
							if (i < orgs.length - 1) line.appendChild(dv.el("span", ", "));
						});
					}
						npcDiv.appendChild(line);
					}
					poiDetails.appendChild(npcDiv);
				}
				districtDetails.appendChild(poiDetails);
			}
			// === HANDLE DISTRICT-LEVEL NPCs WITHOUT POIs ===
			const districtOnlyNPCs = allNPCs.where(n => {
				const rawLocs = normalizeField(n, "location");
				const normLocs = rawLocs.map(normalizeLink);
				// Match district by name or basename
				const matchDistrict = normLocs.some(loc =>
					loc && [district.file.name, district.file.basename].some(name =>
						name && loc.toLowerCase().includes(name.toLowerCase()))
				);
				const matchPOI = normLocs.some(loc =>
					loc && allPOINames.some(poi =>
						poi && loc.toLowerCase().includes(poi.toLowerCase()))
				);
				// ✅ Must match the district, but NOT a POI
				return matchDistrict && !matchPOI;
			});
			if (districtOnlyNPCs.length > 0) {
				const otherDetails = dv.el("details", "", {attr: { style: "margin-left: 3em;" }});
	
				const otherSummary = dv.el("summary", "Other Notable NPCs", { cls: "city-npcs-header" });
				otherDetails.appendChild(otherSummary);
				const npcDiv = dv.el("div", "", { attr: { style: "margin-left: 0.8em;" } });
				for (let npc of [...districtOnlyNPCs].sort((a, b) => a.file.name.localeCompare(b.file.name))) {
					const orgs = normalizeField(npc, "organization");
					const line = dv.el("p", "", { cls: "npc-entry", attr: { style: "margin: 0;" } });
					line.appendChild(dv.el("span", npc.file.link));
					if (orgs.length) {
					    line.appendChild(dv.el("span", " – "));
					    orgs.forEach((org, i) => {
					        const orgPage = dv.page(org);
					        line.appendChild(orgPage ? orgPage.file.link : dv.el("span", org));
					        if (i < orgs.length - 1) line.appendChild(dv.el("span", ", "));
					    });
					}
					npcDiv.appendChild(line);
				}
				otherDetails.appendChild(npcDiv);
				districtDetails.appendChild(otherDetails);
			}
			root.appendChild(districtDetails);
		}
		dv.container.appendChild(root);
	}
}
```
## Organization NPC List
```dataviewjs
const city = dv.current().file.name.replace(/\.md$/, "");
const cityAliases = [city, dv.current().file.name];

// === HELPERS ===
function normalizeField(entry, key) {
	if (!entry[key]) return [];
	let values = Array.isArray(entry[key]) ? entry[key] : [entry[key]];
	return values.map(v => {
		const str = String(v).replaceAll('"', '').replaceAll("[[", "").replaceAll("]]", "").trim();
		// Strip out Obsidian-style path if present and keep alias after '|', else keep last segment
		if (str.includes("|")) {
			return str.split("|")[1].trim();
		} else if (str.includes("/")) {
			return str.split("/").pop().trim();
		}
		return str;
	});
}

function normalizeTags(entry) {
	if (!entry.tags) return [];
	let tags = Array.isArray(entry.tags) ? entry.tags : [entry.tags];
	return tags.map(t => t.toLowerCase().trim());
}
function matchesLocation(entry, targets) {
	const locs = normalizeField(entry, "location").filter(x => x);
	const normTargets = targets.filter(x => x);
	return locs.some(loc =>
		normTargets.some(t =>
			String(loc).toLowerCase().includes(String(t).toLowerCase())
		)
	);
}
function isNPC(entry) {
	return normalizeTags(entry).includes("#npc");
}
function isOrg(entry) {
	return normalizeTags(entry).includes("#organization");
}

// === DATA ===
const allPages = dv.pages();
const allNPCs = allPages.where(p => isNPC(p) && matchesLocation(p, cityAliases));
const orgsInCity = allPages.where(p =>
	isOrg(p) &&
	matchesLocation(p, cityAliases) &&
	!p.file.name.includes("(Faction)")
);

// === BUILD ORG MAP ===
const orgMap = {};
for (let org of orgsInCity) {
	const orgName = org.file.name;
	orgMap[orgName] = [];
}

// === SORTED ORGANIZATIONS ===
const sortedOrgs = Object.keys(orgMap).sort((a, b) => a.localeCompare(b));
console.log(`Sorted Orgs: ${sortedOrgs}`);

// === Associate NPCs with Orgs (from File A) ===
for (let npc of allNPCs) {
	let orgs = normalizeField(npc, "organization");
	for (let org of orgs) {
		if (orgMap.hasOwnProperty(org)) {
			orgMap[org].push(npc);
		}
	}
}

// === END ASSOCIATION ===

// === OUTPUT ===
if (sortedOrgs.length === 0) {
	dv.paragraph("No organizations found in this settlement.");
} else {
	const root = dv.el("div", "", {});
	for (let orgName of sortedOrgs) {
		const orgNPCs = orgMap[orgName];
		const orgDetails = dv.el("details", "", { cls: "org-block" });
		const orgSummary = dv.el("summary", "", {});
		orgSummary.appendChild(dv.el("span", `[[${orgName}]] (${orgNPCs.length} NPCs)`));
		orgDetails.appendChild(orgSummary);

		if (orgNPCs.length > 0) {
			const npcDiv = dv.el("div", "", { attr: { style: "margin-left: 2em;" } });
			for (let npc of orgNPCs.sort((a, b) => a.file.name.localeCompare(b.file.name))) {
				const entry = dv.el("p", "", { cls: "npc-entry", attr: { style: "margin:0;" } });
				entry.appendChild(dv.el("span", npc.file.link));
				entry.appendChild(dv.el("span", " – "));

				const locs = normalizeField(npc, "location");
				if (locs.length) {
					locs.forEach((loc, i) => {
						const locPage = dv.page(loc);
						const locLink = locPage ? locPage.file.link : `[[${loc}]]`;
						entry.appendChild(dv.el("span", locLink));
						if (i < locs.length - 1) {
							entry.appendChild(dv.el("span", ", "));
						}
					});
				} else {
					entry.appendChild(dv.el("span", "Unknown"));
				}

				npcDiv.appendChild(entry);
			}
			orgDetails.appendChild(npcDiv);
		}
		root.appendChild(orgDetails);
	}
	dv.container.appendChild(root);
}


```

## Complete NPC List
> [!metadata|characters]- Characters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(occupation, ", ") AS "Occupations", join(link(organization), ", ") AS "Organizations"
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Character") AND !contains(condition, "Dead")
> SORT tags DESC, file.name ASC

## Current Events
- Faction tension
- Market or leyline instability
- Rumors or crime
- Local Holidays and Festivals

> [!metadata|events]- Recent Events
>```dataview 
> table without id enddate as "Date", file.link as "Event"
> from "01 Campaign"
> where econtains(location, this.file.link) and contains(tags, "Event") and contains(eventtype, "Significant")
> sort enddateshort desc
> ```


## History
- **Founding**
- **Rising-era Events**
- **Post-Rising Growth**
- **Recent Shifts (last decade)**

> [!metadata|events]- Historical Events
>```dataview 
> table without id enddate as "Date", file.link as "Event"
> from "01 Campaign"
> where econtains(location, this.file.link) and contains(tags, "Event") and contains(eventtype, "Historical")
> sort enddateshort asc
> ```


## Notes

### Party Reputation
| Party | Standing | Notes |
|-------|----------|-------|
|[[Campaign Group 1]]| `VIEW[{party1reputation}]` | Note 1 |
|[[Campaign Group 2]]| `VIEW[{party2reputation}]` | Note 1 |
|[[Campaign Group 3]]| `VIEW[{party3reputation}]` | Note 1 |
|[[Campaign Group 4]]| `VIEW[{party4reputation}]` | Note 1 |
|[[Campaign Group 5]]| `VIEW[{party5reputation}]` | Note 1 |
|[[Campaign Group 6]]| `VIEW[{party6reputation}]` | Note 1 |
### Campaign Notes
>[!metadata|notes]- Linked Campaign Notes
>```dataview 
>table WITHOUT ID file.link as "Session Note"
>from "01 Campaign/05 Parties/07 Session Notes"
>where contains(file.outlinks, this.file.link)
>sort file.name asc
>```
## GM Notes (Collapsible)
For secrets, planned events, etc.

