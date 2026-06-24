cask "mjsfx" do
  version "1.6"
  sha256 "25122090e2e04a4f618620eaa33e9bbf1948fee0cab94f972034c6051186ee67"

  url "https://mjsfx.app/releases/MJSFX-#{version}.dmg"
  name "MJSFX"
  desc "Native macOS designer for 8-bit retro game SFX"
  homepage "https://mjsfx.app"

  auto_updates true

  app "MJSFX.app"

  zap trash: [
    "~/Library/Preferences/dev.mjs.app.mjsfx.plist",
    "~/Library/Saved Application State/dev.mjs.app.mjsfx.savedState",
    "~/Library/Application Support/MJSFX",
  ]
end
