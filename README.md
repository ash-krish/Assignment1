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
3. 
4.

Gem installation:
1. TTY-prompt: to install TTY-prompt, type 
sudo gem install tty-prompt
In order to start asking questions on the command line, create prompt:
require "tty-prompt"
prompt = TTY::Prompt.new


2. colorize :to install Colorize, type
sudo gem install colorize
In ruby file,
require 'colorize' - Extends String class
require 'colorized_string' - add ColorizedString class


#script file