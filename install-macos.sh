#!/usr/bin/env sh

# shellcheck disable=SC2039

# Options
#
# -h: Print help
# -i: Install Nix dependencies (Homebrew, Nix)
# -r: Restore Nix configuration

set -eu
printf '\n'

BOLD="$(tput bold 2>/dev/null || printf '')"
GREY="$(tput setaf 0 2>/dev/null || printf '')"
UNDERLINE="$(tput smul 2>/dev/null || printf '')"
RED="$(tput setaf 1 2>/dev/null || printf '')"
GREEN="$(tput setaf 2 2>/dev/null || printf '')"
YELLOW="$(tput setaf 3 2>/dev/null || printf '')"
BLUE="$(tput setaf 4 2>/dev/null || printf '')"
MAGENTA="$(tput setaf 5 2>/dev/null || printf '')"
NO_COLOR="$(tput sgr0 2>/dev/null || printf '')"

help() {
   echo "Script to install jumper (a simple cli ssh manager)"
   echo
   echo "Options:"
   echo "  -h  Print help"
   echo "  -i  Install Nix dependencies (Homebrew, Nix)"
   echo "  -r  Restore Nix configuration"
   echo
}

info() {
  printf '%s\n' "${BOLD}${GREY}>${NO_COLOR} $*"
}

warn() {
  printf '%s\n' "${YELLOW}! $*${NO_COLOR}"
}

error() {
  printf '%s\n' "${RED}x $*${NO_COLOR}" >&2
}

completed() {
  printf '%s\n' "${GREEN}✓${NO_COLOR} $*"
}

confirm() {
  printf "%s " "${MAGENTA}?${NO_COLOR} $* ${BOLD}[y/N]${NO_COLOR}"
  set +e
  read -r yn </dev/tty
  rc=$?
  set -e
  if [ $rc -ne 0 ]; then
    error "Error reading from prompt (please re-run with the '--yes' option)"
    exit 1
  fi
  if [ "$yn" != "y" ] && [ "$yn" != "yes" ]; then
    error 'Aborting (please answer "yes" to continue)'
    exit 1
  fi
}

install_homebrew() {
    info "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    completed "Homebrew installed"
}

install_nix() {
    info "Installing Nix"
    curl -L https://nixos.org/nix/install | sh
    completed "Nix installed"

    info "Configuring Nix"
    mkdir -p ~/.config/nix

    cat <<EOF > ~/.config/nix/nix.conf
experimental-features = nix-command flakes
EOF
    completed "Nix configured"
}

installation() {
    confirm "Do you want to install homebrew?"
    install_homebrew
    confirm "Do you want to install Nix?"
    install_nix
}

restore_nix_configuration() {
    confirm "Do you want to restore Nix configuration?"
    info "Restoring Nix configuration"
    nix build .#darwinConfigurations.jumac.system
    ./result/sw/bin/darwin-rebuild switch --flake .
    completed "Nix configuration restored"
    post_restore
}

post_restore() {
    info "Post restore"
    skhd --start-service
    completed "Post restore completed"

}


while getopts "hir" option; do
  case $option in
    h)
      help
      exit;;
    i)
      installation
      ;;
    r)
      restore_nix_configuration
      ;;
    ?)
      error "Invalid option: -$OPTARG"
      exit;;
  esac
done

help