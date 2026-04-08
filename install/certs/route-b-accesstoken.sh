#!/bin/sh

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

"$SCRIPT_DIR/generate-jwt.sh" "$SCRIPT_DIR/private.key" 3161 bob dev b
