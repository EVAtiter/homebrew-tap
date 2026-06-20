# EVA Titer Homebrew Tap

EVA Titer が公開している macOS アプリを [Homebrew](https://brew.sh/) で
インストールするための tap です。

---

## 配布アプリ

### SendBlocker

指定したアプリでのみ **Return キーと Shift+Return キーの動作を入れ替える**
メニューバー常駐ユーティリティ。チャットツールでの誤送信を防ぎます。

- リポジトリ: [EVAtiter/SendBlocker-release](https://github.com/EVAtiter/SendBlocker-release)
- 対応 OS: macOS 13 Ventura 以降 / Universal / Apple 公証済み

```bash
brew install --cask EVAtiter/tap/sendblocker
```

> インストール後、**システム設定 → プライバシーとセキュリティ → アクセシビリティ**
> で SendBlocker を許可してください。

#### 使い方

```bash
brew tap EVAtiter/tap
brew install --cask sendblocker
```

または 1 行で:

```bash
brew install --cask EVAtiter/tap/sendblocker
```

#### アンインストール

```bash
brew uninstall --cask sendblocker
```

設定ファイルも含めて完全に削除する場合:

```bash
brew uninstall --zap --cask sendblocker
```

---

### CommandoTab

マウスカーソルのいるモニターに表示される **Command+Tab 代替アプリスイッチャー**。
マルチモニター環境でも、常にマウスのある画面にスイッチャーが出ます。

- リポジトリ: [EVAtiter/CommandoTab-release](https://github.com/EVAtiter/CommandoTab-release)
- 対応 OS: macOS 13 Ventura 以降 / Universal / Apple 公証済み

```bash
brew install --cask EVAtiter/tap/commandotab
```

> インストール後、**システム設定 → プライバシーとセキュリティ → アクセシビリティ**
> で CommandoTab を許可してください。

#### 使い方

```bash
brew tap EVAtiter/tap
brew install --cask commandotab
```

または 1 行で:

```bash
brew install --cask EVAtiter/tap/commandotab
```

#### アンインストール

```bash
brew uninstall --cask commandotab
```

設定ファイルも含めて完全に削除する場合:

```bash
brew uninstall --zap --cask commandotab
```

---
