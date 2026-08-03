cask "sendblocker" do
  version "1.0.7"
  sha256 "faa582118e77ba973d05ab64f513f63d9557fbb63a6f037da9ece1ac279ae1ca"

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
