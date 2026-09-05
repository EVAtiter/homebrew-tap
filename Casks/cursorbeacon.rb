cask "cursorbeacon" do
  version "1.2.1"
  sha256 "7c73d7dcc277e82cf3edd268ce5afb25e6629ab76dd996d7cc7fde4070a89b01"

  url "https://github.com/EVAtiter/CursorBeacon-release/releases/download/v#{version}/CursorBeacon-#{version}.zip"
  name "CursorBeacon"
  desc "Enlarges the mouse cursor while the fn or right Option key is held"
  homepage "https://github.com/EVAtiter/CursorBeacon-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "CursorBeacon.app"

  zap trash: "~/Library/Preferences/com.slack-kingdom.CursorBeacon.plist"
end
