---
bc-version: [all]
domain: style
keywords: [tooltip, length, 200-characters, design-rationale, dependency, setup, documentation, consultant, feature-docs]
technologies: [al]
countries: [w1]
application-area: [all]
---

# Keep a ToolTip under 200 characters and move design reasons to the feature docs

## Description

A tooltip is help for the person filling in the field. It should say what the value is and how to fill it in. The analyzer warns when a `ToolTip` is longer than 200 characters, the recommended maximum.

Tooltips usually grow past that limit because the developer adds the reason behind the design: why the app has no dependency on another app, why a setting is duplicated, or which other setup must match. That reasoning is true and worth keeping, but a user reading the tooltip doesn't need it. It also costs extra translation work in every language.

## Best Practice

Write a `ToolTip` as one sentence of 200 characters or fewer. Start it with "Specifies" and say what the value is. If the value has to match another setup, say which one in a few words, for example "Use the same dimension as Season Dim. Code in MOO Sales Setup."

Put the design reasoning in the feature's docs at `docs/Features/<feature>.md`, in the setup or consultant notes. That covers why the app avoids a dependency, why a value is duplicated, and what breaks when two setups disagree. If developers need that context next to the code, add a short `//` comment on the field that points to the feature doc.

Report a `ToolTip` over 200 characters, or one that explains architecture, as a `low`-severity finding to fix. Don't just acknowledge it. The finding should propose the shortened tooltip and say where the removed reasoning goes.

See sample: [`tooltip-concise-without-design-rationale.good.al`](tooltip-concise-without-design-rationale.good.al).

## Anti Pattern

A tooltip that explains dependencies between apps or other design choices ("…so seasons agree across apps without this app depending on MOO Sales."), or any tooltip over 200 characters. Deleting that reasoning without writing it in the feature docs is also wrong, because consultants then lose the reason the setting must match.

See sample: [`tooltip-concise-without-design-rationale.bad.al`](tooltip-concise-without-design-rationale.bad.al).

## References

[Guidelines for tooltip text](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/user-assistance#guidelines-for-tooltip-text).
