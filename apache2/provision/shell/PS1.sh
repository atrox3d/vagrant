#!/bin/bash
#grep -q 'PS1="$PS1\\n"' ~vagrant/.bashrc && {
grep -q 'PS1="${PS1/\\\\$/}\\n\\$ "' ~vagrant/.bashrc && {
	echo "\n already added to PS1"
} || {
	echo "adding \n to PS1"
	
	# light white -> yellow
	#PS1="$(echo "$PS1" | sed 's/1;37m/1;33m/')"
	
	# remove trailing \n add __git_ps1
	#PS1="${PS1/\\$/}"'\[\033[36m\]$(__git_ps1)\[\033[0m\]'
	
	# add trailing \n
	#PS1="$PS1\n"
	
	# add trailing $
	#PS1="$PS1\$ "
	
	echo 'PS1="${PS1/\\$/}\n\$ "' >> ~vagrant/.bashrc
}
