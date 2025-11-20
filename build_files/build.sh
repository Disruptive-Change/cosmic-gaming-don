#!/usr/bin/env bash
set -e

echo "▶ Installing gaming packages..."
rpm-ostree install gamescope gamemode mangohud goverlay

echo "▶ Adding NVIDIA max performance service..."
cp /usr/local/share/cosmic-gaming/services/nvidia-maxperf.service /usr/lib/systemd/system/

echo "▶ Adding Gamescope 4K HDR autostart service..."
cp /usr/local/share/cosmic-gaming/services/gamescope-4k.service /usr/lib/systemd/system/

echo "▶ Copying theming files..."
cp -r /usr/local/share/cosmic-gaming/theme/* /usr/share/

echo "▶ Build steps done."
