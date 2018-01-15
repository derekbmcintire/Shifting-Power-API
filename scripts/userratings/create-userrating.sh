#!/bin/bash

curl "http://localhost:4741/userratings" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "userrating": {
      "rating": "'"${RATING}"'",
      "video_id": "'"${VIDEOID}"'"
    }
  }'

echo
