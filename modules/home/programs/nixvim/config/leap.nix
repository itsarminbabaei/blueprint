# Leap - Bidirectional motion
# Docs: https://github.com/ggandor/leap.nvim
# Superior motion plugin with bidirectional jumping

{
  plugins.leap = {
    enable = true;
    settings = {
      # Highlight settings
      highlight_unlabeled_phase_one_targets = true;

      # Case sensitivity
      case_sensitive = false;

      # Special keys
      special_keys = {
        next_target = "<enter>";
        prev_target = "<tab>";
        next_group = "<space>";
        prev_group = "<tab>";
      };

      # Safe labels (avoid common characters)
      safe_labels = [
        "s"
        "f"
        "n"
        "u"
        "t"
        "/"
        "S"
        "F"
        "N"
        "L"
        "H"
        "M"
        "U"
        "G"
        "T"
        "?"
        "Z"
      ];
    };
  };
}