cask "audiometer" do
  version "3.0.0"
  sha256 "e25b4b60801f752e58a0784a530e5cdb7f8e5ddee5411ae866a6b3a728c9efdf"

  url "https://github.com/EVAtiter/audiometer-release/releases/download/v#{version}/AudioMeter-#{version}.zip"
  name "AudioMeter"
  desc "Analog VU meter for system audio output"
  homepage "https://github.com/EVAtiter/audiometer-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "AudioMeter.app"

  zap trash: [
    "~/Library/Preferences/com.evatiter.audiometer.plist",
    "~/Library/Saved Application State/com.evatiter.audiometer.savedState",
  ]
end
