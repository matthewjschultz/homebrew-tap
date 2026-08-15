cask "claude-status" do
  version "1.6"
  sha256 "5a57180c4e90f9fb76a70c1f651066f531979828a53cf0f86bef3678c5e9dda4"

  url "https://github.com/matthewjschultz/homebrew-tap/releases/download/claude-status-v#{version}/ClaudeStatus-#{version}.dmg"
  name "Claude Status"
  desc "Menu bar app monitoring Claude service health"
  homepage "https://claudestatus.app"

  auto_updates true
  depends_on macos: :ventura

  app "ClaudeStatus.app"

  zap trash: [
    "~/Library/Application Support/ClaudeStatus",
  ]
end
