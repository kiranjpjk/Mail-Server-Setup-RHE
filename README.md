# Mail Server Setup using Red Hat Linux (Postfix, Dovecot, and Mutt)

This project demonstrates how to build and configure a basic mail server on **Red Hat Linux** using open-source tools: **Postfix (MTA)**, **Dovecot (MDA)**, and **Mutt (CLI Mail Client)**. It includes features such as secure email sending, disk usage alerts, and relaying via Gmail SMTP.

## 📚 Report
- Full documentation available in `Mail_Server_Report.pdf`

## 🛠 Tools Used
- Postfix (Mail Transfer Agent)
- Dovecot (Mail Delivery Agent)
- Mutt (Command-Line Mail Client)
- Bash Scripting
- Cron Jobs for monitoring

## 📁 Scripts Included
- `postfix_setup.sh`: Postfix installation & SMTP relay setup
- `dovecot_setup.sh`: Dovecot configuration for IMAP/POP3
- `mutt_config.sh`: Mutt configuration using Gmail SMTP
- `disk_monitor.sh`: Script to monitor disk usage and send alerts
- `interactive_menu.sh`: Terminal menu to send emails and check disk usage interactively

## 📬 Features
- Send mail between local users
- Send mail to external addresses (Gmail/mobile)
- TLS encryption & Gmail App Password authentication
- Disk usage alerts to admin email
- Easy-to-use terminal interface

## ✅ Author
**Jogi Venkata Sai Kiran**  
Reg. No: 42614048  
Cyber Security, Sathyabama University

---
