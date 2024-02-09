#!/bin/bash

rm -rf /opt/nvim
tar -C /opt -xzf nvim-linux64.tar.gz

rm -rf ~/.config/nvim
tar -C ~/.config -xzf nvchad.tar.xz

