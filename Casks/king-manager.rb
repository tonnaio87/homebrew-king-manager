cask "king-manager" do
  version "1.1.0"
  sha256 "8edac5f47cec41e587e3294a73ae02bb4e576c99aa8742806f8c9b265075b751"

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
