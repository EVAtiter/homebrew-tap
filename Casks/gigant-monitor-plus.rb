cask "gigant-monitor-plus" do
  version "2.5.1"
  sha256 "20bbfc4dd270e6871428a65c9e242579cf676bc5c7eae3457c8c0a7a8ec1895d"

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
