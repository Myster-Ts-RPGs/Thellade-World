---
tags:
  - "#Location"
  - "#POI"
art: z_Assets/POIs/UrvadKeep.png
banner: on
pronounced: URR-vad KEE-p
poitype:
  - Keep
dominion:
  - "[[Kingdom of Odinys]]"
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
Thrust out from the base of a dark gray mountain is the entrance to the dwarven fortress—a dark, fifteen-foot-wide passageway flanked by forty-foot-high bulwarks of smooth, seamless stone. An iron portcullis covered with rust blocks the entrance. Arrow slits carved into the bulwarks are dark, revealing no hint of occupation.

> [!metadata|map]- Map
> ```leaflet
> id: UrvadKeep
> image: [[UrvadKeepMap.png]]
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
> defaultZoom: 3.5
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

##### A1. Outer Gauntlet
 Urvad Keep's primary entrance and exit is this defensible passage, which is blocked by a sturdy portcullis. Arrow slits are spaced along the walls and murder holes line the ceiling, enabling fortress defenders to shoot ballistas at invaders or pour boiling oil on top of them. With the dwarves gone, the only remaining defenses are the portcullis and the double doors to the south, which are barred shut.

 Characters hoping to get through the double doors must break them down, which takes a single character 1 hour. Multiple characters working together can reduce the time proportionately. The noise created by smashing down the doors is loud enough to alert all the dwarf ghouls in the fortress, which gather in area A4 and attack once the doors fall. The fortress contains three dwarf ghouls plus three additional ghouls for each character in the party, not including sidekicks. If these ghouls are killed here, the characters encounter no more of them in the fortress.

##### A2. Western Bulwark
This area contains seven ballistas pointed at arrow slits, a winch that raises and lowers the portcullis, and a stone staircase leading up to area A22 Upper Bastion. Each ballista is equipped with five bolts.

##### A3. Eastern Bulwark
This area has the same features as area A2 Western Bulwark.

##### A4. Mustering Hall
This great hall has a 40-foot-high ceiling supported by four thick stone pillars. A thick layer of dust covers the flagstone floor. In the middle of each wall past the entrance is a double door. Arrow slits are set high up in the north and south walls, and a small stone balcony protrudes from the wall above the east exit, 20 feet above the floor. 

(See A22 Upper Bastion, A24 Haunted Hall, and A25 Upper East Hall and Balcony for details of these features.)

###### **Secret Door**
- Within the mural of the beautiful Dwarven iconography, there is a single slot in the center that houses an indent that allows the Urvad Keep Signet Ring to be placed within it. When turned, it actives the the mechanisms that makes the entire mural spin and turn, various outer lays turn in opposite direction before clicking into place. Once there, the floor begins to descend in a spiral flow, forming a staircase to it's lower depths and into A31. Urvad Vault.

##### A5. West Hall
The floor is strewn with bits of armor and the gnawed bones of dwarves who were killed and eaten by ghouls. Lurking in the hall is one ghoul for each member of the party, not including sidekicks. The ghouls pursue prey that flees.

##### A6. Armory
The dwarves took all the weapons and armor from this area when they left. All that remains are empty stone weapon racks, wooden mannequins upon which armor once hung, and iron hooks in the walls that once bore shields.

##### A7. Main Barracks
Dozens of meager cots lie scattered about the floor. A pair of fireplaces stand cold and dark, their rubble-choked chimneys rising 120 feet through the mountain.

##### A8. Privies
Tattered wool curtains conceal three neglected privies, each with a wooden bench set against the back wall.

##### A9. Stirge in the Smithy
Standing before two blackened hearths are a pair of rusty anvils, which dwarves once used to fashion and repair their armor and weapons.

A fluttering noise can be heard coming from the southernmost fireplace, indicating the presence of a stirge near the bottom of the 200-foot-high chimney. If anyone shines a light up there, the stirge panics, flies out, and attacks the nearest character or sidekick. It ignores the characters otherwise.

##### A10. Tool Storage
Dwarven armor smiths and weapon smiths stored their tools here, which still hang from hooks along the walls. Though a bit rusty, the tools are in serviceable shape if the characters wish to use them.

##### A11. Inner Gauntlet
Four arrow slits line the walls of this corridor leading to Urvad Keep's throne room. (A14 Throne Room.)

##### A12. West Guard Post
Two ballistas point toward arrow slits in the east wall. Each ballista is equipped with five bolts. The guard post is otherwise empty.

##### A13. East Guard Post
The gnawed bones, torn armor fragments, and rusty battleaxes of two dead dwarf guards lie in the middle of the room. The guards were trapped here by ghouls, killed, and eaten.

Two ballistas aimed at arrow slits in the west wall come equipped with five bolts apiece.

##### A14. Throne Room
**Description**
The stench of death hangs heavy in the air of this dusty, pillared hall, which has a dark, soot-stained fireplace at the east end. A deep alcove in the south wall contains a dais, atop which rests a limestone throne flanked by granite statues of dwarf warriors. Between the throne and the fireplace is a hallway with stairs leading up.

Sitting throne is a ghoul with 40 hit points. This undead creature is all that remains of Urvad Keep's dwarf castellan, who stayed behind to seal up the fortress after most of the garrison fled. The ghoul is the source of the hall's foul stench, which gets stronger closer to the throne. The hidden ghoul seems it be sleeping if the party hasn't made much noise. However, if they have it will be sat there expectantly as they arrive, with his horrifying image of a blacked out face and glowing red eyes under his [[Dread Helm]] and will left it's +1 Warhammer to attack.

If any character inspects the throne, the ghoul lets out a shriek and attacks. Its shriek is heard by the ghouls in area A26 Ghoul Bath, which crawl down the chimney and clamber out of the fireplace. This group contains two soot-covered ghouls plus one additional ghoul for each member of the party, not including sidekicks. After all other creatures in the hall have taken a first turn in combat, these ghouls join the battle, acting on the same initiative count as the former castellan. 
###### **Treasure**
 - **Signet Ring**
     - The ghoulish castellan wears a gold signet ring that bears the Urvad Keep crest: a handaxe clutched in a dwarven gauntlet. The signet ring is worth 20 gp and unlocks the spiral staircase in area A4. Mustering Hall.
 - **Chest Key**
     - The ghoulish castellan also holds a key that unlocks the chest within the secret room of A29. Secret Room.
 - **+1 Warhammer**
 - **Dread Helm**

##### A15. Dining Room
In the middle of this room, a carved stone dining table (15 feet long by 5 feet wide) is flanked by a pair of equally long wooden benches. Above the table hang two iron chandeliers, their candles long since melted away. North of the seating area is a sooty fireplace and an alcove containing a rough-hewn pit that descends 60 feet.

 Abundant handholds and footholds allow a character to climb up or down the pit with a successful DC 10 Strength (Athletics) check. The bottom of the pit contains moldy animal bones and other refuse discarded by the dwarves after their meals.

##### A16. Kitchen
The dusty room has all the trappings one expects to find in a dwarven kitchen, including metal dishware, utensils, and drinking mugs. A stone sink is equipped with a faucet which, when turned, spouts hot water channeled from a naturally heated underground spring.

##### A17. East Hall in Ruins
The earthquake that hit Urvad Keep triggered a ceiling collapse that left this hall in ruins. The eastern half of the hall is strewn with debris and is difficult terrain. The stench of death hangs heavy here, becoming stronger as the characters move toward area A19 Ghoul Den.

##### A18. Empty Room
This 15-foot-square room was cleaned out by the dwarves before they evacuated Urvad Keep. Only dust remains.

##### A19. Ghoul Den
Characters can reach this area by following the naturally formed tunnel from area A17 or by descending the stone staircase from area A24. The door to the north has been smashed open, and its remains are strewn on the floor.

The stench of death and decay grows stronger as the characters approach this room, and they can hear the hisses and snarls of the ghouls that lair here. The room contains one ghoul plus one additional ghoul for each member of the party, not including sidekicks.

After dealing with the ghouls, the characters can inspect the room more closely. Describe it to the players as follows:

This chamber was once a shrine, as evidenced by wall carvings that depict dwarves carrying censers and observing religious rites. However, the eastern section of the room has collapsed, filling the area with rubble. Gnawed bones scattered among the debris are the remains of a number of dwarves.

###### **Treasure**
 - **Holy Symbol**
     - A platinum amulet on a thin but sturdy gold chain. This amulet is a holy symbol of [[Brimdar|The Creator]] and bears his symbol: a hammer and anvil. Any dwarf character recognizes the symbol immediately, while a non-dwarf recognizes it with a successful DC 10 Intelligence (Religion) check.
 - **Greater Healing**
     - An unlocked steel coffer weighing 5 pounds. This small box is packed with silt, nestled in which is a Greater Healing Potion.

##### A20. Narrow Tunnel
Ghouls dug this winding, rubble-strewn tunnel connecting the upper and lower levels of Urvad Keep. The tunnel is 2 feet wide, 5 feet high, and 60 feet long.

##### A21. East Upper Barracks
The ghouls trashed this room, leaving behind wrecked cots, chairs, tables, and other furnishings. A blackened fireplace is set into the east wall, its chimney rising 20 feet to the outside. Characters can use this chimney to enter or exit the fortress.

##### A22. Upper Bastion
This large chamber extends over the outer gauntlet of the main entrance ( A1 Outer Gauntlet) and contains many former defensive measures. Arrow slits to the north allow outside light to enter, filling the northern half of the room with sunlight or moonlight depending on the time of day or night.

Thick webs are strung between the walls and pillars. Lurking among them are several giant spiders—three spiders plus one additional spider for each character in the party, not including sidekicks. The spiders are spread throughout the southern half of the room and move to attack all interlopers.

Other defenses include two fireplaces, which were used to heat cauldrons full of oil that the dwarves poured through narrow slits in the floor. Three empty cauldrons are lined up along one of these slits. Arrow slits along the south wall open up onto area A4 Mustering Hall, and stone staircases descend to areas A2 Western Bulwark and A3 Eastern Bulwark.

##### A23. West Upper Barracks
A fireplace is built into the west wall of this room. Hanging from a hook above its mantelpiece is a nonmagical steel shield bearing the symbol of Urvad Keep: a dwarven gauntlet clutching a handaxe. Characters can use the fireplace's soot-stained chimney to enter or exit the fortress.

The room's other furnishings—cots, tables, chairs, and empty footlockers—are intact but covered in dust.

##### A24. Haunted Hall
The banshee haunts the east–west stretch of this L-shaped hall. The creature floats in the middle of the hall, outside the door to area A27 Banshee's Bedchamber. Describe it to the players as follows:

The luminous, wispy form of a female elf floats in the dusty hallway before you, its face wreathed in a tangle of gossamer hair, its body clad in spectral rags that flutter around it. The apparition's face becomes a mask of rage as it screams, "Get out of my house!"

If the characters flee the banshee's presence of their own accord, it lets them go. If they advance toward the undead, attack it, or attempt to parley, it turns violent.

In the first round of combat, the banshee uses Horrifying Visage. On the second round, it uses Wail. After wailing, it withdraws to area A27 Banshee's Bedchamber, passing through the closed door as though it weren't there. In area A27 Banshee's Bedchamber, the undead makes its final stand.

##### A25. Upper East Hall and Balcony
The earthquake caused part of this empty hall to collapse. A double door in the west wall leads to a small stone balcony overlooking area A4 Mustering Hall.

##### A26. Ghoul Bath
Several ghouls gather here—a total of two ghouls plus one additional ghoul for each member of the party, not including sidekicks. The ghouls enter and leave the room through a 2-foot-diameter hole in the east wall, which breaks into the chimney of area A14 Throne Room.

In the middle of this room stands a carved stone tub filled with gnawed dwarven bones. The tub is equipped with a faucet which, when turned, spouts hot water channeled from a naturally heated underground spring. A stone plug seals the drain in the tub's bottom.

##### A27. Banshee's Bedchamber
This bedroom was set aside for honored guests, but its furnishings have decayed with age and are covered with dust and cobwebs. Vyldara once stayed here, but the elf's possessions were taken during her captivity, leaving nothing of value.

##### A28. Castellan's Bedchamber
A stone-framed bed with a moldy mattress stands in the middle of this room, covered in dust and cobwebs. Set into the south wall is a soot-stained fireplace. Stirges nest in the rubble-choked chimney—a total of one per party member (including sidekicks). The stirges attack anyone who pokes around in the fireplace.
Secret Door

###### **Fireplace**
- The back wall of the fireplace is a secret door. A character who searches the interior of the fireplace and succeeds on a DC 15 Wisdom (Perception) check notices dwarven hand prints in the soot on the back wall. Pushing on the secret door causes it to swing open on hidden stone hinges, revealing area A29 Secret Vault beyond.

##### A29. Secret Vault
Against the south wall of this otherwise empty room rests a 80-pound iron chest with clawed feet. Its built-in lock bears a tiny circular indentation instead of a traditional keyhole. Close inspection of the indentation reveals a tiny symbol of a handaxe clutched in a gauntlet. This symbol matches the one on the castellan's signet ring (found in area A14 Throne Room, albeit reversed. If the castellan's signet ring is placed in the indentation, the chest unlocks and remains unlocked until its lid is closed tight. The chest can also be unlocked with a successful DC 20 Dexterity check using thieves' tools, or by a knock spell or similar magic.
Treasure
 - **TBD**
     - TBD.

##### A30. Privies
Rusty chain mail curtains conceal a pair of privies, each with a wooden bench set against the back wall. The chutes for these privies descend deep into the mountain, passing just east of area A10 Tool Storage.

##### A31. Urvad Vault
Descending down the staircase, you enter a large room which once housed much wealth of the region. The walls and pillars seem to be expertly carved and seem well preserved, details of dwarves and elemental titans can be discovered by inquisitive eyes. Within the vault itself, it still holds some commodity of wealth along with a large thick solid round stone door which is beautifully made with finecrafted details and in the center four slots, three of which are empty. The fourth housing a Yellow Diamond gem. (Elemental Gem)

If and when all four Urvad Elemental Gems are returned, the door will unlock, opening in four segments as all four sides retract into the wall. Revealing a hallway leading to A32. Maze of the Elements
 - Gem Slots
     - Up / North = Earth
     - Right / East = Water
     -  Down / South = Air
     -  Left / West = Fire

###### **Treasure**
 - **[[+1 Moon Sickle]]**
     - A weapon that belonged to TBD, held here when they were captured.
 - **[[Gloves of Missile Snaring]]**
     - A pair of gloves that belonged to TBD, held here when they were captured.
 - **Money**
     - 🟣**Platinum:** 112 pp 🟡**Gold:** 421 gp 🔵**Silver:** 573 sp 🟤**Copper:** 1,022 cp

##### A32. Maze of the Elements
 [Reference](https://www.youtube.com/watch?v=y-pb1rDSE3M&t=)

Cool riddle to solve this maze: 
Sun sets on eastern horizon 
Like burning fire's glow 
Whilst eagles soar in northern sky 
The air above their home 
The westward mountain's silhouette 
Like earthen dragon's teeth 
Shall bring you to the southward lakes 
Where crystal waters weep.

###### **Treasure**
 - TBD
     - TBD


## Current Events



## History

Several hundred years ago, the Dwarves of Urvad Keep ruled this region of [[Odinys]]. There was a time when the Elves were more prominent and more involved in the outside world. 

During this time, one of the Elves, a woman called [[Solana Valkas]] tried to infiltrate the keep after she had heard of the wealth of Harvard, and the elemental elemental gems they were said to be holding within the vault. However, upon her attempt to take these gems she was discovered and captured. She was held for several days as they awaited for ambassadors of the [[Rhovanara]] Dynasty to come and collect her from their imprisonment. 

However, within this time she tried to escape and forced the guards to defended themselves and try to apprehend her before she escaped. Which ultimately led to her death. After which, after a short time a curse slowly fell upon the keep. Killing those who wronged her, turning them to undead ghouls, which resulted in the fall of Urvad Keep and ultimately [[Meshwich]]. 

The soul 'Solana Valkas' still roams the halls. She curses those who wronged her, still keeping them around to suffer for their wrong doings. In the event of any adventures or looters who make their way into Urvad Keep. She will intimidate them to leave before defending her new home.

## Notes

- Secret Room - A29
    - A hidden room that holds items that belonged to the now fallen Castellan of Urvad Keep, access by a key that is on their Ghoul body.
- Urvad Vault - A31
    - A hidden vault that not only holds the wealth of Urvad, but holds multiple magic items and the remaining wealth.
    - Additionally, there is a large stone door in the wall with 4 slots, 3 empty. One of them hold an [[Elemental Gem]] (Fire) - Which is held in the left slot (Left signifies west, this is important for the puzzle down the line.)
    - When all 4 of Urvad Elemental gems are returned, it will unlock the door and grant access to A32. Maze of the Elements.