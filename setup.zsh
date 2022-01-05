#! /usr/bin/env zsh

local homebrew_vars_file="${0:h}/autogen--homebrew-vars.zsh"
local homebrew_vars_zwc_file="$homebrew_vars_file".zwc

if [[ ! -r $homebrew_vars_file ]] ; then
  print "${(@M)${(f)"$(brew shellenv 2> /dev/null)"}:#export HOMEBREW*}" > $homebrew_vars_file
fi

[[ -r $homebrew_vars_zwc_file ]] || zcompile $homebrew_vars_file
