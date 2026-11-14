# homebrew-floating-cam

Homebrew tap for [Floating Camera](https://github.com/neo22s/floating-cam): a small, native macOS menu bar app that keeps your camera floating above everything else.

## Install

```bash
brew install --cask neo22s/floating-cam/floating-camera
```

## Update

Floating Camera updates itself from its GitHub Releases, so usually there is nothing to do. The cask is marked `auto_updates`, which is why `brew outdated` stays quiet. To let Homebrew do it anyway:

```bash
brew upgrade --cask --greedy floating-camera
```

## Uninstall

```bash
brew uninstall --cask floating-camera
```

To remove the preferences too:

```bash
brew uninstall --cask --zap floating-camera
```

## Notes

- Requires macOS 14 (Sonoma) or later.
- Releases are ad-hoc signed, not notarized. The cask clears the quarantine flag after installing, since Gatekeeper would otherwise refuse the first launch; the app does the same when it updates itself.
- `Casks/floating-camera.rb` is a mirror of [`floating-cam/Casks/floating-camera.rb`](https://github.com/neo22s/floating-cam/blob/master/Casks/floating-camera.rb). The **Sync cask** workflow copies it over every six hours, so do not edit it here.
