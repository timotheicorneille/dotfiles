{ pkgs, ...}:

{
  services.syncthing.enable = true;
  services.gpg-agent.enable = true;
}
