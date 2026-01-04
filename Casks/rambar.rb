cask "rambar" do
  version "1.2.0"
  sha256 "0ae84cf5ec455f6916b59cc3e1ed8abf57ac6d6539136af27546188a7a4dd58f"

  url "https://github.com/MaxGhenis/rambar/releases/download/v#{version}/RAMBar.zip"
  name "RAMBar"
  desc "Retro-styled menu bar RAM monitor for macOS"
  homepage "https://github.com/MaxGhenis/rambar"

  app "RAMBar.app"

  zap trash: [
    "~/Library/Preferences/com.maxghenis.RAMBar.plist",
  ]
end
