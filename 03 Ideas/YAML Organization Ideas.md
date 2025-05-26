---
tags:
  - "#Status/Blank"
---


# Master MetaData Inputs:

> [!metadata|metadata]- Metadata 
>> [!metadata|metadataoption]- System
>> #### System
>>  |
>> ---|---|
>> **Tags** | `INPUT[Tags][inlineListSuggester:tags]` |
>> **Pronounced** |  `INPUT[textArea:pronounced]` |
>> **Aliases** | `INPUT[list:aliases]` |
>> **Art** | `INPUT[imageSuggester(optionQuery("")):art]` |
>
>> [!metadata|metadataoption]- NPC/Character Information
>> #### NPC/Character Info
>>  |
>> ---|---|
>> **Ancestry** | `INPUT[Ancestry][suggester:ancestry]` |
>> **Heritage** | `INPUT[Heritage][suggester:heritage]` |
>> **Gender** | `INPUT[Gender][:gender]` |
>> **Age** | `INPUT[Age][:age]` |
>> **Alignment** | `INPUT[Alignment][:alignment]` |
>> **Ideals** | `INPUT[textArea:ideals]` |
>> **Flaws** | `INPUT[textArea:flaws]` |
>> **Fears** |  `INPUT[textArea:fears]` |
>> **Mannerisms** |  `INPUT[textArea:mannerisms]` |
>
>> [!metadata|metadataoption]- Party Info
>> #### Party Info
>>  |
>> ---|---|
>> **Party 1 Relation**|`INPUT[PartyRelation][inlineListSuggester:party1relation]`|
>> **Party 1 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group1), useLinks(partial)):party1tie]` |
>> **Party 2 Relation**|`INPUT[PartyRelation][inlineListSuggester:party2relation]`|
>> **Party 2 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group2), useLinks(partial)):party2tie]` |
>> **Party 3 Relation**|`INPUT[PartyRelation][inlineListSuggester:party3relation]`|
>> **Party 3 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group3), useLinks(partial)):party3tie]` |
>> **Party 4 Relation**|`INPUT[PartyRelation][inlineListSuggester:party4relation]`|
>> **Party 4 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group4), useLinks(partial)):party4tie]` |
>> **Party 5 Relation**|`INPUT[PartyRelation][inlineListSuggester:party5relation]`|
>> **Party 5 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group5), useLinks(partial)):party5tie]` |
>> **Party 6 Relation**|`INPUT[PartyRelation][inlineListSuggester:party6relation]`|
>> **Party 6 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group6), useLinks(partial)):party6tie]` |
>> **Traveling With** | `INPUT[inlineListSuggester(optionQuery(#Party AND !"z_Templates"), useLinks(partial)):whichparty]` |
>
>> [!metadata|metadataoption]- Location Information
>> #### Location Information
>>  |
>> ---|---|
>> **Terrain** | `INPUT[Terrain][inlineListSuggester:terrain]` |
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
>
>> [!metadata|metadataoption]- Location Types
>> #### Location Types
>>  |
>> ---|---|
>> **Settlement Type** | `INPUT[SettlementType][inlineListSuggester:settlementtype]` |
>> **District Type** | `INPUT[DistrictType][inlineListSuggester:districttype]` |
>> **POI Type** | `INPUT[POIType][inlineListSuggester:poitype]` |
>> **Tavern Type** | `INPUT[TavernType][inlineListSuggester:taverntype]` |
>> **Lodging Type** | `INPUT[LodgingType][inlineListSuggester:lodgingtype]` |
>> **Shop Type** | `INPUT[ShopType][inlineListSuggester:shoptype]` |

# Dataview For Planes

> [!metadata|galaxies]- Galaxies
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE contains(parentplane, this.file.link) AND contains(tags, "Location/Galaxy")
> SORT file.name ASC
> ```

> [!metadata|starsystems]- StarSystems
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE contains(parentplane, this.file.link) AND contains(tags, "Location/StarSystem")
> SORT file.name ASC
> ```

> [!metadata|planet]- Planets
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE contains(parentplane, this.file.link) AND contains(tags, "Location/Planet")
> SORT file.name ASC
> ```

> [!metadata|geography]- Regions
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentplane, this.file.link) AND contains(tags, "Location/Region")
> SORT file.name ASC
> ```

> [!metadata|county]- Subregions
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentplane, this.file.link) AND contains(tags, "Location/Subregion")
> SORT file.name ASC
> ```

> [!metadata|reaches]- Reaches
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentplane, this.file.link) AND contains(tags, "Location/Reach")
> SORT file.name ASC
> ```

> [!metadata|settlements]- Settlements
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(settlementtype, ", ") AS Type, join(defence, ", ") AS Defences, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentplane, this.file.link) AND contains(tags, "Location/Settlement")
> SORT file.name ASC
> ```

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)", join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentplane, this.file.link) AND contains(tags, "Location/POI")
> SORT tags DESC, poitype ASC, file.name ASC
> ```

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(parentplane, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC
> ```

> [!metadata|entities]- Entities
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(tags, ", ") AS Tags, join(link(parentlocation), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(parentplane, this.file.link) AND contains(tags, "Entity")
> SORT file.name ASC
> ```

# Dataview for Galaxies

> [!metadata|starsystems]- StarSystems
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE contains(parentgalaxy, this.file.link) AND contains(tags, "Location/StarSystem")
> SORT file.name ASC
> ```

> [!metadata|planet]- Planets
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE contains(parentgalaxy, this.file.link) AND contains(tags, "Location/Planet")
> SORT file.name ASC
> ```

> [!metadata|geography]- Regions
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentgalaxy, this.file.link) AND contains(tags, "Location/Region")
> SORT file.name ASC
> ```

> [!metadata|county]- Subregions
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentgalaxy, this.file.link) AND contains(tags, "Location/Subregion")
> SORT file.name ASC
> ```

> [!metadata|reaches]- Reaches
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentgalaxy, this.file.link) AND contains(tags, "Location/Reach")
> SORT file.name ASC
> ```

> [!metadata|settlements]- Settlements
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(settlementtype, ", ") AS Type, join(defence, ", ") AS Defences, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentgalaxy, this.file.link) AND contains(tags, "Location/Settlement")
> SORT file.name ASC
> ```

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)", join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentgalaxy, this.file.link) AND contains(tags, "Location/POI")
> SORT tags DESC, poitype ASC, file.name ASC
> ```

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(parentgalaxy, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC
> ```

> [!metadata|entities]- Entities
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(tags, ", ") AS Tags, join(link(parentlocation), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(parentgalaxy, this.file.link) AND contains(tags, "Entity")
> SORT file.name ASC
> ```

# Dataview for Star Systems

> [!metadata|planet]- Planets
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE contains(parentstarsystem, this.file.link) AND contains(tags, "Location/Planet")
> SORT file.name ASC
> ```

> [!metadata|geography]- Regions
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentstarsystem, this.file.link) AND contains(tags, "Location/Region")
> SORT file.name ASC
> ```

> [!metadata|county]- Subregions
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentstarsystem, this.file.link) AND contains(tags, "Location/Subregion")
> SORT file.name ASC
> ```

> [!metadata|reaches]- Reaches
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentstarsystem, this.file.link) AND contains(tags, "Location/Reach")
> SORT file.name ASC
> ```

> [!metadata|settlements]- Settlements
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(settlementtype, ", ") AS Type, join(defence, ", ") AS Defences, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentstarsystem, this.file.link) AND contains(tags, "Location/Settlement")
> SORT file.name ASC
> ```

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)", join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentstarsystem, this.file.link) AND contains(tags, "Location/POI")
> SORT tags DESC, poitype ASC, file.name ASC
> ```

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(parentstarsystem, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC
> ```

> [!metadata|entities]- Entities
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(tags, ", ") AS Tags, join(link(parentlocation), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(parentstarsystem, this.file.link) AND contains(tags, "Entity")
> SORT file.name ASC
> ```


# Dataview for Planets

> [!metadata|geography]- Regions
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentcontinent, this.file.link) AND contains(tags, "Location/Region")
> SORT file.name ASC
> ```

> [!metadata|county]- Subregions
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentcontinent, this.file.link) AND contains(tags, "Location/Subregion")
> SORT file.name ASC
> ```

> [!metadata|reaches]- Reaches
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentcontinent, this.file.link) AND contains(tags, "Location/Reach")
> SORT file.name ASC
> ```

> [!metadata|settlements]- Settlements
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(settlementtype, ", ") AS Type, join(defence, ", ") AS Defences, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentcontinent, this.file.link) AND contains(tags, "Location/Settlement")
> SORT file.name ASC
> ```

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)", join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentcontinent, this.file.link) AND contains(tags, "Location/POI")
> SORT tags DESC, poitype ASC, file.name ASC
> ```

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(parentcontinent, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC
> ```

> [!metadata|entities]- Entities
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(tags, ", ") AS Tags, join(link(parentlocation), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(parentcontinent, this.file.link) AND contains(tags, "Entity")
> SORT file.name ASC
> ```


# Dataview for Regions

> [!metadata|county]- Subregions
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentregion, this.file.link) AND contains(tags, "Location/Subregion")
> SORT file.name ASC
> ```

> [!metadata|reaches]- Reaches
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentregion, this.file.link) AND contains(tags, "Location/Reach")
> SORT file.name ASC
> ```

> [!metadata|settlements]- Settlements
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(settlementtype, ", ") AS Type, join(defence, ", ") AS Defences, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentregion, this.file.link) AND contains(tags, "Location/Settlement")
> SORT file.name ASC
> ```

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)", join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentregion, this.file.link) AND contains(tags, "Location/POI")
> SORT tags DESC, poitype ASC, file.name ASC
> ```

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(parentregion, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC
> ```

> [!metadata|entities]- Entities
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(tags, ", ") AS Tags, join(link(parentlocation), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(parentregion, this.file.link) AND contains(tags, "Entity")
> SORT file.name ASC
> ```

# Dataview for Subregions

> [!metadata|reaches]- Reaches
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentsubregion, this.file.link) AND contains(tags, "Location/Reach")
> SORT file.name ASC
> ```

> [!metadata|settlements]- Settlements
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(settlementtype, ", ") AS Type, join(defence, ", ") AS Defences, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentsubregion, this.file.link) AND contains(tags, "Location/Settlement")
> SORT file.name ASC
> ```

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)", join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentsubregion, this.file.link) AND contains(tags, "Location/POI")
> SORT tags DESC, poitype ASC, file.name ASC
> ```

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(parentsubregion, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC
> ```

> [!metadata|entities]- Entities
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(tags, ", ") AS Tags, join(link(parentlocation), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(parentsubregion, this.file.link) AND contains(tags, "Entity")
> SORT file.name ASC
> ```

# Dataview for Reaches

> [!metadata|settlements]- Settlements
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(settlementtype, ", ") AS Type, join(defence, ", ") AS Defences, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentreach, this.file.link) AND contains(tags, "Location/Settlement")
> SORT file.name ASC
> ```

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)", join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentreach, this.file.link) AND contains(tags, "Location/POI")
> SORT tags DESC, poitype ASC, file.name ASC
> ```

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(parentreach, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC
> ```

> [!metadata|entities]- Entities
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(tags, ", ") AS Tags, join(link(parentlocation), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(parentreach, this.file.link) AND contains(tags, "Entity")
> SORT file.name ASC
> ```

# Dataview for Settlements

> [!metadata|districts]- Districts
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE contains(parentsettlement, this.file.link) AND contains(tags, "Location/District")
> SORT file.name ASC
> ```

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)", join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentsettlement, this.file.link) AND contains(tags, "Location/POI")
> SORT tags DESC, poitype ASC, file.name ASC
> ```

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(parentsettlement, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC
> ```

> [!metadata|entities]- Entities
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(tags, ", ") AS Tags, join(link(parentlocation), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(parentsettlement, this.file.link) AND contains(tags, "Entity")
> SORT file.name ASC
> ```

# Dataview for Districts

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)", join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentdistrict, this.file.link) AND contains(tags, "Location/POI")
> SORT tags DESC, poitype ASC, file.name ASC
> ```

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(parentdistrict, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC
> ```

> [!metadata|entities]- Entities
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(tags, ", ") AS Tags, join(link(parentlocation), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(parentdistrict, this.file.link) AND contains(tags, "Entity")
> SORT file.name ASC
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









# MetaBind  YAML Structure and Definitions
## `tags`

### Structure Definitions
#### **`Status/` Tag Structure**

|**Tag**|**Definition**|
|---|---|
|`Status/Blank`|File with a canon-compliant name only. No additional content has been added.|
|`Status/Draft`|Basic descriptive content has been added. Establishes identity and theme.|
|`Status/Stubbed`|All direct subordinate entries exist and are at least `Status/Blank`.|
|`Status/Complete`|This entry and **all of its subordinate entries recursively** are complete.|
|`Status/Deprecated`|No longer active canon. Retained for legacy reference or archival purposes.|

#### ** `Group/` Tag Structure**

|**Tag**|**Definition**|
|---|---|
|`Group/Group1`|Canon and game-specific content for campaign Group 1.|
|`Group/Group2`|Canon and game-specific content for campaign Group 2.|
|`Group/Group3`|Canon and game-specific content for campaign Group 3.|
|`Group/Group4`|Canon and game-specific content for campaign Group 4.|
|`Group/Group5`|Canon and game-specific content for campaign Group 5.|
|`Group/Group6`|Canon and game-specific content for campaign Group 6.|
|`Group/Unassigned`|Used for stubbed or global lore entries not yet assigned to a specific group.|

#### **`System/` Tag Structure**
|**Tag**|**Definition**|
|---|---|
|`System/PF2e`|Pathfinder Second Edition (Remastered). Used for rules, mechanics, or content tied to PF2e.|
|`System/DnD`|Dungeons & Dragons 5th Edition (2024). Used for 5e-specific content.|
|`System/SF2e`|Starfinder Second Edition. Used for sci-fi system mechanics and setting content.|
|`System/VtM`|Vampire: The Masquerade 5th Edition. Used for World of Darkness and V5 mechanics or lore.|
|`System/Shadowrun`|Shadowrun. Used for cyberpunk-fantasy crossover content.|
|`System/GURPS`|Generic Universal RolePlaying System. Used for modular or simulation-heavy content.|
|`System/Traveller`|Traveller. Used for classic sci-fi space exploration content.|
|`System/Daggerheart`|Daggerheart. Used for narrative-focused fantasy mechanics and lore.|

#### ** `Location/` Tag Structure**
|**Tag**|**Definition**|
|---|---|
|`Location/Plane`|Dimensional layer—cosmological or metaphysical.|
|`Location/Galaxy`|A large-scale grouping of star systems within a plane.|
|`Location/StarSystem`|A system of stars and their orbiting celestial bodies.|
|`Location/Planet`|Includes planets, moons, stars—any major body in a StarSystem.|
|`Location/Continent`|Large landmasses on a planet's surface.|
|`Location/Region`|Broad thematic or geographical areas within a continent.|
|`Location/Subregion`|More specific subdivisions of a region.|
|`Location/Reach`|Frontier, wilderness, deep sea, asteroid belt, or unexplored deep space.|
|`Location/Settlement`|Inhabited locations: cities, towns, stations, colonies—land-based or orbital.|
|`Location/District`|Subdivisions within settlements or space stations.|
|`Location/POI`|Points of Interest—can exist at any level and be **nested within other POIs**.|

#### ** `Organization/` Tag Structure**

|**Tag**|**Definition**|
|---|---|
|`Organization/Government`|Political or ruling entity with formal authority (e.g., monarchy, city council, planetary senate).|
|`Organization/Religion`|Structured belief systems, divine orders, churches, cults, or theological hierarchies.|
|`Organization/OfficialFaction`|Public or sanctioned group with ideological or mission-based alignment (e.g., royal guard, sanctioned guild).|
|`Organization/SecretFaction`|Covert, illegal, or hidden group with clandestine goals (e.g., rebel cells, black ops, cult cabals).|
|`Organization/Corporation`|Profit-driven entity with economic and/or political influence. Suitable for cyberpunk, sci-fi, or high-fantasy trade syndicates.|
|`Organization/Guild`|Structured artisan, adventuring, or trade collective. Often neutral or semi-political.|
|`Organization/Military`|Standing or formalized armed force tied to a government or cause.|
|`Organization/Order`|Knightly, magical, or scholarly society often with codes, rituals, or rites. Can span Religion, Faction, or Guild roles.|

####  ** `Entity/` Tag Structure**

|**Tag**|**Definition**|
|---|---|
|`Entity`| General tag for all Entities.|
|`Entity/ExtraPlanar`| General tag for all Extra-Planar Entities.|
|`Entity/ExtraPlanar/Deity`|Fully divine beings worshipped and recognized across the multiverse.|
|`Entity/ExtraPlanar/Demigod`|Lesser divine entities—offspring or champions of gods, with limited domains.|
|`Entity/ExtraPlanar/DemonLord`|Abyssal rulers or major chaotic extraplanar forces of evil.|
|`Entity/ExtraPlanar/ArchDevil`|Infernal rulers—lawful evil extraplanar powers commanding legions.|
|`Entity/ExtraPlanar/LegendaryBeing`|Mythic or timeless extraplanar figures not clearly aligned with gods/devils/demons.|
|`Entity/ExtraPlanar/Other`|Any extraplanar entity not defined above (e.g., alien spirits, primordial forces).|
|`Entity/NPC`|General tag for all non-player characters.|
|`Entity/NPC/Active`|Non-player characters with full stat blocks, capable of combat or major action.|
|`Entity/NPC/Static`|Narrative or utility characters without stat blocks (vendors, informants, etc.).|
|`Entity/PlayerCharacter`|Any character controlled by a player in a campaign.|
|`Entity/Party`|A defined group of player characters acting as a campaign party.|
|`Entity/Creature`|Any non-sapient or bestiary-style being, monster, or encounter participant.|
|`Entity/Vehicle`|Sentient or uniquely tracked vehicles (living ships, AI-driven crafts, etc.).|
|`Entity/Hazard`|Traps, environmental dangers, magical anomalies, or persistent environmental threats with mechanical impact.|

####  **`Calendar/` Tag Structure**

|**Tag**|**Definition**|
|---|---|
|`Calendar`|General category for all calendar-based or time-relevant content.|
|`Calendar/Era`|Major historical epochs or ages (e.g., Age of Flame, Post-Rising).|
|`Calendar/Year`|Entries that catalog events or summaries for specific years.|
|`Calendar/Month`|Named months or periods within the in-world calendar system.|
|`Calendar/Day`|Specific day entries or custom daily mechanics (rare, but valuable for detail).|
|`Calendar/Event`|General tag for all event types in the calendar.|
|`Calendar/Event/Recurring`|Holidays, recurring rituals, celestial events, or festivals.|
|`Calendar/Event/Significant`|One-time historic events—wars, ascensions, magical disasters, etc.|
|`Calendar/Event/Prophetic`|Foretold or prophesied events not yet realized in the timeline.|
|`Calendar/Event/Session`|In-world date markers for game sessions or VTT log entries.|


####  **`Lore/` Tag Structure**

|**Tag**|**Definition**|
|---|---|
|`Lore`|General parent tag for all in-world recorded or spoken knowledge.|
|`Lore/Book`|Full-length tomes, codices, or manuscripts.|
|`Lore/Note`|Brief or informal written content—memos, journal entries, annotations.|
|`Lore/Letter`|Personal or official correspondence between characters or factions.|
|`Lore/Map`|Cartographic data, schematics, or treasure maps.|
|`Lore/Rumor`|Unconfirmed spoken information passed between NPCs or cultures.|
|`Lore/Folklore`|Myths, legends, or traditional stories tied to a culture or region.|
|`Lore/Superstition`|Beliefs rooted in fear, luck, or omens.|
|`Lore/CulturalPractice`|Social rituals, customs, taboos, holidays, and community traditions.|
|`Lore/Law`|Documented legal codes, edicts, or jurisdictional rulings.|
|`Lore/Language`|Notes or references to dialects, constructed languages, or scripts.|

 #### **`Item/` Tag Structure**

|**Tag**|**Definition**|
|---|---|
|`Item`|Parent tag for all physical or magical objects used in the world.|
|`Item/Armor`|Defensive bodywear including light, medium, heavy, and magical armor.|
|`Item/Shield`|Worn or wielded shields for parrying or defense.|
|`Item/Weapon`|Offensive gear including melee, ranged, and magical weapons.|
|`Item/Equipment`|General adventuring gear not classified elsewhere.|
|`Item/Consumable`|Single- or limited-use items such as potions, scrolls, grenades.|
|`Item/Container`|Boxes, bags, backpacks, or magical storage items.|
|`Item/Kit`|Bundled tools or themed sets (e.g., healer’s kit, poisoner’s kit).|
|`Item/Tool`|Individual tools used for crafting, survival, or utility.|
|`Item/Relic`|Rare or legendary items with significant historical or religious value.|
|`Item/Treasure`|Objects of high value not designed for direct use—jewels, art, currency.|
|`Item/TradeGood`|Commodities like spices, ore, textiles—used in economic systems or world trade.|

#### **`Notes/` Tag Structure**

|**Tag**|**Definition**|
|---|---|
|`Notes`|Parent tag for GM-facing or campaign planning material.|
|`Notes/Adventure`|Multi-session, major narrative arcs.|
|`Notes/Quest`|Smaller objectives or character-driven tasks.|
|`Notes/Encounter`|Combat or roleplay scenarios designed for player interaction.|
|`Notes/ServiceRequest`|In-world requests for help, jobs, or contracts (e.g., bulletin board tasks).|
|`Notes/SessionNote`|Session recaps, planning notes, or in-world logs.|
|`Notes/Idea`|Concept sketches, undeveloped hooks, or brainstorm fragments.|

### `tags` MetaBind Codeblock
```
INPUT[inlineSelect(
  option(Status/Blank),
  option(Status/Draft),
  option(Status/Stubbed),
  option(Status/Complete),
  option(Status/Deprecated),
  option(Group),
  option(Group/Group1),
  option(Group/Group2),
  option(Group/Group3),
  option(Group/Group4),
  option(Group/Group5),
  option(Group/Group6),
  option(Group/Unassigned),
  option(System),
  option(System/PF2e),
  option(System/DnD),
  option(System/SF2e),
  option(System/VtM),
  option(System/Shadowrun),
  option(System/GURPS),
  option(System/Traveller),
  option(System/Daggerheart),
  option(Location),
  option(Location/Plane),
  option(Location/Galaxy),
  option(Location/StarSystem),
  option(Location/Planet),
  option(Location/Continent),
  option(Location/Region),
  option(Location/Subregion),
  option(Location/Reach),
  option(Location/Settlement),
  option(Location/District),
  option(Location/POI),
  option(Organization),
  option(Organization/Government),
  option(Organization/Religion),
  option(Organization/OfficialFaction),
  option(Organization/SecretFaction),
  option(Organization/Corporation),
  option(Organization/Guild),
  option(Organization/Military),
  option(Organization/Order),
  option(Entity),
  option(Entity/ExtraPlanar),
  option(Entity/ExtraPlanar/Deity),
  option(Entity/ExtraPlanar/Demigod),
  option(Entity/ExtraPlanar/DemonLord),
  option(Entity/ExtraPlanar/ArchDevil),
  option(Entity/ExtraPlanar/LegendaryBeing),
  option(Entity/ExtraPlanar/Other),
  option(Entity/NPC),
  option(Entity/NPC/Active),
  option(Entity/NPC/Static),
  option(Entity/PlayerCharacter),
  option(Entity/Party),
  option(Entity/Creature),
  option(Entity/Vehicle),
  option(Entity/Hazard),
  option(Calendar),
  option(Calendar/Era),
  option(Calendar/Year),
  option(Calendar/Month),
  option(Calendar/Day),
  option(Calendar/Event),
  option(Calendar/Event/Recurring),
  option(Calendar/Event/Significant),
  option(Calendar/Event/Prophetic),
  option(Calendar/Event/Session),
  option(Lore),
  option(Lore/Book),
  option(Lore/Note),
  option(Lore/Letter),
  option(Lore/Map),
  option(Lore/Rumor),
  option(Lore/Folklore),
  option(Lore/Superstition),
  option(Lore/CulturalPractice),
  option(Lore/Law),
  option(Lore/Language),
  option(Item),
  option(Item/Armor),
  option(Item/Shield),
  option(Item/Weapon),
  option(Item/Equipment),
  option(Item/Consumable),
  option(Item/Container),
  option(Item/Kit),
  option(Item/Tool),
  option(Item/Relic),
  option(Item/Treasure),
  option(Item/TradeGood),
  option(Notes),
  option(Notes/Adventure),
  option(Notes/Quest),
  option(Notes/Encounter),
  option(Notes/ServiceRequest),
  option(Notes/SessionNote),
  option(Notes/Idea)
)]
```


