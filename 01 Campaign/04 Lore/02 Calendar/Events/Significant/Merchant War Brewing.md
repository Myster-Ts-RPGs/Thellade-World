---
tags:
  - "#Event"
  - "#TODO"
calendarlink: https://app.fantasy-calendar.com/calendars/eef4bc8ce5816a8ef752d35b7e4cfd4d
eventcategory: Secular
eventtype: Significant
aliases:
  - Merchant War Brewing
  - Merchant Tensions in Boba
startdate: 03 Dawnmarch 212 PR
startdateshort: 212.03.03 PR
enddate: 06 Dawnmarch 212 PR
enddateshort: 212.03.06 PR
monthofoccurrence:
  - "[[01 - Dawnmarch]]"
yearofoccurrence:
  - "[[212]]"
location:
  - "[[Boba]]"
---

> [!metadata|metadata]- Metadata 
>> [!metadata|metadataoption]- System
>> #### System
>>  |
>> ---|---|
> **Tags** | `INPUT[Tags][inlineListSuggester:tags]` |
>
>> [!metadata|metadataoption]- Info
>> #### Info
>>  |
>> ---|---|
>> **Aliases** | `INPUT[list:aliases]` |
>> **Category** | `INPUT[EventCategory][:eventcategory]` |
>> **Type** | `INPUT[EventType][:eventtype]` |
>> **Start Date** |  `INPUT[text:startdate]` |
>> **Start Date** |  `INPUT[text:startdateshort]` |
>> **End Date** |  `INPUT[text:enddate]` |
>> **End Date Short ** |  `INPUT[text:enddateshort]` |
>> **Month of Occurrence** | `INPUT[inlineListSuggester(optionQuery(#Month AND !"z_Templates"), useLinks(partial)):monthofoccurrence]` |
>> **Year of Occurrence** | `INPUT[inlineListSuggester(optionQuery(#Year AND !"z_Templates"), useLinks(partial)):yearofoccurrence]` |
>> **Location** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |
>> **Calendar Link** |  `INPUT[textArea:calendarlink]` |

> [!infobox]
> #### Event Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}]` |
> **Category** | `VIEW[{eventcategory}]` |
> **Type** | `VIEW[{eventtype}]` |
> **Start Date** | `VIEW[{startdate}]` |
> **End Date** | `VIEW[{enddate}]` |
> **Location** | `VIEW[{location}][link]` |
> **Website** | `VIEW[\[Calendar Link\]({calendarlink})][text(renderMarkdown)]` |

# `=this.file.name`

> [!column|3 no-title]
>> [!metadata|characters] People
>> ```dataview
LIST
FROM outgoing([[]])
WHERE econtains(tags,"#Character")
SORT file.name ASC
>
>> [!metadata|location] Locations
>>  ```dataview
LIST
FROM outgoing([[]])
WHERE econtains(tags,"#Location")
SORT file.name ASC
>
>> [!metadata|misc] Misc
>>  ```dataview
LIST
FROM outgoing([[]])
WHERE !econtains(tags,"#Location") OR econtains(tags,"#Character")
SORT file.name ASC

## Overview

> Growing tensions between [[the Emberheart Traders]] and multiple independent merchant interests in [[Boba]] have sparked rumors of an impending economic conflict. Following a series of sabotaged shipments, backroom trades, and aggressive price manipulations during the early days of Dawnmarch 212 PR, the city’s markets are strained and the [[Gilded Strand]] simmers with unrest. Governor [[Elara Virelan]] has attempted mediation, but her neutrality is questioned due to past dealings with the Emberhearts.

> The escalating strife has drawn attention from other factions, including [[the Silver Chain]], who are rumored to be stoking tensions for their own gain. Meanwhile, local artisans, small guilds, and out-of-town investors face increasing pressure to pick sides or risk losing trade routes entirely. The outcome may reshape who controls access to arcane goods, Pre-Rising relics, and rare commodities across the [[Kanda Isles]].

> This event marks a pivotal shift in the city’s balance of power, and parties traveling through Boba may find themselves pulled into merchant rivalries or hired to protect vulnerable shipments—or sabotage them.

## Notes

- Connections to the sabotage of Emberheart cargo hinted at in Group 3’s Mangagoy session logs.
- Influences NPCs in the [[Gilded Strand]] and [[Amberveil Market]].
- Linked to planned future economic fallout event in [[Sunreach]].
