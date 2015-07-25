#!/bin/bash

set -x
umask 0022

PREFIX=$HOME/usr
SRC_DIR=$HOME/data/src

download () {
  local url="$1" dest="$2"
  wget "$url" -O "$dest"
}

download-bin () {
  local url="$1" dest="$HOME/usr/bin/${2:-${1##*/}}"
  download "$url" "$dest"
  chmod 0755 "$dest"
}

have () {
  which "$1" &> /dev/null
}

git-dir () {
  local url="$1" dir="$2"
  if ! [[ -d "$dir" ]]; then
    git clone "$url" "$dir"
  fi
  cd "$dir"
  # Stay in dir.
}

git-checkout-latest-tag () {
  if [[ -d .git ]]; then
    git checkout master
    git pull "$@"
    # Checkout latest tag (strip describe's commits since tag).
    # 0.30.0-24-g07f8336 => 0.30.0
    git checkout `git describe --tags | sed -r 's/-[0-9]+-g[0-9a-f]+$//'`
  fi
}

version_ge () {
  perl -e '($s, $t) = map { [split /\./, (/([0-9.]+)/)[0]] } @ARGV; while(@$t){ shift(@$s) >= shift(@$t) or exit(1) }' -- "$@"
}

setup_runtime_dir () {
  local name="$1" homedir="${2:-$1}"

  root=$HOME/$homedir
  test -d "$root" || mkdir -p "$root"

  rcdir=$root/rc
  if ! [[ -d $rcdir ]]; then
    ln -s ~/run_control/$name $rcdir;
  fi
}
