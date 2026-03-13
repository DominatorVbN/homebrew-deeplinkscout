cask "deeplinkscout" do
  version "1.0.8"
  sha256 "311a06a45a8beaeed3bdf230341051a10512c46c4adc0ce56ee0f73a3d89fb38"

  url "https://raw.githubusercontent.com/DominatorVbN/DeeplinkScoutDocs/main/releases/DeeplinkScout-#{version}.dmg"
  name "DeeplinkScout"
  desc "Test and manage deeplinks for iOS and macOS development"
  homepage "https://amitsamant.in/DeeplinkScoutDocs/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "DeeplinkScout.app"

  zap trash: [
    "~/Library/Application Support/DeeplinkScout",
    "~/Library/Caches/in.amitsamant.app.deeplinkscout",
    "~/Library/Preferences/in.amitsamant.app.deeplinkscout.plist",
  ]
end
