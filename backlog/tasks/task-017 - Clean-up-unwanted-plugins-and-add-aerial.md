---
id: task-017
title: Clean up unwanted plugins and add aerial
status: Done
assignee: []
created_date: '2025-12-12 06:35'
updated_date: '2025-12-12 06:36'
labels:
  - cleanup
  - ui
  - navigation
dependencies: []
priority: low
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Remove avante, auto-save, and actions-preview plugin files, and add aerial code outline plugin to imports
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Remove avante.nix, auto-save.nix, and actions-preview.nix files
- [x] #2 Add aerial.nix to default.nix imports
- [x] #3 Ensure aerial is properly configured for code navigation
- [x] #4 Test that aerial provides code outline functionality
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Removed unwanted plugin files: avante.nix, auto-save.nix, actions-preview.nix. Added aerial.nix to default.nix imports for code outline functionality. Aerial provides LSP-powered code navigation with symbol filtering and layout options.
<!-- SECTION:NOTES:END -->
