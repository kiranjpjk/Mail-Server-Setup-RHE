#!/bin/bash
cat <<EOL > ~/.muttrc
set from = "your_email@gmail.com"
set realname = "Your Name"
set smtp_url = "smtp://your_email@gmail.com@smtp.gmail.com:587/"
set smtp_pass = "your_app_password"
set folder = "imaps://imap.gmail.com/"
set spoolfile = "+INBOX"
set header_cache = "~/.mutt/cache/headers"
set message_cachedir = "~/.mutt/cache/bodies"
set certificate_file = "~/.mutt/certificates"
EOL

chmod 600 ~/.muttrc
