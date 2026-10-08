cask "sendblocker" do
  version "1.0.8"
  sha256 "78f99e2a700bc5f559afa5046da6adab4827922b2187f206ec959b404cff9245"

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
