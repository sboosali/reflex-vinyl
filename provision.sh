#!/bin/bash
SHELL_FILE=./shell.nix
nix-shell "$SHELL_FILE" --arg doBenchmark true --run "./configure.sh"
