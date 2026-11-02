cask "king-manager" do
  version "1.1.1"
  sha256 "61381c2555009ea2d04781895fdd97164b77702dca309b3423fd091e2386080d"

  url "https://github.com/tonnaio87/homebrew-king-manager/releases/download/v#{version}/king-manager-macos.dmg"
  name "King Manager"
  desc "Scorekeeper for the card game King"
  homepage "https://github.com/tonnaio87/homebrew-king-manager"

  depends_on :macos

  app "King Manager.app"

  # The app is not notarised, so without this every install stops at Gatekeeper.
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/King Manager.app"],
        writable_paths: ["King Manager.app"],
        writable_base:  :appdir
  end

  # The container is where the sandboxed builds up to 1.0.0 kept their data.
  zap trash: [
    "~/Library/Application Support/com.cincotti.kingmanager",
    "~/Library/Containers/com.cincotti.kingmanager",
    "~/Library/Preferences/com.cincotti.kingmanager.plist",
  ]
end
