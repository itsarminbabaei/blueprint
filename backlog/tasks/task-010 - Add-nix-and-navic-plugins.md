---
id: task-010
title: Add nix and navic plugins
status: Done
assignee: []
created_date: '2025-12-12 06:17'
updated_date: '2025-12-12 06:17'
labels:
  - lsp
  - language-support
  - ui
dependencies: []
priority: medium
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Add nix (Nix language support) and navic (LSP breadcrumb navigation) plugins to enhance development experience
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Create nix.nix with Nix language syntax highlighting and indentation
- [x] #2 Create navic.nix with LSP breadcrumb navigation in winbar
- [x] #3 Add both plugins to default.nix imports in alphabetical order
- [x] #4 Configure navic with proper separators and depth limits
- [x] #5 Test Nix syntax highlighting and navic breadcrumb display
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Added nix plugin for Nix language syntax highlighting and indentation support. Added navic plugin for LSP breadcrumb navigation in the winbar, showing document symbols with › separators and 5-level depth limit. Both plugins integrated into default.nix imports. Navic will automatically show breadcrumbs in the winbar when LSP is active. Ready for rebuild.
<!-- SECTION:NOTES:END -->
