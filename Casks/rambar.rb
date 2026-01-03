cask "rambar" do
  version "1.1.0"
  sha256 "e36793e406dbe09e3edf890aee4f495cde0272407799006ab89b85694eb8e599"

  url "https://github.com/MaxGhenis/rambar/releases/download/v#{version}/RAMBar.zip"
  name "RAMBar"
  desc "Retro-styled menu bar RAM monitor for macOS"
  homepage "https://github.com/MaxGhenis/rambar"

  app "RAMBar.app"

  zap trash: [
    "~/Library/Preferences/com.maxghenis.RAMBar.plist",
  ]
end
