#!/bin/bash

trap cleanup EXIT SIGINT SIGTERM

cleanup() {
    trap - SIGTERM
    kill %1 %2
    [ -n "$PROTONPATH" ] && [ -v STEAM_COMPAT_TOOL_PATHS ] && PROTONPATH="$(echo "$STEAM_COMPAT_TOOL_PATHS" | tr ":" "\n" | grep -i proton | head -n1)"
    [[ "$WINEPREFIX" != *pfx ]] && pfx="/pfx"
    [ -v PROTONPATH ] && [ -v WINEPREFIX ] && WINEPREFIX="${WINEPREFIX}${pfx}" "${PROTONPATH}/files/bin/wineserver" -k
}

pkill PeacockPatcher.

cd $(dirname "$0")

nodepath=node
[ -f "$HOME"/.nvm/versions/node/$(<.nvmrc)/bin/node ] && nodepath="$HOME"/.nvm/versions/node/"$(<.nvmrc)"/bin/node

PORT=3500 $nodepath --enable-source-maps --harmony ./chunk0.js --hmr &> nodelog &
./PeacockPatcher.CLI --domain 127.0.0.1:3500 &> patcherlog &

cd -

"$@" &
wait $!
