cask "logos" do
  version "2026.1.1"

  on_arm do
    url "https://github.com/Zixiao-System/logos/releases/download/#{version}/Logos-2026.1.1-arm64-mac.zip"
    sha256 "6f4f4e207785eb6e49f78670945157984910a570c99494ad1a6ed47f2ec64a7e"
  end

  on_intel do
    url "https://github.com/Zixiao-System/logos/releases/download/#{version}/"
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
