---
id: task-003
title: Fix line number toggle keybindings
status: Done
assignee: []
created_date: '2025-12-12 05:45'
updated_date: '2025-12-12 05:47'
labels:
  - ui
  - keymaps
  - bug
dependencies: []
priority: medium
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Replace broken Snacks toggle commands with reliable Vim commands for line number toggles
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Replace Snacks.toggle.line_number() with :set number! in keymaps.nix
- [x] #2 Replace Snacks.toggle.option('relativenumber') with :set relativenumber!
- [x] #3 Test that <leader>ul and <leader>uL work correctly
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Replaced Snacks.toggle.line_number() with :set number! and Snacks.toggle.option('relativenumber') with :set relativenumber! in keymaps.nix for reliable toggle functionality
<!-- SECTION:NOTES:END -->
