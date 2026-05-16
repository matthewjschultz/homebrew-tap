cask "claude-status" do
  version "1.2"
  sha256 "62e779927ef2f43f1bbe135f0577a095bb4220ee265710d3660dcb70dba2d47f"

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
