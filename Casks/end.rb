cask "end" do
  version "0.5.0"
  sha256 "94f865e1fb297018b725936ee0c6089eef7b811c06f5b90cd7672837cd66ea73"

  url "https://github.com/enesdurmus/End/releases/download/v#{version}/End_#{version}_universal.dmg"
  name "End"
  desc "Keyboard-driven app launcher that runs entirely on your machine"
  homepage "https://github.com/enesdurmus/End"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "End.app"

  zap trash: [
    "~/Library/Application Support/com.enesdurmus.end",
    "~/Library/Caches/com.enesdurmus.end",
    "~/Library/Preferences/com.enesdurmus.end.plist",
    "~/Library/Saved Application State/com.enesdurmus.end.savedState",
    "~/Library/WebKit/com.enesdurmus.end",
  ]
end
