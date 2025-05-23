---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group3"
whichparty: "[[Campaign Group 3]]"
encountertype:
  - Espionage
  - Skill
sessionnumber: "10"
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

> [!info]- **Espionage/Political Maneuvering Encounter Details**
> - Target Organization: [[House Kelthorne]]
> - Infiltration Goals:
>   - Identify where Kelthorne is shifting his agents post-Surge.
>   - Gather proof of his manipulation of Ambervale shipping records and falsified Lustrum Codex references.
>   - Determine who within the City Watch or Civic Courts is shielding his movements.
> - Cover Story:
>   - Party splits into observers: some pose as emissaries or shipping inspectors while others tail agents from Ashgate to Highhold Rise.
>   - A forged mandate of investigation from the Ashen Vanguard (via Commander Feldrum’s approval) may be invoked to gain street access.
> - Risks if Exposed:
>   - Immediate political fallout, risking field authority granted post-Surge.
>   - Reputation loss among neutral noble houses.
>   - Alerting Kelthorne prematurely may cause him to relocate key evidence or trigger a retaliatory attack.
> - Blackmail Material/Secrets:
>   - Ledger fragments linking his estate staff to rerouted Emberheart relic crates.
>   - Whispervault Index showing his name attached to restricted civic edits post-Riot.
>   - Agent sightings near Beacon Vault 4 entrance—too coincidental to ignore.

> [!info]- **Skill Challenge Details**
> - Skills Required:
>   - **Deception (DC 20):** Convincing estate personnel or guards that you belong during passive surveillance or civic walkthroughs.
>   - **Society (DC 21):** Identifying patterns in noble visitation records and shipment authorizations.
>   - **Stealth (DC 19):** Tailing Kelthorne’s messengers through Gullsway without alerting their shadows.
>   - **Diplomacy (DC 20):** Extracting rumors from mid-level nobles sympathetic to Ambervale’s recent political losses.
>   - **Occultism (DC 22):** Spotting and disabling subtle glyph-based surveillance wards used around Kelthorne’s estate.
> - Success Threshold: 3 out of 5 successes
> - Degrees of Failure:
>   - 1 Failure: Minor suspicion raised, Kelthorne begins to deploy misdirection agents.
>   - 2 Failures: One party member is made and must divert attention.
>   - 3 Failures: The party’s involvement leaks to the Kelthorne estate—an active smear campaign begins.
> - Time Constraints:
>   - The entire challenge must be completed over 1–2 in-game days or before the next noble summit at Highhold Rise.
> - Consequences for Success/Failure:
>   - **Success:** 
>     - The party maps Kelthorne’s active agent routes.
>     - Finds proof of civic document tampering.
>     - Uncovers a list of encrypted noble correspondences scheduled to be delivered to the Gilded Parcel.
>   - **Failure:**
>     - Commander Feldrum revokes passive field access to noble-controlled zones.
>     - One ally NPC (TBD) is put under surveillance or temporarily detained for “civic overreach.”

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
