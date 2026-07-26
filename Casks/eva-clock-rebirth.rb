cask "eva-clock-rebirth" do
  version "2.14.3"
  sha256 "2d0e355ace90c9fbb5fed6a82e4f41ceb2e88e6fc0f196fe3c15c460e0feddbb"

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
