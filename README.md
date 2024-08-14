# flutter-version

This Bash script helps you easily switch between different Flutter versions by using a Git tag specified in a `.flutter-version` file.

> Compared with `asdf` you don't download the whole Flutter repo for each version you want to use and thus save space

## Prerequisites

- **Flutter**: Ensure that Flutter is installed on your system and is accessible via the command line.
- **Git**: The script requires Git to be installed to switch between versions using tags.

## Getting Started

Run `chmod +x flutter-version.sh` to make it executable.

Optionally make a symbolic link to access it globally with `ln -s path/to/flutter-version.sh path/in/PATH/flutter-version`

In the root directory of your project, create a file named `.flutter-version`. This file should contain the Git tag of the Flutter version you want to use. E.g: `3.19.0`

Run `flutter-version` to checkout the version tag and precache dependencies.
