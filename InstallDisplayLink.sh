#! /bin/bash

if [ -e "/Applications/DisplayLink Manager.app" ]; then
	echo "Uninstalling current DisplayLink software..."
	killall DisplayLink Manager
	rm -rf "/Applications/DisplayLink Manager.app"
else
	echo "Installing DisplayLink software on your system."
	curl https://www.synaptics.com/sites/default/files/exe_files/2024-05/DisplayLink%20Manager%20Graphics%20Connectivity1.10.2-EXE.pkg --output ~/Downloads/DisplayLink\ Manager\ Graphics\ Connectivity1.10.2-EXE.pkg
	sudo installer -allowUntrusted -pkg ~/Downloads/DisplayLink\ Manager\ Graphics\ Connectivity1.10.2-EXE.pkg -target /Applications/
fi
