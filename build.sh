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
