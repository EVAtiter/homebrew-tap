cask "gigant-saver" do
  version "1.0.7"
  sha256 "63f03dc111e4ab7375d86a785b1f9ed24d87d32e9c80ee4075a006a0edc7abd9"

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
