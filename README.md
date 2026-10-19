# Crisp Cozy Sounds Free

Twenty soft, cute interface sounds for cozy games - wooden taps, bubble pops, a page turn, coin and fruit pickups, planting
and watering - as Ogg Vorbis, and `CrispCozySfx`: a small autoload that plays them by name with one line, lets overlapping
sounds ring out instead of cutting each other off, and has volume, audio bus and mute settings.
It is the free sampler of [Crisp Cozy](https://anipixels.itch.io/crisp-cozy).

![The demo scene: one button per sound](screenshot.png)

## Install

**From the Asset Library (inside Godot):** open the **AssetLib** tab, search for "Crisp Cozy Sounds Free", press **Download**, then **Install**.
Everything lands in `res://addons/crisp_cozy_free/`.
Then enable the plugin: **Project > Project Settings > Plugins > Crisp Cozy Sounds Free > Enable**. That registers the `CrispCozySfx` autoload.
(If you prefer not to use the plugin, add `res://addons/crisp_cozy_free/crisp_cozy_sfx.gd` yourself under
**Project Settings > Globals > Autoload** with the name `CrispCozySfx`.)

**By hand:** download this repository (or `git clone` it) and copy the `addons/crisp_cozy_free` folder into your project,
so that it sits at `res://addons/crisp_cozy_free`. The scenes and resources point at that path, so keep the folder name.

To try the demo, open `res://addons/crisp_cozy_free/demo/cozy_sounds_demo.tscn` and press **Run Current Scene** (F6).
A `git clone` of this repository also opens as a Godot project of its own and runs the demo with F5
(zip downloads leave `project.godot` out on purpose, so they contain only the `addons/` folder).

## Use

```gdscript
func _on_start_pressed() -> void:
    CrispCozySfx.play("click")                 # short name, or the file name: "click_button_01"
    CrispCozySfx.play("talk", 0.04)            # +-4 % random pitch, so dialogue blips do not sound robotic

func _ready() -> void:
    CrispCozySfx.bus = &"SFX"                  # your own audio bus (default: Master)
    CrispCozySfx.volume_db = -6.0              # or CrispCozySfx.set_volume_linear(0.5) from a slider
    CrispCozySfx.connect_buttons(self)         # click + hover sounds on every button under this node
```

Also there: `muted`, `max_polyphony` (default 8 voices), `stop_all()`, `has_sound(name)`, `get_sound_names()`, and
`add_sound("my_name", stream)` to play your own sounds through the same node. Sounds keep playing while the scene tree
is paused, so pause menus still click. `play()` returns the `AudioStreamPlayer` it used.

Short names: `click`, `boop`, `hover`, `pop`, `tap`, `toggle_on`, `toggle_off`, `confirm`, `cancel`, `error`, `notification`,
`menu_open`, `menu_close`, `page_turn`, `level_up`, `coin`, `fruit`, `talk`, `plant_seed`, `water_plant`.

The autoload has its own name, so it works next to `CrispSfx` from
[Crisp UI Sounds Free](https://github.com/Anipixels/crisp-ui-sounds-free) - the two packs share folder names, loudness and key.

## What is in it

| Category | Sounds |
|---|---|
| Buttons | `boop_up_01` (0.31 s), `click_button_01` (0.24 s), `hover_soft_01` (0.26 s), `pop_bubble_01` (0.34 s), `tap_wood_01` (0.31 s) |
| Cozy Actions | `plant_seed_01` (0.42 s), `water_plant_01` (0.72 s) |
| Feedback | `cancel_01` (0.89 s), `confirm_01` (1.03 s), `error_01` (0.69 s) |
| Menus | `menu_close` (0.45 s), `menu_open` (0.42 s), `page_turn_01` (0.42 s) |
| Notifications | `notification_01` (1.47 s) |
| Pickups | `coin_01` (0.83 s), `fruit_01` (0.34 s) |
| Rewards | `level_up` (2.21 s) |
| Text | `talk_mid_01` (0.26 s) |
| Toggles | `toggle_off` (0.33 s), `toggle_on` (0.34 s) |

All sounds are loudness-matched, start on the first sample (no dead air) and peak at or below -1 dBFS. They are tuned to
C major pentatonic, so any two played together stay in tune. `hover_soft_01` is mixed quiet on purpose, because hover sounds
play constantly. Files (27, 201 KB):

- `./` - `LICENSE.txt`, `README.md`, `crisp_cozy_sfx.gd`, `plugin.cfg`, `plugin.gd`
- `demo/` - `cozy_sounds_demo.gd`, `cozy_sounds_demo.tscn`
- `sounds/` - 20 files (.ogg)

This repository has the OGG files only, to keep the download small. The 44.1 kHz 16-bit WAV versions of the same 20
sounds are in the free download on itch.io.

## Full pack

**[Crisp Cozy on itch.io](https://anipixels.itch.io/crisp-cozy)** has **261 sounds** - these 20 and 241 more, as WAV and OGG: Buttons (44), Toggles (24),
Feedback (29), Notifications (21), Menus (18), Rewards (23), Pickups (27), Shop (12), Text (25) and Cozy Actions (38: harvest,
dig, cat purr, bird chirps, cooking, fishing, footsteps, door chimes...). Anything heard often has 2-5 variations, errors stay
gentle (no buzzers), and the star, combo, slider and countdown sounds climb the same scale.

Or get every Crisp pack in one bundle: [Crisp Everything Bundle](https://itch.io/s/203391/crisp-everything-bundle).

## Godot version

Written for **Godot 4.3 and newer** (GDScript only, no C#, no GDExtension, no feature known to need 4.4 or later).
Tested on **Godot 4.7.2 stable (the .NET editor build, run headless on Windows 11)**: headless import plus a script that loads every file and exercises the public API,
with no errors or warnings. It has **not** been run on 4.3 - 4.6; if something misbehaves there, please open an issue.

The audio was only checked for loading, length and playback state under Godot's headless (dummy) audio driver;
listen to the demo scene on your own machine to judge the sound.

## Licence

This free repository has two licences, both standard and both fine for commercial games:

- **Assets** - the sounds (OGG) and the demo scene (.tscn) - are under **Creative Commons Attribution 4.0 International (CC BY 4.0)**.
  Use, edit and ship them in anything, including commercial projects, as long as you give credit.
  A line like this in your credits is enough: `Crisp Cozy Sounds Free by Anipixels - https://anipixels.itch.io/crisp-cozy`
- **Code** - every `.gd` file - is under the **MIT licence**.

See `LICENSE` (assets) and `LICENSE-CODE` (code); a copy of both is in `addons/crisp_cozy_free/LICENSE.txt`.
This applies to the files in this repository only. The paid full pack has its own licence (no attribution needed, no redistribution).

## How it was made

The sounds are generated procedurally by code written with an AI assistant (Claude). No AI image or audio generators were used, and nothing is traced or taken from third-party assets.
