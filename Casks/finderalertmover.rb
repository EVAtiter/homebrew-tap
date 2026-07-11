cask "finderalertmover" do
  version "1.2.3"
  sha256 "dab901c2064801368a171af8cfe0c9e4ae3042b9b949a99fc7df7c7a593682ed"

  url "https://github.com/EVAtiter/FinderAlertMover-release/releases/download/v#{version}/FinderAlertMover-#{version}.zip"
  name "FinderAlertMover"
  desc "Moves Finder confirmation dialogs near the mouse cursor"
  homepage "https://github.com/EVAtiter/FinderAlertMover-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "FinderAlertMover.app"

  zap trash: "~/Library/Preferences/com.slack-kingdom.FinderAlertMover.plist"
end
