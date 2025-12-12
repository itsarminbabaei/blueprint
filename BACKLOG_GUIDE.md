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
- **Acceptance Criteria**: Specific, testable completion conditions
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

## Workflow Integration

### With Git

1. Create task before starting work
2. Commit in logical chunks with conventional format
3. Reference task ID in commit messages when relevant
4. Mark task complete after successful commits

### With Code Reviews

1. Tasks provide context for PR descriptions
2. Acceptance criteria serve as checklist
3. Implementation notes become PR documentation

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

## Troubleshooting

### Common Issues

**Task not found**: Check task ID with `backlog task list --plain`

**AC won't check**: Use correct index: `backlog task <id> --plain` to see AC numbers

**Changes not saving**: Ensure you're using CLI, not editing .md files directly

**Metadata out of sync**: Re-edit via CLI to fix: `backlog task edit <id> -s <current-status>`

### Recovery

If task files get corrupted, you can recreate them using the CLI commands. The CLI is the source of truth for all task operations.

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

This ensures all work is properly tracked and documented for future maintenance and collaboration.