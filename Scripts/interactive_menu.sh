#!/bin/bash

send_email() {
    read -p "Enter recipient email: " recipient
    read -p "Subject: " subject
    read -p "Message: " message
    echo "$message" | mutt -s "$subject" "$recipient"
    echo "Email sent to $recipient"
}

check_disk_usage() {
    USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')
    echo "Current disk usage: ${USAGE}%"
    if [ "$USAGE" -ge 90 ]; then
        echo "Disk space critical!"
    fi
}

while true; do
    echo "1) Send Email"
    echo "2) Check Disk Usage"
    echo "3) Exit"
    read -p "Choose an option: " choice
    case $choice in
        1) send_email ;;
        2) check_disk_usage ;;
        3) exit 0 ;;
        *) echo "Invalid choice!" ;;
    esac
done
