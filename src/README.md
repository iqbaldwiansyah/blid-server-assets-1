# Source Folder

This folder is required for ModPackager to work. Every mod packs you want to create should be put into `src` folder. Inside `src` folder you can create another subfolder with any name, to hold all of your mods. In this example we use `assets` as the name. Folder structure should be like this:

```
blid-server-assets
|--- assets/
|--- modpackager/
|--- output/
|--- src/
     |--- assets
          |--- GFX/
          |--- GLOBAL/
          |--- LANGUAGES/
          |--- <any other folders>/
          |--- config.json
     |--- other_assets
          |--- GFX/
          |--- GLOBAL/
          |--- LANGUAGES/
          |--- <any other folders>/
          |--- config.json
|--- build.bat
|--- build.sh
|--- buildconfig.json
```
You can use any folder name for the assets folder inside `src`, but you have to update your `packages.source_name` inside `buildconfig.json` to the name you chose. 

## Configuration

Package configurations are saved in `config.json` file. 
```json
{
    "encrypt_files": false,
    "entries": [
        {
            "type": "directory",
            "local_path": "GFX",
            "game_path": "GFX"
        },
        {
            "type": "directory",
            "local_path": "LANGUAGES",
            "game_path": "LANGUAGES"
        },
        {
            "type": "directory",
            "local_path": "GLOBAL",
            "game_path": "GLOBAL"
        }
    ],
    "auto_split_mode": "none"
}
```
- `encrypt_files` - whether you want to encrypt the files or not. This prevents people to open your modpack using WinRAR or 7zip. Note that this encryption only makes unpacking harder, not impossible, since the files inside your mod pack will be extracted anyway once you start the game.
- `entries` - contains array of files/folders you want the mod pack to replace the game file with.
    - `type` - whether if you want to replace file or folder. Available options : `file`, `directory`
    - `local_path` - defines the source of mods you want to source from, with the root at `src/assets`
    - `game_path` - this file/folder will get replaced with the one you set in `local_path`
- `auto_split_mode` - change whether to produce single or multiple mod files. Available options : `none`, `base`, `aggresive`
    - `none` - creates single mod file
    - `base` - separate mod file by the top level directory. e.g: `GFX`, `LANGUAGES`, `GLOBAL`, etc.
    - `aggresive` - separate mod file by every single directory in full directory tree.
    