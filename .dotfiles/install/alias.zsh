#-------------------------------------------------------------------------------
#
# install/alias.zsh
# Dummy file so the dotfiles _bootstrap doesn't choke on a dir without a .zsh file.
#
#-------------------------------------------------------------------------------

# Only define these aliases for admin users
if [[ $(dsmemberutil checkmembership -U "${USER}" -G "admin") == "user is a member of the group" ]]; then

  # update
  # Invokes the admin package update script
  alias update='~/.dotfiles/install/update.sh'

  # cleanup
  # Cleans up old gems, checks Homebrew
  function cleanup {
    gem cleanup

    # Print any warnings about the current homebrew setup, they will need to be
    # resolved manually.
    brew doctor
  }

fi
