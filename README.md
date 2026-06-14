# Audio Configuration

Configuration and utility scripts for fixing headphone audio on Fedora GNOME.

## Clone Repository

```bash
git clone git@github.com:waterthefork/config.git
cd config
```

## Move Script

Copy the script to your home directory:

```bash
cp -r scripts ~/
chmod +x ~/scripts/unmute_headphone.sh
```

## Requirements

Install PulseAudio Volume Control:

```bash
sudo dnf install pavucontrol
```

## Enable Pro Audio

### For Gnome
1. Open **PulseAudio Volume Control**.
2. Go to **Configuration**.
3. Select your audio device.
4. Set the profile to **Pro Audio**.

Without this step, the script may not work correctly.

## Test

Run the script manually:

```bash
~/headphone-fix.sh
```

If audio works, continue with automatic startup.

## Start Automatically

Create the autostart directory if it does not exist:

```bash
mkdir -p ~/.config/autostart
```

Create:

```bash
nano ~/.config/autostart/headphone-fix.desktop
```

Paste:

```ini
[Desktop Entry]
Type=Application
Name=Headphone Fix
Exec=/home/$USER/headphone-fix.sh
Terminal=false
X-GNOME-Autostart-enabled=true
```

Save the file and log out or reboot.

## Script

```bash
#!/bin/bash
sleep 2

export ALSA_CARD=0

amixer -c 0 sset Headphone unmute
amixer -c 0 sset Headphone 100%

amixer -c 0 sset Master unmute
amixer -c 0 sset Master 100%
```

## Tested On

- Fedora GNOME
- PipeWire
- ALSA
