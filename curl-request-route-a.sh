#!/bin/sh

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
TOKEN_SCRIPT="$SCRIPT_DIR/install/certs/route-a-accesstoken.sh"

ROUTE_A_ACCESS_TOKEN=$(sh "$TOKEN_SCRIPT")

curl -v -H "Authorization: Bearer $ROUTE_A_ACCESS_TOKEN" http://api.example.com/get

