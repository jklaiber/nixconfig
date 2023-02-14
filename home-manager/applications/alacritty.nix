{ config, lib, pkgs, ... }:

{
  programs.alacritty = {
	enable = true;
	settings = {
		env.TERM = "xterm-256color";
		window.padding = {
			x = 8;
		    y = 4;
		};
		window.opacity = 0.92;
		window.decorations = "none";
		window.title = "Alacritty";
		font.normal = {
			family = "JetBrainsMono Nerd Font Mono";
			style = "Regular";
		};
		font.bold= {
			family = "JetBrainsMono Nerd Font Mono";
			style = "Bold";
		};
		font.italic= {
			family = "JetBrainsMono Nerd Font Mono";
			style = "Italic";
		};
		font.bold_italic = {
			family = "JetBrainsMono Nerd Font Mono";
			style = "Bold Italic";
		};
		font.size = 14;
		draw_bold_text_with_bright_colors = true;
		colors.primary = {
			background = "0x282c34";
			foreground = "0xbbc2cf";
		};
	};
  };
}
