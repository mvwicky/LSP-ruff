requirements := "requirements.txt"

_default:
    @just --list

export:
    uv export --format requirements-txt --output-file "{{ requirements }}"

update:
    uv lock --upgrade-package=ruff
