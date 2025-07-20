#!/bin/bash
THRESHOLD=90
ADMIN_EMAIL="admin@example.com"

USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "Disk usage is at ${USAGE}% on $(hostname) as of $(date)" | mutt -s "Disk Usage Alert" "$ADMIN_EMAIL"
fi

(crontab -l ; echo "0 * * * * /path/to/disk_monitor.sh") | crontab -


