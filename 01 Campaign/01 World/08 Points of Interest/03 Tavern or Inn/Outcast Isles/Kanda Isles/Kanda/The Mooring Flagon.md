---
tags:
  - "#Location"
  - "#POI"
  - "#TODO"
art: 90 Assets/Images/POIs/TheMooringFlagon.png
banner: on
organization:
  - "[[The Blackwake Corsairs]]"
location:
  - "[[Stonebrace Docks]]"
  - "[[Kanda]]"
poitype:
  - Inn
  - Tavern
owner:
  - "[[Zarek Tellos]]"
taverntype:
  - Dive Bar
lodgingtype:
  - Rough Cot
pronounced: MOR-ing FLAG-un
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
>> **Pronounced** |  `INPUT[textArea:pronounced]`
>> **Aliases** | `INPUT[list:aliases]` |
>> **Type** | `INPUT[POIType][inlineListSuggester:poitype]` |
>> **Tavern Type** | `INPUT[TavernType][inlineListSuggester:taverntype]` |
>> **Lodging Type** | `INPUT[LodgingType][inlineListSuggester:lodgingtype]` |
>> **Dominion** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):dominion]` |
>> **Owners** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):owner]` |
>> **Assistant** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):assistant]` |
>> **Organization** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>> **Location** | `INPUT[inlineListSuggester(optionQuery(#District AND !"z_Templates"), optionQuery(#Settlement AND !"z_Templates"), optionQuery(#Subregion AND !"z_Templates"), optionQuery(#Reach AND !"z_Templates"), useLinks(partial)):location]` |
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
> **Aliases** | `VIEW[{aliases}][text]` |
> **Shop Type** | `VIEW[{shoptype}][text]` |
> **Tavern Type** | `VIEW[{taverntype}][text]` |
> **Lodging Type** | `VIEW[{lodgingtype}][text]` |
> **Dominion** | `VIEW[{dominion}][link]` |
> **Owners** | `VIEW[{owner}][link]` |
> **Assistant** | `VIEW[{assistant}][link]` |
> **Organization** | `VIEW[{organization}][link]` |
> **Location** | `VIEW[{location}][link]` |
> ###### Party
>  |
> ---|---|
> **Party 1 Reputation** | `VIEW[{party1reputation}][text]`|
> **Party 2 Reputation** | `VIEW[{party2reputation}][text]`|
> **Party 3 Reputation** | `VIEW[{party3reputation}][text]`|
> **Party 4 Reputation** | `VIEW[{party4reputation}][text]`|
> **Party 5 Reputation** | `VIEW[{party5reputation}][text]`|
> **Party 6 Reputation** | `VIEW[{party6reputation}][text]` |


# `=this.file.name` <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!recite]- Introduction  
> Sea-brine stings your nose as the door to **The Mooring Flagon** swings open—not from wind, but from the shove of someone who clearly doesn’t care if it closes. Inside, the air is thick with salt, pipe smoke, and the scent of fermented kelp. Lanterns swing low and gutter, illuminating stained rafters and warped floorboards crowded with mismatched chairs.  
>  
> The barkeep doesn't look up. The regulars don’t look at all. In one corner, dice roll across a crate-turned-table. In another, someone tunes a stringless lute. You can just make out one of the walls—plated in rusted hull metal, etched faintly with smuggler's glyphs.  
>  
> And above it all, the creaking of mooring lines and the clink of bottles echo beneath the floorboards—beneath the inn. Because this isn’t just a tavern.  
> It’s a front.  
> And somewhere under the ale and rust, **The Blackwake Corsairs** are listening.


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

> [!metadata|characters]- Characters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(occupation, ", ") AS "Occupations", join(link(organization), ", ") AS "Organizations"
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Character") AND !contains(condition, "Dead")
> SORT tags DESC, file.name ASC
## Overview 

Tucked beneath a rusting gantry at the edge of [[Stonebrace Docks]], **The Mooring Flagon** is part tavern, part safehouse, and all smuggler grit. Officially, it serves as a waystop for sea-worn sailors and late-shift dockhands. Unofficially, it’s a Blackwake Corsairs front: a place where encrypted contracts change hands, contacts are vetted, and the unspoken business of the docks thrives. No signage marks the door. The flagon hanging over the entrance is green-glass, salt-fogged, and unlit.

## Clientele

The Flagon draws a rotating crowd of Corsair-aligned sailors, informants, and low-tier fixers running quiet ops through Kanda’s lower docks. You’ll also find a few hardened locals who know better than to ask questions. No one stays long, no one comes in groups, and everyone watches the door.

## Goods & Services

### Food

| Name                 | Description                                                   | Cost      |
|----------------------|---------------------------------------------------------------|-----------|
| Salted Bonefish      | Pan-seared reef fish served with kelp ash and hardtack        | 1 sp      |
| Barrel-Baked Crab    | Spiced and smoked in a rust-drum oven behind the bar          | 3 sp      |
| Dockline Stew        | A briny blend of whatever came in on the last tide            | 1 cp      |
| Blackbread & Butter  | Dense bread baked with squid ink, served with salted butter   | 2 cp      |

### Drink

| Name                 | Description                                                       | Cost      |
|----------------------|-------------------------------------------------------------------|-----------|
| Rotgrip Ale          | Local favorite; gritty, strong, and leaves a metallic aftertaste  | 1 cp      |
| Dockhouse Keg        | Small batch, moss-fermented ale from barrels floated in sea ice   | 2 sp      |
| Kanda Kelp Wine      | Bitter green, illegal in most ports, bottled without labels       | 1 gp      |
| Wakewater Whiskey    | Harsh stuff—cured in driftwood casks, burns all the way down      | 5 sp      |

### Services

| Name                       | Description                                                                 | Cost           |
|----------------------------|-----------------------------------------------------------------------------|----------------|
| Lodging (Rough Cot)        | A cot in a boarded-up storage room above the tavern                        | 3 cp (per day) |
| Fixer (Basic Informant)    | Hushed guidance on Corsair activity or safe passage info                   | 5 sp (per hour)|
| Smuggling (Level 1)        | Discreet item transport via Corsair contracts (low value, local)           | 10 gp (per day)|
| Safe House (Level 1)       | One day/night of concealed lodging & identity obfuscation services         | 10 gp (per day)|

## Keyed Locations

- **Main Room:** Narrow space with mismatched tables, low foglight, and a bar carved from a ruined figurehead  
- **Upper Loft:** Storage-converted bunks rented to those with no better options  
- **Hatch Below the Bar:** Leads to a drydock vault—Corsair operatives only  
- **Back Alcove Booth:** Protected by a sigil glyph, used for encoded conversations and contract writing

## Current Events

- Zarek Tellos is recovering from a failed fog extraction—word is he left someone behind  
- The Phantom Admiral’s symbol was burned into the underside of a barstool this week; regulars pretend not to notice  
- The last barrel of Dockhouse Keg was tampered with—likely cursed. No one's dared drink it yet

## History

- Built on top of the ruins of an old customs booth burned out during the Rising  
- Became a known Corsair front around 194 PR after the harbormaster’s ledger went missing  
- Zarek took over direct management under orders from the Phantom Admiral; rumor says he once killed a customer for recognizing him

## Notes

- The Flagon has no guestbook, no supply ledger, and no tax record  
- Anyone asking about rooms for more than one night is quietly marked  
- There are nine exits. Only two are visible

