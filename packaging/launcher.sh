#!/bin/bash
trap 'trap - SIGTERM; kill %1 %2; pkill PeacockPatcher.' SIGINT SIGTERM EXIT
pkill PeacockPatcher.

cd $(dirname "$0")

./PeacockPatcher.CLI &
PORT=3500 "$HOME"/.nvm/versions/node/v23.9.0/bin/node --enable-source-maps --harmony ./chunk0.js --hmr &

"$@"