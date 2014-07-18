#!/bin/bash
ARG=$1
URL=http://static.rust-lang.org/dist/rust-nightly-x86_64-unknown-linux-gnu.tar.gz
HELP_STRING=$'Usage: get-rust-nightly [Option]\nRetrieves rust-nightly build from http://www.rust-lang.org.'

case $ARG in
  -h ) echo "$HELP_STRING"; exit;;
  * )  break;;
esac

while true; do
  read -p "Delete previous version of rust-nightly? Y/N" yn
  case $yn in
    [Yy]* ) rm -rf rust-nightly-x86_64-unknown-linux-gnu*; break;;
    [Nn]* ) break;;
    *)      echo "Please answer yes or no.";;
  esac
done

echo "Downloading new version"
wget $URL &&

echo "Uncompressing and installing"
tar -xzf rust-nightly-x86_64-unknown-linux-gnu.tar.gz &&
sudo rust-nightly-x86_64-unknown-linux-gnu/install.sh
