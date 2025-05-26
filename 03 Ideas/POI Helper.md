```base
views:
  - type: table
    name: Table
    filters:
      and:
        - contains(tags, "#Location/POI")
        - not(empty(property.parentregion))
        - empty(property.parentsubregion)
    order:
      - file.name
      - location
      - parentdistrict
      - parentsettlement
      - parentsubregion
      - parentregion
      - parentcontinent
      - parentplanet
    sort:
      - column: property.location
        direction: ASC
    columnSize:
      property.location: 584
      property.parentsettlement: 184

```