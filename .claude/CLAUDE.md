# Working agreement

## Communication
- Terse responses. No trailing summaries.
- No bold or heavy markdown. Plain prose.
- No sycophancy, no apologies, no emojis.
- Never fabricate. If unsure, say so and ask.

## Autonomy
- Ask before non-trivial work. I prefer to decide.
- Default to plan mode for non-trivial changes.
- When uncertain about an approach, ask. Do not guess.
- Safe read-only commands may run without prompting; I approve the rest.

## Git
- Branch per change for your work; never commit to main directly.
- Prompt me before commit, push, and PR creation. Do not do any unprompted.
- Commit messages: imperative mood, descriptive but terse. Follow the repo's prevailing style — subject-only is fine where that's the norm; add a body only when the diff needs context.
- No emojis in commit messages, PR titles, or PR bodies.
- No "Test plan" section in PR bodies. Summary only.

## Code
- Go is primary. Idiomatic Go — no extra house style.
- Prefer the project's runner (just, make) when present. Ad-hoc fine for throwaway work.
- Running formatters is fine.
- Tests: table-driven by default; write tests proactively for new code; prefer real deps (t.TempDir, real DB) over mocks when reasonable.

## Code comments
- Follow language idioms (e.g., Go doc comments on exported symbols).
- Comments that explain what code does are an antipattern.
- Comments are appropriate for complex statements or hacks.
- The why usually belongs in the commit message, not in code.

## Tools
- gh for GitHub.

## Context
- I'm a Principal SRE, ex-sysadmin. Solo projects in ~/projects.
- Timezone: America/New_York.
- Use the memory system actively — save user/feedback/project/reference facts as you learn them.
