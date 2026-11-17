cask "displaykeeper" do
  version "1.1.1"
  sha256 "ab12d7604504fdcd8c58fed1f265157ef6afd558415b3611a4c1df0d4aa6cb43"

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
  binary "#{appdir}/DisplayKeeper.app/Contents/Resources/displaykeeper"

  zap trash: [
    "~/Library/Caches/com.slack-kingdom.displaykeeper",
    "~/Library/Preferences/com.slack-kingdom.displaykeeper.plist",
    "~/Library/Saved Application State/com.slack-kingdom.displaykeeper.savedState",
  ]
end
