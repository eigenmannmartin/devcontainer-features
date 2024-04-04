#!/bin/bash

set -eu

pkgs=(curl git ripgrep)

for pkg in ${pkgs[@]}; do
	pkg_full_name="$(apt -qq list --installed $pkg)"

	if [ -z "$pkg_full_name" ]; then
		echo "$pkg was not installed" >&2
		exit 1
	fi
done
