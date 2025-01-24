{ lib, config, username, pkgs-stable, ... }: {
  options.sys.neovide = {
    enable = lib.mkEnableOption "Neovide Package";
  };
  
  config = lib.mkIf config.sys.neovide.enable {
    users.users.${username}.packages = [ pkgs-stable.neovide ];
  };
}
