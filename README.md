# zelph (Homebrew Tap)

This repository contains the formula for installing [zelph](https://github.com/acrion/zelph) on macOS via Homebrew.

## 📦 Installation

```bash
brew tap acrion/zelph
brew install zelph
```

## 🛠 Maintainer Guide (How to update)

Steps to release a new version (e.g., `0.9.5`):

1.  Wait for the main [GitHub Release](https://github.com/acrion/zelph/releases) to be built.
2.  Get the SHA256 checksum of the new `zelph-macos.zip`.:
3.  Edit `zelph.rb` in this repository:
    *   Update `url` to point to the new version.
    *   Update `sha256` with the checksum from step 2.
4.  Commit and push:
    ```bash
    git commit -am "Update to v0.9.5"
    git push
    ```
