#!/bin/bash

SOURCE_DIR="headers"
DEST_DIR="/usr/include/CET"

if [ ! -d "$DEST_DIR" ]; then
	mkdir -p "$DEST_DIR"
fi

cp "$SOURCE_DIR"/*.h "$DEST_DIR"
