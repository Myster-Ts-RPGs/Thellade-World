---
tags:
  - "#Location"
  - "#POI"
art: z_Assets/POIs/Gnomengarde.png
banner: on
poitype:
  - Cave
  - Workshop
dominion:
  - "[[Kingdom of Odinys]]"
owner:
  - "[[Jorboz Rahj]]"
  - "[[Gnerkil Rahj]]"
assistant:
  - "[[Irren Brada]]"
organization:
  - "[[Odinys Merchant's Guild]]"
location:
  - "[[Odinys]]"
---

```meta-bind-js-view 
{art} as art {banner} as banner
--- 
if (context.bound.art !== "z_Assets/Misc/PlaceholderImage.png" && context.bound.banner === "on")  { 
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
>> **Dominion** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):dominion]` |
>> **Owners** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):owner]` |
>> **Assistant** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):assistant]` |
>> **Organization** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>> **Location** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Type** | `VIEW[{poitype}][text]` |
> **Dominion** | `VIEW[{dominion}][link]` |
> **Owners** | `VIEW[{owner}][link]` |
> **Assistant** | `VIEW[{assistant}][link]` |
> **Organization** | `VIEW[{organization}][link]` |
> **Location** | `VIEW[{location}][link]` |
> ###### [[Travel Calculator]] 
>  |
> ---|---|
> **TBD** | `VIEW[round(52 / (({Travel Calculator#MilesPerHour}*{Travel Calculator#HoursPerDay})*{Travel Calculator#SpeedMultiplier}),1)]` Day(s)
> **TBD** | `VIEW[round(0.5 / ({Travel Calculator#MilesPerHour} * {Travel Calculator#SpeedMultiplier}) * 60, 1)]` Minute(s)

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

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)"
> FROM "Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Location")
> SORT tags DESC, poitype ASC, file.name ASC

> [!metadata|characters]- Characters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(occupation, ", ") AS "Occupations", join(link(organization), ", ") AS "Organizations"
> FROM "Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Character") AND !contains(condition, "Dead")
> SORT tags DESC, file.name ASC

## Overview 



## Keyed Locations

##### G1. Misty Pool and Mushroom Islands
The gnomes subsist on 2-foot-tall mushrooms that grow atop two small islands in the middle of this 3-foot-deep pool. The islands are perpetually shrouded in mist from the waterfall. Magic bestowed upon the islands by Gnomengarde's first settlers causes the mushrooms to grow to abnormally large size. This same magic is the source of Gnomengarde's wild magic (see above).

The mushrooms come in three colors. Red mushrooms provide oil that the gnomes use to fuel their lanterns and other mechanical devices. Green mushrooms are ground into flour and used to make a tasty green bread. Purple mushrooms are crushed and fermented to make mushroom wine, which tastes as good as it sounds.

##### G2. Waterfall and Rope Bridge
The waterfall plunges 60 feet, its mist lightly obscuring a 35-foot-long rope bridge firmly anchored to 20-foot-high ledges. The bridge is difficult terrain, and sags so that its midpoint is only 15 feet above the water. A creature that falls or jumps from the bridge takes no damage if it lands in the water, which is 5 feet deep in the area below the bridge. The bridge has AC 11, 30 hit points, and immunity to poison and psychic damage. The barrel crab contraptions in area G6 are too clumsy to cross the bridge without getting tangled in its ropes.

##### G3. Dining Room
This room contains several dining tables and chairs sized for Small folk. A stout wooden cabinet against the east wall holds tin dishware and utensils.

##### G4. Kitchen
This kitchen is furnished with gnomes in mind, so everything is either close to the floor or readily reachable by tugging on an overly complicated rope-and-pulley mechanism. Five rock gnome recluses busy themselves here:

-   Joybell (female) uses a poker to stoke the fire of a hot iron stove standing against the east wall.
-   Dimble (male) uses a complicated press-like contraption to squeeze oil out of a big red mushroom and filter the liquid into four oil flasks.
-   Panana (female) stands atop a low table and uses a mechanical rolling pin contraption to kneed green bread dough. The severed caps of several big green mushrooms are set around her.
-   Uppendown (male) forms the dough into loaves of green bread, his tongue sticking out as he carefully shapes each loaf like a master sculptor.
-   Tervaround (female) teeters on a stool as she stuffs a big purple mushroom into a barrel, so that it can ferment and be turned into mushroom wine.

Characters who question the gnomes are urged to speak to Fibblestib or Dabbledob in the workshop [[#G11. Inventors' Workshop]], as they know more about what's going on than any other gnomes in the complex. These gnomes won't leave the kitchen, but they can point characters in the right direction. The gnomes avoid talking about the missing gnomes or Mad King [[Jorboz Rahj]].

##### G5. Pantry
This room is piled high with small wooden crates. Each contains loaves of green mushroom bread and other foodstuffs collected and kept by the gnomes.

##### G6. Barrel Crabs
Parked in alcoves in this otherwise empty room are two gnomish contraptions. Each resembles a crab with a barrel for a shell, six articulated metal legs, and a pair of forward-facing pincer claws. A hatch on the top of each barrel opens to reveal an interior compartment equipped with a small, leather-padded seat surrounded by levers, pedals, and gears. The barrels are not airtight.

The gnomes built these crablike contraptions to grip and move other objects, rather like crude forklifts. However, the contraptions are so clumsy that they are useless for delicate work. They are just small enough to navigate Gnomengarde's 5-foot-wide passageways.

##### G7. Autoloading Crossbow Platform
Bolted to the floor of this room is a rotating platform equipped with four heavy crossbows that reload automatically. Each crossbow comes with twenty bolts. Mounted above the crossbows at a height of 6 feet is a chair equipped with pedals that causes the entire contraption to spin counterclockwise, and with levers that reload and fire the crossbows. This clanking, clattering contraption is a Large object with AC 13, 45 hit points, and immunity to poison and psychic damage. Every time it loses 10 hit points, one of its crossbows breaks.

A creature sitting in the chair can use an action to rotate the device up to 360 degrees counterclockwise and fire up to two of its crossbows in any direction. Each crossbow makes the following attack.

**Heavy Crossbow.** 
_Ranged Weapon Attack_: +5 to hit, range 50/200 ft., one target. _Hit_: 5 (1d10) piercing damage.

Sitting in the chair when the characters first enter this area is the device's inventor, a rock gnome recluse named Facktoré. When she sees strangers, Facktoré decides to test out the contraption on them. She stands down only when she or her contraption cease to function, or when she can no longer see any targets. Being deranged and utterly consumed by her work, she can barely string together a cohesive sentence, let alone advise visitors on where to go or whom to talk to.

##### G8. Mimic and Mushroom Wine
This room contains twelve forty-gallon barrels set into wide alcoves. Each barrel is secured by a wooden brace. The barrels in the south alcove have been tapped with wooden spigots. Two of those barrels are half full, and two are nearly empty.

##### G9. Gnome Guard Post
Mist from the waterfall dampens this empty cave, which has a 10-foot-high ledge overlooking it to the south. The ledge can be reached by following the curved tunnel to the east, or by scaling the slick rock wall with a successful DC 12 Strength (Athletics) check.

Two rock gnome recluses stand on the ledge—a female named Ulla and a male named Pog. When anyone enters the cave, Ulla calls out, "Who goes there?" in Gnomish, then Pog repeats the question in Common. Their orders are to "attack shapechangers on sight." Since anyone might be a shapechanger, they attack anyone who can't prove they are who they claim to be.

##### G10. Spinning Blades
This area is lightly obscured by mist from the waterfall. The larger eastern part of the room contains two rapidly spinning devices that look like turnstiles fitted with stacks of long, sharp blades spaced 1 foot apart. The northern turnstile spins counterclockwise, while the southern one spins clockwise. Any creature that enters or starts its turn in the eastern part of the room while the blades are spinning must make a DC 15 Dexterity saving throw, taking 18 (4d8) slashing damage on a failed save, or half as much damage on a successful one.

Set into the south wall of the smaller western part of the room is a brass lever in the down position. Pulling the lever up causes the turnstiles to stop spinning, allowing safe passage through the chamber. The rock gnomes bypass this trap by using the mage hand cantrip to move the lever from the east doorway.

##### G11. Inventors' Workshop
As the characters approach this area, they overhear an argument in Gnomish between two rock gnome recluses—a male named Fibblestib and a female named Dabbledob. As Gnomengarde's foremost inventors, they are trying to dream up an invention that will cure King [[Jorboz Rahj]]'s madness. Fibblestib's proposal is a "sanity ray." Dabbledob thinks that's dumb, and wants to build something called a "straitjacket" instead. If the characters interrupt them, the gnomes realize that the new arrivals might have another solution, so they fill in what's been happening and ask for any advice on how they might help cure [[Jorboz Rahj]] and rescue King [[Gnerkil Rahj]].

Fibblestib and Dabbledob consider the mystery of the vanishing gnomes of secondary importance to their mission of aiding their kings. They focus on [[Jorboz Rahj]] and [[Gnerkil Rahj]] to the exclusion of all else, promising magical rewards in exchange for aid.

The workshop is cluttered with half-completed gnomish inventions that serve no purpose, as well as worktables strewn with tinker's tools. A 10-foot-high ledge overlooks the room, set with a wooden pedestal on which sits a leather-bound book.

**Treasure.** 
The book on the pedestal is a spellbook that the rock gnomes of Gnomengarde share. Its cover describes its title as _Magick of Gnomengarde_ (in Common and Gnomish), and it contains the wizard spells burning hands, detect magic, identify, mage armor, magic missile, shield, and sleep.

##### G12. Gnome Domiciles
The floor of this cave is strewn with the remnants of old campfires. Four side caves serve as sleeping areas, with five small wooden cots crammed into each one. Eight rock gnome recluses sleep soundly here when the characters first arrive, with two gnomes in each side cave—Caramip, Jabby, Nyx, and Quippy (females), and Anverth, Delebean, Pallabar, and Zook (males). Characters can move through the area without waking the sleeping gnomes, who defend themselves if attacked but pose no danger otherwise. They avoid talking about the recent troubles, but advise visitors to speak with Fibblestib and Dabbledob (see [[#G11. Inventors' Workshop]]), Gnomengarde's two most gifted rock gnome inventors.

##### G13. Treasury
The door to this room is locked, and Fibblestib and Dabbledob (see [[#G11. Inventors' Workshop]]) carry the keys. The room contains a jumble of nonfunctional gnomish gizmos, as well as loose gears, twisted bits of metal, and other scraps that the gnomes use to cobble together new inventions.

Treasure. 

Amid the clutter, the characters can find a clockwork amulet and a pole of collapsing, most easily by scanning the room with a detect magic spell. It otherwise takes 1 hour to find each item.

##### G14. Throne Room
Situated atop a stone dais are two squat thrones made of scrap metal and sized for gnomes. A secret door in the north wall conceals a short tunnel leading to area G15. Only the gnome kings know of this secret passage.

##### G15. Gnome Kings' Bedroom
King [[Jorboz Rahj]] has locked himself and King [[Gnerkil Rahj]] in their bedroom, forgetting that there's a secret door that others could find and use to gain entry. Only [[Jorboz Rahj]] and [[Gnerkil Rahj]] have keys to the locked main door. If the characters knock on the door or otherwise announce their arrival, [[Jorboz Rahj]] speaks to them from inside the room and warns of a "shapechanger" in their midst. [[Jorboz Rahj]] doesn't regain his senses until the characters assure him that the monster has been found and killed. Whether the mimic is truly killed or not, convincing [[Jorboz Rahj]] that it's dead requires a successful DC 12 Charisma (Persuasion) check.

[[Jorboz Rahj]] and [[Gnerkil Rahj]] are rock gnome recluses, each wearing a jagged metal crown and a patchwork cloak. [[Gnerkil Rahj]] is glued to a chair and restrained. [[Jorboz Rahj]] carries a flask of solvent that dissolves the glue on contact. Their room contains all the trappings of a nicely appointed gnome bedroom.


## Current Events



## History



## Notes

