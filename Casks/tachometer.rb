cask "tachometer" do
  version "1.1.0"
  sha256 "3875bc1f99b91a789f7291adc05557aacecb3953d463dc2624087f5c1adf8359"

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

  zap trash: [
    "~/Library/Preferences/com.slack-kingdom.tachometer.plus.plist",
    "~/Library/Saved Application State/com.slack-kingdom.tachometer.plus.savedState",
    # v1.0.x (Sandbox 版) の残骸。v1.1.0 以降は Sandbox なしのため作られない。
    "~/Library/Containers/com.slack-kingdom.tachometer.plus",
  ]
end
