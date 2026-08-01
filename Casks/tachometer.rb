cask "tachometer" do
  version "1.6.0"
  sha256 "c25738fd11c83287ba5ebfb5f727111b62821604b7e2500ee3f3bb49e80aadbd"

  url "https://github.com/EVAtiter/tachometer-release/releases/download/v#{version}/Tachometer-Plus-#{version}.zip"
  name "Tachometer Plus"
  desc "Network, disk, memory, and power on tachometer-style analog gauges"
  homepage "https://github.com/EVAtiter/tachometer-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Tachometer Plus.app"

  # v1.0.x (Sandbox 版) の Containers パスも含む。v1.1.0 以降は Sandbox なしのため
  # 新規には作られないが、旧バージョンからの残骸を掃除できるよう残す。
  zap trash: [
    "~/Library/Containers/com.slack-kingdom.tachometer.plus",
    "~/Library/Preferences/com.slack-kingdom.tachometer.plus.plist",
    "~/Library/Saved Application State/com.slack-kingdom.tachometer.plus.savedState",
  ]
end
