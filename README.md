# Assignment1 Term1 - Ash


#help file: 
software pre-requisites:
1. Ruby version 2.5.1 
    a) For Windows users -  follow https://rubyinstaller.org/ to install Ruby
    b) For Mac OSX -  You will need to install HomeBrew as a Package Manager. Follow ruby-lang.org/en/documentation/installation/#homebrew
    or steps below to install Ruby on Mac
    brew install rbenv
    brew upgrade rbenv
    rbenv -v
    rbenv init
    rbenv install 2.5.1
    ruby -v
    rbenv install --list
2. Install an IDE - I am using Visual Studio Code. Feel free to use a convenient IDE.
https://code.visualstudio.com/docs/setup/setup-overview
Follow the platform specific guides for: macOS, Linux, Windows

Gem installation:
1. TTY-prompt: to install TTY-prompt, type 
sudo gem install tty-prompt
In order to start asking questions on the command line, create prompt:
require "tty-prompt"
prompt = TTY::Prompt.new


2. Colorize :to install Colorize, type
sudo gem install colorize
In ruby file,
require 'colorize' - Extends String class; 
require 'colorized_string' - add ColorizedString class

3. Artii: to install artii,type
sudo gem install artii
In ruby file,
require "artii"

4.Change to dist folder
5.Run SuperEats.rb in terminal

Features:
1.Log-in with username and password
2.Cart showing total order
3.Delivery time given to user
4.Mix and match cuisines

#Script file
#!/bin/sh

# make a distribution directory
mkdir -p dist
# copy Ruby files to the distribution directory
cp ./SuperEats_with_gems_v1.rb ./dist
cp ./test.rb ./dist
cp ./username.rb ./dist
# install required gems
gem install tty-prompt
gem install colorize
gem install artii