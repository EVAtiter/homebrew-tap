cask "cmdpath" do
  version "1.1.2"
  sha256 "2eaf932c3ed5408376e6c557fe9295186605083c8ff9d0cc52efda8a1f3b01d3"

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
