#!/bin/bash
# Build script for node-mochawesome Debian package

set -e

echo "Building node-mochawesome Debian package..."
dpkg-buildpackage -us -uc -b

echo ""
echo "Build complete!"
echo "Package created: ../node-mochawesome_7.1.4-1_all.deb"
echo ""
echo "To install: sudo dpkg -i ../node-mochawesome_7.1.4-1_all.deb"
echo "            sudo apt-get install -f"
