cask "gigant-saver" do
  version "1.0.5"
  sha256 "55d69901d0150a0630b106fd0cb0dde693e2269b965fbea5837209239f09a193"

  url "https://github.com/EVAtiter/gigant-saver-release/releases/download/v#{version}/GigantSaver-#{version}.zip"
  name "GigantSaver"
  desc "Retro-futuristic liquid meter screen saver"
  homepage "https://github.com/EVAtiter/gigant-saver-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  screen_saver "GigantSaver.saver"

  zap trash: "~/Library/Containers/com.apple.wallpaper.agent/Data/Library/Caches/com.apple.wallpaper.caches/screenSaver-"
end
