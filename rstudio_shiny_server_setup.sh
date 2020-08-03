#!/bin/bash

#install R
echo y | sudo apt-get install r-base

#install RStudio-Server
sudo apt-get install gdebi-core
sudo wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.3.1056-amd64.deb
echo y | sudo gdebi rstudio-server-1.3.1056-amd64.deb
sudo rm rstudio-server-1.3.1056-amd64.deb

#install shiny and shiny-server
sudo su - \
	-c "R -e \"install.packages('shiny', repos='https://cran.rstudio.com/')\""
sudo wget https://download3.rstudio.org/ubuntu-14.04/x86_64/shiny-server-1.5.14.948-amd64.deb
echo y | sudo gdebi shiny-server-1.5.14.948-amd64.deb
sudo rm shiny-server-1.5.14.948-amd64.deb
