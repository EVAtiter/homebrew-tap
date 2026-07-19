cask "tachometer" do
  version "1.0.1"
  sha256 "3ff85a8e4d1db71954d3c226d8267d9105ca03871dc621ff1a54544eff20404f"

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
