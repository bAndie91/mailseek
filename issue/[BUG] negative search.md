currently negative search (eg `--sender '!example'`) consideres at least one matching header (eg `From: joe@example`) and ignores that other headers are matching (eg `Reply-To: joe@example`) - just like positive seach parameters (eg `--sender 'example'`).
this must be changed: negative search parameters must match to ALL headers.
