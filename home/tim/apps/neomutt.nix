{ pkgs, ... }:

{
  programs.neomutt = {
    enable = true;
    extraConfig = ''
      set from = "timothei.corneille@gmail.com"
      set realname = "Timothei Corneille"
      set folder = "~/Mail"
      set spoolfile = "+INBOX"
      set record = "+Sent"
      set postponed = "+Drafts"
      set header_cache = "~/.cache/mutt"
    '';
  };
}
