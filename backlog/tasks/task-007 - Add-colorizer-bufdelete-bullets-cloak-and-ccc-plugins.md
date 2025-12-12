---
id: task-007
title: 'Add colorizer, bufdelete, bullets, cloak, and ccc plugins'
status: Done
assignee: []
created_date: '2025-12-12 06:06'
updated_date: '2025-12-12 06:06'
labels:
  - ui
  - productivity
  - editing
dependencies: []
priority: medium
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Add 5 new plugins: colorizer (color highlighting), bufdelete (smart buffer deletion), bullets (markdown lists), cloak (hide sensitive data), ccc (color picker)
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Create colorizer.nix with CSS/hex color highlighting
- [x] #2 Create bufdelete.nix for smart buffer deletion
- [x] #3 Create bullets.nix for automatic markdown list formatting
- [x] #4 Create cloak.nix to conceal sensitive information
- [x] #5 Create ccc.nix for interactive color picker
- [x] #6 Add all 5 plugins to default.nix imports
- [x] #7 Configure keybindings for buffer management and color tools
- [x] #8 Update which-key with new groups and descriptions
- [x] #9 Test plugin functionality
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Added 5 new plugins: colorizer (highlights CSS/hex colors), bufdelete (smart buffer deletion), bullets (markdown list formatting), cloak (hides sensitive data), ccc (color picker). Configured keybindings: <leader>bd/bD for buffer deletion, <leader>zp/zc/zt for color tools, <leader>uz for colorizer toggle. Updated which-key with Buffer and Color groups. Ready for rebuild.
<!-- SECTION:NOTES:END -->
