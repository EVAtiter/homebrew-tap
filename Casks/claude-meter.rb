cask "claude-meter" do
  version "1.8.1"
  sha256 "c70eae08e630126f6ddf8db6f0dd9081ac345aaa059369ed867f6b836af69ccb"

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
