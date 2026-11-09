[English](README.md) | [日本語](README.ja.md)

# EVA Titer Homebrew Tap

A tap for installing EVA Titer's macOS apps with [Homebrew](https://brew.sh/).

---

## Installation

```bash
brew install --cask EVAtiter/tap/<cask>
```

Replace `<cask>` with a cask name from the app list below (for example, `brew install --cask EVAtiter/tap/sendblocker`).

If Homebrew 7 or later reports an "untrusted tap", trust that cask first with the command below, then install again.

```bash
brew trust --cask evatiter/tap/<cask>
```

For app-specific setup, such as granting Accessibility permission, see the README in each app's distribution repository (linked from the app name).

---

## Apps

All apps are for Apple Silicon (arm64) only.

| App | Description | Cask | macOS |
| --- | --- | --- | --- |
| [Claude Meter](https://github.com/EVAtiter/ClaudeMeter-release) | Shows this month's Claude spend, your usage limits, and the Claude Code sessions running now in the menu bar | `claude-meter` | 14 or later |
| [CmdPath](https://github.com/EVAtiter/CmdPath-release) | Brings back the folder path menu when you Command-click a Finder window title | `cmdpath` | 14 or later |
| [CommandoTab](https://github.com/EVAtiter/CommandoTab-release) | A Command+Tab app switcher that appears on the display under the mouse | `commandotab` | 13 or later |
| [CursorBeacon](https://github.com/EVAtiter/CursorBeacon-release) | Shows where the mouse cursor is while you hold the fn key (or the right Option key) | `cursorbeacon` | 13 or later |
| [Exif-Renamer](https://github.com/EVAtiter/exif-renamer-release) | Renames photos and videos by their capture date (installs exiftool and php automatically) | `exif-renamer` | 13 or later |
| [FinderAlertMover](https://github.com/EVAtiter/FinderAlertMover-release) | Moves Finder confirmation dialogs near the mouse cursor | `finderalertmover` | 27.2 or later |
| [Fuel Level Plus](https://github.com/EVAtiter/fuel-level-release) | Shows free memory as a fuel gauge, plus a battery thermometer and a power meter | `fuel-level-plus` | 14 or later |
| [Gigant Monitor Plus](https://github.com/EVAtiter/gigant-monitor-support) | A menu bar app that shows system activity on liquid meters | `gigant-monitor-plus` | 14 or later |
| [GigantSaver](https://github.com/EVAtiter/gigant-saver-release) | A liquid meter screen saver | `gigant-saver` | 14 or later |
| [SendBlocker](https://github.com/EVAtiter/SendBlocker-release) | Swaps Return and Shift+Return, only in the apps you choose | `sendblocker` | 13 or later |
| [Tachometer Plus](https://github.com/EVAtiter/tachometer-release) | Shows CPU, GPU, network, and more on automotive-style gauges | `tachometer` | 14 or later |

---

## Updating

```bash
brew upgrade --cask <cask>
```

---

## Uninstalling

```bash
brew uninstall --cask <cask>
```

To remove settings files as well:

```bash
brew uninstall --zap --cask <cask>
```

---

## Renamed casks

| Old name | New name |
| --- | --- |
| `gigant-monitor-pro` | `gigant-monitor-plus` |

The old name still resolves to the new cask.

---

## Discontinued apps

- **EVA Clock Rebirth** (`eva-clock-rebirth`) — discontinued on 2026-07-30, and its cask is disabled. It can no longer be installed.

---

Copyright © 2026 EVA Titer. All rights reserved.
