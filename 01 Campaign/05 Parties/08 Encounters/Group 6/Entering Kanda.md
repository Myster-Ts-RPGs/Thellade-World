---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group6"
whichparty: "[[Campaign Group 6]]"
encountertype:
  - Combat
  - Social
  - Escort
locations:
  - "[[01 Campaign/01 World/06 Settlements/The Outcast Isles/Kanda Isles/Kanda.md|Kanda]]"
  - "[[01 Campaign/01 World/08 Points of Interest/04 Temple or Shrine/Lunara/The Radiant Temple.md|The Radiant Temple]]"
  - "[[01 Campaign/01 World/08 Points of Interest/05 Government/Outcast Isles/Kanda Isles/Kanda/The Chancellor's Hall.md|The Chancellor's Hall]]"
  - "[[01 Campaign/01 World/07 Districts/Kanda/Stonebrace Docks.md|Stonebrace Docks]]"
sessionnumber: "08"
title: |
  Entering Kanda
---
> [!infobox]+
> # Summary Data
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
[[Campaign Group 6]] - Session 08 - Entering Kanda

## Encounter-Specific Info

> [!info]- **Combat Encounter Details (Party Flaunts Cult of Orcus in Public or Shows Relics in Public)**
> - Primary Enemies: [[Blackwake Corsair turncoats]], corrupted dockhands, void-touched agent, opportunist bounty crew
> - Enemy Factions: Splinter Blackwake Cell (loyal to the Phantom Admiral), Cult of Orcus sympathizers, freelance contract hunters
> - XP Budget: Moderate to Severe (based on party level; includes 1 elite enemy + multiple minions)
> - Battlefield Description: Tiered dockside causeways, cranes, and vault crates; unstable planks, slick surfaces, and blind corners
> - Boss Mechanics: Void agent channels Verse-echoes; uses relic to summon ephemeral horrors from sea grates; immune to divine healing
> - Environmental Hazards: Shifting crate stacks (Reflex DC 19), crane swings (Delayed Hazard), cursed water flare (Will Save or Stupefied 1)
> - Objectives: Retrieve the relic, silence the party, or capture a key NPC (Malira or Zakka)
> - Special Rewards: 
>   - Rune-burned Coin (key to an unmarked smuggler's vault)  
>   - Cloak of the Tidemarked (once per day: Resist 5 against Force and Necrotic damage for 1 minute)  
>   - Orcus Prayer Scrap (fragment of Verse 4)

> [!info]- **Social Encounter Details (Prime Access to the High Chancellor)**
> - Important NPCs: [[High Chancellor Cedric Thalor]], chamber seneschal, two record scribes, seated Warden observer
> - Factions Involved: [[Kanda High Council]], [[The Voidscourge Hunters]], [[The Order of the Ember Blades]]
> - Goals/Objectives:
>   - Get permission to transport or conceal relic  
>   - Receive protection for Malira or party  
>   - Suppress or manipulate public knowledge of the relic
> - Negotiation Leverage:
>   - The party’s firsthand knowledge of the salted ghost ship attack  
>   - Threat of cultic exposure in Kanda's population  
>   - Proof of manifest irregularities (from Greyash shipment)  
>   - Zarek Tellos’s Corsair ledger page, if shown
> - Risks for Failure:
>   - Official interdiction of the party's movement  
>   - Loss of right to enter Kanda vaults/temples  
>   - Party may be marked for surveillance or soft exile
> - Special Rewards:
>   - Access to restricted vault beneath the Temple of Aurion  
>   - Temporary diplomatic immunity within city walls  
>   - Formal escort to Chapel Quarter’s Deep Channel

> [!info]- **Escort/Protection Encounter Details (Protect [[Captain Grieves]] and Shipment)**
> - VIP or Item to Protect: [[Captain Grieves]] and the shipment that was to be delivered to Kanda
> - Route Details:
>   - Ship docks at [[Stonebrace Docks]]  
>   - Initial inspection checkpoint  
>   - Choice of guarded vault offload or smuggler transfer  
>   - End goal: offload into quarantined containment structure
> - Anticipated Threats:
>   - Cult ambush on dock causeways  
>   - Misidentified guards issuing false orders  
>   - Sea-born relic resonance triggering ward failure
> - Failsafe Plans:
>   - Reroute shipment through Zarek Tellos and Corsair front  
>   - Hand Grieves over as “unaware courier”  
>   - Destroy or drop shipment mid-transfer (risky)
> - Complications Along the Route:
>   - Warden inspection override  
>   - Grieves begins to show signs of relic influence  
>   - Malira and Zakka disagree about exposure risk  

---

## Dialogue Options

### Dockmaster (Ship was not scheduled to arrive here)
- “You’re not on my ledger. That either means you’re lying, or someone’s been paid more than me.”  
- “We’ve got three offload berths open, none of them for unregistered cargo. Who’s your manifest filed through?”  
- “Don’t tell me—another Foggate runner with a ‘sealed relic’? That line’s getting old.”  
- “The High Chancellor’s orders are clear: nothing from the Lambaro Chain lands without inspection. You want dockspace, you wait.”

### City Watch (Directions, Captain under escort, etc.)
- “Escort, huh? Papers say he’s flagged for questioning. Either he walks with you, or you walk nowhere.”  
- “You’ll want to head to Wardspire and file with the Hall. Or don’t. If you're lucky, you'll vanish faster.”  
- “Captain Grieves is the only reason you weren’t boarded at sea. Don’t make us regret that.”  
- “These docks have rules. And eyes. Break one, and the other’ll notice.”

### Captain Grieves (Go along with party, resist party, want to sail, meet Grazkiel)
- “You want to walk me into the lion’s den? Fine. But if I vanish in the next twenty-four, my ledger goes public.”  
- “Kanda’s changed. That city was tense before... now it’s ready to snap.”  
- “You’ve got your dead gods and cursed cargo. I’ve got my ship. Let’s see who sinks first.”  
- “If I sail now, I live. If I stay, I serve. You tell me which one you want.”
- “I trust Grazkiel. Doesn’t say much—but he sees more than he says. And he knows how to keep a ship afloat when everyone else is sinking. That makes him useful.”  
- “He’s already got his scars from this mess. If he wants to throw in with you? You’d be lucky to have him.”  
- “Don’t make the mistake of thinking he’s just another blade. Grazkiel listens to the quiet places...”

### Alenwyn Duskforge (She wants to go to Aurion Temple, need options if party goes elsewhere)
- “My vows are to the light, not the load we carry. I will go to the Temple—whether you walk with me or not.”  
- “If this thing corrupts, we’ll need more than blade and prayer. We’ll need absolution.”  
- “You can hunt your Greyash. I’ll seek the Dawnwardens. Perhaps they still remember mercy.”  
- “And if the Temple closes its doors? Then we’ll know just how deep this rot has run.”  

### Malira Fenj (She wants to go to Lunara Temple, also need option if party goes elsewhere)
- “I heard them again last night. Singing through the crates. It’s stronger near Kanda.”  
- “Lunara’s light sees what lies beneath. If I don’t reach the temple... they’ll find me again.”  
- “Leave me. I’ll find the Radiant Temple myself. I’ve done harder things alone.”  
- “You still don’t understand. It’s not just a relic. It’s a verse—and it’s waiting for a voice.”

### Zakka (Meesus needsus to seesus the Sun King – JarJar Binks Voice)
- “Yous thinkin’ we safe now, huh? Mmmnope! Not if the hymn’s hummin’, not if the eye’s blinkin’.”  
- “Meesus needsus to seesus the Sun King! Bright shiny robes, big chair—he know what to do!”  
- “Mmm... cargo sings still. Bad song. Wet song. Mouth-open song. We don’ like the mouth.”  
- “We walk now? We sneak now? We go-go-go before the watcher hears!”

---

## Quick References

- Showing the relic or speaking of Orcus openly in Kanda will provoke inspection, suspicion, or full confrontation.  
- The Chancellor controls access to high-value sites and dictates which groups may operate in the open.  
- Malira is a relic witness and danger-magnet; Zakka is a Verse-sensitive and a prophetic wildcard.  
- [[Zarek Tellos]] and the [[The Mooring Flagon]] may offer shelter—but at a price.


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
