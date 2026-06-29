cask "commandotab" do
  version "1.1.9"
  sha256 "0f34900cc6ceff6387f8e2f44a0d392b26e46d0cecea164810742cb5dd8efa70"

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
