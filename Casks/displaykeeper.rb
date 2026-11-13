cask "displaykeeper" do
  version "1.1.0"
  sha256 "6bf38628190599d03ef84793820e8318f45e41eab3b813e0458a4295123f514e"

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
