---
InputDCLevel: 23
tags:
  - DCCalculator
amountCoin: 0
PartySize: 4
CoinsCopper: 0
CoinsGold: 0
CoinsSilver: 0
CoinsPlatinum: 0
craftRoll: 0.003
itemType: 2
itemRarity: 2
itemValue: 500
playerLevel: 7
itemLevel: 7
craftProficiency: 1
rushLevel: 0
---

# Calculators

## DC Calculator

**Enter Player Level:** `INPUT[inlineSelect(option(14,Lvl 0 - DC: 14),option(15,Lvl 1 - DC: 15),option(16,Lvl 2 - DC: 16),option(18,Lvl 3 - DC: 18),option(19,Lvl 4 - DC: 19),option(20,Lvl 5 - DC: 20),option(22,Lvl 6 - DC: 22),option(23,Lvl 7 - DC: 23),option(24,Lvl 8 - DC: 24),option(26,Lvl 9 - DC: 26),option(27,Lvl 10 - DC: 27),option(28,Lvl 11 - DC: 28),option(30,Lvl 12 - DC: 30),option(31,Lvl 13 - DC: 31),option(32,Lvl 14 - DC: 32),option(34,Lvl 15 - DC: 34),option(35,Lvl 16 - DC: 35),option(36,Lvl 17 - DC: 36),option(38,Lvl 18 - DC: 38),option(39,Lvl 19 - DC: 39),option(40,Lvl 20 - DC: 40),option(42,Lvl 21 - DC: 42),option(44,Lvl 22 - DC: 44),option(46,Lvl 23 - DC: 46),option(48,Lvl 24 - DC: 48),option(50,Lvl 25 - DC: 50)):InputDCLevel]`

| Challenge Level | DC                        |
| --------------- | ------------------------- |
| Incredibly Easy | `VIEW[{InputDCLevel}-10]` |
| Very Easy       | `VIEW[{InputDCLevel}-5]`  |
| Easy            | `VIEW[{InputDCLevel}-2]`  |
| Normal          | `VIEW[{InputDCLevel}]`    |
| Hard            | `VIEW[{InputDCLevel}+2]`  |
| Very Hard       | `VIEW[{InputDCLevel}+5]`  |
| Incredibly Hard | `VIEW[{InputDCLevel}+10]` |

---

> [!kirk|info] Crafting Info
> 1. The item level must be less than yours
> 2. You must meet the minimum proficiency
>     - Trained: Item Level 0 - 8
>     - Master: Item Level 9 - 15
>     - Legendary: Item Level 16+
> 3. For Alchemical, Magical or Snare crafting, you must have the appropriate feat
> 4. You must have the appropriate tools / workshop
> 5. You must have a formula (recipe / blueprint) for the item you wish to craft. For common items, see the Basic Crafter's Book
> 6. You must have materials worth 50% of the item's value

| Complex Crafting DC and Time Calculator                                                                                 |                                                                                                                
| -------------- |
| **Item Level:** `INPUT[number:itemLevel]` |       
| **Player Level:** `INPUT[number:playerLevel]` _**`VIEW[string({playerLevel}<{itemLevel} ? "Warning: Item level above player level" : "")]`**_|
| **Item Value (gp):** `INPUT[number:itemValue]` **`VIEW[round({itemValue}/2)]` gp** (Value in materials upfront)|
| **Item Type:** `INPUT[inlineSelect(option(0, Consumable), option(2, Permanenet)):itemType]`  **Item Rarity:** `INPUT[inlineSelect(option(0, Common), option(2, Uncommon), option(5, Rare), option(10, Unique)):itemRarity]`|
| **Crafting Proficiency:** `INPUT[inlineSelect(option(1, Trained), option(1.05, Expert), option(1.1, Master), option(1.2, Legendary), showcase):craftProficiency]` _**`VIEW[string({craftProficiency} < 1.1 & {itemLevel} >= 9 ? "Warning: Proficiency too low" : ({craftProficiency} < 1.2 & {itemLevel} >=16 ? "Warning: Proficiency too low" : ""))]`**_ |
| **Rush Setup:** `INPUT[inlineSelect(option(0, No Rush), option(-1, 'Rush Expert (-1 Day)'), option(-2, 'Rush Master (-2 Days)'), option(-3, 'Rush Legendary (-3 Days)')):rushLevel]` |
| **Crafting Setup Time 🕒:** `VIEW[number(((4 + {itemType}) + {rushLevel}) - (({playerLevel}-{itemLevel})>= 3 ? 2 : ({playerLevel}-{itemLevel}>= 1 ? 1 : 0))>=1 ? ((4 + {itemType}) + {rushLevel}) - (({playerLevel}-{itemLevel})>= 3 ? 2 : ({playerLevel}-{itemLevel}>= 1 ? 1 : 0)) : 4)]` `VIEW[string((((4 + {itemType}) + {rushLevel}) - (({playerLevel}-{itemLevel})>= 3 ? 2 : ({playerLevel}-{itemLevel}>= 1 ? 1 : 0)))<1 ? hours : days)]`|
| **Crafting DC:** `VIEW[round(({itemLevel}*1.3) + 14 + {itemRarity}) + ({rushLevel}* -1 *5)]`                                   |
| `INPUT[select(option(1, Critical Success), option(0.003, Success), option(0.002, Failure), option(0.001, Critical Failure)):craftRoll]`|
| `VIEW[({craftRoll} >= 1 ? "Your attempt is successful. Each additional day spent Crafting reduces the materials needed to complete the item by an amout based on your level + 1 and your proficiency rank in Crafting (automatically calculated below)" : ({craftRoll} >= 0.003 ? "Your attempt is successful. Each additional day spent Crafting reduces the materials needed to complete the item by an amount based on your level and your proficiency rank (automatically calculated below)" : ({craftRoll} >= 0.002 ? "You fail to complete the item. You can salvage the raw materials you supplied to their full value. If you want to try again you must start over" : ({craftRoll} <= 0.001 ? "You fail to complete the item. You ruin 10% of the raw materials you supplied, but you can salvage the rest. If you want to try again, you must start over." : ""))))]` `VIEW[string({craftRoll} <= 0.001 ? "Value of materials lost: " : "" )]` **`VIEW[string({craftRoll} <= 0.001 ?  ({itemValue}*0.1) : "")]`** `VIEW[string({craftRoll} <= 0.001 ? " gp" : "")]`|

|  |  |
| --- |
| **Extra Days Spent for Completion:** `INPUT[number:completionDays]` |
| **Rush Completion:** `INPUT[toggle:rushCompletion]` (≥ Expert only)|
| **Balance to Pay 💰:** `VIEW[round(({itemValue}/2) - (((((({playerLevel}+{craftRoll})*15)+(1+({playerLevel}+{craftRoll}))*5) + (1.77^({playerLevel}+{craftRoll}))))*{craftProficiency}*({rushCompletion} ? 2 : 1) * ({completionDays}))/100)]` gp |
| **Amount Saved:** `VIEW[round(((((({playerLevel}+{craftRoll})*15)+(1+({playerLevel}+{craftRoll}))*5) + (1.77^({playerLevel}+{craftRoll}))))*{craftProficiency}*({rushCompletion} ? 2 : 1) * ({completionDays}))]` cp  /  `VIEW[round((((((({playerLevel}+{craftRoll})*15)+(1+({playerLevel}+{craftRoll}))*5) + (1.77^({playerLevel}+{craftRoll}))))*{craftProficiency}*({rushCompletion} ? 2 : 1) * ({completionDays}))/10)]` sp  /  `VIEW[round((((((({playerLevel}+{craftRoll})*15)+(1+({playerLevel}+{craftRoll}))*5) + (1.77^({playerLevel}+{craftRoll}))))*{craftProficiency}*({rushCompletion} ? 2 : 1) * ({completionDays}))/100)]` gp |
| **Flat Check for Rushed Completion:** `dice: 1d20` against DC **`VIEW[number(10 + {itemLevel} - ({craftProficiency} >= 1.2 ? (8+{playerLevel}) : ({craftProficiency} >= 1.1 ? (6+{playerLevel}) : ({craftProficiency} >= 1.05 ? (4+{playerLevel}) : ({craftProficiency} >= 1 ? (2+{playerLevel}) : 0)))))]`** |


| Rushed Crafting Flat Check                                                                                                                                                                                                                                            | Outcome             |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------- |
| Critical Success (≥ `VIEW[number(10 + 10 + {itemLevel} - ({craftProficiency} >= 1.2 ? (8+{playerLevel}) : ({craftProficiency} >= 1.1 ? (6+{playerLevel}) : ({craftProficiency} >= 1.05 ? (4+{playerLevel}) : ({craftProficiency} >= 1 ? (2+{playerLevel}) : 0)))))]`) | Crafting successful |
| Success (≥ `VIEW[number(10 + {itemLevel} - ({craftProficiency} >= 1.2 ? (8+{playerLevel}) : ({craftProficiency} >= 1.1 ? (6+{playerLevel}) : ({craftProficiency} >= 1.05 ? (4+{playerLevel}) : ({craftProficiency} >= 1 ? (2+{playerLevel}) : 0)))))]`)               | Crafting successful |
| Failure (< `VIEW[number(10 + {itemLevel} - ({craftProficiency} >= 1.2 ? (8+{playerLevel}) : ({craftProficiency} >= 1.1 ? (6+{playerLevel}) : ({craftProficiency} >= 1.05 ? (4+{playerLevel}) : ({craftProficiency} >= 1 ? (2+{playerLevel}) : 0)))))]`)               | Quirk               |
| Critical Failure (≤ `VIEW[number(10 - 10 + {itemLevel} - ({craftProficiency} >= 1.2 ? (8+{playerLevel}) : ({craftProficiency} >= 1.1 ? (6+{playerLevel}) : ({craftProficiency} >= 1.05 ? (4+{playerLevel}) : ({craftProficiency} >= 1 ? (2+{playerLevel}) : 0)))))]`) | Ruined or Cursed    |


---
## Currency Calculator

| Party Size                                  |                    Copper                     |                    Silver                     |                    Gold                     |                    Platinum                     |
| ------------------------------------------- | :-------------------------------------------: | :-------------------------------------------: | :-----------------------------------------: | :---------------------------------------------: |
| `INPUT[number(class(nb-mb-css)):PartySize]` | `INPUT[number(class(nb-mb-css)):CoinsCopper]` | `INPUT[number(class(nb-mb-css)):CoinsSilver]` | `INPUT[number(class(nb-mb-css)):CoinsGold]` | `INPUT[number(class(nb-mb-css)):CoinsPlatinum]` |


> [!note | clean no-t]
> 
> ### Conversion Table
> | Type | Copper | Silver | Gold | Platinum |
> |-|:-:|:-:|:-:|:-:|
> | Copper | `VIEW[{CoinsCopper}]` | `VIEW[{CoinsCopper}/10]` | `VIEW[{CoinsCopper}/100]` | `VIEW[{CoinsCopper}/1000]` |
> | Silver |  `VIEW[{CoinsSilver}*10]` | `VIEW[{CoinsSilver}]` | `VIEW[{CoinsSilver}/10]` | `VIEW[{CoinsSilver}/100]` |
> | Gold |  `VIEW[{CoinsGold}*100]` | `VIEW[{CoinsGold}*10]` | `VIEW[{CoinsGold}]` | `VIEW[{CoinsGold}/10]` |
> | Platinum |  `VIEW[{CoinsPlatinum}*1000]` | `VIEW[{CoinsPlatinum}*100]` | `VIEW[{CoinsPlatinum}*10]` | `VIEW[{CoinsPlatinum}]` |

> [!note | clean no-t]
> ###  Division of money  
>  | Denomination  | # | Total Per Player |
> -|:-:|:-:|
> | Copper   | `VIEW[{amountCoin}]` | `VIEW[{amountCoin}/{PartySize}]` |
> | Silver   | `VIEW[round(0.1*{amountCoin}, 2)]` | `VIEW[round({amountCoin}/(10*{PartySize}), 2)]` |
> | Gold     | `VIEW[round(0.01*{amountCoin}, 2)]` | `VIEW[round({amountCoin}/(100*{PartySize}), 2)]` |
> | Platinum | `VIEW[round(0.001*{amountCoin}, 2)]` | `VIEW[round({amountCoin}/(1000*{PartySize}), 2)]` |

`VIEW[{CoinsCopper}+({CoinsSilver}*10)+({CoinsElectrum}*50)+({CoinsGold}*100)+({CoinsPlatinum}*1000)+({CoinsAdamantine}*10000)][math(hidden):amountCoin]`