---
tags:
  - Quest
art: z_Assets/Misc/PlaceholderImage.png
questgiver: []
---

```meta-bind-js-view 
{art} as art {banner} as banner
--- 
if (context.bound.art !== "z_Assets/Misc/PlaceholderImage.png" && context.bound.banner === "on")  { 
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
>> **Art** | `INPUT[imageSuggester(optionQuery("")):art]` |
> **Banner** | `INPUT[toggle(onValue(on), offValue(off)):banner]` |
>
>> [!metadata|metadataoption]- Info
>> #### Info
>>  |
>> ---|---|
>> **Aliases** | `INPUT[list:aliases]` |
>> **Quick Notes** |  `INPUT[textArea:quicknote]`
>> **Questgiver** | `INPUT[inlineListSuggester(optionQuery(#NPC AND !"z_Templates"), useLinks(partial)):questgiver]` |
>> **Adventure** | `INPUT[Null][suggester(optionQuery(#Adventure AND !"z_Templates"), useLinks(partial)):adventure]` |
>> **Status** | `INPUT[Status][:status]` |

> [!infobox]
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> #### Quest Info
>  |
> ---|---|
> **Adventure** | `VIEW[{adventure}][link]` |
> **Questgiver** | `VIEW[{questgiver}][link]` |
> **Status** | `VIEW[{status}]` |

# **`=this.file.name`** 

## Quest Hook
>[!quote]- Who offers the quest, under what pretense, and what is the promised reward?

## Hidden Agenda / Secret Motivation
>[!spoiler]- What isn’t being told? What is the secret twist or deeper plot underneath the quest?

## Overview
### Summary



### Storyline



### Inciting Action



### Resolution



## Acts

### Act 1: `[Act Title]`

**Objective:**  
> Describe the goal of this act.

**Key Locations:**  
- `[[Location Name]]`
- `[[Another Location]]`

**NPCs:**  
- `[[NPC Name]]`: Short description or role.

**Encounters & Challenges:**  
- Encounter: Description  
- Challenge: DC, Skill, Conditions

**Secrets or Clues:**  
- Clue: Detail or hint  
- Secret: Hidden faction goal, etc.

### Act 2: `[Act Title]`

**Objective:**  
> Describe the goal of this act.

**Key Locations:**  
- `[[Location Name]]`
- `[[Another Location]]`

**NPCs:**  
- `[[NPC Name]]`: Short description or role.

**Encounters & Challenges:**  
- Encounter: Description  
- Challenge: DC, Skill, Conditions

**Secrets or Clues:**  
- Clue: Detail or hint  
- Secret: Hidden faction goal, etc.

### Act 3: `[Act Title]`

**Objective:**  
> Describe the goal of this act.

**Key Locations:**  
- `[[Location Name]]`
- `[[Another Location]]`

**NPCs:**  
- `[[NPC Name]]`: Short description or role.

**Encounters & Challenges:**  
- Encounter: Description  
- Challenge: DC, Skill, Conditions

**Secrets or Clues:**  
- Clue: Detail or hint  
- Secret: Hidden faction goal, etc.
### Aftermath & Story Hooks
> [!note]- Consequences or future leads
> Summarize how this quest changes the world or opens future stories.

## Behind the Scenes

### Characters



### Creatures



### Locations



### Random Encounters

### Loot & Rewards

| Item | Description | Value/Effect |
|------|-------------|--------------|
|      |             |              |




## Notes