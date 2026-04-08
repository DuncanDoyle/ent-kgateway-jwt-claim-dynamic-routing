#!/bin/sh

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
TOKEN_SCRIPT="$SCRIPT_DIR/install/certs/route-b-accesstoken.sh"

ROUTE_B_ACCESS_TOKEN=$(sh "$TOKEN_SCRIPT")

curl -v -H "Authorization: Bearer $ROUTE_B_ACCESS_TOKEN" http://api.example.com/get

