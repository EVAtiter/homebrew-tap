cask "gigant-monitor-pro" do
  version "2.1.1"
  sha256 "d861e7458b426605c4b5ee16bdafd1a312582d5d81eb3b31eab4ed60bba5a912"

  url "https://github.com/EVAtiter/gigant-monitor-pro-release/releases/download/v#{version}/Gigant-Monitor-Pro-#{version}.zip"
  name "Gigant Monitor Pro"
  desc "Retro-futuristic liquid system meters for the menu bar"
  homepage "https://github.com/EVAtiter/gigant-monitor-support"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Gigant Monitor Pro.app"

  zap trash: [
    "~/Library/Caches/com.slack-kingdom.GigantMonitor.pro",
    "~/Library/Preferences/com.slack-kingdom.GigantMonitor.pro.plist",
    "~/Library/Saved Application State/com.slack-kingdom.GigantMonitor.pro.savedState",
  ]
end
