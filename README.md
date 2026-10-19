# King Manager

Release builds of King Manager, the scorekeeper for the card game King. The source is private; this repository
holds only the downloads and the Homebrew cask for macOS.

Download the latest version from **[Releases](https://github.com/tonnaio87/homebrew-king-manager/releases/latest)**:

| Platform | File                             |
| -------- | -------------------------------- |
| Android  | `king-manager-android.apk`       |
| Windows  | `king-manager-windows-setup.exe` |
| macOS    | `king-manager-macos.dmg`         |

## Android

1. Download `king-manager-android.apk` on the phone and open it.
2. If Android says **"For your security, your phone isn't allowed to install unknown apps from this source"**,
   tap **Settings** → **Allow from this source**.
3. Tap **Install**. Later versions install straight over the previous one.

## Windows

1. Download `king-manager-windows-setup.exe` and open it. If **SmartScreen** shows **"Windows protected your
   PC"**, click **More info** → **Run anyway**.
2. Click **Install**. No administrator rights are needed: the app goes into
   `%LOCALAPPDATA%\Programs\King Manager`, with a shortcut in the Start menu and on the desktop.
3. Later versions install from the app: when Settings announces one, click **Install and restart**. The games
   and settings stay.

A copy unzipped from `king-manager-windows.zip` before the setup existed cannot update itself: run the setup
once, then delete the old folder if it was somewhere else. The zip is still published, as a portable copy to
unzip into a folder you own (not `C:\Program Files`, where the app cannot update itself).

## macOS

With [Homebrew](https://brew.sh):

```bash
brew tap tonnaio87/king-manager && \
brew trust tonnaio87/king-manager && \
brew install --cask king-manager
```

`brew upgrade --cask king-manager` installs a newer version, and the app opens without the Gatekeeper prompt.

Without Homebrew:

1. Download `king-manager-macos.dmg`, open it and drag the app into **Applications**.
2. Open it once: macOS refuses because the app is not notarised by Apple. Go to **System Settings → Privacy &
   Security**, scroll to the message about the app and click **Open Anyway**.
3. From then on, a double-click opens it.
