#!/bin/bash
sudo yum install postfix -y

sudo systemctl start postfix
sudo systemctl enable postfix

sudo tee /etc/postfix/main.cf > /dev/null <<EOL
myhostname = yourserver.example.com
mydomain = example.com
myorigin = \$mydomain
inet_interfaces = all
inet_protocols = ipv4
mydestination = \$myhostname, localhost.\$mydomain, localhost
relayhost = [smtp.gmail.com]:587
mynetworks = 127.0.0.0/8
home_mailbox = Maildir/
smtp_sasl_auth_enable = yes
smtp_sasl_security_options = noanonymous
smtp_sasl_password_maps = hash:/etc/postfix/sasl_passwd
smtp_tls_security_level = encrypt
smtp_tls_CAfile = /etc/ssl/certs/ca-bundle.crt
EOL

echo "[smtp.gmail.com]:587 your_email@gmail.com:your_app_password" | sudo tee /etc/postfix/sasl_passwd
sudo chmod 600 /etc/postfix/sasl_passwd
sudo postmap /etc/postfix/sasl_passwd

sudo systemctl restart postfix
