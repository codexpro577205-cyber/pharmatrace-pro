PharmaTrace Pro - 3 PANELS (offline pharmacy software)
======================================================

Is folder mein 3 alag alag programs hain. Teeno ek hi data use karte hain
(usi PC par), lekin koi chhota panel bade panel mein apne aap nahi ja sakta.

  PharmaTrace Admin.html      -> MAIN ADMIN (aap / malik)
  PharmaTrace SubAdmin.html   -> SUB ADMIN (stock in karne wala)
  PharmaTrace Sales.html      -> SALES (sirf bill banane wala)


1) SAB SE PEHLE
   "PharmaTrace Admin.html" kholo. Pehli dafa setup aayega:
   dukaan ka naam, aap ka naam, Employee ID aur password.
   Ye password sirf aap ke paas ho. Setup sirf Admin panel se hota hai.

2) ASLI APP KI TARAH (apni window, apna icon) - ek dafa ka kaam
   "1 - Desktop App Banao.ps1" par RIGHT CLICK -> "Run with PowerShell"
   Desktop par 3 icons ban jayenge. Aage unhi se kholo.

   Agar error aaye "running scripts is disabled":
   file par right click -> Properties -> neeche "Unblock" tick -> OK -> dobara try.

3) TEEN PANEL - KAUN KYA KAR SAKTA HAI
   ADMIN (aap):
     - Sab kuch: dashboard, bill, inventory, purchases, parties, reports, settings
     - Admin Panel: Employees (ID + password banana/block karna), Margin Sheet,
       Profit (kis ne kitna becha), Audit Log (har kaam ka record)
     - Har medicine ka margin % alag set kar sakte hain
     - "Asli cost" daal kar asli margin bhi dekh sakte hain - sirf aap ko dikhta hai

   SUB ADMIN:
     - Login apne Employee ID + password se (password sirf Admin banata hai)
     - Sale kar sakta hai + stock in kar sakta hai
     - Sirf retail price likhta hai, margin software khud 15% se nikalta hai
     - Cost, margin, profit NAHI dekh sakta
     - Inventory minus / medicine delete / password change NAHI kar sakta

   SALES:
     - Sirf bill banata hai (retail price par) + apni sale history dekh sakta hai
     - Baqi kuch nahi

   Note: Admin ke credentials Sales panel mein daalne se bhi login nahi hoga.
   Har panel sirf apne role ka account qubool karta hai.

4) HISAAB
   Cost = retail x (1 - margin%)     (default margin 15%)
   Munafa = sale - cost
   Tax = munafe par 0.5%
   Net profit = munafa - tax

5) LOOSE GOLI
   Har medicine mein: unit (Tablet), pack ka naam (Strip), pack mein kitni goli,
   aur pack price (optional). Sale mein 1, 2, 6, 8, 13 - jo chahiye bech sakte hain.
   Cart khud dikhata hai "1 Strip + 3 Tablet".

6) DATA KAHAN HAI
   Sab data isi PC ke browser ke andar (koi internet nahi).
   Admin -> Settings -> "Download backup" se JSON file banao, USB/Drive par rakho.
   Browser data clear karne se sab chala jayega - backup zaroori hai.

7) ASSISTANT
   Har panel mein "Assistant" tab hai - 100% offline chatbot.
   Software ke baare mein sawal, aur seedha kaam:
   "aaj ki sale", "Panadol ka stock", "low stock", "backup lo",
   "Panadol ki 2 strip cart me dalo".

Zaroori: teeno panel ek hi browser (Edge/Chrome) se kholo, warna data alag dikhega.
