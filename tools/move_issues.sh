gh issue list -state open --json number | \
    jq -r '.[] | .number' | \
    xargs -I% gh issue transfer % https://github.com/<destination repo>