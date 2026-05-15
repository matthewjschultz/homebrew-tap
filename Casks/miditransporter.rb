cask "miditransporter" do
  version "1.3"
  sha256 "0203f3636276afbac4200fca5f5c44ce0aab5806ea64efda0c076d5c77e46895"

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
