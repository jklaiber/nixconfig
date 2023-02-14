# nixconfig

## installation

### macos


```
ls -s nixconfig .config/nixpkgs
first time:
nix build .#darwinConfigurations.jumac.system
./result/sw/bin/darwin-rebuild switch --flake ~/nixconfig/

darwin-rebuild switch --flake ~/nixconfig
```