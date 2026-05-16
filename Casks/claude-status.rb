cask "claude-status" do
  version "1.1"
  sha256 "a2e08b8f558a8d80f9d380bcbcf68695a9504a1cb80e8f54fde218de7eaaa0d6"

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
