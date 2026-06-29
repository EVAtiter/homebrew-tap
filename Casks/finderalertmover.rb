cask "finderalertmover" do
  version "1.2.2"
  sha256 "f21b8d40884d22f7d7b023e75791c43cae0e9421444d3a81ea7cbe6088e2d603"

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
