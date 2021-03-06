#-------------------------------------------------------------------------------
#
# xcode/dirs.zsh
# Common Xcode related directories.
#
#-------------------------------------------------------------------------------

lj info 'xcode/dirs.zsh'

#-------------------------------------------------------------------------------
#
# Directory Variables
#
#-------------------------------------------------------------------------------

XCODE_PLUGINS="${HOME}/Library/Application Support/Developer/Shared/Xcode/Plug-ins"


#-------------------------------------------------------------------------------
#
# Directory Navigation (cd)
#
#-------------------------------------------------------------------------------

alias xp="cd \"${XCODE_PLUGINS}\""
