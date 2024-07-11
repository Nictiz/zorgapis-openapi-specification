# ZorgAPIs API specification

This repository contains the source files for the ZorgAPIs API specification.

## Git Conventions

Contributors **MUST** understand the importance of writing readable and consistent Git branch names and commit messages.

### Git Commit Message Conventions

Contributors **MUST** follow seven common rules for writing a great Git commit message:

1. Separate subject from body with a blank line
2. Limit the subject line to 50 characters
3. Capitalize the subject line and each paragraph
4. Do not end the subject line with a period
5. Use the imperative mood in the subject line: "Fix bug", not "Fixed bug"
6. Wrap the body at 72 characters
7. Use the body to explain what and why, not how

#### Imperative mood

*Imperative mood* means "spoken or written as if giving a command or instruction". Git itself uses the imperative mood
whenever it creates a commit on your behalf: `Merge branch 'name'`, `Revert "Add item"`.

The first word in your commit message will typically be one of these: `Add`, `Create`, `Refactor`, `Fix`, `Release`,
`Document`, `Modify`, `Update`, `Remove`, `Delete`.

> It should complete the sentence: "If applied, this commit will [your subject line here]"

#### Example

```
Summarize changes in around 50 characters or less

More detailed explanatory text, if necessary. Wrap it to about 72
characters or so.

Explain the problem that this commit is solving. Focus on why you
are making this change as opposed to how (the code explains that).

Further paragraphs come after blank lines.

 - Bullet points are okay, too
 
 - Typically a hyphen is used for the bullet, preceded by a single
   space, with blank lines in between
```

Not every commit messages necessitates the use of both a subject and a body. A single line indicating the subject can be
sufficient in some cases, especially when the change is so little that no more context is required.

## Changelog

This project documents all notable changes in the `CHANGELOG.md` file. The format is based on
[Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and [Common Changelog](https://common-changelog.org/).

We embrace the guiding principle that changelogs must be written by humans and for humans. Spending a modest amount of
time on writing a changelog saves every reader twice as much time. The changelog must tell someone what upgrading will
do. It communicates an *intent* of change.

### Rules

Contributors **MUST** adhere to the following general guidelines when adding to the changelog:

- The same type of changes should be grouped:
    - `Added` for new features
    - `Changed` for changes in existing functionality
    - `Deprecated` for soon-to-be removed features
    - `Removed` for now removed features
    - `Fixed` for any bug fixes
- Each category heading must be followed by (and only by) an unnumbered Markdown list. Each item in the list should be a
  single line that must start with a change, followed by one or more references if available: `(#1, #2)`.
- Write a change using the imperative mood. It must start with a present-tense verb, for example (but not limited to)
  `Add`, `Support`, `Refactor`, `Document`, `Fix`, `Deprecate`. Git commits follow the same convention.
- Each change must be self-describing, as if no category heading exists.
- Sort changes by importance and skip changes that are not important.
- Breaking changes must be prefixed in bold with `**Breaking:**` and should be listed before other changes (per
  category).

### Format

The changelog is written in Markdown.

- Upcoming changes are tracked in an `Unreleased` section at the top.
- A release must start with a semver-valid version (without "v" prefix) and a date in the form of `YYYY-MM-DD`
  ([ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html)).

```
# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and
[Common Changelog](https://common-changelog.org/).

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Add CHANGELOG.md

## [X.Y.Z] - YYYY-MM-DD

Summarize changes this release brings.

### Changed

- **Breaking:**: change property `description` in schema `Organization` from optional to required

### Fixed

- Fix publish workflow ([#120](https://github.com/owner/name/issues/120))

### Added

- Add section "Git Conventions" to README.md

[unreleased]: https://github.com/owner/name/compare/v1.0.0...HEAD
```