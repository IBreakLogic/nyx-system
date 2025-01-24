{ ... }: {
  imports = [
    ./../../modules/applications # Imports every application
  ];

  sys.keepassxc.enable = true;
  sys.alacritty.enable = true;
  sys.firefox.enable = true;

  sys.nomacs.enable = true;
  sys.neovim.enable = true;
  sys.vesktop.enable = true;

  sys.prismlauncher.enable = true;
  sys.melonDS.enable = true;
  sys.lutris.enable = true;
}
