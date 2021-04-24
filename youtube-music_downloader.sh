#!/bin/bash
downloadIt () {
mkdir ~/Downloads/Music
clear
echo "paste in the playlist-url or title-url. there can be multiple songs."
echo
echo "e.g. https://www.youtube.com/watch?v=svU7L8yhav8 https://www.youtube.com/watch?v=TBp3-fZdq1E https://www.youtube.com/watch?v=RCtMVgOFcqA"
echo
echo "paste:"
read url
clear
echo "$(tput setaf 1)Your URL:$(tput sgr0) $url"
echo
echo
echo "press $(tput setaf 1)ENTER$(tput sgr0) to start the download"
read
youtube-dl -ciw -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o ~/Downloads/Music/"%(artist)s - %(title)s.%(ext)s" "$url"
clear
echo "FINISH"
sleep 1
echo "press $(tput setaf 1)ENTER$(tput sgr0) to open the Folder with the music. Stored in Downloads -> Music"
read
open ~/Downloads/Music/
}


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
sleep 3s
clear
echo
read -n1 -p "press $(tput setaf 1)y$(tput sgr0) if you have installed youtube. else press $(tput setaf 2)n$(tput sgr0) to install it" doit 
case $doit in  
  y|Y) downloadIt ;; 
    
  n|N) 
    clear
    echo
    echo "fist give me your password to install latest verison of youtube-dl"
    echo
    sudo clear
    sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
    sudo chmod a+rx /usr/local/bin/youtube-dl
    echo
    echo "press $(tput setaf 1)ENTER$(tput sgr0) to continue"
    read
    downloadIt
    ;; 

  *) echo wtf ;; 
esac
