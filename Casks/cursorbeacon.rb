cask "cursorbeacon" do
  version "1.5.0"
  sha256 "f0839720207b984147f1996b81746a3fdd142ec55b98682192fc4996e4a10067"

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
