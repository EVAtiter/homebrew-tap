cask "eva-clock-rebirth" do
  version "2.15.1"
  sha256 "37d53732a1860d91b423f6359b06bc88cae366406f373cf4253868ef429b9e6d"

  url "https://github.com/EVAtiter/EVA-Clock-Rebirth/releases/download/v#{version}/EVA-Clock-Rebirth-#{version}.zip"
  name "EVA Clock:Rebirth"
  desc "NERV-style desktop clock with CPU / GPU / ANE meters"
  homepage "https://github.com/EVAtiter/EVA-Clock-Rebirth"

  # 2026-07-30: EVA Clock:Rebirth は公開を終了した。
  # 既存の導入ぶんはそのまま動作し `brew uninstall` も使えるが、新規の
  # `brew install` は拒否される。cask ファイル自体は削除しない
  # (削除すると導入済みユーザーの `brew update` / `brew uninstall` が
  #  「No available cask」で壊れるため)。
  disable! date: "2026-07-30", because: :discontinued

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "EVA Clock Rebirth.app"

  zap trash: [
    "~/Library/Caches/com.slack-kingdom.EVAClock",
    "~/Library/Preferences/com.slack-kingdom.EVAClock.plist",
  ]
end
