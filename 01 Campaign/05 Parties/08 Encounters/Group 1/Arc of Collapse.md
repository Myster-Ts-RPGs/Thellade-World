---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group1"
whichparty: "[[Campaign Group 1]]"
sessionnumber: "08"
title: Arc of Collapes
encountertype:
  - Environment
  - Skill
---
> [!infobox]+
> # `=this.group + " - Session " + this.sessionnumber + " - Summary"`
>  |
> ---|---|
> **Session Number** | `INPUT[text:sessionnumber]`|
> **Title**|`INPUT[textArea:title]`|
> **Encounter Type(s)**|`INPUT[EncounterType][inlineListSuggester:encountertype]` |
> **Allies Planned** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):allies]` |
> **Enemies Planned** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):enemies]` |
> **Factions Planned**|`INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):factions]` |
> **Locations Planned** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates")):locations]` |

### Encounter Log: Hex 15 – The Vaultrun Span  
[[Campaign Group 1]] - Session 08 - Arc of Collapse

## Encounter-Specific Info
> [!info]- **Exploration/Environmental Hazard Encounter Details**
> - Terrain Description: Cracked leyline tunnel; mineral pools, broken rail beds, flickering glyph pillars  
> - Natural Hazards: Shifting floor segments, arcane surge fields (random glyph flickers triggering minor spell effects)  
> - Skill Checks Needed:  
>   - Arcana DC 14 – identify surge timing pattern  
>   - Acrobatics DC 13 – jump unstable segments  
>   - Perception DC 15 – locate safe route markings  
> - Environmental Effects: Dim light, humming resonance, occasional tremor  
> - Special Rewards or Discoveries: Stashed Rootcoil supply crate, surge-charged crystal shard (wand focus)

> [!info]- **Skill Challenge Details**
> - Skills Required: Arcana, Acrobatics, Perception, Survival  
> - Success Threshold: 5 out of 7  
> - Degrees of Failure:  
>   - 1–2 Fails: Take minor damage, lose some gear  
>   - 3–4 Fails: Trigger minor surge (e.g. wild magic effect or confusion)  
>   - 5+ Fails: Collapse a route segment; detour to side tunnels (adds travel delay)  
> - Time Constraints: Players must pass through in 10 minutes before a leyline pulse cycle  
> - Consequences for Success/Failure: Success reveals secret Rootcoil markings toward Daggerfall; failure alerts nearby scouts or creatures

---

> [!note]+ Loot – Vaultrun Span Unopened Crates
> Hidden beneath a stone ledge marked in Rootcoil glyph-splice code, the crates are sealed with wax bearing a broken chalice symbol.
>
> **Crate 1 – Courier Relay Tools:**  
> - 1x **Sigil Tuner Rod** (tuned to Daggerfall Hollow leyline anchor; allows rerouting of one linked courier sigil)  
> - 1x **Psionic Binding Pouch** containing:  
>   - 1 false courier sigil  
>   - 1 black wax seal with embedded glyph spike  
>   - 1 scroll case with a burnt route map (partial leyline anchor grid)  
>
> **Crate 2 – Ritual Supplies:**  
> - 3x ritual chalks infused with Deep Dark iron dust  
> - 1x folded **flesh-glyph cloth** (used for sigil seeding)  
> - 1x **mummified hand** tied in root-cord (used in Rootcoil sealing rites)  
>
> **Crate 3 – Aetherglass Cache:**  
> - 5x **Medium Aetherglass Shards** (pale blue, each ~3" long)  
>   - *Use:* Usable as arcane focus components, can amplify leyline pulse rituals, or be sold for 80 gp each to certain underground factions 240 gp each to certain above ground factions  
>
> - 2x **Empty Glyph Vessels** (used for sigil imprinting)  
>
> Each crate is warded with a simple “silent surge” glyph trap (Arcana DC 15 or Perception DC 17 to detect, Disarm DC 13). Failing the disarm triggers a psychic static burst (2d6 psychic, DC 13 INT save for half).




## Quick References

> [!column|2 no-title]
>> [!metadata|characters] Allies
>> `VIEW[{allies}][link]`
>
>> [!metadata|characters] Enemies
>> `VIEW[{enemies}][link]`
>
>> [!metadata|organizations] Factions
>> `VIEW[{factions}][link]`
>
>> [!metadata|location] Locations
>> `VIEW[{locations}][link]`
