cask "exif-renamer" do
  version "1.1.0"
  sha256 "429b92b2a25efb66dc6693faa4f138c52ed8048df78dcb2e4e539ec7be419aaa"

  url "https://github.com/EVAtiter/exif-renamer-release/releases/download/v#{version}/Exif-Renamer-#{version}.zip"
  name "Exif-Renamer"
  desc "Rename photos and videos by their capture date using exiftool"
  homepage "https://github.com/EVAtiter/exif-renamer-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  # 撮影日時の取得（exiftool）とロジック本体（php スクリプト）に依存する。
  # cask インストール時にこれらの formula が無ければ自動導入される。
  depends_on formula: ["exiftool", "php"]
  depends_on macos: :ventura

  app "Exif-Renamer.app"

  zap trash: [
    "~/Library/Preferences/com.slack-kingdom.exifrenamer.plist",
    "~/Library/Preferences/com.evatiter.exifrenamer.plist",  # 旧 Bundle ID (v1.0.0 以前) の残置設定を掃除
  ]

  caveats <<~EOS
    撮影日時メタを持たないファイルのフォールバック（macOS 作成日時の取得）に、
    Xcode Command Line Tools 付属の GetFileInfo を使用します。未導入の場合は
    次を実行してください（撮影日時メタがあるファイルだけなら不要です）:

      xcode-select --install
  EOS
end
