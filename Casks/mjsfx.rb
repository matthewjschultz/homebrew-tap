cask "mjsfx" do
  version "1.0"
  sha256 "71c0df8b168eaeac093d5ad7fdfeb44f69ef257e1bd7ae3690e34b4eb735d2e8"

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
