cask "mirne-mobile" do
  version "1.8.0"
  sha256 "77f1bde3d58e9a6a1b73e03276da41ac4c946d704ad5bad4adab72151e83f3be"

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
