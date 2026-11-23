cask "mirne-mobile" do
  version "1.4.0"
  sha256 "3298eefa4e4aa275ca500d3eb2385ae9835e0f31bf00432c3430e390b52f27eb"

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
