cask "sendblocker" do
  version "1.0.6"
  sha256 "09448cc179e8418004266059a27c0802089cbf90d0c934501cb4111ef54d8941"

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
