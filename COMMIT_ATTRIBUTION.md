# Commit Attribution Policy

Purpose: standardize `Co-authored-by` trailers for human and agent-assisted commits.

## Rules

- Always include real human co-authors when they materially contributed.
- Include agent co-authors only when they materially contributed to the change.
- Use verified/publicly documented emails when available.
- If an agent email is provisional, mark it as provisional in this file and update when verified.

## Agent Co-Author Emails

| Agent | Email | Status | Notes |
|------|------|------|------|
| Codex | `noreply@openai.com` | Provisional | No clearly published canonical co-author email found in OpenAI docs. |
| Claude | `noreply@anthropic.com` | Provisionally documented | Referenced in Anthropic Claude Code settings examples. |
| Cursor | `cursoragent@cursor.com` | Community-documented | Commonly used in community guidance; not clearly formalized as canonical in primary docs. |
| Lovable | _TBD_ | Unknown | No clearly published canonical co-author email found. |

## Commit Trailer Format

Use one trailer per co-author:

`Co-authored-by: Name <email@example.com>`

Examples:

- `Co-authored-by: Codex <noreply@openai.com>`
- `Co-authored-by: Claude <noreply@anthropic.com>`

## Maintenance

- Recheck provisional/unknown entries periodically.
- When a canonical email is confirmed from primary docs, update this file and note the date in commit message body.
