# Sets git user.name and user.email
#
# ~/.gitconfig is tracked and shared. Sensitive or machine-specific data is
# stored in the alternate global config file.
# > If $XDG_CONFIG_HOME is not set or empty, $HOME/.config/git/config will be used.
#
# Sequencing
# - After: brew (git)
function 🗄__gitconfig --argument-names email name
    echo "🗄  Git configuration"
    echo

    createdirs ~/.config/git
    set -l global_config ~/.config/git/config

    # Just print the current config when values are set.
    if begin
            test -n (git config --file $global_config user.name)
            and test -n (git config --file $global_config user.email)
        end
        cat $global_config
        return 0
    end

    # Prompt to add required values

    if test -z $name
        get --prompt "Git user.name: " | read name
    end

    if test -z $email
        get --prompt "Git user.email: " | read email
    end

    git config --file $global_config user.name "$name"
    git config --file $global_config user.email "$email"

    echo $global_config
    cat $global_config
end
