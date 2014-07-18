# Get Rust Nightly
A simple bash script to automate downloading and installing rust nightly builds from http://www.rust-lang.org.

## Warning
Read prompt carefully. If you answer Y, it will delete your previous rust-nightly download and directory.

## Requirements
A POSIX environment and wget.

## Installation

```ShellSession
git clone https://github.com/jasonthompson/get-rust-nightly
mv get-rust-nightly/get-rust-nightly.sh /YOUR/SHELL/SCRIPT/DIRECTORY
chmod u+x /YOUR/SHELL/SCRIPT/DIRECTORY/get-rust-nightly.sh
```

Run in the directory from which you normally install rust-nightly.
