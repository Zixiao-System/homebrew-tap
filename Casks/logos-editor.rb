cask "logos-editor" do
  version "2026.5.0"

  on_arm do
    url "https://github.com/Zixiao-System/logos/releases/download/v#{version}/Logos-2026.5.0-arm64-mac.zip"
    sha256 "625d87f83a88a056faf78601c6d523305d238e913bf88162fb4789c140ae2156"
  end

  on_intel do
    url "https://github.com/Zixiao-System/logos/releases/download/v#{version}/"
    sha256 ""
  end

  name "Logos"
  desc "A Modern, Lightweight Code Editor"
  homepage "https://github.com/Zixiao-System/logos"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Logos.app"

  zap trash: [
    "~/Library/Application Support/logos",
    "~/Library/Caches/io.zixiao.logos",
    "~/Library/Preferences/io.zixiao.logos.plist",
    "~/Library/Saved Application State/io.zixiao.logos.savedState",
  ]
end
