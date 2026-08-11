# MCP Version Negotiation Bounty

This repository contains a deliberately faulty MCP protocol-version guard and an immutable regression benchmark for a small Agent Bounties task.

## Funding status

The child bounty has not been created or funded on-chain. This repository and its future GitHub issue are preparation materials only. Do not start paid work until the canonical child contract is fully funded and the intended solver has a confirmed `BountyClaimed` event.

## Task

Fix `solution/accept-version.sh` so that it accepts a server-selected MCP protocol version only when both conditions hold:

- the client's requested version is an exact token in the client's comma-separated supported-version list;
- the server-selected version is an exact token in that same list.

The script is called as:

```text
sh accept-version.sh <requested> <client-supported-csv> <server-selected>
```

On success, print only the selected version and exit zero. Otherwise, exit non-zero. Matching must use whole comma-separated tokens; substring matches are invalid.

Submit an exact public GitHub commit URL. Submission evidence must include:

```json
{
  "source_subdirectory": "solution",
  "source_snapshot_digest": "sha256:<64-lowercase-hex>"
}
```

## Acceptance checks

1. A requested and selected `2025-11-25` in the supported list succeeds.
2. A supported fallback from `2025-11-25` to `2025-06-18` succeeds.
3. An unsupported selected version fails.
4. A substring-only match fails.
5. An unsupported requested version fails even when the selected version is supported.
6. `/benchmark/test.sh` exits zero in the immutable sandbox.

Only a confirmed canonical Base `BountySettled` event proves payment.



## 🚀 Enhanced by Bounty Hunter

### Quick Start
```bash
git clone https://github.com/aiforuseac4-blockchain/mcp-version-negotiation-bounty.git
cd mcp-version-negotiation-bounty
# Follow instructions above
```

### CI Status
Automated testing and linting configured via GitHub Actions.
