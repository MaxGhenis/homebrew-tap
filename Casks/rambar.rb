cask "rambar" do
  version "2.1.0"
  sha256 "012a951822a8ceeb5cfa6cadcf7178cd392675274ea12c0d51fd998c544659b7"

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
