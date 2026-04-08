# ui-audit skill — Claude Code instructions

This repo contains the `ui-audit` Claude Code skill.

## File structure

```
ui-audit-skill/
├── SKILL.md          — workflow and audit page layout instructions
├── CHANGELOG.md      — version history
├── CLAUDE.md         — this file
├── publish.sh        — repackage + install + push in one step
└── references/
    └── rules.md      — all 50 UI audit rules
```

## How to edit rules

All rules live in `references/rules.md`. Each rule follows this format:

```
**ID — Rule name**
Short explanation of the principle.
- Violation: what the bad version looks like (keep broad, no specific hex/px values)
- Fix: concrete suggestion (design-level language, not CSS implementation)
```

Rule IDs: G1-G5, H1-H10, S1-S6, T1-T7, C1-C5, D1-D4, P1-P10, A1-A5, F1-F4

## How to add a new rule

1. Add it to the correct category section in `references/rules.md`
2. Assign the next available ID in that category
3. Update the rule count in `SKILL.md` (currently "50 rules across 9 categories")
4. Add an entry to `CHANGELOG.md`
5. Run `./publish.sh "add rule X — short description"`

## How to edit the audit workflow

Edit `SKILL.md` directly. The main sections are:
- Step 1-2: how Claude reads the Figma file
- Step 3: how Claude checks against rules (severity guide is here)
- Step 4: how Claude builds the audit page in Figma (layout + colors)
- Step 5: how Claude reports back in chat
- Edge cases: special handling for large files, component libraries, etc.

## How to publish after any change

```bash
./publish.sh "describe what you changed"
```

This will:
1. Repackage all files into `ui-audit.skill`
2. Install the updated skill locally via `claude skill install`
3. Commit everything and push to GitHub

## Changelog format

Always add a new entry at the top of `CHANGELOG.md`:

```markdown
## YYYY-MM-DD — vX.Y.Z

### Added
- New rule X: short description

### Changed
- Rule Y: what was changed and why

### Fixed
- Rule Z: what was wrong
```

Use semantic versioning:
- Patch (1.0.x): wording fixes, narrowing/broadening existing rules
- Minor (1.x.0): new rules added, workflow improvements
- Major (x.0.0): structural reorganization, breaking changes to audit page format
