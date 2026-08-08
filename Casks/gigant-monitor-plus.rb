cask "gigant-monitor-plus" do
  version "2.3.0"
  sha256 "c265e4d6f3c9f62eb2615e9519403f2896db5db91add2c0e5e6cd68283fa476b"

  url "https://github.com/EVAtiter/gigant-monitor-pro-release/releases/download/v#{version}/Gigant-Monitor-Plus-#{version}.zip"
  name "Gigant Monitor Plus"
  desc "Retro-futuristic liquid system meters for the menu bar"
  homepage "https://github.com/EVAtiter/gigant-monitor-support"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Gigant Monitor Plus.app"

  zap trash: [
    "~/Library/Caches/com.slack-kingdom.GigantMonitor.pro",
    "~/Library/Preferences/com.slack-kingdom.GigantMonitor.pro.plist",
    "~/Library/Saved Application State/com.slack-kingdom.GigantMonitor.pro.savedState",
  ]
end
