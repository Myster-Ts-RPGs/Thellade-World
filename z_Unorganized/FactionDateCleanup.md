## Faction Date Cleanup
You are to provide a 6 column table similar to:

Example Table (Not Canon)

 Faction Name | Founded (YAML)| FoundedShort (YAML) | Canonical Month | Fixed Founded | Fixed Short 
---|---|---|---|---|---
The Ewoks | 13 Sunrise -13 PR | ❌ | Sunreach | 13 Sunreach -13 PR | -13.03.13 PR
The Sith | 12 Empire 122 PR | 122.03.12 PR | Emberwake | 12 Emberwake 122 PR | 122.04.12 PR
The Alliance | 15 Sunreach 213 PR | ❌ | ✅ | ✅ | 213.03.15 PR


### ✅ **Step-by-Step Instructions**

#### 1. **Faction Name**

- Extract the full file name, including the article “The”, **before** the `.md` extension.
    - **Example Filename:** `The Blazing Pledge.md`
    - **Faction Name:** `The Blazing Pledge`

#### 2. **Founded YAML**

- Extract the `founded:` field in the YAML frontmatter of the markdown file.
    - This should be a string in the form: `DD Month YYYY ERA` (e.g., `15 Frostfall -2 PR`).
    - If not present put a Red X in the column

#### 3. **FoundedShort YAML**

- Extract the `foundedshort:` field in the YAML frontmatter of the markdown file.
    - This should be a string in the form: `DD Month YYYY ERA` (e.g., `15 Frostfall -2 PR`).
    - If not present put a Red X in the column

#### 4.  **Canonical Month **

- Located the Month within the founded: YAML you already extracted
- If the **month name is not one of the following** canonical months, replace it with the closest **valid** month 
**Canonical Month Names:**
    - Dawnmarch
    - Blossomveil
    - Sunreach
    - Emberwake
    - Harvestshade
    - Frostfall
    - Nightveil
    - Stardrift
- If the **month name was one of the canonical months** put a green check

#### 5. **Fixed Founded**
- If the orginal `founded:` was canonically correct, put a green check
- If the **month name was not one of the following** canonical months, replace it with the month listed in Canonical Month **while keeping the day and year the same**:

#### 3. **Fixed Short**
- If Fixed Founded was a Green Check
	- If  `foundedshort:` appeared in the YAML, verify it matches the short format (`YYYY.MM.DD ERA`) of the YAML `founded:` long format (`DD Month YYYY ERA` ) Using **two-digit month numbers** based on the following mapping:
		    
|Month|Number|
|---|---|
|Dawnmarch|01|
|Blossomveil|02|
|Sunreach|03|
|Emberwake|04|
|Harvestshade|05|
|Frostfall|06|
|Nightveil|07|
|Stardrift|08|
- Located the `foundedshort:` field in the YAML frontmatter of the markdown file. 
	- If it exists and is not blank:
		- Verify the short date `YYYY.MM.DD ERA` format matches the same as the founded date `DD Month YYYY ERA` 
	- If it does not exist or if it is blank:
		- Convert the **corrected** `Founded Long` value into the canonical short date format: `YYYY.MM.DD ERA`
		    - Use **two-digit month numbers** based on the following mapping:
		    
|Month|Number|
|---|---|
|Dawnmarch|01|
|Blossomveil|02|
|Sunreach|03|
|Emberwake|04|
|Harvestshade|05|
|Frostfall|06|
|Nightveil|07|
|Stardrift|08|
			- Keep the **year** and **day** exactly as found in the `Founded Long` (including negative years if Pre-Rising).
				- **Example:**  
			    `15 Frostfall -2 PR` ⟶ `-2.06.15 PR`
- Otherwise (there is a date in Founded Fixed)
	- Convert the **corrected** "Founded Fixed" value into the canonical short date format: `YYYY.MM.DD ERA`
		    - Use **two-digit month numbers** based on the following mapping:
		    
|Month|Number|
|---|---|
|Dawnmarch|01|
|Blossomveil|02|
|Sunreach|03|
|Emberwake|04|
|Harvestshade|05|
|Frostfall|06|
|Nightveil|07|
|Stardrift|08|
	- Keep the **year** and **day** exactly as found in the `Founded Long` (including negative years if Pre-Rising).
		- **Example:**  
		`15 Frostfall -2 PR` ⟶ `-2.06.15 PR`