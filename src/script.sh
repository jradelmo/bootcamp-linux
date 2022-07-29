#!/usr/bin/zsh

sudo pacman -Syu

package=apache
if pacman -Qs $package > /dev/null ; then
    echo "The package $package is installed"
else
    sudo pacman -S $package
fi

package=git
if pacman -Qs $package > /dev/null ; then
    echo "The package $package is installed"
else
    sudo pacman -S $package
fi

package=unzip
if pacman -Qs $package > /dev/null ; then
    echo "The package $package is installed"
else
    sudo pacman -S $package
fi
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd /linux-site-dio-main
cp -R * /var/www/html 
