@tool
extends CenterContainer

# BACKLOG: voice input
var persisted = {
	api_key_chat = "",
	api_docs_chat = "",
	api_key_image = "",
	api_docs_image = "",
	api_key_audio = "",
	api_docs_audio = "",
	image_style = "",
	image_prompt = "",
	image_generated = "",
	chat_style = "",
	chat_prompt = "",
	chat_generated = "",
	translation_style = "",
	translation_prompt = "",
	translation_generated = "",
}

func _load_code():
	print(EditorInterface.get_selection().get_selected_nodes())
	print(EditorInterface.get_script_editor().get_current_script().source_code)

func _run_command():
	var output = []
	OS.execute("CMD.exe", ["/C", "cd %TEMP% && dir"], output)

# TODO: GodotCop base actions
#TEXTURE: style, prompt, api-key-image and api-docs
#TODO: api-key-llm and api-docs
#AUDIO: api-key and api-docs
#RUN: api-key-llm and api-docs
#TRANSLATION: api-key-llm and api-docs

func _on_git_pressed():
	var output = []
	OS.execute("git", ["add", "."], output)
	OS.execute("git", ["commit", "-m", '"GodotoCop commit"'], output)


func _on_code_pressed():
	pass # Replace with function body.
