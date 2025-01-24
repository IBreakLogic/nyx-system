{ lib, config, username, pkgs-stable, ... }: {
  options.sys.vesktop = {
    enable = lib.mkEnableOption "Vesktop Package";
  };
  
  config = lib.mkIf config.sys.vesktop.enable {
    users.users.${username}.packages = [ pkgs-stable.vesktop ];
  };
}
