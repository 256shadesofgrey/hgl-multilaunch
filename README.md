### About the project
This repository contains an example script for launching a game simultaneously with another application using Heroic Games Launcher as well as instructions on how to write your own for the games and applications that you use.

### Instructions
1. Install the Heroic Games Launcher natively. Using the flatpak version might work, but I haven't tested it.
2. Install the game you want to play.
3. \[Optional\] If you want to make changes to the game settings in the Heroic Games Launcher, do them now, so that the settings you want to use are reflected in the following steps.
4. Exit the Heroic Games Launcher and re-launch it from the command line.
5. Launch the game you want to play and exit it again.
6. In the command line where you launched HGL you will see a line containing the full launch command for your game. Copy everything that comes after the name of the game (in this case starting with `HEROIC_APP_NAME`). It will look something like this:
```
(07:18:46) INFO:    [Legendary]:        Launching Shadow of the Tomb Raider: Definitive Edition: HEROIC_APP_NAME=890d9cf396d04922a1559333df419fed HEROIC_APP_RUNNER=legendary GAMEID=umu-0 HEROIC_APP_SOURCE=epic STORE=egs STEAM_COMPAT_INSTALL_PATH=/home/user/Games/Heroic/ShadowoftheTombRaider LD_PRELOAD= STEAM_COMPAT_CLIENT_INSTALL_PATH=/home/user/.steam/steam WINEPREFIX="/home/user/Games/Heroic/Prefixes/default/Shadow of the Tomb Raider Definitive Edition" STEAM_COMPAT_DATA_PATH="/home/user/Games/Heroic/Prefixes/default/Shadow of the Tomb Raider Definitive Edition" PROTONPATH=/home/user/.config/heroic/tools/proton/Proton-GE-latest WINE_FULLSCREEN_FSR=0 PROTON_DISABLE_NVAPI=1 PROTON_EAC_RUNTIME=/home/user/.config/heroic/tools/runtimes/eac_runtime PROTON_BATTLEYE_RUNTIME=/home/user/.config/heroic/tools/runtimes/battleye_runtime STEAM_COMPAT_APP_ID=0 SteamAppId=0 SteamGameId=heroic-ShadowoftheTombRaider PROTON_LOG_DIR=/home/user LEGENDARY_CONFIG_PATH=/home/user/.config/heroic/legendaryConfig/legendary /opt/heroic/resources/app.asar.unpacked/build/bin/x64/linux/legendary launch 890d9cf396d04922a1559333df419fed --no-wine --wrapper " "/home/user/.config/heroic/tools/proton/Proton-GE-latest/proton" waitforexitandrun" --language en
```
7. Create a new script as follows:
   - Write every `VARIABLE_NAME=value` entry in the command that is separated by a space on a separate line and add `export ` at the start of every such line. See example to get a picture of how to do it.
   - The first entry that doesn't start with `VARIABLE_NAME=` is the start of the actual game launch command. In the given example it is:
   ```
   /opt/heroic/resources/app.asar.unpacked/build/bin/x64/linux/legendary launch 890d9cf396d04922a1559333df419fed --no-wine --wrapper " "/home/user/.config/heroic/tools/proton/Proton-GE-latest/proton" waitforexitandrun" --language en
   ```
   Put this on a separate line and change the word `waitforexitandrun` to just `run`.
   - Copy the string that ends with `/proton` and put it on a separate line between the variables and the game launch command. This will be the line that launches your additional application.
   - In the application line, after the proton string, add ` run` followed by the path to the application you want to launch.
   - Add an `&` at the end of the application line. This will make sure that running the application does not prevent the game from launching.
8. Make the script executable `chmod +x script.sh`. Make sure to use the actual file name that you gave the script instead of `script.sh`
9. \[Optional\] At this point you can just launch the game with the additional application using the script. But if you want to use the launcher, you can go to the advanced settings for the game in HGL and in the field saying `Select a script to run before the game is launched` you put the path to this script. And to prevent the game from launching again after you exit it, put `echo` into the field labeled `Select an alternative EXE to run`.

There is a small issue if you do step 9. If you launch the game in HGL, it will still say "launching" when the game is actually already running. This also means that you can't stop the game from within HGL. I have not found a solution to this.
