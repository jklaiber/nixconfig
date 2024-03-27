<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Nix_snowflake.svg/502px-Nix_snowflake.svg.png?20201208155042" alt="Nix logo" height="100" />
</p>
<h1 align="center">NixConfig</h1>
<p align="center">
This is my personal Nix configuration repository for macOS. It includes all the packages and configuration files I use on my system, managed by Nix, using a Nix Flake.
</p>

> "Defining the whole configuration of a system in code is a revolutionary concept, and it's a really powerful one." - Jessica Kerr

## Requirements

- [Nix package manager](https://nixos.org/nix/)
- [Homebrew](https://brew.sh/)
- [Git](https://git-scm.com/)
- [Nix Flakes](https://nixos.wiki/wiki/Flakes)

## Installation
1. Install nix
```bash
curl -L https://nixos.org/nix/install | sh

mkdir -p ~/.config/nix
cat <<EOF > ~/.config/nix/nix.conf
experimental-features = nix-command flakes
EOF
```
2. Install homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
3. Download the repository
4. Restore the Nix configuration
```bash
nix build .#darwinConfigurations.<hostname>.system
./result/sw/bin/darwin-rebuild switch --flake .
```

## Usage

- To install a new package, add it to the `home-manager/default.nix` or `home-manager/applications/` file and run `nix build .#darwinConfigurations.jumac.system` again.
- To update all packages, run `nix flake update && nix build .#darwinConfigurations.jumac.system`.
- To edit any configuration file, modify the corresponding file in the `home-manager/` or `darwin/` directory and run `darwin-rebuild switch --flake ~/nixconfig`.

### Update
```bash
nix-channel --update
nix --extra-experimental-features "nix-command flakes" flake update
nix --extra-experimental-features "nix-command flakes" build .#darwinConfigurations.jumac.system --impure
darwin-rebuild switch --flake ~/nixconfig --show-trace --impure
```

## Contributing
If you have any suggestions, improvements or bugfixes, feel free to open a pull request. I appreciate any help and feedback!