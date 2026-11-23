# PharmaTrace Pro

Offline pharmacy management software. No internet needed after download, no watermark, all data stays on your own PC.

## Download

Download `PharmaTrace-Pro-App.zip` from the **Releases** page, unzip it and open the panel you need.

## Three separate panels

| Panel | File | Who uses it | What it can do |
|---|---|---|---|
| Main Admin | `PharmaTrace Admin.html` | Shop owner | Everything: sale, inventory, purchases, parties, reports, employees, margin sheet, profit, audit log, settings |
| Sub Admin | `PharmaTrace SubAdmin.html` | Stock manager | Sale + stock in only. Enters retail price only. Cannot see cost, margin or profit. Cannot edit/delete medicines or touch passwords |
| Sales | `PharmaTrace Sales.html` | Counter staff | Bill at retail price + own sale history |

Each panel has its own login and only accepts its own role. A Sales account cannot open the Admin panel, and Sub Admin cannot enter Admin either. All three panels share the same data on the same PC.

## First run

1. Open `PharmaTrace Admin.html` first and create the main admin account (shop name, your name, Employee ID, password).
2. In **Admin > Employees** create IDs and passwords for Sub Admin and Sales staff.
3. Give each staff member only their own panel file.

## Business rules built in

- Cost is calculated from retail price and margin (default 15%), so staff never enter purchase price.
- 0.5% tax on profit, net profit shown to the owner only.
- Per-medicine margin override, plus a margin sheet that shows the real margin behind every product.
- Loose selling: sell 1, 2, 6, 8 or any number of tablets from a strip or box.
- Full audit log: who logged in, who sold what, who added stock, who changed what.

## Desktop app

Run `1 - Desktop App Banao.ps1` (right click > Run with PowerShell) once to create Desktop and Start Menu shortcuts for all three panels with the app icon.

## Backup

Data is stored inside the browser on that PC. Use **Settings > Download backup** regularly and keep the JSON file safe.

---

All rights reserved. This software is distributed for licensed use only.
