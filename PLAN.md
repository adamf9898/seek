Plan (pseudocode)

Goal:
- Provide a clean, docs-first repository centered on four biblical principles (SEEK, THINK, LOVE, PUT).
- Add GitHub instructions, prompts, workflows, README, and docs.
- Enforce docs quality via markdown linting and link checking in CI.
- Provide contributor guidance and Copilot instructions.

Repository structure:
- README.md (overview, quick start, CI, contributing)
- docs/
  - index.md (table of contents)
  - principles/
    - seek.md
    - think.md
    - love.md
    - put.md
- .github/
  - copilot-instructions.md (authoring rules, prompts, patterns)
  - workflows/
    - docs-ci.yml (markdownlint + link check)
  - ISSUE_TEMPLATE/
    - bug_report.yml
    - content_update.yml
  - PULL_REQUEST_TEMPLATE.md
- .markdownlint.jsonc (lint rules)
- .lychee.toml (link-check config)
- CONTRIBUTING.md (how to contribute)

Docs content:
- Each principle file includes:
  - Title
  - Reference
  - The provided passage text verbatim (no edits)
  - A short “Reflect” section (no theology, neutral prompts)

Workflows:
- Trigger on push and pull_request to default branches.
- Jobs:
  - markdownlint using nosborn/github-action-markdown-cli
  - link check using lycheeverse/lychee-action
- Use provided configs, fail on violations.

Copilot instructions:
- Style: concise, respectful, inclusive, non-doctrinal.
- Do not alter provided scripture text; quote verbatim.
- Structure headings consistently; use short paragraphs and bullet lists.
- Provide example prompts for editing and extending docs.
- Commit message and PR body guidance.

Contributing:
- Fork, branch naming, small focused PRs.
- Run local lint/link checks if desired (optional).
- Review checklist: formatting, links valid, scripture unchanged.

Done criteria:
- CI green on default branch.
- README links to docs/index.md and principles.
- All new files added and properly linked.
# Biblical Principles — Guidance for Daily Living

This repository curates four core principles with their corresponding passages to encourage reflection and daily guidance.

- SEEK — Matthew 6:33
- THINK — Philippians 4:8
- LOVE — 1 Corinthians 13:4-8
- PUT — Ephesians 6:11-18

Quick links:
- Docs index: docs/index.md
- Principles: docs/principles/seek.md • docs/principles/think.md • docs/principles/love.md • docs/principles/put.md

Contributing:
- See CONTRIBUTING.md for workflow and style guidance.
- Issue templates and PR template are provided under .github/.

Quality:
- CI runs markdown linting and link checking on pushes and pull requests. See .github/workflows/docs-ci.yml.
# Biblical Principles — Index

- SEEK: docs/principles/seek.md
- THINK: docs/principles/think.md
- LOVE: docs/principles/love.md
- PUT: docs/principles/put.md
# SEEK — Matthew 6:33

But seek first his kingdom and his righteousness, and all these things will be given to you as well.

Reflect:
- What does “seek first” practically change about today’s priorities?
- What competes for first place in your schedule or attention?
# THINK — Philippians 4:8

Finally, brothers and sisters, whatever is true, whatever is noble, whatever is right, whatever is pure, whatever is lovely, whatever is admirable—if anything is excellent or praiseworthy—think about such things.

Reflect:
- Identify 3 inputs (news, media, conversations) that shape your thoughts. Do they align with this list?
- What is one “excellent or praiseworthy” focus you can choose today?
# LOVE — 1 Corinthians 13:4-8

Love is patient, love is kind. It does not envy, it does not boast, it is not proud. It does not dishonor others, it is not self-seeking, it is not easily angered, it keeps no record of wrongs. Love does not delight in evil but rejoices with the truth. It always protects, always trusts, always hopes, always perseveres. Love never fails.

Reflect:
- Which attribute of love do you find most challenging today?
- What is a concrete way to “protect, trust, hope, and persevere” in a relationship?
# PUT — Ephesians 6:11-18

Put on the full armor of God, so that you can take your stand against the devil’s schemes. For our struggle is not against flesh and blood, but against the rulers, against the authorities, against the powers of this dark world and against the spiritual forces of evil in the heavenly realms. Therefore put on the full armor of God, so that when the day of evil comes, you may be able to stand your ground, and after you have done everything, to stand. Stand firm then, with the belt of truth buckled around your waist, with the breastplate of righteousness in place, and with your feet fitted with the readiness that comes from the gospel of peace. In addition to all this, take up the shield of faith, with which you can extinguish all the flaming arrows of the evil one. Take the helmet of salvation and the sword of the Spirit, which is the word of God. And pray in the Spirit on all occasions with all kinds of prayers and requests.

Reflect:
- Which part of the “armor” do you want to strengthen this week?
- How can you build a habit of “praying on all occasions”?
# Copilot Instructions (Repository Context)

Purpose:
- Maintain concise, respectful, and clear documentation for four principles: SEEK, THINK, LOVE, PUT.
- Do not alter or paraphrase the provided scripture texts; quote verbatim where included.

Authoring guidelines:
- Tone: encouraging, concise, non-argumentative, and non-doctrinal.
- Structure: H1 for page title, short intro line (optional), “Reflect” bullet prompts (2–3 items).
- Formatting: Use standard Markdown, 80–120 char lines preferred, but long scripture lines are acceptable.
- Links: Prefer relative links within the repo (e.g., docs/principles/seek.md).
- Do not add commentary that asserts doctrine; keep prompts neutral and reflective.

Content rules:
- Scripture quotes provided by the repository must remain unchanged.
- Keep file names lowercase with hyphens; group principle pages under docs/principles/.
- Ensure README.md and docs/index.md stay synchronized with available principle pages.

Commit messages:
- feat(docs): add THINK principle page
- fix(links): correct relative paths in index
- chore(ci): update markdownlint configuration

PR body template (suggested):
- Summary: what changed and why
- Scope: files touched
- Checks: lint and link check pass
- Notes: any follow-ups

Sample prompts to use with Copilot:
- “Create a new principle page template under docs/principles/{name}.md with title and Reflect bullets.”
- “Update docs/index.md to include links to all .md files under docs/principles/.”
- “Suggest 2 neutral reflection prompts for {reference} without paraphrasing the quoted text.”
## Summary
Explain what changed and why.

## Scope
- Files changed:
- Related issues:

## Checks
- [ ] Markdown lint passes locally or in CI
- [ ] Links pass lychee link check
- [ ] Scripture quotes remain verbatim where included

## Notes
Anything to call out for reviewers.
# Contributing

Thank you for improving these docs.

Workflow:
- Open an issue first for larger changes.
- Fork the repo and create a branch per change.
- Keep PRs small and focused; include context in the PR description.

Style:
- Use concise, neutral language.
- Prefer short paragraphs and bullet lists.
- Do not alter provided scripture text; quote verbatim where used.

Quality:
- CI will run markdown linting and link checks.
- If running locally, you may install markdownlint-cli and run `markdownlint . -c .markdownlint.jsonc`.

Structure:
- Add new principle-like pages under docs/principles/.
- Update docs/index.md and README.md links if you add or rename pages.
name: Docs CI

on:
  push:
    branches: [ main, master ]
  pull_request:
    branches: [ main, master ]

permissions:
  contents: read

concurrency:
  group: docs-ci-${{ github.ref }}
  cancel-in-progress: true

jobs:
  markdownlint:
    name: Markdown Lint
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4
      - name: Markdown Lint
        uses: nosborn/github-action-markdown-cli@v3.3.0
        with:
          files: .
          config_file: .markdownlint.jsonc
          dot: true

  linkcheck:
    name: Link Check
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4
      - name: Link Checker
        uses: lycheeverse/lychee-action@v1.10.0
        with:
          args: --config .lychee.toml --no-progress --verbose .
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
name: Bug report (links/formatting)
description: Report a broken link, formatting issue, or CI failure in docs
labels: [bug]
body:
  - type: textarea
    id: what-happened
    attributes:
      label: What happened?
      description: Describe the issue and where you found it.
      placeholder: e.g., Broken link on docs/principles/seek.md line 12
    validations:
      required: true
  - type: input
    id: file
    attributes:
      label: File path (relative)
      placeholder: docs/principles/seek.md
  - type: textarea
    id: repro
    attributes:
      label: Steps to reproduce
      placeholder: Open the page, click the link, observe 404.
  - type: checkboxes
    id: checks
    attributes:
      label: Checks
      options:
        - label: Searched existing issues
        - label: Confirmed on latest main
name: Content update (docs)
description: Propose improvements to docs structure, prompts, or organization
labels: [enhancement]
body:
  - type: textarea
    id: summary
    attributes:
      label: Summary
      description: What is the proposed change and why?
    validations:
      required: true
  - type: input
    id: files
    attributes:
      label: Files to change (comma-separated)
      placeholder: docs/index.md, docs/principles/think.md
  - type: textarea
    id: details
    attributes:
      label: Details
      description: Provide concrete edits or examples.
  - type: checkboxes
    id: scripture
    attributes:
      label: Scripture text unchanged
      description: Confirm any quoted scripture remains verbatim.
      options:
        - label: I confirm scripture quotes remain exactly as provided
          required: true
{
  "default": true,
  "MD013": false,
  "MD041": false,
  "MD033": false,
  "MD024": { "siblings_only": true },
  "MD007": { "indent": 2 },
  "MD004": { "style": "dash" }
}
# Retry and timeouts
max_concurrency = 8
user_agent = "lychee/gh-action (+https://github.com/lycheeverse/lychee)"
timeout = 20
retry_wait_time = 2
max_retries = 2

# Treat these as okay to skip or ignore
exclude = [
  "mailto:*",
  "tel:*"
]

# Accept common transient statuses
accept = [200, 204, 301, 302, 307, 308, 999, 429]
