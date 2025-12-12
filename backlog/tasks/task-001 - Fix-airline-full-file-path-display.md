---
id: task-001
title: Fix airline full file path display
status: Done
assignee: []
created_date: '2025-12-12 05:45'
updated_date: '2025-12-12 05:45'
labels:
  - ui
dependencies: []
priority: medium
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Configure airline to show complete file paths instead of shortened paths
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Change stl_path_style from 'short' to 'full' in airline.nix
- [x] #2 Test that full paths are displayed in status line
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Changed stl_path_style from 'short' to 'full' in airline.nix to display complete file paths instead of shortened paths like 'p/a/filename.ts'
<!-- SECTION:NOTES:END -->
