# Flutter Version

This Bash script helps you easily switch between different versions of Flutter using Git tags specified in a `.flutter-version` file.

> Compared with e.g. `asdf-flutter` you don't download the whole Flutter repo when switching versions

## Prerequisites

- **Flutter**: Ensure that Flutter is installed on your system and is accessible via the command line.
- **Git**: The script requires Git to be installed to switch between versions using tags.

## Getting Started

### 1. Create a `.flutter-version` File

In the root directory of your project, create a file named `.flutter-version`. This file should contain the Git tag of the Flutter version you want to use. E.g: `3.19.0`

