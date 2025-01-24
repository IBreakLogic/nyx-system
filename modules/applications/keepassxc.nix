{ lib, config, username, pkgs-stable, ... }: {
  options.sys.keepassxc = {
    enable = lib.mkEnableOption "Keepassxc Package";
  };
  
  config = lib.mkIf config.sys.keepassxc.enable {
    users.users.${username}.packages = [ pkgs-stable.keepassxc ];
  };
}
