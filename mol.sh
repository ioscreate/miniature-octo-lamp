#!/bin/bash

@echo " _                               _       "
@echo "(_) ___  ___  ___ _ __ ___  __ _| |_ ___ "
@echo "| |/ _ \/ __|/ __| '__/ _ \/ _\` | __/ _ \\"
@echo "| | (_) \__ \ (__| | |  __/ (_| | ||  __/"
@echo "|_|\___/|___/\___|_|  \___|\__,_|\__\___|"
@echo "    "
@echo " @ioscreate "

@wget http://downloads.metasploit.com/data/releases/framework-latest.tar.bz2
@tar -jxf framework-latest.tar.bz2

@mkdir -p /opt/metasploit4
@cp -a msf3/ /opt/metasploit4/msf3
@chown root:root -R /opt/metasploit4/msf3
@ln -sf /opt/metasploit4/msf3/msf* /usr/local/bin/

@cd msf3

@if [[ $(gem) == "-ash"* ]]; then
    @echo "Ruby undetected."
    @apk add ruby
    @gem install bundler
fi

@echo "Installation complete!"
