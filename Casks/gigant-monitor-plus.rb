cask "gigant-monitor-plus" do
  version "2.5.0"
  sha256 "e722123579da2f556e39c4eb6462259e3607ab1fd053c0034427a3e77a50e681"

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
