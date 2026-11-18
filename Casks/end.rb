cask "end" do
  version "0.5.1"
  sha256 "afda007e0a32f2a2e980552cacb44f993663a73ae337b1bd2863e1c1102e8a8c"

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
