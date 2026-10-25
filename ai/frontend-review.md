# Frontend review template

Assess only the code provided and flag unknowns.

1. Correctness: behavior, edge cases, error handling, async races.
2. Security & privacy: trust boundaries, inputs, secrets, data exposure.
3. Accessibility: semantics, keyboard, focus, labels, feedback.
4. Performance: rendering, fetching, bundle size, measurements.
5. Maintainability: coupling, boundaries, readability and conventions.
6. Testing: highest-risk paths and missing regression coverage.

For each finding: severity, evidence (file/line if available), impact, minimal fix, and any uncertainty.
Prioritize actionable issues; avoid speculative refactors.
