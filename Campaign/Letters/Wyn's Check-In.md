---
tags:
  - "#Letter"
sentdate: 19/07/836
deliverydate: 05/08/836
status: ✅
sentto:
  - "[[Mytadell]]"
sentfrom:
  - "[[Valdian]]"
sender:
  - "[[Wyn Syrel]]"
recipient:
  - "[[Edwyrd Syrel]]"
holder: "[[Edwyrd Syrel]]"
next:
  - "[[Edwyrd's Relief]]"
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
Dear Father,

I hope this letter finds you well and in good health. I wish I could put into words how much I've missed writing to you, but the past few months have been chaotic, to say the least, and it's been nearly impossible to find a moment to sit down and write.

There is so much to share, and I do not know where to begin. The town of Meshwich has seen both tragedy and hope, and it's a story that would take volumes to recount in full. We cleared out an ancient ruin called Urvad Keep to provide safety for the townspeople. Days later, the dragon ravaged the town and showed its true power to us. 

Eventually, the dragon tracked us to the keep, attacked, and then fled before we could do much. With the preparations we have been making we found it the right time to track the dragon to its home in the mountains. Through sheer determination, six of us were able to slay the dragon. While we weren’t able to save the town itself we were able to stop it from spreading its terror further into the realm.

While it may not seem like it, Vanderin and I have been doing our best to stay safe amidst the chaos that has engulfed us. There is not a day that goes by where I don't think about you and Mother, and how your wisdom and love have shaped me into the person I am today.

As I write this letter, I find myself sitting in the Hearth Mother's temple in Valdian, waiting with bated breath for the resurrection of Fen. The process is uncertain, and the outcome is far from guaranteed, but we cannot bear to let her memory fade away. She deserves another chance at life, and I hope the Gods can help the people around me for a change.

While our journey has witnessed moments of success, I must admit that it has also been mentally straining. Coping with these challenges has been a continuous effort on my part. Additionally, Vanderin fights the memories from his time in the war, and I've been trying to offer my support as he confronts his inner demons. I fear I may lose him in the same way I lost (unfinished sentence, letter continues on..)

I’m unsure if you have written to me as Mechwich has been destroyed but I think it is in best interest to send letters to the Irius household for now as I don’t know where I will be tomorrow let alone when this letter arrives to you. I promise to write to you again soon with more details of our adventures and the challenges we've faced. Until then, please give mother a hug for me and know that you guys are always in my thoughts, and I carry your love with me as a source of strength in my adventures.

Your Finch,
Wyn

- **From:** `VIEW[{sender}][link]` <span style="font-size: small">**Location:** `VIEW[{sentfrom}][link]` </span> 

## Notes


