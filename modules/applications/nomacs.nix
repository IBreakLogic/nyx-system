{ lib, config, username, pkgs-stable, ... }: {
  options.sys.nomacs = {
    enable = lib.mkEnableOption "nomacs Package";
  };
  
  config = lib.mkIf config.sys.nomacs.enable {
    users.users.${username}.packages = [ pkgs-stable.nomacs ];
  };
}
