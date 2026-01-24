cask "logos-editor" do
  version "2026.5.2"

  on_arm do
    url "https://github.com/Zixiao-System/logos/releases/download/v#{version}/Logos-2026.5.2-arm64-mac.zip"
    sha256 "b33b059874476bf0b6977dd5a54cdd8eb8ba61686a85bb3a85c9946051b00e1b"
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
