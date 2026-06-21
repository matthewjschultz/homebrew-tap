cask "mjsfx" do
  version "1.1"
  sha256 "0ade5d4977cbabef1da6bd5c24e770cccad160987b31b17575d06cb845035565"

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
