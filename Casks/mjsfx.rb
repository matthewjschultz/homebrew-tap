cask "mjsfx" do
  version "2.0"
  sha256 "ac1aa3be2cfc11c7a76888dd328bab74181c252130f6be6469cb6f3943ab6d4f"

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
