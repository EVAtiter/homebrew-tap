cask "cmdpath" do
  version "1.0.0"
  sha256 "4c6b43f06540dcbc91e0f6a8b97ae87af41ca98a4bb47cecdf2fab1d751feaca"

  url "https://github.com/EVAtiter/CmdPath-release/releases/download/v#{version}/CmdPath-#{version}.zip"
  name "CmdPath"
  desc "Restores the Cmd-click folder path menu on Finder window titles"
  homepage "https://github.com/EVAtiter/CmdPath-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "CmdPath.app"

  zap trash: "~/Library/Preferences/com.slack-kingdom.cmdpath.plist"
end
