cask "mjsfx" do
  version "1.38"
  sha256 "e5947924ab54b4299b620a565960153bf1a9893209c79239dfea70a98ff199f1"

  url "https://mjsfx.app/releases/MJSFX-#{version}.dmg"
  name "MJSFX"
  desc "Native macOS designer for 8-bit retro game SFX"
  homepage "https://mjsfx.app"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "MJSFX.app"

  zap trash: [
    "~/Library/Preferences/dev.mjs.app.mjsfx.plist",
    "~/Library/Saved Application State/dev.mjs.app.mjsfx.savedState",
    "~/Library/Application Support/MJSFX",
  ]
end
