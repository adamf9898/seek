#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Usage: words-of-wisdom.sh [options]
  -a, --all           Print all tips
  -n, --num N         Print N random tips (default: 1)
  -g, --grep PATTERN  Filter tips by substring (case-insensitive)
  -h, --help          Show this help
USAGE
}

# Curated tips based on this repository's guidelines
WISDOM=(
  "Run 'make fmt' before committing to ensure proper Go formatting (gofmt)."
  "Build with 'make build'; run tests with 'make test'; full CI with 'make ci'."
  "After editing files in proto/, run 'make proto' to regenerate code."
  "Follow Go best practices and idiomatic patterns."
  "Maintain existing code structure and organization."
  "Use dependency injection where appropriate."
  "Write unit tests for new functionality; prefer table-driven tests."
  "Document public APIs and complex logic; update docs/ when appropriate."
  "When updating ruby/, bump ruby/lib/billing-platform/version.rb (semver)."
  "Repo structure: cmd/, internal/, lib/, admin/, config/, docs/, proto/, ruby/, testing/."
)

print_all() {
  local pattern="${1:-}"
  if [[ -z "$pattern" ]]; then
    printf '%s\n' "${WISDOM[@]}"
    return
  fi
  shopt -s nocasematch
  local any=0
  for tip in "${WISDOM[@]}"; do
    if [[ "$tip" == *"$pattern"* ]]; then
      printf '%s\n' "$tip"
      any=1
    fi
  done
  shopt -u nocasematch
  if [[ $any -eq 0 ]]; then
    echo "No tips matched pattern: $pattern" >&2
    exit 1
  fi
}

random_indices() {
  local count="$1" max="$2"
  if command -v shuf >/dev/null 2>&1; then
    shuf -i 0-$((max-1)) -n "$count"
    return
  fi
  # Fallback using $RANDOM (unique picks)
  local -a selected=()
  local chosen=0
  while [[ $chosen -lt $count ]]; do
    local r=$((RANDOM % max))
    local dup=0
    for s in "${selected[@]:-}"; do
      if [[ "$s" -eq "$r" ]]; then dup=1; break; fi
    done
    if [[ $dup -eq 0 ]]; then
      selected+=("$r")
      ((chosen++))
    fi
  done
  printf '%s\n' "${selected[@]}"
}

main() {
  local show_all=0 num=1 pattern=""

  while [[ $# -gt 0 ]]; do
    case "$1" in
      -a|--all) show_all=1; shift ;;
      -n|--num)
        [[ $# -lt 2 ]] && { echo "Missing value for $1" >&2; exit 1; }
        num="$2"; shift 2 ;;
      -g|--grep)
        [[ $# -lt 2 ]] && { echo "Missing value for $1" >&2; exit 1; }
        pattern="$2"; shift 2 ;;
      -h|--help) usage; exit 0 ;;
      *) echo "Unknown option: $1" >&2; usage; exit 1 ;;
    esac
  done

  # Build filtered list if needed
  local -a source=()
  if [[ -n "$pattern" ]]; then
    shopt -s nocasematch
    for tip in "${WISDOM[@]}"; do
      [[ "$tip" == *"$pattern"* ]] && source+=("$tip")
    done
    shopt -u nocasematch
  else
    source=("${WISDOM[@]}")
  fi

  local total="${#source[@]}"
  if [[ $total -eq 0 ]]; then
    echo "No tips available after filtering." >&2
    exit 1
  fi

  if [[ $show_all -eq 1 ]]; then
    printf '%s\n' "${source[@]}"
    exit 0
  fi

  # Clamp num to available tips
  if ! [[ "$num" =~ ^[0-9]+$ ]] || [[ "$num" -le 0 ]]; then
    echo "Invalid --num: $num" >&2
    exit 1
  fi
  if [[ "$num" -gt "$total" ]]; then
    num="$total"
  fi

  # Print N random tips
  local idx
  while IFS= read -r idx; do
    printf '%s\n' "${source[$idx]}"
  done < <(random_indices "$num" "$total")
}

main "$@"
