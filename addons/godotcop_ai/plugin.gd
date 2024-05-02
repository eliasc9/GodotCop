@tool
extends EditorPlugin

const MainPanel = preload("res://addons/godotcop_ai/scene.tscn")

var main_panel_instance

var button_container: Control


func _enter_tree():
	main_panel_instance = MainPanel.instantiate()
	EditorInterface.get_editor_main_screen().add_child(main_panel_instance)
	_make_visible(false)
	
  # Move before AssetLib
	var title_bar := get_tree().root.find_child("*EditorTitleBar*", true, false)
	print(title_bar.get_children())
	button_container = title_bar.get_child(2)
	button_container.move_child(button_container.get_child(4), 3)


func _exit_tree():
	if main_panel_instance:
		main_panel_instance.queue_free()


func _has_main_screen():
	return true


func _make_visible(visible):
	if main_panel_instance:
		main_panel_instance.visible = visible


func _get_plugin_name():
	return "GodotCop"


func _get_plugin_icon():
	return preload("res://addons/godotcop_ai/icon.svg")
