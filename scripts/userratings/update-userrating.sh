#!/bin/bash

curl "http://localhost:4741/userratings/$ID" \
  --include \
  --request PUT \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "userrating": {
      "rating": "'"${RATING}"'"
    }
  }'

echo
