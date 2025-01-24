{ lib, config, username, pkgs-unstable, ... }: {
  options.sys.melonDS = {
    enable = lib.mkEnableOption "MelonDS Package";
  };
  
  config = lib.mkIf config.sys.melonDS.enable {
    users.users.${username}.packages = [ pkgs-unstable.melonDS ];
  };
}
