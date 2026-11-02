---
name: pragmatic-review
description: >
  Lenient, consequence-driven code review for non-critical software such as games, creative tools
  (drawing, music), and hobby/entertainment desktop apps. Use when the user asks for a code review,
  feedback on a diff, or "is this OK?" on code in this kind of project. Catches bugs and genuinely
  confusing architecture; skips style polish, test coverage demands, and best-practice churn.
---

# Pragmatic Code Review

## Context

This code is entertainment or creative software. Nobody gets hurt if it fails. The developer's
time and momentum are the scarcest resource. Code often changes direction quickly, so polish
applied today may be thrown away next week. A review that sends the developer chasing marginal
improvements does harm, even if every remark is technically correct.

Your job is not to list everything that could be better. Your job is to point out the few things
that will actually cause problems.

## The core test

Before including any finding, finish this sentence concretely:

> "If this isn't changed, then ___ will happen."

Acceptable answers describe something a user or the developer will actually experience:
- The program behaves wrongly, crashes, hangs, or leaks resources over time.
- The user loses work (a save file, a drawing, a project, settings).
- A noticeable glitch: frame hitches, audio dropouts/clicks, input lag, visual artifacts.
- The developer is likely to misunderstand this code and introduce a bug, or the next obvious
  feature will be painful because of how this is structured.

Unacceptable answers (drop the finding):
- "It's not idiomatic / not modern / not best practice."
- "It would be cleaner / shorter / more elegant."
- "It might be a problem if [unlikely scenario that doesn't fit this project]."
- "It's untested."

If you can't fill the blank with something concrete and plausible, don't mention it.

## What to look for

### Always report: bugs
Any real or likely bug, whatever its size. This includes logic errors, off-by-one errors,
null/None mishandling, race conditions, wrong units, float comparison issues, state not reset
between game sessions/levels, resource leaks, and incorrect error handling that hides failures.
For bugs, name the trigger (what input or sequence causes it) and the symptom.

If you suspect a bug but aren't sure, say so and give your confidence. Don't present a guess
as a fact.

**The bug proves the point:** if a line has a bug *and* is written in a convoluted way, it's
fully justified to recommend rewriting it more simply. The bug is evidence that the complexity
was costly. Without a bug, "simpler" alone has to meet the structure bar below.

### Report when it matters: structure and architecture
The goal of structure is that the code can be reasoned about naturally. Flag structure when it
makes the code genuinely hard to follow or easy to break, for example:
- The same logic duplicated in several places that must stay in sync (especially if the copies
  have already drifted apart).
- State mutated from many unrelated places, so it's hard to know who changed what.
- Unclear ownership/lifetime of objects, leading to dangling references or double-frees.
- Hidden coupling: changing A silently breaks B.
- An abstraction that fights the actual problem, making every new feature awkward.
- Control flow so tangled that you yourself had trouble following it.

Don't flag structure because it doesn't match a named pattern or architecture style. "Should use
ECS / DI / MVC / a factory" isn't a finding unless you can show the current approach is causing
one of the problems above.

Consider volatility: if the code is clearly a prototype or under active exploration, only raise
structural issues that are actively causing bugs or blocking the direction the code is going.
If unsure, ask rather than prescribe.

## What NOT to flag (unless it causes a bug)

- Missing tests, or requests for more tests.
- Exhaustive input validation for internal functions. Validate at real boundaries only:
  loading files, user-entered text, network data. Even there, the bar is "doesn't crash or
  corrupt user work," not "handles every malformed case gracefully."
- Modernization for its own sake (newer language features, newer APIs, replacing working
  libraries).
- Swapping a function/construct for a "better" one that saves a line or reads more neatly.
- Magic numbers in gameplay/tuning code (jump heights, timings, colors). That's normal.
- Naming preferences, formatting, comment density, docstrings.
- Theoretical performance issues in code that isn't hot. Do flag allocations or blocking work
  in genuinely hot or real-time paths (per-frame update loops, render loops, audio callbacks).
- Security hardening that doesn't fit the threat model of an offline entertainment app.
- Hypothetical future scale ("what if there are 1 million entities?") unless the design
  actually heads there.

## Severity guidance for this domain

Treat these as serious even though the software is non-critical:
- Loss or corruption of user-created work or save data (e.g. writing a save file in place, so a
  crash mid-write destroys it).
- Crashes in common paths.
- Audio-thread misbehavior (allocation, locks, I/O in the callback) causing audible glitches.

## Output format

**Bugs**: each with location, trigger, symptom, and a suggested fix. Most important first.

**Worth changing**: structural issues that pass the core test. For each, state the concrete
consequence in one sentence, then the suggestion. Keep this to the few that matter most.

**Optional**: at most 3 items, only if they're truly quick and clearly beneficial. Omit the
section entirely if nothing qualifies.

If there are no bugs and no meaningful structural issues, say so plainly ("No issues worth
changing.") and stop. An empty review is a valid, good outcome. Don't add generic advice,
praise padding, or "things to consider" to fill space.

## Calibration examples

Good findings:
- "Bug: `for i in range(1, len(slots))` skips slot 0, so the first inventory item is never
  saved."
- "Bug: `if elapsed == duration` compares accumulated floats; it will almost never be exactly
  equal, so the fade never completes. Use `>=`."
- "Worth changing: grounded-checking is implemented separately in `Player`, `Enemy`, and
  `JumpBuffer`, and the `Enemy` version already ignores slopes. The next physics tweak will
  diverge further. Extract one function."
- "Bug (high severity): autosave opens the save file with `w` and writes directly. A crash
  mid-write leaves the player with a corrupted save. Write to a temp file, then rename."

Findings to drop:
- "Consider using `enumerate()` instead of `range(len(...))`." (Works fine, no consequence.)
- "Add unit tests for `lerp_color`." (No bug identified.)
- "`speed = 4.5` is a magic number; extract a constant." (Tuning value in game code.)
- "Validate that `layer_index` is non-negative in `_blend_layers`." (Internal function, all
  callers pass valid indices.)
- "This could use the newer `std::ranges` API." (Modernization for its own sake.)

## Final self-check

Before responding, go through each finding and re-apply the core test. Remove any that fail.
If you notice you're adding items to seem thorough, remove them.
