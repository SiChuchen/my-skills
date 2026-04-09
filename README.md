# My Codex Skills

This repository is a portable snapshot of my local Codex skills.

## Repository layout

- `skills/`: the mirrored skill tree from `~/.codex/skills`
- `install.sh`: syncs the repository snapshot into a target skills directory

The snapshot includes:

- custom baseline skills
- curated installed skills
- system skills under `skills/.system/`

## Install on a new machine

```bash
git clone https://github.com/SiChuchen/my-skills.git
cd my-skills
./install.sh
```

To install into a custom location:

```bash
./install.sh /path/to/skills
```

Restart Codex after syncing so newly installed skills can be discovered reliably.

## Refresh this repository from a source machine

When `~/.codex/skills` is the source of truth, update the repo with:

```bash
rsync -a --delete \
  --exclude='__pycache__' \
  --exclude='*.pyc' \
  ~/.codex/skills/ ./skills/
```

Then review and publish:

```bash
git status
git add .
git commit -m "sync skills"
git push
```

## Notes

- This repository intentionally preserves `skills/.system/` so the full local skill set can be migrated together.
- Some system skills may evolve with Codex versions, so re-sync periodically if your local environment changes.
