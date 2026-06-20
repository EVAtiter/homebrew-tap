cask "finderalertmover" do
  version "1.2.0"
  sha256 "375a27996954b109d94d69e3ee1876d5f8b2bf74a214bd1bc3e5a9ef5e9ecbaa"

  url "https://github.com/EVAtiter/FinderAlertMover-release/releases/download/v#{version}/FinderAlertMover-#{version}.zip"
  name "FinderAlertMover"
  desc "Moves Finder confirmation dialogs near the mouse cursor"
  homepage "https://github.com/EVAtiter/FinderAlertMover-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "FinderAlertMover.app"

  zap trash: "~/Library/Preferences/com.slack-kingdom.FinderAlertMover.plist"
end
