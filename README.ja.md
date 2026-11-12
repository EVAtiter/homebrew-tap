[English](README.md) | [日本語](README.ja.md)

# EVA Titer Homebrew Tap

EVA Titer が公開している macOS アプリを、[Homebrew](https://brew.sh/) でインストールするための tap です。

---

## インストール

```bash
brew install --cask EVAtiter/tap/<cask 名>
```

`<cask 名>` は下の「アプリ一覧」の cask 名に置き換えてください（例: `brew install --cask EVAtiter/tap/sendblocker`）。

Homebrew 7 以降で「untrusted tap」と表示されたら、先に次のコマンドでその cask を信頼してから、もう一度インストールしてください。

```bash
brew trust --cask evatiter/tap/<cask 名>
```

アクセシビリティの許可など、アプリごとの初期設定は、各アプリの配布リポジトリの README をご覧ください（アプリ名のリンク先）。

---

## アプリ一覧

すべて Apple Silicon（arm64）専用です。

| アプリ | 説明 | cask 名 | 対応 OS |
| --- | --- | --- | --- |
| [Claude Meter](https://github.com/EVAtiter/ClaudeMeter-release) | Claude の今月の請求額・利用枠と、動いている Claude Code のセッションをメニューバーに出す | `claude-meter` | macOS 14 以降 |
| [CmdPath](https://github.com/EVAtiter/CmdPath-release) | Finder のタイトルの ⌘＋クリックで、フォルダの階層メニューを出す | `cmdpath` | macOS 14 以降 |
| [CommandoTab](https://github.com/EVAtiter/CommandoTab-release) | マウスのあるモニターに出る、Command+Tab の代わりのアプリスイッチャー | `commandotab` | macOS 13 以降 |
| [CursorBeacon](https://github.com/EVAtiter/CursorBeacon-release) | fn キー（または右の Option キー）を押している間、マウスカーソルの居場所を示す | `cursorbeacon` | macOS 13 以降 |
| [DisplayKeeper](https://github.com/EVAtiter/DisplayKeeper-release) | ディスプレイの設定（解像度・回転・配置・ミラーリングなど）を確かめて保存し、ダブルクリックで元に戻す | `displaykeeper` | 14 以降 |
| [Exif-Renamer](https://github.com/EVAtiter/exif-renamer-release) | 撮影日時で写真・動画のファイル名を付け直す（exiftool と php を自動で入れる） | `exif-renamer` | macOS 13 以降 |
| [FinderAlertMover](https://github.com/EVAtiter/FinderAlertMover-release) | Finder の確認ダイアログを、マウスカーソルの近くへ移す | `finderalertmover` | macOS 27.2 以降 |
| [Fuel Level Plus](https://github.com/EVAtiter/fuel-level-release) | 空きメモリーを燃料計で表示する（バッテリー温度計・消費電力計つき） | `fuel-level-plus` | macOS 14 以降 |
| [Gigant Monitor Plus](https://github.com/EVAtiter/gigant-monitor-support) | システムの状況を液体メーターで表示するメニューバーアプリ | `gigant-monitor-plus` | macOS 14 以降 |
| [GigantSaver](https://github.com/EVAtiter/gigant-saver-release) | 液体メーターのスクリーンセーバー | `gigant-saver` | macOS 14 以降 |
| [SendBlocker](https://github.com/EVAtiter/SendBlocker-release) | 指定したアプリでだけ、Return と Shift+Return を入れ替える | `sendblocker` | macOS 13 以降 |
| [Tachometer Plus](https://github.com/EVAtiter/tachometer-release) | CPU・GPU・ネットワークなどを、自動車のメーター風の計器で表示する | `tachometer` | macOS 14 以降 |

---

## アップデート

```bash
brew upgrade --cask <cask 名>
```

---

## アンインストール

```bash
brew uninstall --cask <cask 名>
```

設定ファイルも含めて削除する場合:

```bash
brew uninstall --zap --cask <cask 名>
```

---

## 名前を変えた cask

| 旧名 | 新名 |
| --- | --- |
| `gigant-monitor-pro` | `gigant-monitor-plus` |

旧名を指定しても、新しい名前の cask として扱われます。

---

## 公開を終えたアプリ

- **EVA Clock Rebirth**（`eva-clock-rebirth`）— 2026-07-30 に公開を終え、cask を無効にしました。新しくインストールすることはできません。

---

Copyright © 2026 EVA Titer. All rights reserved.
