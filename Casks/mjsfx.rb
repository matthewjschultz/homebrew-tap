cask "mjsfx" do
  version "1.39"
  sha256 "ce24917da31b6492fb0d658c1fc1f55fd77b9d4d573e140633bcd0cf71f3b7d1"

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
