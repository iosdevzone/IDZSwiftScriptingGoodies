.PHONY: docs
docs:
	sourcekitten doc --spm-module IDZSwiftScriptingGoodies > IDZSwiftScriptingGoodies.json
	jazzy -s IDZSwiftScriptingGoodies.json
	open docs/index.html

proj:
	swift package generate-xcodeproj
