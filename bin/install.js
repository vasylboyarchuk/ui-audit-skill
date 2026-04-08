#!/usr/bin/env node

const { execSync } = require('child_process');

const SKILL_URL = 'https://github.com/vasylboyarchuk/ui-audit-skill/raw/main/ui-audit.skill';

console.log('Installing ui-audit skill for Claude Code...');

try {
  execSync(`claude skill install ${SKILL_URL}`, { stdio: 'inherit' });
  console.log('\nDone. Run /ui-audit <figma-url> in Claude Code to use it.');
} catch {
  console.error('\nInstall failed. Make sure Claude Code CLI is installed and in your PATH.');
  console.error(`You can also install manually: claude skill install ${SKILL_URL}`);
  process.exit(1);
}
