cask "sendblocker" do
  version "1.0.10"
  sha256 "5bc96c080f27040b294375339334baff8d253196bce9c3091e92fe3b1486275a"

  url "https://github.com/EVAtiter/SendBlocker-release/releases/download/v#{version}/SendBlocker-#{version}.zip"
  name "SendBlocker"
  desc "Swaps Return and Shift+Return keys in selected apps"
  homepage "https://github.com/EVAtiter/SendBlocker-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "SendBlocker.app"

  zap trash: "~/Library/Application Support/SendBlocker"
end
