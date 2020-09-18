# Polybar module for displaying left and right fan speed

## Required dependencies

* `lm-sensors`

### Install and configure `lm-sensors` on Debian based distro:

1. Install `lm-sensors`
```bash
sudo apt install lm-sensors
```
2. Configure
```bash
sudo sensors-detect
```

## Include fan_speed.sh into your Polybar config file

1. Get fan_speed.sh
```bash
cd ~/.config/polybar && git clone https://github.com/vuckale/dual-fan-speed-module-polybar.git
```
2. Make script executable:

```bash
chmod +x fan_speed.sh
```
2. Add module to config file:

```ini
[module/fan_speed]
type = custom/script
interval = 2
format = <label>
label = %output%
exec = /path/to/fan_speed.sh
```
Adjust `interval` to your liking and reference/point `exec` to `fan_speed.sh`. If you cloned it to `~/.config/polybar` it should look like this:

```ini
exec = ~/.config/polybar/dual-fan-speed-module-polybar/fan_speed.sh
```

3. Relaunch Polybar 