cask "displaykeeper" do
  version "1.0.1"
  sha256 "c3d39f057432fde442c0e0d4d11613e7bdf47faad344ab3494245eda1bd53b03"

  url "https://github.com/EVAtiter/DisplayKeeper-release/releases/download/v#{version}/DisplayKeeper-#{version}.zip"
  name "DisplayKeeper"
  desc "Saves, inspects and restores display settings"
  homepage "https://github.com/EVAtiter/DisplayKeeper-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "DisplayKeeper.app"

  zap trash: [
    "~/Library/Preferences/com.slack-kingdom.displaykeeper.plist",
    "~/Library/Saved Application State/com.slack-kingdom.displaykeeper.savedState",
  ]
end
