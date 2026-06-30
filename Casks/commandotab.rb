cask "commandotab" do
  version "1.1.11"
  sha256 "d13be1de2cfbfe77c6ee6b96397659f249c8e221d2145d1e81f2652f90c336b5"

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
