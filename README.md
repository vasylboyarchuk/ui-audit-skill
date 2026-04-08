# ui-audit

Audits Figma files against UI design principles from *Refactoring UI* and *Practical UI*, then writes a structured report page directly inside the Figma file.

Works with any AI agent that supports Figma MCP. Native skill for Claude Code.

## What it does

1. Reads up to 6 screens from your Figma file
2. Checks each screen against 50 rules across 9 categories
3. Writes a **"🔍 UI Audit"** page into your Figma file with color-coded annotation cards
4. Reports a summary in chat

**Rule categories:** Perception & Gestalt → Hierarchy → Layout & Spacing → Typography → Color → Depth & Shadows → Components & Patterns → Accessibility → Finishing Touches

## Requirements

- Figma MCP connected to your AI agent
- Write access to the Figma file

---

## Claude Code

**Install:**

```bash
npx ui-audit-skill
```

Or directly:

```bash
claude skill install https://github.com/vasylboyarchuk/ui-audit-skill/raw/main/ui-audit.skill
```

**Use:**

```
/ui-audit https://www.figma.com/design/YOUR_FILE_KEY/Your-File-Name
```

---

## Other agents (Cursor, Windsurf, GPT-4, etc.)

Use [`PROMPT.md`](PROMPT.md) as a system prompt or custom instruction in your agent. It contains the full audit workflow in plain language — no Claude-specific packaging.

Paste it into your agent's system prompt, then give it a Figma URL and say "run the ui audit".

---

## Rules

All 50 rules live in [`references/rules.md`](references/rules.md). Each rule has:
- A short explanation of the principle
- A **Violation** — what the bad version looks like
- A **Fix** — a concrete design-level suggestion

## Contributing / editing

- Rules: edit [`references/rules.md`](references/rules.md) — follow the existing format (ID, explanation, Violation, Fix)
- Workflow: edit [`SKILL.md`](SKILL.md) (Claude) or [`PROMPT.md`](PROMPT.md) (all agents)
- Versioning: use semantic versioning and add an entry to [`CHANGELOG.md`](CHANGELOG.md)
