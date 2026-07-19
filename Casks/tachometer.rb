cask "tachometer" do
  version "1.0.0"
  sha256 "983553c35f088c4fe6ae2ce218f1a42475125b57d1c6d78575a078f4e4685136"

  url "https://github.com/EVAtiter/tachometer-release/releases/download/v#{version}/Tachometer-#{version}.zip"
  name "Tachometer"
  desc "Network and disk traffic on four tachometer-style analog gauges"
  homepage "https://github.com/EVAtiter/tachometer-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Tachometer.app"

  zap trash: [
    "~/Library/Containers/com.slack-kingdom.tachometer.plus",
    "~/Library/Saved Application State/com.slack-kingdom.tachometer.plus.savedState",
  ]
end
