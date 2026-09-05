cask "cursorbeacon" do
  version "1.2.0"
  sha256 "639fe3b3f73c93f2a937d2f074f780b1af9b6621d436f42358b3289fbefe36fa"

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
