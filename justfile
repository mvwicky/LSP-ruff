requirements := "requirements.txt"

_default:
    @just --list

export:
    uv export --format requirements-txt --output-file "{{ requirements }}"

update:
    uv lock --upgrade-package=ruff

commit OLD NEW:
    git add uv.lock "{{ requirements }}"
    git commit -m "chore: bump ruff from {{ OLD }} to {{ NEW }}" 

