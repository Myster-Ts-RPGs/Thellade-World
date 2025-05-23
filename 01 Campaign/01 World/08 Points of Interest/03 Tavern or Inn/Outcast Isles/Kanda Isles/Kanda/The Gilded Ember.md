---
tags:
  - "#Location"
  - "#POI"
  - "#TODO"
art: 90 Assets/Images/Misc/PlaceholderImage.png
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
> Lanternlight shimmers against gold-leafed timbers and glass-paned archways as you step into **The Gilded Ember**—an inn tucked just off the bustle of [[Amberveil Market District]]. It’s quieter here, but not quiet. Murmurs drift from curtained booths, and a lute player weaves subdued melodies from a shadowed alcove.  
>  
> A polished brass hearth burns with faint-orange flameglass. Soft-glow ceiling glyphs keep the space warm and dim, never harsh. The scent of saffron bread and roasted nuts hangs beneath the richer smell of cider, soap, and the faint dust of old coin.  
>  
> You’re not here to vanish. You’re here to not be seen too clearly.

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


