cask "claude-meter" do
  version "1.8.2"
  sha256 "ae9997618364fe1588b4226956a9d8dbc5dbf6642a7876d127a6e385fe47129b"

  url "https://github.com/EVAtiter/ClaudeMeter-release/releases/download/v#{version}/Claude-Meter-#{version}.zip"
  name "Claude Meter"
  desc "Menu bar meter for Claude spend, usage limits and running sessions"
  homepage "https://github.com/EVAtiter/ClaudeMeter-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Claude Meter.app"

  zap trash: "~/Library/Application Support/ClaudeMeter"
end
