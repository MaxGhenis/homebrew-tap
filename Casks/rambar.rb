cask "rambar" do
  version "2.0.0"
  sha256 "4435d7a8ffa75e61cc1b9b68be70c7f385738f68c1876d2027fe2493ffc494ee"

  url "https://github.com/MaxGhenis/rambar/releases/download/v#{version}/Rambar.zip"
  name "Rambar"
  desc "Menu bar RAM monitor for agent sessions"
  homepage "https://maxghenis.com/rambar"

  app "Rambar.app"
  binary "#{appdir}/Rambar.app/Contents/MacOS/rambar-cli", target: "rambar"

  uninstall launchctl: "com.maxghenis.rambar.collector"

  zap trash: [
    "~/.rambar",
    "~/Library/LaunchAgents/com.maxghenis.rambar.collector.plist",
    "~/Library/Preferences/com.maxghenis.RAMBar.plist",
  ]
end
