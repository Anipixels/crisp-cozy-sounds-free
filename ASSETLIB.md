# Asset Library submission - Crisp Cozy Sounds Free

Paste these into https://godotengine.org/asset-library/asset/submit (log in first). Nothing has been submitted or pushed yet.
The repository URL assumes the GitHub account is `Anipixels` and the repository is named as suggested; adjust if not.

| Field | Value |
|---|---|
| Asset Name (title) | Crisp Cozy Sounds Free - 20 Cozy UI Sounds + CrispCozySfx |
| Category | Scripts |
| Godot version | 4.3 (tested only on 4.7.2 stable (the .NET editor build, run headless on Windows 11); see the note below) |
| Version | 1.0.0 |
| Repository host | GitHub |
| Repository URL | https://github.com/Anipixels/crisp-cozy-sounds-free |
| Issues URL | https://github.com/Anipixels/crisp-cozy-sounds-free/issues |
| Download Commit | the full 40-character hash of the commit you pushed (`git rev-parse HEAD`) |
| Icon URL | https://raw.githubusercontent.com/Anipixels/crisp-cozy-sounds-free/main/icon.png |
| License | CC-BY-4.0 (the form takes one licence; the description says the GDScript is MIT) |
| Suggested repo name | crisp-cozy-sounds-free |

Preview: type **Image**, image URL and thumbnail URL both
`https://raw.githubusercontent.com/Anipixels/crisp-cozy-sounds-free/main/screenshot.png`

## Short description

(For the GitHub repository "About" line; the Asset Library form has no short-description field.)

20 free soft, cozy UI sounds (wood taps, bubble pops, coins, page turns, planting...) and a small autoload: CrispCozySfx.play("click"), with volume, bus and polyphony.

## Description (long)

```
Twenty soft, cute UI sounds for cozy games (Ogg Vorbis) and a small autoload that plays them by name:

    CrispCozySfx.play("click")

Sounds: wooden tap, button click, boop, bubble pop, hover, toggle on / off, confirm, cancel, a gentle error, notification,
menu open / close, page turn, level up, coin, fruit pickup, an 'animal talk' dialogue blip, plant seed and water plant.
Loudness-matched, no dead air at the start, tuned to C major pentatonic so sounds played together stay in tune.

CrispCozySfx:
- Short names ("click", "coin", "talk") or file names ("click_button_01").
- Polyphony: overlapping sounds do not cut each other off (8 voices by default, adjustable).
- volume_db / set_volume_linear(), bus, muted, optional random pitch per play: CrispCozySfx.play("talk", 0.04)
- connect_buttons(node): click and hover sounds for every button under a node, in one call.
- add_sound(name, stream) to play your own sounds through it. Keeps playing while the tree is paused.
- Its own autoload name, so it works next to CrispSfx from Crisp UI Sounds Free.

Enable the plugin (Project Settings > Plugins) to register the CrispCozySfx autoload. Demo scene: addons/crisp_cozy_free/demo/cozy_sounds_demo.tscn
Installs into addons/crisp_cozy_free. GDScript only. Written for Godot 4.3+, tested on 4.7.2.

This is the free sampler of Crisp Cozy, which has 261 sounds as WAV and OGG (these 20 and 241 more): https://anipixels.itch.io/crisp-cozy
Or get every Crisp pack in one bundle: https://itch.io/s/203391/crisp-everything-bundle

Licence: sounds CC BY 4.0 (credit "Crisp Cozy Sounds Free by Anipixels" with the link above); GDScript MIT.
How it was made: the sounds are synthesised procedurally by code written with an AI assistant (Claude). No AI audio generators.
```

## Notes before you submit

- Godot version: the addon is written for 4.3+, but it has only been run on 4.7.2. Choosing "4.3" in the form is a claim that
  it works there. If you would rather claim only what was tested, pick the newest 4.x entry the form offers instead.
- The `.gitattributes` file marks everything except `addons/` as `export-ignore`, so the zip the Asset Library downloads
  contains only `addons/crisp_cozy_free/` (with its own README and licence copy).
