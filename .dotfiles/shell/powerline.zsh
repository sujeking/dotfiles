#-------------------------------------------------------------------------------
#
# powerline.zsh
# Powerline configuration
#
#-------------------------------------------------------------------------------

lj info 'shell/powerline.zsh'

# Powerline PS1 setup using milkbikis/powerline-shell
# Wrapped in function so that invocation can be postponed if necessary.
function install_powerline_prompt {
  # Antigen v2
  if [[ ! -v ADOTDIR ]]; then
    ADOTDIR="${HOME}/.antigen"
    lj info "ADOTDIR was not set"
  fi
  POWERLINE_HOME="${ADOTDIR}/bundles/phatblat/powerline-shell-custom"

  function powerline_precmd {
    PS1="$(${POWERLINE_HOME}/powerline-shell.py $? --colorize-hostname --shell zsh --cwd-max-depth 5 2> /dev/null)"
  }
  
  function install_powerline_precmd {
    lj debug "precmd_functions: ${precmd_functions}"
    for s in "${precmd_functions[@]}"; do
      if [ "$s" = "powerline_precmd" ]; then
        return
      fi
    done
    precmd_functions+=(powerline_precmd)
  }
  install_powerline_precmd
}

# Install the prompt
install_powerline_prompt

alias powerlinetest='echo "⮀ ± ⭠ ➦ ✔ ✘ ⚡"'
