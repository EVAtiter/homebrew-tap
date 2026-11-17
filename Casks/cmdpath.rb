cask "cmdpath" do
  version "1.1.1"
  sha256 "e8c779da5e5a564103aa8c614e706ceea96ddc594456a0b2e7d43e1a13cb34a5"

  url "https://github.com/EVAtiter/CmdPath-release/releases/download/v#{version}/CmdPath-#{version}.zip"
  name "CmdPath"
  desc "Restores the Cmd-click folder path menu on Finder window titles"
  homepage "https://github.com/EVAtiter/CmdPath-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "CmdPath.app"

  zap trash: "~/Library/Preferences/com.slack-kingdom.cmdpath.plist"
end
