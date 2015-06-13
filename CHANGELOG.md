# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]
### Added
- Test for handle_info(:tick_state)
- Dependencies to generate hexdocs
- Badge for hexdocs
- Link to docs in hex package info
- Type specs and doc annotations

### Changed
- Quantum.Application does not call Quantum.start_link/1 anymore
- Moved translation logic to separate module Quantum.Translator

### Fixed
- Typos in changelog

### Removed
- Quantum.start_link/1

## [1.2.0] - 2015-06-11
### Changed
- Date is updated in state only if it changed
- Wake up every minute instead of every second

### Fixed
- Intervals on ranges are not correctly parsed
- Hour constraints are not correct
- There is no changelog
- Code coverage is low
- Explicit variables are not needed
- Pattern matching can be simplified

## [1.1.0] - 2015-05-28
### Added
- Add ability to schedule jobs at runtime and ability to view jobs

### Changed
- Relax Elixir version

## [1.0.4] - 2015-05-26
### Fixed
- Written month and weekday names are not parsed

## [1.0.3] - 2015-05-01
### Fixed
- Do not fire on first tick

## [1.0.2] - 2015-04-29
### Fixed
- Special expressions are not correctly in all cases

### Removed
- Functions to add and reset jobs

## [1.0.1] - 2015-04-27
### Added
- Configure cronjobs in config
- Add application

### Fixed
- Parsing of cron expression fails

## [1.0.0] - 2015-04-27
### Added
- Initial commit


[unreleased]: https://github.com/c-rack/quantum-elixir/compare/v1.2.0...HEAD
[1.2.0]: https://github.com/c-rack/quantum-elixir/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/c-rack/quantum-elixir/compare/v1.0.4...v1.1.0
[1.0.4]: https://github.com/c-rack/quantum-elixir/compare/v1.0.3...v1.0.4
[1.0.3]: https://github.com/c-rack/quantum-elixir/compare/v1.0.2...v1.0.3
[1.0.2]: https://github.com/c-rack/quantum-elixir/compare/v1.0.1...v1.0.2
[1.0.1]: https://github.com/c-rack/quantum-elixir/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/c-rack/quantum-elixir/commit/9a58b5f5c02a2de6cde4c579c9f879f1fb49b305