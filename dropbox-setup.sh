#!/bin/sh

# dropboxURL="https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2022.12.05_amd64.deb"
# cd ~ && wget dropboxURL
# sudo dpkg -i dropboxURL

# url=$(wget)


#!/bin/bash

# until [[ $url = "exit" ]]

# do

  read -p "Please type the URL of a dropbox .deb file to download or type exit to quit: " url

  if [[ $url == "https://"* ]] || [[ $url == "http://"* ]]; then

    # read -p "Please type your download location: " user_dir

    # mkdir -p  $user_dir

    cd ~ && wget $url -o dropbox.deb
    sudo dpkg -i dropbox.deb
    sudo rm -rf dropbox.deb
    echo "Thank you. Goodbye!"

  else
    if [[ $url == "exit" ]]; then
      echo "See you again!"
      exit
    else
      echo "No valid url"
    fi
  fi

# done


