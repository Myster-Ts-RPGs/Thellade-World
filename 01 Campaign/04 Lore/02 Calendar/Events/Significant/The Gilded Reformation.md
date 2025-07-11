---
tags:
  - "#Event"
  - "#Canon"
calendarlink: https://app.fantasy-calendar.com/calendars/ef4bc8ce5816a8ef752d35b7e4cfd4d
eventcategory: Political
eventtype: Significant
startdate: 15 Frostfall 12 PR
enddate: 03 Dawnmarch 13 PR
startdateshort: 0012.06.15 PR
enddateshort: 0013.01.03 PR
monthofoccurrence:
  - "[[01 - Dawnmarch]]"
location:
  - "[[OneNote/Crossroads2025/Project 1 Archive/BobaNotes]]"
  - "[[The Verdant Accord Forum]]"
yearofoccurrence:
  - "[[13]]"
yearnumeric: 13
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
>> **Year Numeric**|`INPUT[number:yearnumeric]`|
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

Brokered by [[the Eternal Concord]], rival guilds and noble houses agreed to end violent street wars and codify merchant law. Negotiations held at [[the Verdant Accord Forum]] cemented the city’s new merchant codes and judicial practices. This catalyzed the formation of modern [[OneNote/Crossroads2025/Project 1 Archive/BobaNotes]]’s trade governance.. The Accord catalyzed Boba's rise as a structured trade capital.



## Notes

