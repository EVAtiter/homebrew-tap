cask "cursorbeacon" do
  version "1.7.1"
  sha256 "ee173e033df8c62301ffa6a5ca5c716962a42def0cc5d9ad00c2c00cc0d13949"

  url "https://github.com/EVAtiter/CursorBeacon-release/releases/download/v#{version}/CursorBeacon-#{version}.zip"
  name "CursorBeacon"
  desc "Highlights and enlarges the mouse cursor while a trigger key is held"
  homepage "https://github.com/EVAtiter/CursorBeacon-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "CursorBeacon.app"

  zap trash: "~/Library/Preferences/com.slack-kingdom.CursorBeacon.plist"
end
