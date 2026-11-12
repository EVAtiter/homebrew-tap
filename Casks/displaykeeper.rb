cask "displaykeeper" do
  version "1.0.0"
  sha256 "346239c3490ff3371fddcc45765c3b2fe98f0fee6b8da9535f751605128605e3"

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
