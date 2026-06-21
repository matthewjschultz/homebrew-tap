cask "mjsfx" do
  version "1.1"
  sha256 "c9655cdc862a795933ee98caa37343b2fef58367040b9a29c65e68f3576cec21"

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
