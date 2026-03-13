cask "deeplinkscout" do
  version "1.0.7"
  sha256 "bbc57542382eb3eea4b3750661d441f75a0ce01422f86e1a2f1abb73223ff666"

  url "https://github.com/DominatorVbN/DeeplinkScoutApp/releases/download/v#{version}/DeeplinkScout.dmg"
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
