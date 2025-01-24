{ lib, config, username, pkgs-unstable, ... }: {
  options.sys.lapce = {
    enable = lib.mkEnableOption "Lapce Package";
  };
  
  config = lib.mkIf config.sys.lapce.enable {
    users.users.${username}.packages = [ pkgs-unstable.lapce ];
  };
}
