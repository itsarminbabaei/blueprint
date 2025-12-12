---
id: task-019
title: Fix plugin warnings and deprecations
status: Done
assignee: []
created_date: '2025-12-12 06:46'
updated_date: '2025-12-12 06:46'
labels:
  - maintenance
  - plugins
  - build
dependencies: []
priority: medium
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Address NixVim build warnings: remove deprecated tailwind-tools plugin and fix obsidian completion configuration
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Remove deprecated tailwind-tools plugin from default.nix and delete config file
- [x] #2 Disable nvim_cmp completion in obsidian plugin since using blink-cmp
- [x] #3 Test that warnings are resolved in rebuild
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Removed deprecated tailwind-tools plugin (upstream archived) and disabled nvim_cmp completion in obsidian plugin since using blink-cmp. This resolves the build warnings about deprecated plugins and completion configuration.
<!-- SECTION:NOTES:END -->
