#!/bin/sh

DISCORD_WEBHOOK_URL="https://discordapp.com/api/webhooks/url/here"

# UserName Transmission

# DISCORD_USERNAME=${DISCORD_USERNAME:-"Discord CLI Notifier "}
# DISCORD_WEBHOOK_URL=${DISCORD_WEBHOOK_URL:-""}

DISCORD_USERNAME=${DISCORD_USERNAME:-"Transmission "}
DISCORD_WEBHOOK_URL=${DISCORD_WEBHOOK_URL:-""}

if [ -z "$DISCORD_WEBHOOK_URL" ]; then
  echo "You must define DISCORD_WEBHOOK_URL in order to post a message";
  exit 1;
fi

curl -X POST --data-urlencode 'payload_json={"username": "'"$DISCORD_USERNAME"'", "content":"'"$TR_TORRENT_NAME || download complete"'"}' $DISCORD_WEBHOOK_URL
