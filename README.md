# node-mochawesome - Debian Package

This repository contains the Debian packaging files for [mochawesome](https://github.com/adamgruber/mochawesome), a gorgeous reporter for Mocha.js.

## About

Mochawesome is a custom reporter for use with the Javascript testing framework, mocha. It runs on Node.js and works in conjunction with mochawesome-report-generator to generate a standalone HTML/CSS report to help visualize your test runs.

## Package Details

- **Package Name**: node-mochawesome
- **Version**: 7.1.4-1
- **Architecture**: all
- **Install Path**: `/usr/lib/nodejs/mochawesome/`
- **Dependencies**: nodejs:any
- **Recommended**: mocha, node-chalk, node-diff, node-json-stringify-safe, node-lodash, node-strip-ansi, node-uuid

## Building

Use the provided build script:

```bash
./build.sh
```

Or manually:

```bash
dpkg-buildpackage -us -uc -b
```

The package will be created in the parent directory: `../node-mochawesome_7.1.4-1_all.deb`

## Installation

After building, install with:

```bash
sudo dpkg -i ../node-mochawesome_*.deb
sudo apt-get install -f  # to install any missing dependencies
```

## Usage

Use with mocha:

```bash
mocha testfile.js --reporter mochawesome
```

For parallel mode:

```bash
mocha tests --reporter mochawesome --require mochawesome/register
```

## Upstream

- Homepage: https://github.com/adamgruber/mochawesome
- Fork: https://github.com/Vitexus/mochawesome

## Maintainer

Vítězslav Dvořák <info@vitexsoftware.cz>

## License

MIT License - see debian/copyright for details.
