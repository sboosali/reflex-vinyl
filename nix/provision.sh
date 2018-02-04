#!/bin/bash
SHELL_FILE=./nix/reflex-vinyl-shell.nix
nix-shell "$SHELL_FILE" --arg doBenchmark true --run "./configure.sh"
