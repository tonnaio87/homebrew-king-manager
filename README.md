# King Manager

Release builds of King Manager, the scorekeeper for the card game King. The source is private; this repository
holds only the downloads and the Homebrew cask for macOS.

Download the latest version from **[Releases](https://github.com/tonnaio87/homebrew-king-manager/releases/latest)**:

| Platform | File                       |
| -------- | -------------------------- |
| Android  | `king-manager-android.apk` |
| Windows  | `king-manager-windows.zip` |
| macOS    | `king-manager-macos.dmg`   |

## Android

1. Download `king-manager-android.apk` on the phone and open it.
2. If Android says **"For your security, your phone isn't allowed to install unknown apps from this source"**,
   tap **Settings** → **Allow from this source**.
3. Tap **Install**. Later versions install straight over the previous one.

## Windows

1. Download `king-manager-windows.zip` and unzip it anywhere.
2. Double-click `king_manager.exe`. If **SmartScreen** shows **"Windows protected your PC"**, click
   **More info** → **Run anyway**.
3. Keep the unzipped folder together: the `.exe` needs the files beside it.

## macOS

With [Homebrew](https://brew.sh):

```bash
brew tap tonnaio87/king-manager
brew install --cask king-manager
```

`brew upgrade --cask king-manager` installs a newer version, and the app opens without the Gatekeeper prompt.

Without Homebrew:

1. Download `king-manager-macos.dmg`, open it and drag the app into **Applications**.
2. Open it once: macOS refuses because the app is not notarised by Apple. Go to **System Settings → Privacy &
   Security**, scroll to the message about the app and click **Open Anyway**.
3. From then on, a double-click opens it.
