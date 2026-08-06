cask "claude-status" do
  version "1.5"
  sha256 "0acad5014d5f15d4b9709d60a434d063dad5520d71167c9d8285fd9627d66b05"

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
