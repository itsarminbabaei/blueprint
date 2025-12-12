---
id: task-002
title: Fix Oil plugin showtabline error
status: Done
assignee: []
created_date: '2025-12-12 05:45'
updated_date: '2025-12-12 05:47'
labels:
  - bug
  - oil
  - plugin
dependencies: []
priority: high
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Remove invalid showtabline option from Oil win_options that was causing startup errors
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Remove showtabline = 0 from oil.nix win_options
- [x] #2 Verify Oil loads without errors
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Removed invalid showtabline = 0 from oil.nix win_options since showtabline is a global option that cannot be set per window
<!-- SECTION:NOTES:END -->
