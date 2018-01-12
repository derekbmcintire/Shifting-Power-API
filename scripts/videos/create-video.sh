#!/bin/bash

curl "http://localhost:4741/videos" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "video": {
      "title": "'"${TITLE}"'",
      "url": "'"${URL}"'"
    }
  }'

echo
