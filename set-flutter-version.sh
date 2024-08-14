#!/bin/bash

# Check if .flutter-version file exists
if [[ -f ".flutter-version" ]]; then
  # Read the version tag from the file
  FLUTTER_TAG=$(<.flutter-version)

  # Find the Flutter installation path
  FLUTTER_PATH=$(which flutter)

  if [[ -z "$FLUTTER_PATH" ]]; then
    echo "Flutter is not installed or not found in your PATH."
    exit 1
  fi

  # Get the directory of the Flutter installation
  FLUTTER_DIR=$(dirname "$(dirname "$FLUTTER_PATH")")

  # Change to the Flutter directory
  cd "$FLUTTER_DIR" || exit

  # Checkout the specified tag
  git checkout "$FLUTTER_TAG"

  if [[ $? -ne 0 ]]; then
    echo "Failed to checkout the tag $FLUTTER_TAG."
    exit 1
  else
    echo "Successfully checked out Flutter version $FLUTTER_TAG."
  fi

  # Download and install any necessary dependencies
  echo "Downloading necessary dependencies..."
  flutter precache
  flutter doctor

  if [[ $? -ne 0 ]]; then
    echo "Failed to download dependencies. Please check your network connection and try again."
    exit 1
  else
    echo "Dependencies downloaded successfully."
  fi
else
  echo ".flutter-version file not found."
  exit 1
fi
