#!/bin/bash

# Install server
nix-env -iA \
    nixpkgs.nginx \
    nixpkgs.mysql80 \
    nixpkgs.postgresql \
    nixpkgs.imagemagick

