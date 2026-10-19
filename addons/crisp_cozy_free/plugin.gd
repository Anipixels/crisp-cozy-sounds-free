@tool
extends EditorPlugin
## Registers the CrispCozySfx autoload when the plugin is enabled and removes it when it is disabled.

const AUTOLOAD_NAME := "CrispCozySfx"
const AUTOLOAD_PATH := "res://addons/crisp_cozy_free/crisp_cozy_sfx.gd"


func _enable_plugin() -> void:
	add_autoload_singleton(AUTOLOAD_NAME, AUTOLOAD_PATH)


func _disable_plugin() -> void:
	remove_autoload_singleton(AUTOLOAD_NAME)
