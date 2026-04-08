# ui-audit — Claude Code Skill

A Claude Code skill that audits Figma files against UI design principles from *Refactoring UI* and *Practical UI*, then writes a structured report page directly inside the Figma file.

## What it does

1. Reads up to 6 screens from your Figma file
2. Checks each screen against 50 rules across 9 categories
3. Writes a **"🔍 UI Audit"** page into your Figma file with color-coded annotation cards
4. Reports a summary in chat

**Rule categories:** Perception & Gestalt → Hierarchy → Layout & Spacing → Typography → Color → Depth & Shadows → Components & Patterns → Accessibility → Finishing Touches

## Requirements

- [Claude Code](https://claude.ai/code) (CLI or desktop app)
- Figma MCP connected in Claude Code

## Install

```bash
claude skill install https://github.com/vasylboyarchuk/ui-audit-skill/raw/main/ui-audit.skill
```

## Usage

Open Claude Code in any project, then run:

```
/ui-audit https://www.figma.com/design/YOUR_FILE_KEY/Your-File-Name
```

Claude will analyze the file and write the audit page directly into Figma.

## Rules

All 50 rules live in [`references/rules.md`](references/rules.md). Each rule has:
- A short explanation of the principle
- A **Violation** — what the bad version looks like
- A **Fix** — a concrete design-level suggestion

## Contributing / editing

See [CLAUDE.md](CLAUDE.md) for instructions on how to add rules, edit the workflow, and publish updates.
