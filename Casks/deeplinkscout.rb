cask "deeplinkscout" do
  version "1.1.0"
  sha256 "9edf0e33d76b2b65923c93a0d49cb3ec39e35e2e426574b108f1615540bbfa09"

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
