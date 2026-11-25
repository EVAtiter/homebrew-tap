cask "mirne-mobile" do
  version "1.7.0"
  sha256 "45271400654489a5aecb1d894a7ca14bfc269862569ceb8ea1b5992a15601788"

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
