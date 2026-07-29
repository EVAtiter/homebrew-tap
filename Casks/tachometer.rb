cask "tachometer" do
  version "1.4.2"
  sha256 "2af116bdd1e6fa597d600f7857caf5d8bfe55112ef3ecac21acc5aa0eaee8579"

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
