cask "fuel-level-plus" do
  version "2.4.0"
  sha256 "4ad0a692f6513c2600e39b24b2a872850ac7f86491e394138e706f5c284a3f81"

  url "https://github.com/EVAtiter/fuel-level-release/releases/download/v#{version}/Fuel-Level-Plus-#{version}.zip"
  name "Fuel Level Plus"
  desc "Menu bar fuel gauge for free memory, plus battery thermometer and power meter"
  homepage "https://github.com/EVAtiter/fuel-level-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Fuel Level Plus.app"

  zap trash: [
    "~/Library/Caches/com.slack-kingdom.fuellevel.plus",
    "~/Library/Preferences/com.slack-kingdom.fuellevel.plus.plist",
    "~/Library/Saved Application State/com.slack-kingdom.fuellevel.plus.savedState",
  ]
end
