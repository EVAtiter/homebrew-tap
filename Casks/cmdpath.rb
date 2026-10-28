cask "cmdpath" do
  version "1.1.0"
  sha256 "40170e9ab494381efa3c7db0a8d0f9ff4159d147641d21dc5c41f24c579d716b"

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
