---
id: task-003
title: Fix line number toggle keybindings
status: To Do
assignee: []
created_date: '2025-12-12 05:45'
labels:
  - ui
dependencies: []
priority: medium
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Replace broken Snacks toggle commands with reliable Vim commands for line number toggles
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 Replace Snacks.toggle.line_number() with :set number! in keymaps.nix
- [ ] #2 Replace Snacks.toggle.option('relativenumber') with :set relativenumber!
- [ ] #3 Test that <leader>ul and <leader>uL work correctly
<!-- AC:END -->
