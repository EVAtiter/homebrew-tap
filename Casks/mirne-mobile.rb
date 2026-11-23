cask "mirne-mobile" do
  version "1.5.0"
  sha256 "e97c92081fe71d0d6fd26ed863249dcde76a016160e7df10121218dba9225ea9"

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
