cask "mjsfx" do
  version "1.42"
  sha256 "474129e3c145314dccbcd444fd89dab3bd2553f808bfa12d5c73016217e38d5b"

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
