---
id: task-012
title: Add tailwind-tools and ts-autotag plugins
status: Done
assignee: []
created_date: '2025-12-12 06:23'
updated_date: '2025-12-12 06:24'
labels:
  - ui
  - react
  - nextjs
  - shadcn
  - tailwind
dependencies: []
priority: medium
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Add tailwind-tools for enhanced Shadcn/ui development and ts-autotag for automatic HTML/JSX tag closing in React/Next.js projects
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Create tailwind-tools.nix with document color, conceal, and utility settings
- [x] #2 Create ts-autotag.nix with treesitter-based auto-tagging for HTML/JSX
- [x] #3 Add both plugins to default.nix imports in alphabetical order
- [x] #4 Configure tailwind-tools for Shadcn/ui color display and class concealing
- [x] #5 Configure ts-autotag for React/Next.js development with proper aliases
- [x] #6 Test plugin functionality in React/TypeScript projects
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Added tailwind-tools with document color display, class concealing, and Shadcn/ui integration. Added ts-autotag with treesitter-based auto-tagging for HTML/JSX tags in React/Next.js development. Configured proper aliases for various filetypes. Both plugins integrated into default.nix imports. Ready for rebuild.
<!-- SECTION:NOTES:END -->
