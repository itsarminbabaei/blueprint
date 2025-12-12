---
id: doc-001
title: Backlog Management Guide
type: guide
created_date: '2025-12-12 05:51'
---

# Backlog Management Guide

This guide documents how to use the Backlog.md system for task management in the Blueprint project.

## Overview

Blueprint uses [Backlog.md](https://github.com/MrLesk/Backlog.md) for collaborative task management between humans and AI agents. All project work should be tracked through backlog tasks.

## Quick Start

### Creating Tasks

```bash
# Create a new task
backlog task create "Task title" -d "Description" --ac "Acceptance criterion 1" --ac "Acceptance criterion 2"

# Create with labels and priority
backlog task create "Fix critical bug" -d "Description" -l "bug,critical" --priority high
```

### Working on Tasks

```bash
# Start working on a task
backlog task edit <id> -s "In Progress" -a @yourname

# Mark acceptance criteria as complete
backlog task edit <id> --check-ac 1 --check-ac 2

# Add implementation notes
backlog task edit <id> --notes "Implementation details"

# Mark task as done
backlog task edit <id> -s Done
```

### Viewing Tasks

```bash
# List all tasks
backlog task list --plain

# View specific task
backlog task <id> --plain

# Search tasks
backlog search "keyword" --plain

# Filter by status
backlog task list -s "In Progress" --plain
```

## Task Structure

### Required Fields

- **Title**: Clear, concise summary (one line)
- **Description**: Detailed explanation of what and why
- **Acceptance Criteria (AC)**: Specific, testable completion conditions
- **Status**: To Do → In Progress → Done
- **Assignee**: Person responsible
- **Labels**: Categorization tags

### Status Workflow

1. **To Do**: Task created, ready for work
2. **In Progress**: Currently being worked on
3. **Done**: Completed with all ACs checked and notes added

### Labels

Common labels used in Blueprint:
- `bug`: Bug fixes
- `ui`: User interface improvements
- `docs`: Documentation updates
- `plugin`: Plugin configuration changes
- `keymaps`: Keybinding modifications
- `backlog`: Task management itself
- `critical`: High priority items
- `enhancement`: Feature improvements

## Best Practices

### Task Creation

- **Atomic**: Each task should be a single, testable unit of work
- **Specific**: Clear title and detailed description
- **Testable**: Acceptance criteria should be objectively verifiable
- **Independent**: Tasks should not depend on future work (only past task IDs)

### Task Execution

- **Assign**: Always assign yourself when starting work
- **Plan**: Add implementation plan before coding
- **Track**: Check ACs as you complete them
- **Document**: Add implementation notes for future reference

### Commit Standards

All commits should follow conventional commit format:

```bash
# Types: feat, fix, docs, style, refactor, test, chore
fix(airline): show full file paths instead of shortened paths
feat(keymaps): add new navigation shortcuts
docs(readme): update plugin list
```

## Examples

### Bug Fix Task

```bash
backlog task create "Fix Oil plugin startup error" \
  -d "Oil plugin fails to load with showtabline error" \
  --ac "Remove invalid showtabline option from oil.nix" \
  --ac "Verify Oil loads without errors" \
  -l "bug,oil,plugin" \
  --priority high
```

### Feature Task

```bash
backlog task create "Add fuzzy file finder" \
  -d "Implement telescope plugin for project-wide search" \
  --ac "Add telescope.nix configuration" \
  --ac "Configure keybindings for file search" \
  --ac "Test search functionality" \
  -l "ui,navigation,enhancement" \
  --priority medium
```

### Documentation Task

```bash
backlog task create "Update plugin documentation" \
  -d "Ensure README accurately reflects installed plugins" \
  --ac "Audit current plugin list" \
  --ac "Remove references to non-existent plugins" \
  --ac "Add missing plugin documentation" \
  -l "docs,readme,accuracy" \
  --priority low
```

## Advanced Usage

### Task Dependencies

```bash
# Create dependent task
backlog task create "Add feature B" -d "Description" -p 42  # Depends on task-042
```

### Bulk Operations

```bash
# Check multiple ACs at once
backlog task edit 42 --check-ac 1 --check-ac 2 --check-ac 3

# Update multiple fields
backlog task edit 42 -s Done -a @reviewer --notes "Ready for review"
```

### Search and Filtering

```bash
# Find tasks by assignee
backlog task list -a @username --plain

# Search with filters
backlog search "airline" --status "Done" --plain

# Find by priority
backlog search "bug" --priority high --plain
```

## Integration with Development

### Pre-commit Checklist

- [ ] Task created with proper ACs
- [ ] Task assigned and marked In Progress
- [ ] Implementation plan added
- [ ] Code changes tested
- [ ] ACs checked as completed
- [ ] Implementation notes added
- [ ] Task marked as Done

### PR Template

```markdown
## Description
Closes task-XXX

## Changes Made
- Implementation details
- Testing performed

## Checklist
- [ ] All ACs completed
- [ ] Code reviewed
- [ ] Tests passing
- [ ] Documentation updated
```

## CLI Reference

### Task Commands

```bash
backlog task create <title>          # Create new task
backlog task list [--plain]          # List all tasks
backlog task <id> [--plain]          # View task details
backlog task edit <id> [options]     # Edit existing task
```

### Edit Options

```bash
-t, --title <text>              # Change title
-d, --description <text>        # Change description
-s, --status <status>           # Change status
-a, --assignee <assignee>       # Assign task
-l, --labels <labels>           # Set labels
--priority <priority>           # Set priority
--check-ac <index>              # Mark AC as complete
--uncheck-ac <index>            # Mark AC as incomplete
--ac <criteria>                 # Add new AC
--notes <text>                  # Add implementation notes
```

### Search Commands

```bash
backlog search <query> [--plain]              # Search all content
backlog search <query> --type task [--plain]  # Search only tasks
backlog search <query> --status <status>      # Filter by status
backlog search <query> --priority <priority>  # Filter by priority
```

## Key Concepts

### Acceptance Criteria (AC)

**What it is**: Specific, measurable conditions that must be met for a task to be considered complete.

**Why it matters**: ACs provide clear success criteria and prevent scope creep.

**Examples**:
- ✅ "User can successfully log in with valid credentials"
- ✅ "System processes 1000 requests per second without errors"
- ❌ "Add a new function handleLogin() in auth.ts" (implementation detail)

### Implementation Notes

**What it is**: Detailed description of what was implemented and why.

**When to add**: After completing the work, before marking task as Done.

**Purpose**: Future reference for maintenance, debugging, and understanding decisions.

### Labels

**Purpose**: Categorize and filter tasks for better organization.

**Common patterns**:
- **Component**: `ui`, `api`, `database`, `auth`
- **Type**: `bug`, `feature`, `enhancement`, `refactor`
- **Priority**: `critical`, `high`, `medium`, `low`
- **Status**: `blocked`, `review`, `testing`

## Troubleshooting

### Common Issues

**Task not found**: Check task ID with `backlog task list --plain`

**AC won't check**: Use correct index: `backlog task <id> --plain` to see AC numbers

**Changes not saving**: Ensure you're using CLI, not editing .md files directly

**Metadata out of sync**: Re-edit via CLI to fix: `backlog task edit <id> -s <current-status>`

### Recovery

If task files get corrupted, you can recreate them using the CLI commands. The CLI is the source of truth for all task operations.

## Integration with Git

### Commit Message Format

```bash
type(scope): description

[optional body]

[optional footer]
```

**Types**:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation
- `style`: Code style changes
- `refactor`: Code refactoring
- `test`: Testing
- `chore`: Maintenance

**Examples**:
```bash
fix(airline): show full file paths instead of shortened paths
feat(telescope): add fuzzy file finder integration
docs(readme): update plugin list and keybindings
```

### Workflow

1. Create task before starting work
2. Commit in logical chunks with conventional format
3. Reference task ID in commit messages when relevant
4. Mark task complete after successful commits

This ensures all work is properly tracked and documented for future maintenance and collaboration.

