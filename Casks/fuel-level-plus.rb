cask "fuel-level-plus" do
  version "2.16.1"
  sha256 "764e583e98ca9d7bcee3ba5518df8bab38ba4a982ce27e974cff5b7390139ded"

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
