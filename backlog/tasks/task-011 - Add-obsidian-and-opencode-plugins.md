---
id: task-011
title: Add obsidian and opencode plugins
status: Done
assignee: []
created_date: '2025-12-12 06:19'
updated_date: '2025-12-12 06:19'
labels:
  - ai
  - note-taking
  - productivity
dependencies: []
priority: medium
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Add obsidian (Obsidian note-taking integration) and opencode (AI assistant) plugins to enhance productivity and note-taking workflow
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Create obsidian.nix with workspace configuration, daily notes, and UI settings
- [x] #2 Create opencode.nix with AI model configuration and API settings
- [x] #3 Add both plugins to default.nix imports in alphabetical order
- [x] #4 Configure obsidian keybindings for note creation, opening, and search
- [x] #5 Update which-key with Obsidian group and descriptions
- [x] #6 Test obsidian note integration and opencode AI functionality
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Added obsidian plugin with workspace configuration for personal/work vaults, daily notes setup, and UI checkboxes. Added opencode plugin with GPT-4 model configuration. Configured obsidian keybindings: <leader>on (new note), <leader>oo (open in app), <leader>os (search), <leader>od (daily note). Updated which-key with Obsidian group. Ready for rebuild.
<!-- SECTION:NOTES:END -->
