{ lib, config, username, pkgs-stable, ... }: {
  options.sys.firefox = {
    enable = lib.mkEnableOption "Firefox Package";
  };
  
  config = lib.mkIf config.sys.firefox.enable {
    users.users.${username}.packages = [ pkgs-stable.firefox ];
  };
}
