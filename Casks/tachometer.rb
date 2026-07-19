cask "tachometer" do
  version "1.0.2"
  sha256 "7e178f00cb7daac48363878733e13b23c2af1c812a5e7621cbbe88d143a55e7e"

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
