cask "eva-clock-rebirth" do
  version "2.14.4"
  sha256 "dbda698f7b4c29a8a124dd082d0bf2d7390f87ea9d2abbb8d3b946130734d574"

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
