cask "cursorbeacon" do
  version "1.3.2"
  sha256 "0af76de2dedd376a4c9e37161df925e1db042c6faad4869802f48857c787a6cb"

  url "https://github.com/EVAtiter/CursorBeacon-release/releases/download/v#{version}/CursorBeacon-#{version}.zip"
  name "CursorBeacon"
  desc "Enlarges the mouse cursor while the fn or right Option key is held"
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
