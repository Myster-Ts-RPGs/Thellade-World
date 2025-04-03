---
tags:
  - "#Character"
  - "#Player"
art: z_Assets/NPCs/GarmulHackshield.png
playedby: Merlin
pronounced: GAR-mull HACK-she-uld
aliases:
  - Sergeant Garmul Hackshield
ancestry: Dwarf
gender: Male
pronouns: He/Him
age: Adult
occupation:
  - Adventurer
condition: Healthy
party1relation: Ally
---

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
>>---|---|
>> **Art** | `INPUT[imageSuggester(optionQuery("")):art]` |
>
>> [!metadata|metadataoption]- Bio
>> #### Bio
>>  |
>>---|---|
>> **Played By** |  `INPUT[textArea:playedby]`
>> **Pronounced** |  `INPUT[textArea:pronounced]`
>> **Aliases** | `INPUT[list:aliases]` |
>> **Ancestry** | `INPUT[Ancestry][suggester:ancestry]` |
>> **Heritage** | `INPUT[Heritage][suggester:heritage]` |
>> **Gender** | `INPUT[Gender][:gender]` |
>> **Pronouns** | `INPUT[Pronouns][:pronouns]`
>> **Age** | `INPUT[Age][:age]` |
>
>> [!metadata|metadataoption]- Info
>> #### Player Info
>>  |
>>---|---|
>> **Occupations** | `INPUT[Occupation][inlineListSuggester:occupation]` |
>> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>> **Religions** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):religion]` |
>> **Owned Locations** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):ownedlocation]` |
>> **Current Location** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |
>> **Which Party** | `INPUT[inlineListSuggester(optionQuery(#Party AND !"z_Templates"), useLinks(partial)):whichparty]` |
>> **Party 1 Relation** | `INPUT[Party1Relation][:party1relation]` |
>> **Condition** | `INPUT[Condition][:condition]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Played By: `VIEW[{playedby}][text]`
> ###### Bio
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Ancestry** | `VIEW[{ancestry}]` |
> **Heritage** | `VIEW[{heritage}]` |
> **Gender** | `VIEW[{gender}]` |
> **Pronouns** | `VIEW[{pronouns}]` |
> **Age** | `VIEW[{age}]` |
> ###### Info
>  |
> ---|---|
> **Occupations** | `VIEW[{occupation}][text]` |
> **Organization** | `VIEW[{organization}][link]` |
> **Religions** | `VIEW[{religion}][link]` |
> **Owned Locations** | `VIEW[{ownedlocation}][link]` |
> **Current Location** | `VIEW[{location}][link]` |
> **Condition** | `VIEW[{condition}]` |

# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!metadata|servicerequests]- Service Requests
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, quicknote AS Notes
> FROM "Campaign"
> WHERE econtains(customer, this.file.link) AND contains(tags, "Service") AND !contains(status, "✅") AND !contains(status, "❌")
> SORT file.name ASC

> [!metadata|letters]- Letters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, quicknote AS Notes
> FROM "Campaign"
> WHERE econtains(holder, this.file.link) AND contains(tags, "Letter")
> SORT file.name ASC

> [!metadata|literature]- Literature
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, quicknote AS Notes
> FROM "Campaign"
> WHERE econtains(holder, this.file.link) AND contains(tags, "Literature")
> SORT file.name ASC

## Ideals
### Loves:

Crafting things, destroying things (particularly with explosives), drink, hard work, good friends

### Hates?

Bullies, lazy people, his contraptions not working, weaklings, people who look at him funny.

## Goals

Find elements to use to build a weapon to win the next war.


## History
### Birth Location

[[Bordan]] 

### Childhood

Happy, pretty much a standard dwarven living out as a blacksmith in the black powder mountains.

### Journey

He was a blacksmith who dealt with normal things from day-to-day but had a penchant for fine work.

He has become a Military man, been assumed dead, and has been roaming around collecting tech for his armour

He is ashamed having failed his mates letting them die, he wants to make armour to make for the Military.

he and Vanderin served in the same band of rebels, they had a decent friendship before the disaster

### Worship

Not really, he would call on gods as needed as any dwarf should as well as respect them, but no zealotry

## Notes

[[Dyrek Revenmar]] (Alive) | Human | Age: 38 | Occupation: Officer in the Army.
- Garmul served under him during the Rebellion. 
- Had to leave men behind during combat for the greater good of his men causing losses but saving some of his men.
- Respects law and order above all else.

[[Leodor Corron]] (Dead) | Human | Age: 20 | Occupation: Soldier
-   Was a friend, spent a lot of time around Vanderin.
-   Left behind and presumed KIA in an ambush before the battle of Onyxdale

[[Vanderin Irius]] (Alive) | Human | Age: 22 | Occupation: Soldier / Mage
- Vanderin was a good friend and shared much time together within the rebellion.
- Vanderin seemed too young to be drafted up in the war and so you too him under your wing.
- During the charge onto Onyxdale, you were slain. Or so Vanderin thought as you both shared a moment before you passed out. Before coming back to consciousness near death as many of the remaining townfolk who were aiding the left behind soldiers were healing you.

[[Thorgrim Ironbeard]] (Alive) | Dwarf | Age 150 | Occupation: Ex Soldier
- Garmul met Thorgrim couple years after Onyxdale. Thorgrim lost his mother due to members of the resistance and is now out for revenge. 
- Garmul met when sniffing around the same location after rumours of a cell surfaced. You both fought each other things the other were a rebel until you discovered you were both there for the same reason.
- Thorgrim now works with Garmul, both looking for rebel cells and removing them.

Garmul has since made it his mission to not only find and create a weapon/ armour to better fight the next war but to also help demolish the remaining rebel cells that still exist out there.