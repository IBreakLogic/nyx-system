{ lib, config, username, pkgs-stable, ... }: {
  options.sys.lutris = {
    enable = lib.mkEnableOption "Lutris Package";
  };
  
  config = lib.mkIf config.sys.lutris.enable {
    users.users.${username}.packages = [ pkgs-stable.lutris ];
  };
}
