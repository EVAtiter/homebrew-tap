cask "sendblocker" do
  version "1.0.9"
  sha256 "42aadf18165cddac6b01e1fd07da7c5e213e39baf27af872091b8a1a4834e415"

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
