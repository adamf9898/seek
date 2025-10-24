# .github/copilot-instructions.md

## Overview
Contribution and development standards for a Go-based repository with a Ruby client. Includes formatting, build/test commands, and directory layout.

## Key Guidelines
- Run `make fmt` before commits to ensure `gofmt` compliance.
- Development flow:
  - Build: `make build`
  - Test: `make test`
  - Full CI: `make ci` (build, fmt, lint, test)
- Repository structure:
  - `cmd/`, `internal/`, `lib/`, `admin/`, `config/`, `docs/`, `proto/`, `ruby/`, `testing/`
- After updating protobufs: run `make proto`.
- Ruby changes: bump `ruby/lib/billing-platform/version.rb` using semver.

## Best Practices
- Prefer idiomatic Go, dependency injection, and table-driven tests.
- Document public APIs and complex logic; update `docs/` accordingly.