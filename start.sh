#!/bin/bash

# Create a backup of /etc/hosts
sudo cp /etc/hosts /etc/hosts.backup

# List of social media URLs
social_media_urls=(
    "www.facebook.com"
    "www.instagram.com"
    "www.pinterest.com"
    "www.snapchat.com"
    "www.tiktok.com"
    "www.reddit.com"
    "www.tumblr.com"
    "www.whatsapp.com"
    "www.wechat.com"
    "www.viber.com"
    "www.messenger.com"
    "www.quora.com"
    "www.reddit.com"
    "www.twitch.tv"
)

# Append the URLs to /etc/hosts
added_entries=0
for url in "${social_media_urls[@]}"; do
    echo "127.0.0.1 $url" >> "$HOSTS_FILE"
    if [ $? -eq 0 ]; then
        added_entries=$((added_entries + 1))
    fi
done

if [ $added_entries -gt 0 ]; then
    echo "Added $added_entries entries to $HOSTS_FILE"
else
    echo "Failed to add entries"
fi
