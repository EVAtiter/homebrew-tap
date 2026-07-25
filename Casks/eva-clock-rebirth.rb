cask "eva-clock-rebirth" do
  version "2.13.1"
  sha256 "657191fb4cf66c0dda513247669f12fdff8872a5f2e24489affa8ab9bf4d1c29"

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
