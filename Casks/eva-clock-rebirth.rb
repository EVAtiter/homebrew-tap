cask "eva-clock-rebirth" do
  version "2.10.2"
  sha256 "96515cd12328a8c5c472b85faf81620aa26f8cd1e3ea54b6eb0438a454f5d567"

  url "https://github.com/EVAtiter/EVA-Clock-Rebirth/releases/download/v#{version}/EVA-Clock-Rebirth-#{version}.zip"
  name "EVA Clock:Rebirth"
  desc "NERV-style desktop clock with CPU / GPU / ANE meters"
  homepage "https://github.com/EVAtiter/EVA-Clock-Rebirth"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "EVA Clock Rebirth.app"

  zap trash: [
    "~/Library/Caches/com.slack-kingdom.EVAClock",
    "~/Library/Preferences/com.slack-kingdom.EVAClock.plist",
  ]
end
