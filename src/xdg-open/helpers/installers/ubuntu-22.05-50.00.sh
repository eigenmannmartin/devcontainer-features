#!/bin/bash

set -euxo pipefail

apt update
apt install -y netcat-traditional xdg-utils
