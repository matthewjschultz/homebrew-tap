cask "mjsfx" do
  version "1.40"
  sha256 "eab5c79388516ab12435ab444ee205f8a2375f314d5f25fa0b41a584218e1c59"

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
