#!/bin/bash
trap 'trap - SIGTERM; kill %1 %2' SIGINT SIGTERM EXIT
pkill PeacockPatcher.

cd $(dirname "$0")

nodepath=node
[ -f "$HOME"/.nvm/versions/node/$(<.nvmrc)/bin/node ] && nodepath="$HOME"/.nvm/versions/node/"$(<.nvmrc)"/bin/node

PORT=3500 $nodepath --enable-source-maps --harmony ./chunk0.js --hmr &
./PeacockPatcher.CLI &

"$@"