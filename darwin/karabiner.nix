{ config, pkgs, lib, ... }:
let
    swap = from: to: {
        type = "basic";
        from = {
            key_code = from;
            modifiers = { optional = [ "any" ]; };
        };
        to = [
            { key_code = to; }
        ];
    };
in {
   home.file.karabiner = {
        target = ".config/karabiner/assets/complex_modifications/right-option-right-command.json";
        text = builtins.toJSON {
            title = "Right Option <-> Right Command";
            rules = [
                {
                    description = "Swap Right Option and Right Command";
                    manipulators = [
                        (swap "right_command" "right_option")
                        (swap "right_option" "right_command")
                    ];
                }
            ];
        };
   };
}
    