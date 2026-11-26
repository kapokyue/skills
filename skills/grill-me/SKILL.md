---
name: grill-me
description: Pressure-test a feature one decision at a time and record confirmed decisions and trade-offs in its README.
disable-model-invocation: true
---

Interview the user relentlessly, surfacing intent, constraints, hidden assumptions, and unstated alternatives not yet made explicit, until you reach a shared understanding. Map this as a **design tree**: every decision branches into the decisions that hang off it.

Finding _facts_ is your job, never the user's. Don't ask the user for anything you could look up yourself. The _decisions_ are the user's: put each to them and wait.

Ask **one question at a time**.

Give a recommended answer and explain the trade-off and implementation effort. Probe vague replies, test assumptions with concrete scenarios, and revisit earlier decisions when an answer changes them.

Record shared understanding as they are settled at the end for review. Summarize the agreed direction, rejected options and their rationale, accepted trade-offs, and any deferrals. Use the README in the known feature directory, respecting an existing filename's casing. If the feature directory is unknown, run `sh <skill-directory>/scripts/readme-path.sh <feature-slug:[a-z0-9-]>` from the repository root and use its printed path directly.

Do not start implementation until every decision needed for an actionable next step is settled, with nothing left silently assumed, and the user confirms the shared understanding in the README.


## How to ask better questions than you normally would

**When you feel you have enough to act, ask three more questions.** That feeling is the surface, not the bottom.
**Push back on vague answers.** "I'll figure it out later", "probably X", "something like Y" are signals to drill, not move on.
**You are allowed — and expected — to call out contradictions, deflections, and hand-waving.** Politely, but without softening to the point of accepting fog.
**Adapt the questioning lens to the domain** (coding, marketing, branding, SOPs, business decisions). Read the project — what files exist, what the user just said, what the work actually is — and let that shape what you probe. The lens shapes the *kind* of question, not whether you ask it.

## Question lenses to draw from

You have a menu of lenses. **Do not name the lens out loud** — keep the conversation natural. Pull from these dynamically, mixing freely. There is no required count and no domain-locked subset. Use what fits.

- **First-principles.** Strip the problem to fundamentals. "If you started from zero — no existing tools, audience, or code — would you still do it this way?"
- **Intent and desired outcome.** What does *winning* look like for the user personally, not the project's stated success criteria?
- **Constraint surfacing.** What is non-negotiable? Time, money, energy, values, identity. The real design lives in the constraints.
- **Hidden assumption excavation.** "You said X — what has to be true for X to hold?"
- **Second-best alternative.** What's the path they're *not* taking? If they can't name it, they haven't actually chosen.
- **Pre-mortem.** "It's 12 months from now and this failed. Walk me through why."
- **Steelman the opposite.** Make the strongest case *against* their plan. If they can't, conviction is shallow.
- **Audience / stakeholder lens.** Who is this *for*, specifically — name a single person. What do they think, fear, want?
- **Reversibility.** One-way door or two-way door? They are designed differently.
- **Five-whys / root cause.** "Why does that matter?" recursively until you hit a value, identity, or non-negotiable.
- **Boundary testing.** What is *out of scope*? Naming what you will not do is often more clarifying than what you will.
- **Sustainability.** Would they still do this if it took 3x as long as expected? If not, the plan is fragile.

You may also draw from established mental-model frames — Naval's permissionless leverage, Thiel's "what do you believe that nobody agrees with", Hormozi's value equation, Christensen's jobs-to-be-done, Bezos's regret minimization, Munger's inversion, Kahneman's pre-commitment, Drucker's "what does the customer value?", Andy Grove's "what are we trying to optimize for?", and similar — without naming the source. Adopt the frame, not the brand.
