#
#     The Peacock Project - a HITMAN server replacement.
#     Copyright (C) 2021-2024 The Peacock Project Team
#
#     This program is free software: you can redistribute it and/or modify
#     it under the terms of the GNU Affero General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.
#
#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU Affero General Public License for more details.
#
#     You should have received a copy of the GNU Affero General Public License
#     along with this program.  If not, see <https://www.gnu.org/licenses/>.
#

VERSION=$(jq -r '.version' package.json)

if [ "$1" == "" ]; then
    echo "Assembling $VERSION with default settings"
    IS_LINUX=false
    OUT_DIR=Peacock-v"$VERSION"
else
    echo "Assembling $VERSION with Linux configuration"
    IS_LINUX=true
    OUT_DIR=Peacock-v"$VERSION"-linux
fi

# generate options.ini
node chunk0.js noop

mkdir "$OUT_DIR"
cp packaging/HOW_TO_USE.html "$OUT_DIR"
cp chunk*.js "$OUT_DIR"
if [ "$IS_LINUX" != true ]; then
    cp -r nodedist "$OUT_DIR"
    cp "packaging/Start Server.cmd" "$OUT_DIR"
    cp "packaging/Tools.cmd" "$OUT_DIR"
    dotnet publish patcher/HitmanPatcher.UI/HitmanPatcher.UI.csproj -r win-x64 -c Release -p:PublishSingleFile=True --self-contained -p DebugType=none -p:EnableWindowsTargeting=True -o .
    cp PeacockPatcher.exe "$OUT_DIR"
else
    dotnet publish patcher/HitmanPatcher.CLI/HitmanPatcher.CLI.csproj -r linux-x64 -c "Release - Linux" -f net8.0 -p:PublishTrimmed=True -p:PublishSingleFile=True --self-contained -p DebugType=none -p:IsLinux=true -o .
    cp PeacockPatcher.CLI "$OUT_DIR"
fi
cp LICENSE "$OUT_DIR"
cp THIRDPARTYNOTICES.txt "$OUT_DIR"
cp .nvmrc "$OUT_DIR"
mkdir "$OUT_DIR"/resources
cp resources/dynamic_resources_h3.rpkg "$OUT_DIR"/resources/dynamic_resources_h3.rpkg
cp resources/dynamic_resources_h2.rpkg "$OUT_DIR"/resources/dynamic_resources_h2.rpkg
cp resources/dynamic_resources_h1.rpkg "$OUT_DIR"/resources/dynamic_resources_h1.rpkg
cp -r resources/challenges "$OUT_DIR"/resources/challenges
cp -r resources/mastery "$OUT_DIR"/resources/mastery
cp resources/contracts.prp "$OUT_DIR"/resources/contracts.prp
mkdir "$OUT_DIR"/webui
mkdir "$OUT_DIR"/webui/dist
cp webui/dist/*.html "$OUT_DIR"/webui/dist
cp -r webui/dist/assets "$OUT_DIR"/webui/dist/assets
cp webui/dist/THIRDPARTYNOTICES.txt "$OUT_DIR"/webui/dist/THIRDPARTYNOTICES.txt
cp options.ini "$OUT_DIR"
ls "$OUT_DIR"
zip -9 -r "$OUT_DIR".zip "$OUT_DIR"
