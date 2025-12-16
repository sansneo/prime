#!/bin/bash

# Set the directory
TARGET_DIR="$HOME/something"

# Choose the file
FILE=$(find "$TARGET_DIR" -type f | \
  sed -e "s|$TARGET_DIR/||" -e 's|/$||' | \
  sk --margin 10% --color='bw')

# Edit it
if [[ -n "$FILE" ]]; then
  $EDITOR "$TARGET_DIR/$FILE"
fi
