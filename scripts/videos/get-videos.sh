#!/bin/bash

curl "http://localhost:4741/videos" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
