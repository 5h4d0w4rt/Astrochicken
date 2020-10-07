_brew_installed() {
    command -v brew >/dev/null 2>&1
}
# install brew
if _brew_installed; then
    echo "brew is installed"
else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
readonly DIR

# install all the packages
for x in $(cat ${DIR}/brew_packages.txt); do brew install $x; done
for x in $(cat ${DIR}/cask_packages.txt); do brew cask install $x; done
