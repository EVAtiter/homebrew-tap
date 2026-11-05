cask "cursorbeacon" do
  version "1.4.0"
  sha256 "68686e0aac0bc0b255a4aa1ba646d9812593513cbe48b0d250aad2bdc305cec2"

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
