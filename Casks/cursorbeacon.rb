cask "cursorbeacon" do
  version "1.7.0"
  sha256 "4b6bdc256dcde9103dbad5749baaad2c529a85bf91b41d59d031e4a25e360d9d"

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
