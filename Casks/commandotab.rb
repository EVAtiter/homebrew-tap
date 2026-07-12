cask "commandotab" do
  version "1.1.12"
  sha256 "d5ba2ee17610880018f9b1d048f5aa5093622dcafa4074860083c6dd29b0a672"

  url "https://github.com/EVAtiter/CommandoTab-release/releases/download/v#{version}/CommandoTab-#{version}.zip"
  name "CommandoTab"
  desc "Command+Tab app switcher that appears on the display under the mouse"
  homepage "https://github.com/EVAtiter/CommandoTab-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "CommandoTab.app"

  zap trash: "~/Library/Preferences/com.slack-kingdom.CammandoTab.plist"
end
