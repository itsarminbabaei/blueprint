---
id: task-008
title: Add glow plugin for markdown preview
status: Done
assignee: []
created_date: '2025-12-12 06:09'
updated_date: '2025-12-12 06:09'
labels:
  - ui
  - markdown
  - preview
dependencies: []
priority: low
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Add glow plugin to preview markdown files in a floating window with beautiful formatting
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Create glow.nix with floating window configuration
- [x] #2 Add glow to default.nix imports
- [x] #3 Configure <leader>mg keybinding for markdown preview
- [x] #4 Update which-key with glow description
- [x] #5 Test markdown preview functionality
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Added glow plugin for beautiful markdown preview in floating windows. Configured with dark theme, rounded borders, and responsive sizing. Keybinding <leader>mg opens markdown preview. Updated which-key documentation. Ready for rebuild.
<!-- SECTION:NOTES:END -->
