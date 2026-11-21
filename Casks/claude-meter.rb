cask "claude-meter" do
  version "1.7.1"
  sha256 "315fcae3e0fce82e1cf06e180c43db36812b48094042f0ef2e848ae616f67970"

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
