cask "finderalertmover" do
  version "1.2.4"
  sha256 "628e9d2627aa89790e2ba8132ade9857886208286a01963b50d44cd2e34c5f11"

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
