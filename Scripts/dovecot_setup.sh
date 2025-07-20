#!/bin/bash
sudo yum install dovecot -y

sudo tee /etc/dovecot/dovecot.conf > /dev/null <<EOL
protocols = imap pop3 lmtp
mail_location = maildir:~/Maildir
userdb {
  driver = passwd
}
passdb {
  driver = pam
}
EOL

sudo systemctl restart dovecot
sudo systemctl enable dovecot
