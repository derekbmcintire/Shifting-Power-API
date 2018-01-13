#!/bin/bash

curl "http://localhost:4741/tags" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "tag": {
      "name": "'"${NAME}"'",
      "video_id": "'"${ID}"'"
    }
  }'

echo
