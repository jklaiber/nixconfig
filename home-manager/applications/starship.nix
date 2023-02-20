{ config, lib, pkgs, ... }:

{
  programs.starship = {
	  enable = true;
	  enableZshIntegration = true;
	  settings = {
	    add_newline = true;
	    character = {
	      success_symbol = "[➜](bold green)";
	    };
	    hostname = {
	      ssh_only = false;
	      disabled = false;
	      style = "bold dimmed green";
	    };
	    username = {
	      style_user = "purple bold";
	      style_root = "red bold";
	      disabled = false;
	      show_always = true;
	    };
	    kubernetes = {
	      disabled = false;
	      format = "on [⛵ $context \($namespace\)](dimmed blue) ";
	    };
	    nix_shell = {
	      disabled = true;
	      impure_msg = "[impure shell](bold red)";
	      pure_msg = "[pure shell](bold green)";
	      format = "via [☃️ $state( ($name))](bold blue) ";
	    };
	  };
	};
}
