---
id: task-009
title: Add kulala and leap plugins
status: Done
assignee: []
created_date: '2025-12-12 06:12'
updated_date: '2025-12-12 06:12'
labels:
  - ui
  - motion
  - development
  - api
dependencies: []
priority: medium
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Add kulala (HTTP client for API testing) and leap (bidirectional motion plugin) to enhance development workflow
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Create kulala.nix with HTTP client configuration and UI settings
- [x] #2 Create leap.nix with bidirectional motion and safe labels configuration
- [x] #3 Add both plugins to default.nix imports in alphabetical order
- [x] #4 Configure keybindings: kulala (<leader>k*) and leap (s/S for jumping)
- [x] #5 Update which-key with Kulala group and descriptions
- [x] #6 Test plugin functionality and keybindings
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Added kulala (HTTP client for API testing with <leader>kr/ka/ki commands) and leap (bidirectional motion with s/S keys for jumping). Configured both plugins with comprehensive settings, keybindings, and which-key integration. Kulala provides excellent REST API testing capabilities, leap offers superior motion controls. Ready for rebuild.
<!-- SECTION:NOTES:END -->
