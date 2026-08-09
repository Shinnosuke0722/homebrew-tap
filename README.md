# Homebrew tap for jm

This is the official Homebrew tap for
[`jm`](https://github.com/Shinnosuke0722/jm), a cross-platform JDK and Java
version manager.

## Install

```sh
brew install Shinnosuke0722/tap/jm
```

Enable shell integration after installation:

```sh
# Bash (~/.bashrc)
eval "$(jm shell init bash)"

# Zsh (~/.zshrc)
eval "$(jm shell init zsh)"

# Fish (~/.config/fish/config.fish)
jm shell init fish | source
```

## Upgrade

```sh
brew upgrade Shinnosuke0722/tap/jm
```

Do not run `jm upgrade` for a Homebrew-managed installation; it bypasses
Homebrew's version and checksum records.

## Supported prebuilt platforms

- macOS on Intel or Apple silicon (Universal binary)
- Linux x86-64
- Linux ARM64

Source code, issues, release notes, and checksums are maintained in the
[`jm` repository](https://github.com/Shinnosuke0722/jm).
