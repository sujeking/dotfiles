#-------------------------------------------------------------------------------
#
# xcode/cocoapods.zsh
# Command-line aliases for CocoaPods
#
#-------------------------------------------------------------------------------

# Bundler
alias bi='bundle install'
alias bu='bundle update'

# CocoaPods
alias pi='pod install --no-repo-update'
alias bpi='bundle exec pi'
alias bpii='bundle exec pod install'
alias piv='pod install --no-repo-update --verbose'
alias bpiv='bundle exec piv'
alias bpu='bundle exec pod update'

alias clearcpcache='rm -rf "${HOME}/Library/Caches/CocoaPods"'
