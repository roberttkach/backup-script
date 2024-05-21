#!/bin/bash

echo "Enter the path to the source directory or file:"
read SOURCE

echo "Enter the path to the target directory:"
read TARGET_DIR

if [ ! -e "$SOURCE" ]; then
  echo "Source file or directory $SOURCE does not exist. Check the path and try again."
  exit 1
fi

if [ ! -d "$TARGET_DIR" ]; then
  echo "Target directory $TARGET_DIR does not exist. Creating..."
  mkdir -p "$TARGET_DIR"
  if [ $? -eq 0 ]; then
    echo "Target directory successfully created."
  else
    echo "Error creating target directory."
    exit 1
  fi
fi

DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR=$TARGET_DIR/$(basename $SOURCE)_$DATE

cp -r $SOURCE $BACKUP_DIR

if [ $? -eq 0 ]; then
  echo "Backup successfully completed: $BACKUP_DIR"
else
  echo "Error creating backup."
  exit 1
fi
