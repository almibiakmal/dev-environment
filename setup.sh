#!/bin/sh -e

# Base directory where the setup will be performed
BASE_DIR="$(pwd)"

# List of directories to be created
DIRS="data/mysql data/mongo data/redis projects"

# Create the main directory if it doesn't exist
echo "Creating the main directory in $BASE_DIR..."
mkdir -p "$BASE_DIR"

# Create all required subdirectories
echo "Creating subdirectories..."
for DIR in $DIRS; do
    TARGET="$BASE_DIR/$DIR"
    if [ ! -d "$TARGET" ]; then
        mkdir -p "$TARGET"
        echo "Created: $TARGET"
    else
        echo "Already exists: $TARGET"
    fi
done
