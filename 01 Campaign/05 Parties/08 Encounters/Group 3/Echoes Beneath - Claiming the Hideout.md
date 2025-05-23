---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group3"
whichparty: "[[Campaign Group 3]]"
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

# Encounter  Overview
`=this.whichparty + " - Session " + this.sessionnumber + " - " + this.title`

## Encounter-Specific Info

> [!info]- **Social Encounter Details**
> - Important NPCs:
>   - [[Commander Kraya Feldrum]] – Facilitates civic transfer authorization but expects justification.
>   - [[Zareth Korrath]] – Vouches for the party’s stabilizing actions during the Embermoon Surge.
>   - [[Warden Draven]] – Reluctantly signs off on the location if convinced it's no longer an active threat zone.
> - Factions Involved:
>   - [[Ashen Vanguard]]
>   - [[Temple of Aurion and Lunara]]
>   - [[Mangagoy City Administration]]
> - Goals/Objectives:
>   - Secure legal and civic approval to claim the abandoned Bleeding Tide hideout beneath [[The Ember Wharf]] as the party’s base.
>   - Address safety, jurisdictional, and political concerns tied to the location’s history.
> - Negotiation Leverage:
>   - Party possesses Ashen Vanguard field clearance post-Surge.
>   - Prior discovery and successful operation against cult agents.
>   - Public perception momentum and recent favor earned from city factions.
> - Risks for Failure:
>   - Party denied access, hideout remains under quarantine or reassigned to Vanguard or Concord.
>   - Access granted but under constant surveillance.
> - Special Rewards:
>   - Official registration of base of operations within Mangagoy.
>   - Renown gain and increased faction recognition.
>   - Ability to install secure storage, ritual space, or scrying wards.

> [!info]- **Secrets Hidden in the Hideout**
> 1. **Old Ritual Scar Layer** (beneath the main storeroom): A severed arcane circle fused into the stone, reacting faintly to divine relics—originally used by Black Sepulcher echo-weavers.
> 2. **Hidden Smuggler Tunnel** (behind the boiler wall): Leads to a forgotten exit behind [[Zeek’s Salvage]], with recent signs of usage—torn parchment with a glyph matching that of the Red-Robed Stranger.
> 3. **Concealed Locker with False Ledger** (found with Thievery or Crafting): Contains an encoded inventory of “Memory Glass Type IV” shipments marked for the Whispervault during the Rising.
> 4. **Bloodstained Mark beneath Loose Floor Plank**: Ritual blood glyph bound to the phrase *“Ash answers ash”*—can be deciphered with Occultism to reveal it was keyed to Beacon 4’s civic resonance.
> 5. **Charred Map of Driftwood Bay’s Understructure**: Marked with three red X’s—one aligns with the reported location of a former Maelthaz study enclave.
> 6. **Whispering Echo** (only audible at night): A passive voice locked in a severed glyph that repeats the phrase: *“She never left. She’s watching the tide.”*
> 7. **Trapdoor to Forgotten Chamber**: Capped with an invisible glyph seal, revealed only under Deimos crescent light—rumored to hold the last bound Echohound of a former Bleeding Tide handler.

## Quick References
> [!column|2 no-title]
>> [!metadata|characters] Allies
>> [[Commander Kraya Feldrum]], [[Zareth Korrath]], [[Warden Draven]]
>
>> [!metadata|organizations] Factions
>> [[Ashen Vanguard]], [[Temple of Aurion and Lunara]], [[The Bleeding Tide]]
>
>> [!metadata|location] Locations
>> [[The Ember Wharf]], Sewer Warehouse beneath Docks



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
