cask "sendblocker" do
  version "1.0.4"
  sha256 "2a16b2e5ce3ef7518866e02841a9050d24b54b295d0937c5b99474d458438276"

  url "https://github.com/EVAtiter/SendBlocker-release/releases/download/v#{version}/SendBlocker-#{version}.zip"
  name "SendBlocker"
  desc "Swaps Return and Shift+Return keys in selected apps"
  homepage "https://github.com/EVAtiter/SendBlocker-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "SendBlocker.app"

  zap trash: "~/Library/Application Support/SendBlocker"
end
