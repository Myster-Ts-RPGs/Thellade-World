---
tags:
  - "#Location"
  - "#Location/POI"
  - "#Status/Blank"
art: 90 Assets/Images/Placeholders/PlaceholderPointOfInterest.png
poitype:
  - Tavern
  - Inn
banner: on
pronounced: GIL-did EM-bur
taverntype:
  - Inn-Tavern
  - Noble Lounge
lodgingtype:
  - Standard Room
  - Private Room
  - Luxury Suite
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
>> **Shop Type** | `INPUT[TavernType][inlineListSuggester:taverntype]` |
>> **Shop Type** | `INPUT[LodgingType][inlineListSuggester:lodgingtype]` |
>> **Dominion** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):dominion]` |
>> **Owners** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):owner]` |
>> **Assistant** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):assistant]` |
>> **Organization** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>> **Parent Plane** | `INPUT[inlineListSuggester(optionQuery(#Location/Plane AND !"z_Templates"), useLinks(partial)):parentplane]` |
>> **Parent Galaxy** | `INPUT[inlineListSuggester(optionQuery(#Location/Galaxy AND !"z_Templates"), useLinks(partial)):parentgalaxy]` |
>> **Parent StarSystem** | `INPUT[inlineListSuggester(optionQuery(#Location/StarSystem AND !"z_Templates"), useLinks(partial)):parentstarsystem]` |
>> **Parent Planet** | `INPUT[inlineListSuggester(optionQuery(#Location/Planet AND !"z_Templates"), useLinks(partial)):parentplanet]` |
>> **Parent Continent** | `INPUT[inlineListSuggester(optionQuery(#Location/Continent AND !"z_Templates"), useLinks(partial)):parentcontinent]` |
>> **Parent Region** | `INPUT[inlineListSuggester(optionQuery(#Location/Region AND !"z_Templates"), useLinks(partial)):parentregion]` |
>> **Parent Subregion** | `INPUT[inlineListSuggester(optionQuery(#Location/Subregion AND !"z_Templates"), useLinks(partial)):parentsubregion]` |
>> **Parent Reach** | `INPUT[inlineListSuggester(optionQuery(#Location/Reach AND !"z_Templates"), useLinks(partial)):parentreach]` |
>> **Parent Settlement** | `INPUT[inlineListSuggester(optionQuery(#Location/Settlement AND !"z_Templates"), useLinks(partial)):parentsettlement]` |
>> **Parent District** | `INPUT[inlineListSuggester(optionQuery(#Location/District AND !"z_Templates"), useLinks(partial)):parentdistrict]` |
>> **Parent POI** | `INPUT[inlineListSuggester(optionQuery(#Location/POI AND !"z_Templates"), useLinks(partial)):parentpoi]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Shop Type** | `VIEW[{taverntype}][text]` |
> **Lodging Type**| `VIEW[{lodgingtype}][text]` |
> **Dominion** | `VIEW[{dominion}][link]` |
> **Owners** | `VIEW[{owner}][link]` |
> **Assistant** | `VIEW[{assistant}][link]` |
> **Organization** | `VIEW[{organization}][link]` |
> **Location (Parent POI)** | `VIEW[{parentpoi}][link]` |
> **District** | `VIEW[{parentdistrict}][link]` |
> **Settlement** | `VIEW[{parentsettlement}][link]` |
> **Reach** | `VIEW[{parentreach}][link]` |
> **Region** | `VIEW[{parentregion}][link]` |
> **Continent** | `VIEW[{parentcontinent}][link]` |
> **Planet** | `VIEW[{parentplanet}][link]` |
> **Star System** | `VIEW[{parentstarsystem}][link]` |
> **Galaxy** | `VIEW[{parentgalaxy}][link]` |
> **Plane** | `VIEW[{parentplane}][link]` |
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

# Dataviews for POIs

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)", join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentpoi, this.file.link) AND contains(tags, "Location/POI")
> SORT tags DESC, poitype ASC, file.name ASC
> ```

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(parentpoi, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC
> ```

> [!metadata|entities]- Entities
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(tags, ", ") AS Tags, join(link(parentlocation), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(parentpoi, this.file.link) AND contains(tags, "Entity")
> SORT file.name ASC
> ```

## Overview 


**The Gilded Ember** caters to mid-tier travelers, minor nobles, and trade officials looking to escape both grime and ceremony. It's respectable, unassuming, and slightly expensive for the service—exactly the point. Its location in [[Amberveil Market District]] makes it ideal for merchants, deal-brokers, and those laundering more than coin. It has no sign—just an embossed brass flame set into the door.

---

## Goods & Services

### Food

| Name                | Description                                                | Cost |
|---------------------|------------------------------------------------------------|------|
| Ember-Braised Pheasant | Tender game bird slow-cooked in spice wine and root glaze     | 7 sp |
| Moonroot Bisque     | Creamy soup of underground vegetables and lunar moss       | 3 sp |
| Kanda Market Plate  | Fried dumplings, seared rice-cake, and pickled slivers     | 4 sp |
| Saffron Loaf        | Fresh bread brushed with herb oil and crystal salt         | 1 sp |

### Drink

| Name               | Description                                               | Cost |
|--------------------|-----------------------------------------------------------|------|
| Glimmermead        | Amber honey brew aged in emberwood barrels               | 2 sp |
| Firecord Brandy    | Spiced and smoky, with a faint ember afterbite            | 4 sp |
| Silvermist Cider   | Light apple-ferment served chilled with moonfruit peel    | 3 sp |
| Softglow Tea       | Calming herbal blend, brewed with faintly glowing petals  | 1 sp |

### Services

| Name               | Description                                                           | Cost      |
|--------------------|-----------------------------------------------------------------------|-----------|
| Lodging (Standard Room) | Smaller room lock shared bathroom       | 3 sp/night |
| Lodging (Private Room) | Warm private suite with lock, washbasin, and charm-sigil window       | 6 sp/night |
| Bath & Wardrobe Service | Clean clothing, personal soak tub, oils, and brushwork               | 3 sp       |
| Private Alcove Rental  | Light-screened booth with warded sound buffer for private meetings   | 2 sp/hour  |

---

## NPCs

**Owner: Mistress Cyrene Velnair**  
- A former jewel-broker turned innkeeper, Cyrene dresses in deep burgundies and always wears a single gold ring, rumored to be a vow token from a political exile. Her demeanor is gracious but edged—she can spot a smuggler, a noble, or a liar before they sit down. She’s known to serve royalty one day, then blackmail a thief the next.

**Doorman: Thassel "Brick" Mour**  
- Towering, quiet, and well-dressed, Brick speaks with a soft coastal lilt and rarely makes eye contact. He’s not a thug—he’s an *observer*. His true job is less guarding the door, more logging who walks through it. Old Corsair ink lines his collarbone, mostly faded.

**Waitress: Melka Dawnvale**  
- Youthful, clever-eyed, and fast on her feet. Melka has a perfect memory for orders and a sharper one for rumors. She often finishes people’s sentences before they do and seems to know what they’ll order before they say it. Unassuming at first, but has been feeding intel to unknown clients for years.

---

## Notes

- Booths along the east wall are glyph-buffered for acoustic privacy.  
- A stairwell behind the wine rack leads to locked upper suites—rumored to house long-term residents with diplomatic protections.  
- One painting in the dining hall—a firelit harbor—flickers occasionally, even without light. It is never mentioned by the staff.

---

**Pronunciation:** *GIL-did EM-bur*


