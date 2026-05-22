# homebrew-mobhook

Homebrew tap for [mobhook](https://github.com/iqbal-mekari/mobhook) — a mobile-first git hooks manager.

## Installation

```bash
brew tap iqbal-mekari/mobhook
brew install mobhook
```

## Updating SHA256 checksums

After each release, update the SHA256 values in `Formula/mobhook.rb`:

```bash
# Download and hash each release asset
shasum -a 256 mobhook-aarch64-apple-darwin.tar.gz
shasum -a 256 mobhook-x86_64-apple-darwin.tar.gz
shasum -a 256 mobhook-x86_64-unknown-linux-musl.tar.gz
shasum -a 256 mobhook-aarch64-unknown-linux-musl.tar.gz
```
