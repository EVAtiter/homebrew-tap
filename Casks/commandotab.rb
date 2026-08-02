cask "commandotab" do
  version "1.2.0"
  sha256 "3bd5ce22a451795e82a1e96fd6b0fa9422cde2099947a60d667c8fa48a53e208"

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
