cask "end" do
  version "0.6.0"
  sha256 "ce6d3833739ffacf34449fdcd5d8144b6e11798aba920484c767428d920d54d8"

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
