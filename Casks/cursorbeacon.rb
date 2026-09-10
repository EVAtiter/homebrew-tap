cask "cursorbeacon" do
  version "1.3.0"
  sha256 "93dcb96bff7787f726d52ed0178c82f9e3d8c02127161fafab4a6db3fdb5e4d2"

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
