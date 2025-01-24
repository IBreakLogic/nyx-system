{ lib, config, username, pkgs-unstable, ... }: {
  options.sys.prismlauncher = {
    enable = lib.mkEnableOption "Prismlauncher Package";
  };
  
  config = lib.mkIf config.sys.prismlauncher.enable {
    users.users.${username}.packages = [ pkgs-unstable.prismlauncher ];
  };
}
