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

# Audio Configuration
make headphone work properly and fix auto disconnect issue  

## Enable Pro Audio

### For Gnome

#### Requirements

Install PulseAudio Volume Control:

```bash
sudo dnf install pavucontrol
```

1. Open **PulseAudio Volume Control**.
2. Go to **Configuration**.
3. Select your audio device.
4. Set the profile to **Pro Audio**.

Without this step, the script may not work correctly.

## Test

Run the script manually:

```bash
~/unmute_headphone.sh
```

If audio doesnt works, try restart.

-----
