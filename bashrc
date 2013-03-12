#
# ~/.bashrc
#

# Gives quote at login
if [ "$PS1" ]; then
	echo -e "\e[00;32m$(/usr/bin/fortune)\e[00m"
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[m\]\[\e[0;30m\]'
#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\]\[\e[1;37m\]'

# Set default editor
export EDITOR=nano

# Custom aliases for pacman and mkinitcpio
alias pacupg='sudo pacman -Syu'		#Upgrade system
alias pacin='sudo pacman -S '		#Install package
alias pacu='sudo pacman -U '		#Upgrade specific package
alias pacrm='sudo pacman -Rns '		#Remove package and dependencies
alias pacre='sudo pacman -R '		#Remove package
alias pacinfo='pacman -Si '		#Display info about given package
alias pacse='pacman -Ss '		#Search for a package
alias pacorphan='pacman -Qdt'		#Searches for orphaned dependencies
alias mkinitcpio='sudo mkinitcpio -p linux && sudo mkinitcpio -p linux-lts'	#generate boot images
