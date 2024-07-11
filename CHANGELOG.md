# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and
[Common Changelog](https://common-changelog.org/).

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.3.2] - 2024-07-11

This release adds optional properties `githubUrl` and `gitlabUrl` to schema `Organization`.

### Changed

- Change workflow "Publish docs" to use Redocly CLI version 1.17.1

### Added

- Add optional properties `githubUrl` and `gitlabUrl` to schema `Organization`
- Add Git conventions to README.md
- Add CHANGELOG.md

## [0.3.1] - 2024-07-03

This release adds enum value `NOT_APPLICABLE` to schema `ConformityType` and changes declaration of conformity examples.

### Changed

- Change declaration of conformity examples to use enum value `NOT_CONFORMANT`

### Added

- Add enum value `NOT_APPLICABLE` to schema `ConformityType`

## [0.3.0] - 2024-06-27

This release changes server and OAuth 2.0 URLs from `v1alpha2` sandbox environment to `v1beta1` production environment.

### Changed

- Change base path in server URL from `v1alpha2` to `v1beta1`
- Change OAuth 2.0 authorization, token and refresh URLs from sandbox to production
- Change workflow "Publish docs" to use Redocly CLI version 1.16.0

### Added

- Add production server URL
- Add property `summary` to `info` object
- Add manual trigger to workflow "Publish docs"

[unreleased]: https://github.com/Nictiz/zorgapis-openapi-specification/compare/v0.3.2...HEAD
[0.3.2]: https://github.com/Nictiz/zorgapis-openapi-specification/compare/v0.3.1...v0.3.2
[0.3.1]: https://github.com/Nictiz/zorgapis-openapi-specification/compare/v0.3.0...v0.3.1
[0.3.0]: https://github.com/Nictiz/zorgapis-openapi-specification/releases/tag/v0.3.0