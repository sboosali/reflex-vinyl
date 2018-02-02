#!/bin/bash
SHELL_FILE=shell-reflex-vinyl.nix
nix-shell "$SHELL_FILE" --arg doBenchmark true --run "./configure.sh"
