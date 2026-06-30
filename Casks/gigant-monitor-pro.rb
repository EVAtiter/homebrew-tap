cask "gigant-monitor-pro" do
  version "2.0.5"
  sha256 "ec4f3e0ea85ad041b623a6252e578900475f357a2f5250f988ed026d5a08358f"

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
