---
id: task-006
title: 'Add toggleterm, spectre, and todo-comments plugins'
status: Done
assignee: []
created_date: '2025-12-12 06:03'
updated_date: '2025-12-12 06:03'
labels:
  - plugin
  - ui
  - productivity
dependencies: []
priority: medium
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Add three new plugins: toggleterm for terminal management, spectre for find/replace, and todo-comments for highlighting TODO items
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Create toggleterm.nix with floating terminal configuration
- [x] #2 Create spectre.nix for visual find/replace
- [x] #3 Create todo-comments.nix with custom highlighting
- [x] #4 Add all three to default.nix imports
- [x] #5 Configure keybindings for all plugins
- [x] #6 Update which-key groups and descriptions
- [x] #7 Test plugin functionality
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Added toggleterm (floating terminals), spectre (visual find/replace), and todo-comments (TODO highlighting) plugins. Configured keybindings: <C-\> for toggleterm, <leader>R for spectre, <leader>ft for todo telescope. Updated which-key with new groups and descriptions. Ready for rebuild.
<!-- SECTION:NOTES:END -->
