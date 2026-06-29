cask "sendblocker" do
  version "1.0.5"
  sha256 "4365b8afe510f1cd09b92f8f17bbb2863eb4b612b2e28a32df858d4289aef2d4"

  url "https://github.com/EVAtiter/SendBlocker-release/releases/download/v#{version}/SendBlocker-#{version}.zip"
  name "SendBlocker"
  desc "Swaps Return and Shift+Return keys in selected apps"
  homepage "https://github.com/EVAtiter/SendBlocker-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "SendBlocker.app"

  zap trash: "~/Library/Application Support/SendBlocker"
end
