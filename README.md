## `unlock macosx`

[System Integrity Protection – Adding another layer to Apple’s security mode](https://derflounder.wordpress.com/2015/10/01/system-integrity-protection-adding-another-layer-to-apples-security-model/)

### Install Instructions 

<pre>
  System Version:	macOS 10.15.5 (19F2096)
  Kernel Version:	Darwin 19.5.0
  Boot Volume:	Macintosh HD
</pre>

```bash
cat configure
```

## cmd + opts

<br>

**Command (⌘)-R**: Start up from the built-in macOS Recovery system. Or use Option-Command-R or Shift-Option-Command-R to start up from macOS Recovery over the Internet. macOS Recovery installs different versions of macOS, depending on the key combination you use while starting up. If your Mac is using a firmware password, you're prompted to enter the password.

<br>

**Option (⌥) or Alt**: Start up to Startup Manager, which allows you to choose other available startup disks or volumes. If your Mac is using a firmware password, you're prompted to enter the password.

<br>

**Option-Command-P-R**:: Reset NVRAM or PRAM. If your Mac is using a firmware password, it ignores this key combination or starts up from macOS Recovery. 

<br>

**Shift (⇧)**:  Start up in safe mode. Disabled when using a firmware password.

<br>

**D**: Start up to the Apple Diagnostics utility. Or use Option-D to start up to this utility over the Internet. Disabled when using a firmware password.

<br>

**N**: Start up from a NetBoot server, if your Mac supports network startup volumes. To use the default boot image on the server, hold down Option-N instead. Disabled when using a firmware password.

<br>

**Command-S**:: Start up in single-user mode. Disabled in macOS Mojave or later, or when using a firmware password.

**T**:: Start up in target disk mode. Disabled when using a firmware password.

<br>

**Command-V**:: Start up in verbose mode. Disabled when using a firmware password.

**Eject (⏏) or F12 or mouse button or trackpad button**: Eject removable media, such as an optical disc. Disabled when using a firmware password.


---

### Ventura System Settings

*To access the settings from Terminal, Shortcuts, Keyboard Maestro or Alfred...*


Setting             |  Sub-section                 |RL                                                                                
--:|--|--
| Apple ID |   | x-apple.systempreferences:com.apple.systempreferences.AppleIDSettings |
| Family |   | x-apple.systempreferences:com.apple.Family-Settings.extension |
| Wi-Fi |   | x-apple.systempreferences:com.apple.wifi-settings-extension |
| Bluetooth |   | x-apple.systempreferences:com.apple.BluetoothSettings |
| Network |   | x-apple.systempreferences:com.apple.Network-Settings.extension |
| Notifications |   | x-apple.systempreferences:com.apple.Notifications-Settings.extension |
| Sound |   | x-apple.systempreferences:com.apple.Sound-Settings.extension |
| Focus |   | x-apple.systempreferences:com.apple.Focus-Settings.extension |
| Screen Time |   | x-apple.systempreferences:com.apple.Screen-Time-Settings.extension |
| General |   | x-apple.systempreferences:com.apple.systempreferences.GeneralSettings |
|   | About | x-apple.systempreferences:com.apple.SystemProfiler.AboutExtension |
|   | Software Update | x-apple.systempreferences:com.apple.Software-Update-Settings.extension |
|   | Storage | x-apple.systempreferences:com.apple.settings.Storage |
|   | AirDrop & Handoff | x-apple.systempreferences:com.apple.AirDrop-Handoff-Settings.extension |
|   | Login Items | x-apple.systempreferences:com.apple.LoginItems-Settings.extension |
|   | Language & Region | x-apple.systempreferences:com.apple.Localization-Settings.extension |
|   | Date & Time | x-apple.systempreferences:com.apple.Date-Time-Settings.extension |
|   | Sharing | x-apple.systempreferences:com.apple.Sharing-Settings.extension |
|   | Time Machine | x-apple.systempreferences:com.apple.Time-Machine-Settings.extension |
|   | Transfer or Reset | x-apple.systempreferences:com.apple.Transfer-Reset-Settings.extension |
|   | Startup Disk | x-apple.systempreferences:com.apple.preference.startupdisk |
| Appearance |   | x-apple.systempreferences:com.apple.Appearance-Settings.extension |
| Accessibility |   | x-apple.systempreferences:com.apple.Accessibility-Settings.extension |
|   | Voice Over | x-apple.systempreferences:com.apple.preference.universalaccess?Seeing_VoiceOver |
|   | Zoom | x-apple.systempreferences:com.apple.preference.universalaccess?Zoom |
|   | Display | x-apple.systempreferences:com.apple.preference.universalaccess?Seeing_Display |
|   | Spoken Content | x-apple.systempreferences:com.apple.preference.universalaccess?SpokenContent |
|   | Descriptions | x-apple.systempreferences:com.apple.preference.universalaccess?Descriptions |
|   | Audio | x-apple.systempreferences:com.apple.preference.universalaccess?Audio |
|   | Captions | x-apple.systempreferences:com.apple.preference.universalaccess?Captions |
|   | Voice Control | x-apple.systempreferences:com.apple.preference.universalaccess?VoiceControl |
|   | Keyboard | x-apple.systempreferences:com.apple.preference.universalaccess?Keyboard |
|   | Pointer Control | x-apple.systempreferences:com.apple.preference.universalaccess?Mouse |
|   | Switch Control | x-apple.systempreferences:com.apple.preference.universalaccess?Switch |
|   | Siri | x-apple.systempreferences:com.apple.preference.universalaccess?Siri |
|   | Shortcut | x-apple.systempreferences:com.apple.preference.universalaccess?Shortcut |
| Control Centre |   | x-apple.systempreferences:com.apple.ControlCenter-Settings.extension |
| Siri & Spotlight |   | x-apple.systempreferences:com.apple.Siri-Settings.extension |
| Privacy & Security |   | x-apple.systempreferences:com.apple.preference.security |
|   | Location Services   | x-apple.systempreferences:com.apple.preference.security?Privacy_SystemServices |
|   | Contacts    | x-apple.systempreferences:com.apple.preference.security?Privacy_Contacts |
|   | Calendars   | x-apple.systempreferences:com.apple.preference.security?Privacy_Calendars |
|   | Reminders   | x-apple.systempreferences:com.apple.preference.security?Privacy_RemindersPrivacy |
|   | Microphone  | x-apple.systempreferences:com.apple.preference.security?Privacy_Microphone |
|   | Camera | x-apple.systempreferences:com.apple.preference.security?Privacy_Camera |
|   | Automation  | x-apple.systempreferences:com.apple.preference.security?Privacy_Automation |
|   | AllFiles    | x-apple.systempreferences:com.apple.preference.security?Privacy_AllFiles |
|   | Accessibility   | x-apple.systempreferences:com.apple.preference.security?Privacy_Accessibility |
|   | Advertising | x-apple.systempreferences:com.apple.preference.security?Privacy_Advertising |
| Desktop & Dock |   | x-apple.systempreferences:com.apple.Desktop-Settings.extension |
| Displays |   | x-apple.systempreferences:com.apple.Displays-Settings.extension |
| Wallpaper |   | x-apple.systempreferences:com.apple.Wallpaper-Settings.extension |
| Screen Saver |   | x-apple.systempreferences:com.apple.ScreenSaver-Settings.extension |
| Battery |   | x-apple.systempreferences:com.apple.Battery-Settings.extension |
| Lock Screen |   | x-apple.systempreferences:com.apple.Lock-Screen-Settings.extension |
| Touch ID & Password |   | x-apple.systempreferences:com.apple.Touch-ID-Settings.extension |
| Users & Groups |   | x-apple.systempreferences:com.apple.Users-Groups-Settings.extension |
| Passwords |   | x-apple.systempreferences:com.apple.Passwords-Settings.extension |
| Internet Accounts |   | x-apple.systempreferences:com.apple.Internet-Accounts-Settings.extension |
| Game Center |   | x-apple.systempreferences:com.apple.Game-Center-Settings.extension |
| Wallet & Apple Pay |   | x-apple.systempreferences:com.apple.WalletSettingsExtension |
| Keyboard |   | x-apple.systempreferences:com.apple.Keyboard-Settings.extension |
| Trackpad |   | x-apple.systempreferences:com.apple.Trackpad-Settings.extension |
| Printers & Scanners |   | x-apple.systempreferences:com.apple.Print-Scan-Settings.extension |           

