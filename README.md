# NFS World Server Mods for Balap Liar-ID

This repo contains assets that our server use.
Please note that these files are licensed under AGPL-3, means that you are obliged to make your version of this repository open-sourced, keep the license, and credit us if you want to use these files.

## Configuring
`buildconfig.json` holds the primary configuration of the mod packager.
```json
{
    "packages": [
        {
            "source_name": "assets",
            "distribution_name": "balapliarid"
        }
    ],
    "generate_index": true
}
```
- `source_name` - the name of your mod pack inside `src/` folder
- `distribution_name` - name of bundled mod pack (output file) in the `output/` folder
- `generate_index` - whether or not to create an `index.json` that contains mod bundles' name and checksum for the game launcher to use

For modpack configuration, see [README.md](src/README.md)

## Building

`git clone` this repository and `cd` into the folder
```
git clone https://github.com/Plyrs1/blid-server-assets
cd blid-server-assets
```

Then download ModPackager (https://github.com/SoapboxRaceWorld/ModPackager/releases/), extract the contents (just the files without folder) to the `modpackager` folder.

Then you can just run `build.bat` or `build.sh` (WIP), depending on your operating system, and then you can find the resulting mod package inside `output` folder.

## Acknowledgement

Here are the lists of our wonderful modders that are contributing to the community

<table width="100%">
    <thead>
        <tr>
            <th style="text-align: center" width="20%">Name</th>
            <th style="text-align: center" width="20%">Contribution</th>
            <th style="text-align: center">Lists</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td align="center"><img src="https://discordav.deno.dev/295511574263889921" width="50" height="50" /><br /><sub>Miku Racing</sub></td>
            <td align="center">Project Owner</td>
            <td align="center">-</td>
        </tr>
        <tr>
            <td align="center"><img src="https://discordav.deno.dev/210098396113928192" width="50" height="50" /><br /><sub>Plyrs</sub></td>
            <td align="center">Developer</td>
            <td align="center">Managing infrastructure</td>
        </tr>
        <tr>
            <td align="center"><img src="https://discordav.deno.dev/494890873738231808" width="50" height="50" /><br /><sub>Vee</sub></td>
            <td align="center">Modder</td>
            <td align="center">3D Modeler</td>
        </tr>
        <tr>
            <td align="center"><img src="https://discordav.deno.dev/761478857186344970" width="50" height="50" /><br /><sub>Initial R</sub></td>
            <td align="center">Modder</td>
            <td align="center">Police Editor</td>
        </tr>
    </tbody>
</table>
