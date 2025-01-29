#!/bin/bash

# Configuration
SOURCE_DIR="path/to/your/files"  # Change this to your file directory
DEST_DIR="$SOURCE_DIR/renamed_files"
PREFIX="legend plex_Experiment 9 PioglitazoneLegendP_"

# Create the destination folder if it doesn't exist
mkdir -p "$DEST_DIR"

# Process each file in the source directory
for file in "$SOURCE_DIR"/*; do
    filename=$(basename "$file")
    
    # Check if the file starts with the prefix
    if [[ "$filename" == "$PREFIX"* ]]; then
        new_name="${filename#$PREFIX}"  # Remove prefix
        cp "$file" "$DEST_DIR/$new_name"  # Copy renamed file
    fi
done

echo "Renamed files have been saved in: $DEST_DIR"
