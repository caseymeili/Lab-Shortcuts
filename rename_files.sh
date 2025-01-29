#!/bin/bash

# Define the source directory (NO ESCAPE SEQUENCES)
SOURCE_DIR="/Users/caseymeili/Desktop/Experiment 9 PioglitazoneLegendP" # set this path to the location of your files, ensure it is in quotes

# Ensure the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "❌ Error: Source directory not found: $SOURCE_DIR"
    exit 1
fi

# Create destination folder for renamed files
DEST_DIR="$SOURCE_DIR/renamed_files" # edit this line to change the location and/or folder name for renamed files
mkdir -p "$DEST_DIR"

# Define prefix to remove
PREFIX="legend plex_Experiment 9 PioglitazoneLegendP_" # set what part of the file name you want to remove, must be exact and in quotes

echo "🔍 Processing files in: $SOURCE_DIR"

# Iterate over files in the directory
for file in "$SOURCE_DIR"/*; do
    # Ensure it's a file (not a folder)
    [ -f "$file" ] || continue

    # Get the filename only
    filename=$(basename "$file")

    # Debugging - Show detected filenames
    echo "📝 Found file: '$filename'"

    # Check if filename starts with the prefix
    if [[ "$filename" == "$PREFIX"* ]]; then
        new_name="${filename#$PREFIX}"  # Remove the prefix
        echo "✏️ Renaming: '$filename' -> '$new_name'"
        cp "$file" "$DEST_DIR/$new_name"  # Copy renamed file
    else
        echo "⚠️ Skipping (does not match prefix): '$filename'"
    fi
done

echo "✅ Renamed files have been saved in: $DEST_DIR"
