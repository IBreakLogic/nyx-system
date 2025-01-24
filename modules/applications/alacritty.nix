{ lib, config, username, pkgs-stable, ... }: {
  options.sys.alacritty = {
    enable = lib.mkEnableOption "Alacritty Package";
  };
  
  config = lib.mkIf config.sys.alacritty.enable {
    users.users.${username}.packages = [ pkgs-stable.alacritty ];
  };
}
