{ lib, config, username, pkgs-unstable, ... }: {
  options.sys.zed-editor = {
    enable = lib.mkEnableOption "Zed Editor Package";
  };
  
  config = lib.mkIf config.sys.zed-editor.enable {
    users.users.${username}.packages = [ pkgs-unstable.zed-editor ];
  };
}
