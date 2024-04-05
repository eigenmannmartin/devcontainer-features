#!/bin/bash

set -euxo pipefail

apt update

env

pkgs=()

if [ $GIT = "true" ]; then
	pkgs+=("git")
fi

if [ $FZF = "true" ]; then
	pkgs+=("fzf")
fi

if [ $WGET = "true" ]; then
	pkgs+=("wget")
fi

if [ $CURL = "true" ]; then
	pkgs+=("curl")
fi

if [ $BAT = "true" ]; then
	pkgs+=("bat")
fi

if [ $RIPGREP = "true" ]; then
	pkgs+=("ripgrep")
fi

echo "${pkgs[@]}"

apt install -y "${pkgs[@]}"
