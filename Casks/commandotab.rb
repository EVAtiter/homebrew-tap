cask "commandotab" do
  version "1.1.10"
  sha256 "90610616d3eedb14274ef17b3cd95f8f1ee5999a5a89ee45a30d6374611bab16"

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
