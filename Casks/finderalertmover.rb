cask "finderalertmover" do
  version "1.2.1"
  sha256 "381cbc91a76861ba8d331368bc05b97f65e171a389dd1434f0f38e65f713ff75"

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
