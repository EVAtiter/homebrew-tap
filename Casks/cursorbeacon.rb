cask "cursorbeacon" do
  version "1.6.0"
  sha256 "005cae4db26a1819c2ab03d9aef7681fd66a71bc2bd175a9ec62b72f1b45757e"

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
