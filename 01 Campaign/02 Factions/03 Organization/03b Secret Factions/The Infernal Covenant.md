---
tags:
  - "#Organization"
  - "#Canon"
hq: "[[The Hellfire Vault]]"
organizationstatus:
  - ✅ Active
organizationscope:
  - Regional
art: 90 Assets/Images/Organizations/InfernalCovenant.png
rivals:
  - "[[The Arcane Wardens]]"
  - "[[The Dawnbringers of Lunara]]"
  - "[[The Lumina Guardians]]"
  - "[[The Order of the Ember Blades]]"
  - "[[The Phoenix Assembly]]"
  - "[[The Rift Scholars Collective]]"
  - "[[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Sunfire Heralds]]"
  - "[[The Voidscourge Hunters]]"
aliases:
  - Infernal Covenant
  - Cult of Asmodeus
allies:
  - "[[The Blackwake Corsairs]]"
  - "[[The Red Runners]]"
head:
  - "[[Daelric Voss]]"
pronounced: in-FUR-nuhl COV-en-ant
founded: 02 Sunreach 1 PR
organizationtype:
  - Cult
  - Religious
  - Covenant
location:
  - "[[The Outcast Isles]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Kanda Isles]]"
  - "[[Kanda]]"
  - "[[Glimmershade]]"
  - "[[The Crimson Lexicon]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Lambaro Isles]]"
  - "[[Lambaro]]"
  - "[[Arcspire District]]"
  - "[[The Ember Pact]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mwingu Isles]]"
  - "[[Mwingu]]"
  - "[[Scholar's Ring]]"
  - "[[The Crimson Tribunal]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Middle Isles]]"
  - "[[The Ashen Forge]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Jambito Isles]]"
  - "[[Jambito]]"
  - "[[Deepwall Reach District]]"
  - "[[The Silent Bargain]]"
  - "[[01 Campaign/01 World/04 Subregions/01 Thellade/The Outcast Isles/Mangagoy Isles]]"
  - "[[Mangagoy]]"
  - "[[Infernal Migrant Den]]"
  - "[[The Hellfire Vault]]"
foundedshort: 1.03.02 PR
---

```meta-bind-js-view 
{art} as art {banner} as banner
--- 
if (context.bound.art !== "90 Assets/Images/Misc/PlaceholderImage.png" && context.bound.banner === "on")  { 
    const str = ` ![[${context.bound.art}|banner-fade]]` ;
    return engine.markdown.create(str); 
} else { return ""; }
```

> [!metadata|metadata]- Metadata 
>> [!metadata|metadataoption]- System
>> #### System
>>  |
>> ---|---|
> **Tags** | `INPUT[Tags][inlineListSuggester:tags]` |
>
>> [!metadata|metadataoption]- Art
>> #### Art
>>  |
>> ---|---|
> **Art** | `INPUT[imageSuggester(optionQuery("")):art]` |
> **Banner** | `INPUT[toggle(onValue(on), offValue(off)):banner]` |
>
>> [!metadata|metadataoption]- Info
>> #### Info
>>  |
>> ---|---|
> **Pronounced** |  `INPUT[textArea:pronounced]`
> **Aliases** | `INPUT[list:aliases]` |
> **Founded** | `INPUT[text:founded]` |
> **Founded Short**| `INPUT[text:foundedshort]` |
> **Type** | `INPUT[OrganizationType][inlineListSuggester:organizationtype]` |
> **Status** | `INPUT[OrganizationStatus][inlineListSuggester:organizationstatus]` |
> **Scope** | `INPUT[OrganizationScope][inlineListSuggester:organizationscope]`|
> **Hierarchy** | `INPUT[Null][suggester(optionQuery("Campaign/Organizations/Hierarchies"), useLinks(partial)):hierarchy]` | 
> **Head** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):head]` |
> **Steward** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):steward]` |
> **Parent Organization** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
> **HQ** | `INPUT[Null][suggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):hq]` |
> **Operating Areas** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |
> **Allies** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):allies]` |
> **Rivals** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):rivals]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Founded** | `VIEW[{founded}][text]` |
> **Type** | `VIEW[{organizationtype}][text]` |
> **Status** | `VIEW[{organizationstatus}][text]` |
> **Scope** | `VIEW[{organizationscope}][text]` |
> **Hierarchy** | `VIEW[{hierarchy}][link]` |
> **Head** | `VIEW[{head}][link]` |
> **Steward** | `VIEW[{steward}][link]` |
> **Parent Organization** | `VIEW[{organization}][link]` |
> **HQ** | `VIEW[{hq}][link]` |
> ###### Party
>  |
> ---|---|
> **Party 1 Reputation** | `INPUT[text:party1reputation]` |
> **Party 2 Reputation** | `INPUT[text:party2reputation]` |
> **Party 3 Reputation** | `INPUT[text:party3reputation]` |
> **Party 4 Reputation** | `INPUT[text:party4reputation]` |
> **Party 5 Reputation** | `INPUT[text:party5reputation]` |
> **Party 6 Reputation** | `INPUT[text:party6reputation]` |
# `=this.file.name` <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!metadata|geography]- Region
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(tags, "Region") AND econtains(organization, this.file.link)
> SORT dominion ASC, file.name ASC

> [!metadata|county]- Subregion
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(tags, "Subregion") AND econtains(organization, this.file.link)
> SORT dominion ASC, file.name ASC

> [!metadata|settlements]- Settlements
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, settlementtype AS Type, defence AS Defences, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(tags, "Settlement") AND econtains(organization, this.file.link)
> SORT dominion ASC, file.name ASC

> [!metadata|district]- Districts
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(districttype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(tags, "District") AND econtains(organization, this.file.link)
> SORT districttype ASC, file.name ASC

> [!metadata|location]- Specific Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(location), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(tags, "POI") AND econtains(organization, this.file.link)
> SORT poitype ASC, file.name ASC

> [!metadata|organizations]- Child Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(tags, "Organization") AND econtains(organization, this.file.link)
> SORT organizationtype ASC, file.name ASC

> [!metadata|allies]- Allies
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE econtains(allies, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC

> [!metadata|rivals]- Rivals
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE econtains(rivals, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC

> [!metadata|characters]- Characters
> ```dataview
> TABLE without id file.link AS "Name", condition AS Condition, aliases AS Aliases, join(occupation, ", ") AS "Occupations", link(location) AS "Location"
> FROM "01 Campaign"
> WHERE contains(tags, "Character") AND econtains(organization, this.file.link)
> SORT tags DESC, file.name ASC

## Overview

### Description
> The [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Infernal Covenant|Infernal Covenant]] is a shadowy and ruthless cult devoted to [[Asmodeus]], thriving on absolute order, infernal law, and control through contracts. Unlike their rivals in the [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Black Sepulcher|Black Sepulcher]], they do not seek destruction—but dominion. Viewing themselves as the only bulwark against demonic chaos, they exploit noble alliances, economic systems, and corrupted bureaucracies to ensure infernal supremacy while guarding the magical barrier that imprisons the Abyss below the Isles.

### Oaths
> “Chains bring clarity. Contracts bring peace. Power brings salvation.”

### Mission Statement
> To preserve infernal law and impose dominion over the Outcast Isles by safeguarding the seal that binds the Deep Spiral—while subjugating all opposing forces to Asmodean doctrine.

### Laws
> - Obey the Ninefold Edicts without question.
> - No contract may be violated once sealed by the Crimson Seal.
> - Never reveal the location of [[the Hellfire Vault]].
> - All souls are debt—none are owned, only bound.

### Tenets
> - Order above all.
> - Power must be earned through obedience and pact.
> - Punishment is mercy in disguise.
> - Chaos is the enemy of eternity.

### Prohibitions
> - Forming pacts with abyssal entities.
> - Disclosing infernal rituals to non-initiate mortals.
> - Interfering with the preservation of the barrier without Ninefold approval.
> - Attempting to usurp the authority of the [[Ninefold Court]].

---

## Current Events

- [[Daelric Voss|Lord Inquisitor Voss]] has issued a Crimson Writ authorizing retaliatory actions against [[Campaign Group 4]] for disrupting a Kanda cell.
- [[Heksekonge]], a member of [[Campaign Group 5]], has received an infernal communion from [[Isareth Vael]], suggesting an ascension rite is imminent.
- The [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Infernal Covenant|Infernal Covenant]] has secretly assisted in suppressing Orcus cultist activity beneath [[Lambaro]], likely as part of an infernal transaction.
- Cult cells across [[Mangagoy]], [[Mwingu]], and [[Jambito]] are executing economic destabilization rituals via cursed contracts and soul-bank fraud.
- A dispute within the [[Ninefold Court]] over loyalty to the Last Prophet’s original pact has caused tension between the old guard and reformists.

---

## History

- Founded on **02 Sunreach 1 PR** during the early years of the [[Rising]], immediately following the Prophet of [[01 Campaign/03 Entities/01 Deities/Aurion]]’s betrayal and self-sacrifice to [[Asmodeus]] to empower the seal.
- The cult was formed by disciples of the Last Prophet who deemed law and infernal authority the only viable defense against the Deep Spiral.
- Forged the Crimson Compact—a planar accord that legitimized infernal law across major city-states.
- Directly opposed the [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Black Sepulcher|Black Sepulcher]] during the Maw Awakening attempts beneath [[Lambaro]] and [[Jambito]].
- Established the [[01 Campaign/01 World/08 Points of Interest/04 Temple or Shrine/Asmodeus/The Crimson Lexicon|Crimson Lexicon]] beneath [[Kanda]], using it as a public archive front and secret ritual sanctuary.

---

### Campaign Events

[[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 1|Campaign Group 1]]
- Investigated judiciary corruption tied to [[Vara Elaris|Vara “The Veilborn” Elaris]] in [[Mwingu]].
- Intercepted a cursed contract targeting local magistrates.

[[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 4|Campaign Group 4]]
- Sabotaged a summoning rite conducted at [[The Silent Bargain]] beneath [[Kanda]].
- Recovered a soul-sealed artifact meant for [[Aldros Maerin]].

[[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 5|Campaign Group 5]]
- [[Heksekonge]] received infernal visions and guidance during communion rites.
- Interfered with operations at [[The Ember Pact]] in [[Lambaro]] and unearthed financial links to House [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Marik Kelthorne|Kelthorne]].

---

## Hierarchy

**Supreme Leader:** [[Daelric Voss]] – "The Black Arbiter", final disciple of the Last Prophet. Oversees the preservation of the barrier and absolute Asmodean doctrine.

**The Ninefold Court:**
- [[Veyna Thaloris|"The Crimson Seal"]] – Master of infernal law and soul-contract enforcement.
- [[Aldros Maerin|"The Veilbinder"]] – High Priest, enforcer of doctrine and sacraments.
- [[Toran Drakos|"The Unyielding"]] – Hellknight Commander and militant enforcer of the faith.
- [[Kaelis Valen|"The Iron Tongue"]] – Diplomat and manipulator of noble houses and courts.

**Regional Contacts:**
- [[Marius Valric|"The Shackled King"]] – Kanda: Noble infiltrator reshaping legislation.
- [[Serrik Durnis|"The Crimson Ledger"]] – Lambaro: Soul banker and debt binder.
- [[Vara Elaris|"The Veilborn"]] – Mwingu: Legal illusionist embedded in local judiciary.
- [[Kaelros Varkas|"The Burning Hammer"]] – Middle Isles: Forger of infernal weaponry.
- [[Marcellus Veyne]] – Jambito: Noble patron and smuggler tied to [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Red Runners|Red Runners]].
- [[Malrick Devair]] – Kanda Undercity: Broker of mercenary contracts via Red Runner cells.

---

## Locations

### Primary Hideouts
- [[The Hellfire Vault]] (Kanda Isles – Volcanic Mountain Interior) – True headquarters beneath the Isle’s volcano.
- [[The Crimson Lexicon]] (Kanda > Wardspire District > Archive Tower Sealed Wing)

### Secondary Hideouts
- [[The Ember Pact]] (Lambaro > Market Row > House of Binding Contracts)
- [[The Crimson Tribunal]] (Mwingu > Scholar's Ring > Guild of Magistrates)
- [[The Silent Bargain]] (Kanda > Glimmershade > Estate of Silent Deals)
- [[The Ashen Forge]] (Middle Isles > Smokey Shoals > Infernal Blacksmith’s Temple)

---

## Notes

- **Threat Level:** Extreme. The cult maintains systemic influence over law, finance, and noble society.
- **Speculative Rift:** Growing divide between reformists who see Asmodeus as a means to order and traditionalists who worship him as divine law incarnate.
- **Symbol:** A burning crimson scroll wrapped in black chains with nine-pointed star behind it.
- **Uniforms:** Robes of red-black silk with infernal script. Higher initiates bear iron masks with horn motifs. Clergy wear scorched crimson mantles.

---

### Key Plot Threads

- Execution of soul contracts upon key nobles and regional leaders.
- Negotiations with [[Heksekonge]] to ascend as a factional high priest and emissary.
- Secret preservation of the seal through corrupted divine rituals in the [[Crimson Lexicon]].
- Internal schisms between the Crimson Traditionalists and Pact-Breaking Reformists.

---

### Artifacts and Evidence Found

- Infernal Soul Chains engraved with the [[Ninefold Edicts]].
- Black scrolls signed in soul-blood of nobles.
- Pact Sigils found in [[Lambaro]] financial ledgers.
- Sealed testimonies of corrupted judges in [[Mwingu]].
- “Crimson Testament” – a tome bound in oath-marked hide, recovered beneath the [[Crimson Lexicon]].
