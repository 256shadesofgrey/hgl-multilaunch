#!/bin/bash
export HEROIC_APP_NAME=890d9cf396d04922a1559333df419fed
export HEROIC_APP_RUNNER=legendary
export GAMEID=umu-0
export HEROIC_APP_SOURCE=epic
export STORE=egs
export STEAM_COMPAT_INSTALL_PATH=/home/user/Games/Heroic/ShadowoftheTombRaider
export LD_PRELOAD=
export STEAM_COMPAT_CLIENT_INSTALL_PATH=/home/user/.steam/steam
export WINEPREFIX="/home/user/Games/Heroic/Prefixes/default/Shadow of the Tomb Raider Definitive Edition"
export STEAM_COMPAT_DATA_PATH="/home/user/Games/Heroic/Prefixes/default/Shadow of the Tomb Raider Definitive Edition"
export PROTONPATH=/home/user/.config/heroic/tools/proton/Proton-GE-latest
export WINE_FULLSCREEN_FSR=0
export PROTON_DISABLE_NVAPI=1
export PROTON_EAC_RUNTIME=/home/user/.config/heroic/tools/runtimes/eac_runtime
export PROTON_BATTLEYE_RUNTIME=/home/user/.config/heroic/tools/runtimes/battleye_runtime
export STEAM_COMPAT_APP_ID=0
export SteamAppId=0
export SteamGameId=heroic-ShadowoftheTombRaider
export PROTON_LOG_DIR=/home/user
export LEGENDARY_CONFIG_PATH=/home/user/.config/heroic/legendaryConfig/legendary

"/home/user/.config/heroic/tools/proton/Proton-GE-latest/proton" run "/home/user/Downloads/shadow of the tomb raider/Shadow of the Tomb Raider v1.0-v20211018 Plus 18 Trainer.exe" &
/opt/heroic/resources/app.asar.unpacked/build/bin/x64/linux/legendary launch 890d9cf396d04922a1559333df419fed --no-wine --wrapper " "/home/user/.config/heroic/tools/proton/Proton-GE-latest/proton" run" --language en
