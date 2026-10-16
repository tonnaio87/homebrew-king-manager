cask "king-manager" do
  version "1.0.2"
  sha256 "a8cfb837b837a01f8fc5a57a41d57fe7f9e3ccd41c693e95da26fea6c76cebb2"

  url "https://github.com/tonnaio87/homebrew-king-manager/releases/download/v#{version}/king-manager-macos.dmg"
  name "King Manager 26"
  desc "Scorekeeper for the card game King"
  homepage "https://github.com/tonnaio87/homebrew-king-manager"

  depends_on :macos

  app "king_manager.app"

  # The app is not notarised, so without this every install stops at Gatekeeper.
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/king_manager.app"],
        writable_paths: ["king_manager.app"],
        writable_base:  :appdir
  end

  # The container is where the sandboxed builds up to 1.0.0 kept their data.
  zap trash: [
    "~/Library/Application Support/com.cincotti.kingmanager",
    "~/Library/Containers/com.cincotti.kingmanager",
    "~/Library/Preferences/com.cincotti.kingmanager.plist",
  ]
end
