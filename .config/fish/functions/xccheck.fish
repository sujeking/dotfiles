# Validates Xcode application binary integrity using `spctl`
# Migrated from ~/.dotfiles/xcode/xccheck.sh
function xccheck
    set app_dirs \
        "/Applications" \
        "$HOME/Applications" \
        "/Volumes/Thunderbay/Applications" \

    for app_dir in $app_dirs
        for xcode_version in (ls -d $app_dir/Xcode*.app)
            echo "Checking integrity of $xcode_version"
            spctl --assess --verbose "$xcode_version"
        end
    end
end
