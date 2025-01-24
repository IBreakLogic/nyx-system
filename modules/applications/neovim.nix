{ lib, config, username, pkgs-stable, ... }: {
  options.sys.neovim = {
    enable = lib.mkEnableOption "NeoVim Package";
  };
  
  config = lib.mkIf config.sys.neovim.enable {
    users.users.${username}.packages = [ pkgs-stable.neovim ];
  };
}
