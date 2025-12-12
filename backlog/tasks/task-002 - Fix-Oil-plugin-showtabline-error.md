---
id: task-002
title: Fix Oil plugin showtabline error
status: To Do
assignee: []
created_date: '2025-12-12 05:45'
labels:
  - bug
dependencies: []
priority: high
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Remove invalid showtabline option from Oil win_options that was causing startup errors
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 Remove showtabline = 0 from oil.nix win_options
- [ ] #2 Verify Oil loads without errors
<!-- AC:END -->
