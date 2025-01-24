{ lib, config, username, pkgs-stable, ... }: {
  options.sys.thunar = {
    enable = lib.mkEnableOption "Thunar Package";
  };
  
  config = lib.mkIf config.sys.thunar.enable {
    users.users.${username}.packages = [ pkgs-stable.xfce.thunar ];
  };
}
