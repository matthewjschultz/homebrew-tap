cask "mjsfx" do
  version "1.44"
  sha256 "cc21e89e334df085b6d604a22366cec0b4910b8847560dce301b28724e0e0fb0"

  url "https://mjsfx.app/releases/MJSFX-#{version}.dmg"
  name "MJSFX"
  desc "Native macOS designer for 8-bit retro game SFX"
  homepage "https://mjsfx.app/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "MJSFX.app"

  zap trash: [
    "~/Library/Application Support/MJSFX",
    "~/Library/Preferences/dev.mjs.app.mjsfx.plist",
    "~/Library/Saved Application State/dev.mjs.app.mjsfx.savedState",
  ]
end
