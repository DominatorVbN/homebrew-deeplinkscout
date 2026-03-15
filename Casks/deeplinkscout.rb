cask "deeplinkscout" do
  version "1.0.9"
  sha256 "15a3946cdb17548cb0a5468210ab9b116a36c1108dae19038376a743ba7f07af"

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
