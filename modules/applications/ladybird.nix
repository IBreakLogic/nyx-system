{ lib, config, username, pkgs-unstable, ... }: {
  options.sys.ladybird = {
    enable = lib.mkEnableOption "Ladybird Package";
  };
  
  config = lib.mkIf config.sys.ladybird.enable {
    users.users.${username}.packages = [ pkgs-unstable.ladybird ];
  };
}

