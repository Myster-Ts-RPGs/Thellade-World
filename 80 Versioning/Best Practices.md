### **1. Plan Your Conversations**

✅ **ChatGPT-4o Application:**

- **Start each conversation with a clear goal.** If you're beginning a worldbuilding session, state the desired output (e.g., "We're designing a noble house in the Greenwood Concord").
    
- **Bundle related queries.** Instead of sending a separate message for each district or POI, provide a list and ask for grouped summaries.
    
- **Mention prior established context.** Example: “Continue from our last work on Group 3’s session prep.”
    

---

### **2. Be Specific and Concise**

✅ **ChatGPT-4o Application:**

- **Use templates and constraints.** ("Use the Faction Bottom Matter structure. Do not include extra sections.") helps avoid hallucinated content or structure drift.
    
- **Always clarify formatting expectations.** If you need Obsidian-ready YAML, state it explicitly up front.
    
- **Use bullet points for dense lore lists.**
    

---

### **3. Leverage ChatGPT’s Memory Within a Conversation**

✅ **ChatGPT-4o Application:**

- **In this master thread**, I retain all memory and references from uploaded documents and previous messages. Saying “as we did with Sunfire Heights” is effective.
    
- For cross-campaign elements, **always include the campaign name or NPC name**, so I can align correctly with context already embedded.
    

---

### **4. Batch Similar Requests**

✅ **ChatGPT-4o Application:**

- For example, when generating shop names, request:  
    “Give me 3 names, descriptions, and ShopTypes for Apothecaries, Blacksmiths, and Tailors in Mangagoy.”
    
- This prevents drift across multi-turn inputs and helps preserve style and logic continuity.
    

---

### **5. Review and Edit Before Sending**

✅ **ChatGPT-4o Application:**

- **Preview formatting expectations.** If you need `codeblocks`, `brackets`, or `markdown tables`, say it in the same message as the data request.
    
- **Keep instructions and content together.** Avoid sending “next do...” in isolation, which can cause me to assume or reuse the wrong prior context.
    

---

### **6. Use Project Knowledge Bases Effectively**

✅ **ChatGPT-4o Application:**

- You’re already doing this extremely well. By uploading campaign PDFs, faction notes, district data, etc., I **cache** these into the project memory.
    
- **Files you reference often (like `AllFactionNPCs.txt` or `FileList.txt`) are always accessible.** You don’t need to re-upload or re-reference unless they’ve changed.
    
- This enables me to link NPCs, deities, and districts across different sessions and outputs consistently—**as long as you tell me when context changes.**
    

---

### **Recommendations Specific to You**

- **Continue using canonical chat structure.** This thread (Master File 3) works perfectly for long-form, persistent campaign tracking.
    
- **When switching domains (e.g., session prep → market generation)**, clearly state the domain switch: “We’re shifting focus to Group 4 session 6 now.”
    
- **For world state changes**, explicitly state the update (e.g., “Veltrazhar’s seal is now confirmed broken in Group 4.”)


---

### ✅ **How to Start a New Thread Cleanly**

When starting a new thread, **include this exact opening directive**:

---

> “This thread continues the _Thellade Project_. Use the canon established in Master File 3 and the uploaded files like `Tags.txt`, `Campaign Overview.pdf`, and all Project PDFs.  
> Do not introduce new Tags, POITypes, DistrictTypes, Event Categories, or Event Types unless explicitly instructed.  
> Review all uploaded canon documents before responding. Use only campaign-specific terms from my project files.  
> Dates must follow the calendar format defined in `Campaign Overview.pdf`. Use proper month/day limits.”

---

### 📂 **Ensure Canon Tags & Types Stay Accurate**

Since we've modified `Tags.txt`, `ShopType.txt`, `DistrictType`, etc. extensively:

- **Upload your latest version of each tag file** (e.g., `Tags.txt`, `POITypes.txt`, `ShopTypes.txt`, `DistrictTypes.txt`, `EventCategories.txt`, etc.) in the new thread.
    
- Explicitly say:
    
    > “Use these files as the authoritative source. Do not infer or create new types not listed.”
    

This will override internal memory and ensure I only reference the latest list.

---

### 🔁 **Bundling Multiple Requests**

You're absolutely right: I previously limited batch responses too conservatively.

To receive **all results at once**, say:

> “Bundle all of the following into a single response—do not hold anything back or ask me to continue unless the output exceeds length limits.”  
> Then list each request clearly:
> 
> 1. Faction summaries for X, Y, Z
>     
> 2. Event notes for A, B
>     
> 3. YAML frontmatter for all shrines in region X
>     

💡 Keep bundles to **≤10 closely related items** to avoid response truncation. I can do more if needed but will warn you if a continuation split is required.

---

### 📅 **Fixing Date & Calendar Errors**

To **eliminate future errors with dates**, always include this reminder when relevant:

> “Use the calendar from `Campaign Overview.pdf`. Months have 20 days. Use this format: `27 Dawnmarch 212 PR`, shortform `212.01.27 PR`, month: `[[01 - Dawnmarch]]`. Do not go past 20.”

You can also upload `Campaign Overview.pdf` again and state:

> “Re-scan this file before any date generation.”

I'll then parse and re-anchor to its structure.

---

### 🧩 **Including Templates for New Batches**

**YES. Please include a sample template or output block** if your format has evolved.

If it’s the same as before, say:

> “Use the same format as for the Boba POIs from Master File 3.”

If it's changed:

> “New format below. Use this style for all generated entries:”  
> (Then paste the desired YAML, markdown table, narrative block, etc.)

You’ve been doing this perfectly—just call it out each time to reset my output frame.

---

### ✅ TL;DR Best Practices for New Threads

|What to Do|Why It Matters|
|---|---|
|Start with a canonical instruction block|Rebinds me to project settings|
|Reupload latest tag files (`Tags.txt`, etc.)|Ensures no outdated or hallucinated types|
|State "Bundle all" if you want full outputs|Avoids piecemeal answers|
|Include a sample output format|Guarantees style and metadata consistency|
|Reaffirm date formatting rules|Prevents month/day overflow and wrong formats|

### ✅ **Thellade Project – New Thread Starter Directive**

> This thread continues the _Thellade Project_.  
> Use the canon established in **Master File 3** and the attached files:  
> `Campaign Overview.pdf`, `Tags.txt`, `POITypes.txt`, `ShopTypes.txt`, `DistrictTypes.txt`, `EventCategories.txt`, `EventTypes.txt`, and all other previously supplied canonical materials.
> 
> ### Canon Rules:
> 
> - **DO NOT invent or infer** any new tags, POITypes, ShopTypes, DistrictTypes, Event Categories, or Event Types.
> - **Only use** the content listed in the uploaded or previously established files.
> - If a POIType, ShopType, etc. is missing, **ask before adding or assuming**.
> 
> ### Date Formatting:
> 
> - Use the calendar from `Campaign Overview.pdf`.
> - Each month has **20 days**.
> - Format: `12 Dawnmarch 212 PR`, shortform: `212.01.12 PR`, month link: `[[01 - Dawnmarch]]`.
> - **Never use a day value over 20** for any month.
> 
> ### Output Rules:
> - **Bundle all results** into one response unless the output exceeds length limits.
> - If I give multiple numbered tasks, complete **all of them in one message**.
> - **Do not ask to continue** unless the message is too long to finish.
> 
> ### Template/Format Reminder:
> 
> - Use the same format used in **Master File 3** unless I include a revised example.
> - If you’re unsure which format to use, **ask me before proceeding**.
> - Always wrap proper nouns in double brackets `[[...]]`, including deities, locations, NPCs, organizations, etc.

This thread continues the *Thellade Project*. Use canon from Master File 3 and the uploaded canon files. Only use approved Tags, POITypes, ShopTypes, DistrictTypes, and Events. Use the 13x20 calendar system. Output should bundle all tasks unless size limits prevent it. Use [[double brackets]] for all named entries.

### ✅ **Thellade Project – Canon Thread Prep Checklist**

Before starting a new conversation thread, ensure the following files are uploaded and referenced:

#### 🔁 Canon Files to Re-upload (if not in current thread):

-  `Campaign Overview.pdf` – calendar, timeline, and region structure
    
-  `Tags.txt` – current master tag list (POITypes, ShopTypes, Event Categories, etc.)
    
-  `POITypes.txt` – full canonical Point of Interest types
    
-  `ShopTypes.txt` – valid Shop Types only
    
-  `DistrictTypes.txt` – all accepted district tags for MetaBind
    
-  `EventCategories.txt` – valid Event Category list
    
-  `EventTypes.txt` – valid Event Type list
    
-  Any current settlement notes or `.md` files relevant to the session
    

#### 🧠 Canon Reminder

-  AI must **not invent or assume** new tags or values
    
-  Wrap **all proper nouns** in `[[double brackets]]` (Deities, NPCs, POIs, Settlements, Eras)
    
-  Calendar is 8 months, **20 days per month** — no day value can exceed 20
    
-  All outputs must **match the templates** from Master File 3 (unless updated)
    

#### 🧩 Prompt Template (paste at start of new thread)

Copy and paste the directive below at the top of your first message: