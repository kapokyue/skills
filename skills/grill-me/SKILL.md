---
name: grill-me
description: Pressure-test a feature one decision at a time and record confirmed decisions and trade-offs in its README.
disable-model-invocation: true
---

Interview the user relentlessly, surfacing intent, constraints, hidden assumptions, and unstated alternatives not yet made explicit, until you reach a shared understanding. Map this as a **design tree**: every decision branches into the decisions that hang off it.

**Grill one branch at a time.** Ask one question whose prerequisites are settled. Give a recommended answer and explain the trade-off and implementation effort. Probe vague replies, test assumptions with concrete scenarios, and revisit earlier decisions when an answer changes them.

Finding _facts_ is your job, never the user's. Don't ask the user for anything you could look up yourself. The _decisions_ are the user's: put each to them and wait.

Record shared understanding as they are settled at the end for review. Summarize the agreed direction, rejected options and their rationale, accepted trade-offs, and any deferrals. Use the README in the known feature directory, respecting an existing filename's casing. If the feature directory is unknown, run `sh <skill-directory>/scripts/readme-path.sh <feature-slug:[a-z0-9-]>` from the repository root and use its printed path directly.

Do not start implementation until every decision needed for an actionable next step is settled, with nothing left silently assumed, and the user confirms the shared understanding in the README.
