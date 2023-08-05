rules_folder_name := rules
templ_folder_name := templates
imges_folder_name := img

ifeq ($(OS), Windows_NT)
	S := \\
else
	S := /
endif

rules := .$(S)$(rules_folder_name)$(S)
templ := .$(S)$(templ_folder_name)$(S)
imges := .$(S)docs$(S)$(imges_folder_name)$(S)

all:
	python ./HTML-Builder/html_builder.py ./docs/ $(rules) $(templ) $(imges)