# BaoCut Homebrew Tap

Official Homebrew packages for [BaoCut](https://baocut.app/).

Install the standalone BaoCut CLI on Apple Silicon:

```bash
brew install --cask JimLiu/tap/baocut
bcut --json version
```

The Cask installs the signed and notarized CLI published with each BaoCut
release. FFmpeg and FFprobe are installed through the Homebrew `ffmpeg`
dependency. Speech models are downloaded by BaoCut only when needed.
