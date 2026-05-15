cask "claude-status" do
  version "1.0"
  sha256 "35fd9f5f3c0a0ad929e29f56bb20f4fb6a2ecf05cd425a808d53443146f1f66e"

  url "https://github.com/matthewjschultz/homebrew-tap/releases/download/claude-status-v#{version}/ClaudeStatus-#{version}.dmg"
  name "Claude Status"
  desc "Menu bar app monitoring Claude service health"
  homepage "https://claudestatus.app"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "ClaudeStatus.app"

  zap trash: [
    "~/Library/Application Support/ClaudeStatus",
  ]
end
