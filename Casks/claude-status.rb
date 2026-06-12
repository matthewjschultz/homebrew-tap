cask "claude-status" do
  version "1.3"
  sha256 "fc9c67afab215724b9e3b9d9e5ebbbd8868b6165c55eeb17c2bd8f97e9cefbb1"

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
