#!/bin/bash
cd ~/Downloads
curl 
clear
echo "$(tput setaf 1)youtube-music_downloads$(tput sgr0) $(tput setaf 2)by$(tput sgr0) $(tput setaf 4)elias$(tput sgr0)"
sleep 2s
echo
echo
clear
echo "Welcome $(tput setaf 5)$(whoami)$(tput sgr0)"
sleep 1
echo
echo "this tool will help you to download music from YouTube Music"
sleep 2s
echo
echo "press $(tput setaf 1)ENTER$(tput sgr0) to continue"
read
mkdir ~/Downloads/Music
clear
echo "paste in the playlist-url or title-url"
read url
clear
echo "$(tput setaf 1)Your URL:$(tput sgr0) $url"
echo
echo
echo "press $(tput setaf 1)ENTER$(tput sgr0) to start the download"
read
~/Downloads/youtube-dl -ciw -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o ~/Downloads/Music/"%(artist)s - %(title)s.%(ext)s" "$url"
clear
echo "FINISH"
sleep 1
echo "press $(tput setaf 1)ENTER$(tput sgr0) to open the Folder with the music. Stored in Downloads -> Music"
read
open ~/Downloads/Music/