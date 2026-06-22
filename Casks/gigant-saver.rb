cask "gigant-saver" do
  version "1.0.4"
  sha256 "d8e0eec680bf776f1066428c63df3c041b71e12fcbc550c03a33b4b05fbe528b"

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
