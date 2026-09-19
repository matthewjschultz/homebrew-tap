cask "miditransporter" do
  version "1.4"
  sha256 "62ae104bf5a929875b52a7c1a94d18a7c2130d39ba08bb0626186f6110a1bca5"

  url "https://miditransporter.app/releases/MIDITransporter-#{version}.dmg"
  name "MIDI Transporter"
  desc "Floating macOS panel for sending MIDI transport messages"
  homepage "https://miditransporter.app"

  auto_updates true

  app "MIDITransporter.app"

  zap trash: [
    "~/Library/Preferences/dev.mjs.app.miditransporter.plist",
    "~/Library/Saved Application State/dev.mjs.app.miditransporter.savedState",
  ]
end
