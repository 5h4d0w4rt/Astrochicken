_brew_installed() {
    command -v brew >/dev/null 2>&1
}
# install brew
if _brew_installed; then
    echo "brew is installed"
else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# install all the packages
for x in $(cat ./brew_packages.txt); do brew install $x; done
