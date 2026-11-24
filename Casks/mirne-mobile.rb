cask "mirne-mobile" do
  version "1.6.0"
  sha256 "70da4837acab25c8837495603ba87f6c7472f5070d3ca302e52f9603972342ec"

  url "https://github.com/EVAtiter/mirne-mobile/releases/download/v#{version}/mirne-mobile-#{version}.zip"
  name "mirne mobile"
  desc "Unofficial client for nasne recorders: program guide, schedules and playback"
  homepage "https://github.com/EVAtiter/mirne-mobile"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "mirne mobile.app"

  zap trash: [
    "~/Library/Application Support/mirne-mobile",
    "~/Library/Preferences/com.slack-kingdom.mirne-mobile.plist",
  ]
end
