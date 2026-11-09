cask "claude-meter" do
  version "1.7.0"
  sha256 "d4eae50eaffa16402aba670376973333f8156c40a517fd23696304ac24d5e903"

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
