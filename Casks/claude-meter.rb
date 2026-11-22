cask "claude-meter" do
  version "1.8.3"
  sha256 "6b2a74bfcf64869eb19b3d55f07e5753805bd9bd0f5df9efa72c207b3f90d6f6"

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
