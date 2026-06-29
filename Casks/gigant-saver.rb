cask "gigant-saver" do
  version "1.0.6"
  sha256 "5dd8ceaecb2ef6003a4340c242c996aa8c9d1387d4475722232aaa3e032f2a5b"

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
