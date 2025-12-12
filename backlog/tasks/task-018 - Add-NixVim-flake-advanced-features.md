---
id: task-018
title: Add NixVim flake advanced features
status: Done
assignee: []
created_date: '2025-12-12 06:37'
updated_date: '2025-12-12 06:37'
labels:
  - flake
  - nixvim
  - docs
  - devtools
dependencies: []
priority: medium
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Add NixVim documentation server and configuration checks to the blueprint flake
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Extend flake.nix with NixVim docs server app
- [x] #2 Add nixvim-config-check for validating NixVim configuration
- [x] #3 Test that nix run .#nixvim-docs works
- [x] #4 Test that nix flake check includes NixVim validation
- [x] #5 Document the new flake features
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Extended flake.nix with NixVim documentation server app and configuration checks. Added nixvim-docs app for running local documentation server and nixvim-config-check for validating NixVim configuration. Blueprint extend function allows adding custom outputs beyond the standard folder mappings.
<!-- SECTION:NOTES:END -->
