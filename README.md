[![official JetBrains project](https://jb.gg/badges/official-plastic.svg)](https://confluence.jetbrains.com/display/ALL/JetBrains+on+GitHub)
[![Kotlin](https://img.shields.io/badge/Kotlin-2.0-blue.svg?style=flat&logo=kotlin)](https://kotlinlang.org)

# Kotlin/Native Template

A mostly-empty template to get started creating a Kotlin/Native project. 

## Getting Started

### Option 1: Using Homebrew (Recommended)

```bash
# Tap the repository
brew tap kk-house-777/tap

# Install the template generator
brew install kotlin-native-template

# Generate a new project
generate my-project
cd my-project
./gradlew build
```

### Option 2: Using GitHub Template

1. On the project page, click on the `Use this template` button
2. Click on the `Create a new repository` drop-down item
3. Fill in the details of the new repository you'll be creating under your account
4. Click the `Create repository` button
5. Browse to your repository and make the needed changes there.

## Usage

The `generate` command creates a new Kotlin/Native project from this template:

```bash
generate <project-name> [destination-path]
```

**Arguments:**
- `project-name`: Name of your new project (required)
- `destination-path`: Where to create the project (optional, defaults to current directory)

**Examples:**

```bash
# Create project in current directory
generate my-kotlin-app

# Create project in specific location
generate my-kotlin-app ~/projects
```

## Code of conduct

Please read [our code of conduct](https://github.com/jetbrains#code-of-conduct).

## License

The [kmp-native-wizard template](https://github.com/Kotlin/kmp-native-wizard/) is licensed under [CC0](https://creativecommons.org/publicdomain/zero/1.0/deed.en).
