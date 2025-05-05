---
tags:
  - "#Event"
  - "#TODO"
calendarlink: https://app.fantasy-calendar.com/calendars/eef4bc8ce5816a8ef752d35b7e4cfd4d
eventcategory: Historical
eventtype: Significant
enddate: 20 Harvestshade -62 PR
startdate: 01 Harvestshade -62 PR
startdateshort: -62.05.01 PR
enddateshort: -62.05.20 PR
monthofoccurrence:
  - "[[05 - Harvestshade]]"
location:
  - "[[Thellade]]"
  - "[[The Outcast Isles]]"
yearofoccurrence:
  - "[[-62]]"
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
>> **End Date Short * |  `INPUT[text:enddateshort]` |
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
Minor daemonic incursions began to manifest across Thellade through unstable planar rifts. These early appearances were scattered and erratic—isolated cult activity, distorted fauna, and energy leaks. Though initially downplayed by most authorities, these signs marked the first crack in the veil between Thellade and the Deep Spiral.

## Notes
Earliest known signs of the Rising. Later classified as prelude-stage anomalies by Sunfire Tower analysts.

