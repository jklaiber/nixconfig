{ config, pkgs, lib, ... }: {
    programs.zsh  =  {
        enable  =  true;
        enableAutosuggestions  =  true;
        enableCompletion  =  true;
        enableSyntaxHighlighting  =  true;
        dotDir  =  ".config/zsh";

        sessionVariables  =  {
            EDITOR  =  "nvim";
            VISUAL  =  "nvim";
        };

        initExtraBeforeCompInit = ''
            eval "$(starship init zsh)"
            eval "$(thefuck --alias)"
        '';

        oh-my-zsh  =  {
            enable  =  true;
            theme  =  "agnoster";
            plugins  =  [
                "git"
                "docker"
                "kubectl"
            ];
        };

        shellAliases  =  {
            ls = "ls --color=auto -F";
            ll = "ls -l";
            la = "ls -A";
            l = "ls -CF";
            grep = "grep --color=auto";
            egrep = "egrep --color=auto";
            fgrep = "fgrep --color=auto";
            kwhoami = "kubectl config current-context";
            kint = "kubectl config use-context int";
            kext = "kubectl config use-context ext";
            kdev = "kubectl config use-context dev";
            kstud = "kubectl config use-context stu";
            kex = "kubectl exec -it";
            cexit = "code . && exit";
            drmi = "docker rmi $(docker images -q)";
            weather = "curl -4 http://wttr.in/Schaffhausen";
        };

        plugins  =  [
            {
                # will source zsh-autosuggestions.plugin.zsh
                name = "zsh-autosuggestions";
                file = "zsh-autosuggestions.zsh";
                src = pkgs.fetchFromGitHub {
                    owner = "zsh-users";
                    repo = "zsh-autosuggestions";
                    rev = "v0.7.0";
                    sha256 = "sha256-KLUYpUu4DHRumQZ3w59m9aTW6TBKMCXl2UcKi4uMd7w";
                };
            }
            {
                # will source zsh-autosuggestions.plugin.zsh
                name = "zsh-syntax-highlighting";
                file = "zsh-syntax-highlighting.zsh";
                src = pkgs.fetchFromGitHub {
                    owner = "zsh-users";
                    repo = "zsh-syntax-highlighting";
                    rev = "v0.7.0";
                    sha256 = "sha256-KLUYpUu4DHRumQZ3w59m9aTW6TBKMCXl2UcKi4uMd7w";
                };
            }
        ];
    };
}