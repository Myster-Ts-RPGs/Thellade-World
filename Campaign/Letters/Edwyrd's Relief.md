---
tags:
  - "#Letter"
sender:
  - "[[Edwyrd Syrel]]"
sentfrom:
  - "[[Mytadell]]"
sentto:
  - "[[Irius Mansion]]"
recipient:
  - "[[Wyn Syrel]]"
sentdate: 06/08/836
deliverydate: 20/08/836
previous:
  - "[[Wyn's Check-In]]"
status: ✅
holder: "[[Wyn Syrel]]"
---

> [!metadata|metadata]- Metadata 
>> [!metadata|metadataoption]- System
>> #### System
>>  |
>> ---|---|
> **Tags** | `INPUT[Tags][inlineListSuggester:tags]` |
>
>> [!metadata|metadataoption]- Info
>> #### Info
>>  |
>> ---|---|
>> **Aliases** | `INPUT[list:aliases]` |
>> **Quick Notes** |  `INPUT[textArea:quicknote]`
>> **Holder** | `INPUT[Null][suggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):holder]` |
>> **Letter Sender** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):sender]` |
>> **Sent From Location** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):sentfrom]` |
>> **Recipient Of Letter** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):recipient]` |
>> **Sent To Location** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):sentto]` |
>> **Cost** |  `INPUT[textArea:servicecost]`
>> **Sent Date** |  `INPUT[textArea:sentdate]` |
>> **Estimated Delivery Date** |  `INPUT[textArea:deliverydate]` |
>> **Previous Letter** | `INPUT[inlineListSuggester(optionQuery(#Letter AND !"z_Templates"), useLinks(partial)):previous]` |
>> **Next Letter** | `INPUT[inlineListSuggester(optionQuery(#Letter AND !"z_Templates"), useLinks(partial)):next]` |
>> **Letter Status** | `INPUT[Status][:status]` |

> [!infobox]
> #### Letter Info
>  |
> ---|---|
> **Sent Date** | `VIEW[{sentdate}]` |
> **Estimated Delivery** | `VIEW[{deliverydate}]` |
> **Status** | `VIEW[{status}]` |
> **Owner** | `VIEW[{holder}][link]` |
> **Previous Letter** | `VIEW[{previous}][link]` |
> **Next Letter** | `VIEW[{next}][link]` |

# **To:** `VIEW[{recipient}][link]`  <span style="font-size: medium">**Location:** `VIEW[{sentto}][link]`</span> 
Dear Wyn,

It warms my heart to receive your letter, and it brings me both joy and concern to hear from you after such a long silence. Your words convey a sense of adventure and peril that you and Vanderin have been through. While I'm relieved to hear that you both are still alive and persevering, I cannot deny the worry that has gripped my heart as I read about the challenges you face.

The tale of Meshwich and the dragon is both awe-inspiring and heartbreaking. To stand against such formidable foes is a testament to your bravery and determination. I mourn for the town's loss but am proud of your efforts to prevent further suffering. Your courage reminds me of your mother, and I know she is proud of you as well.

The journey to resurrect Fen is a noble cause, and I pray to the Gods that they grant you success. Your compassion and determination shine brightly in this endeavour, and it's a testament to the goodness within your heart.

I'm deeply sorry to hear about the toll these trials are taking on your mental well-being and Vanderin's as well. Remember, my child, that you are never alone in facing your challenges. Lean on each other for support, and do not hesitate to seek help from friends. Your bond is strong, and I have faith that you can weather these storms together.

Know that both of you are always in our thoughts and prayers and we eagerly await your next letter.

Stay strong, my dear Finch, and may the Gods watch over you.

With all my love,
Edwyrd Syrel

- **From:** `VIEW[{sender}][link]` <span style="font-size: small">**Location:** `VIEW[{sentfrom}][link]` </span> 

## Notes


