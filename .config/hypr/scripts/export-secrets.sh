#!/usr/bin/env bash

# 1. Fetch the secrets dynamically from pass
HA_USER=$(pass home-assistant/integration-user)
HA_PASS=$(pass home-assistant/integration-pass)

# 2. Export them as environment variables for any child processes (like Waybar or custom scripts)
export HA_INTEGRATION_USER="$HA_USER"
export HA_INTEGRATION_PASS="$HA_PASS"

# 3. Import them into the systemd and D-Bus user environments.
# This ensures background services, systemd units, or custom widgets can see them.
dbus-update-activation-environment --systemd HA_INTEGRATION_USER HA_INTEGRATION_PASS
