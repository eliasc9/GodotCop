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

# TODO: GodotCop base actions
#TEXTURE: style, prompt, api-key-image and api-docs
#TODO: api-key-llm and api-docs
#AUDIO: api-key and api-docs
#RUN: api-key-llm and api-docs
#TRANSLATION: api-key-llm and api-docs

func _on_git_pressed():
	OS.execute("git", ["add", "."])
	OS.execute("git", ["commit", "-m", "GodotCop commit"])


func _on_code_pressed():
	#EditorInterface.get_selection().get_selected_nodes()
	var current_code = EditorInterface.get_script_editor().get_current_script().source_code

	#call chat with current code + prompt
	
	#replace current code with salida
