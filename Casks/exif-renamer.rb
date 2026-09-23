cask "exif-renamer" do
  version "1.3.0"
  sha256 "6778a3f2e0e49550d1e7f579e62c9047ee8472e369b932509e5726a140887197"

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
  binary "exif-renamer"

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
