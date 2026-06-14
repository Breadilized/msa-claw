scheduling build on Metal builder "production-builderv3-us-west1-bkh9"
unpacking archive
20 KB
1ms
uploading snapshot
3.5 KB

internal
load build definition from Dockerfile
0ms

internal
load metadata for mcr.microsoft.com/playwright:v1.49.0-jammy
207ms

internal
load .dockerignore
0ms

1
FROM mcr.microsoft.com/playwright:v1.49.0-jammy@sha256:98b1ad488de36b22d41fdd1b0c5b9cceaa78a8d2661c6ab02d2108a07c182338
19ms

internal
load build context
0ms

4
WORKDIR /app cached
0ms

3
RUN npm install -g pnpm cached
0ms

2
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends git ca-certificates unzip &&     apt-get clean && rm -rf /var/lib/apt/lists/*     && curl -fsSL https://bun.sh/install | bash cached
0ms

5
RUN git clone --depth 1 --branch "hf-spaces" "https://github.com/Josephrp/openclaw.git" .     && rm -f pnpm-lock.yaml     && pnpm install     && pnpm add -w -D @rolldown/binding-linux-x64-gnu     && pnpm build
30s
Cloning into '.'...
 WARN  Unsupported engine: wanted: {"node":">=22.12.0"} (current: {"node":"v22.11.0","pnpm":"10.23.0"})
Scope: all 34 workspace projects
Progress: resolved 1, reused 0, downloaded 0, added 0
 WARN  deprecated @whiskeysockets/baileys@7.0.0-rc.9: This version is affected by a zero-day vulnerability that allows spoofing of messages, please update to
  the latest versions (6.7.22^ or 7.0.0-rc12^)! For more information, check out the public advisory at
  https://github.com/WhiskeySockets/Baileys/security/advisories/GHSA-qvv5-jq5g-4cgg
 WARN  deprecated @mariozechner/pi-tui@0.52.9: please use @earendil-works/pi-tui instead going forward
 WARN  deprecated @mariozechner/pi-agent-core@0.52.9: please use @earendil-works/pi-agent-core instead going forward
 WARN  deprecated @mariozechner/pi-ai@0.52.9: please use @earendil-works/pi-ai instead going forward
 WARN  deprecated @mariozechner/pi-coding-agent@0.52.9: please use @earendil-works/pi-coding-agent instead going forward
 WARN  deprecated tar@7.5.7: Old versions of tar are not supported, and contain widely publicized security vulnerabilities, which have been fixed in the current version. Please update. Support for old versions may be purchased (at exorbitant rates) by contacting i@izs.me
Progress: resolved 105, reused 0, downloaded 100, added 0
Progress: resolved 313, reused 0, downloaded 264, added 0
Progress: resolved 441, reused 0, downloaded 346, added 0
Progress: resolved 590, reused 0, downloaded 461, added 0
Packages are hard linked from the content-addressable store to the virtual store.
  Content-addressable store is at: /root/.local/share/pnpm/store/v10
  Virtual store is at:             node_modules/.pnpm
Progress: resolved 851, reused 0, downloaded 628, added 0
Progress: resolved 1126, reused 0, downloaded 911, added 0
 WARN  11 deprecated subdependencies found: are-we-there-yet@3.0.1, form-data@2.5.4, gauge@4.0.4, har-validator@5.1.5, has-own@1.0.1, node-domexception@1.0.0, npmlog@6.0.2, request-promise@4.2.6, request@2.88.2, uuid@3.4.0, uuid@8.3.2
Packages: +933
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Progress: resolved 1143, reused 0, downloaded 938, added 626
Progress: resolved 1143, reused 0, downloaded 939, added 931
Progress: resolved 1143, reused 0, downloaded 939, added 932
Progress: resolved 1143, reused 0, downloaded 939, added 933
Progress: resolved 1143, reused 0, downloaded 939, added 933, done
.../node_modules/protobufjs postinstall$ node scripts/postinstall
.../node_modules/protobufjs postinstall$ node scripts/postinstall
.../node_modules/protobufjs postinstall: Done
.../esbuild@0.28.1/node_modules/esbuild postinstall$ node install.js
.../@matrix-org/matrix-sdk-crypto-nodejs postinstall$ node download-lib.js
.../node_modules/protobufjs postinstall: Done
.../esbuild@0.27.7/node_modules/esbuild postinstall$ node install.js
.../esbuild@0.28.1/node_modules/esbuild postinstall: Done
.../@matrix-org/matrix-sdk-crypto-nodejs postinstall: Downloading lib matrix-sdk-crypto.linux-x64-gnu.node from https://github.com/matrix-org/matrix-rust-sdk-crypto-nodejs/releases/download/v0.4.0/matrix-sdk-crypto.linux-x64-gnu.node
.../sharp@0.34.5/node_modules/sharp install$ node install/check.js || npm run build
.../esbuild@0.27.7/node_modules/esbuild postinstall: Done
.../node_modules/node-llama-cpp postinstall$ node ./dist/cli/cli.js postinstall
.../sharp@0.34.5/node_modules/sharp install: Done
.../@matrix-org/matrix-sdk-crypto-nodejs postinstall: Download Completed
.../@matrix-org/matrix-sdk-crypto-nodejs postinstall: Done
.../node_modules/node-llama-cpp postinstall: Done
.../node_modules/@whiskeysockets/baileys preinstall$ node ./engine-requirements.js
.../node_modules/@whiskeysockets/baileys preinstall: Done
. prepare$ command -v git >/dev/null 2>&1 && git config core.hooksPath git-hooks || exit 0
. prepare: Done
 WARN  Issues with peer dependencies found
.
├─┬ @vitest/coverage-v8 4.1.8
│ └── ✕ unmet peer vitest@4.1.8: found 4.0.18
└─┬ oxlint 1.69.0
  └── ✕ unmet peer oxlint-tsgolint@>=0.22.1: found 0.11.5
dependencies:
+ @agentclientprotocol/sdk 0.14.1 (0.25.1 is available)
+ @aws-sdk/client-bedrock 3.1068.0
+ @buape/carbon 0.14.0 (0.16.0 is available)
+ @clack/prompts 1.5.1
+ @grammyjs/runner 2.0.3
+ @grammyjs/transformer-throttler 1.2.1
+ @homebridge/ciao 1.3.9
+ @larksuiteoapi/node-sdk 1.66.1
+ @line/bot-sdk 10.8.0 (11.0.1 is available)
+ @lydell/node-pty 1.2.0-beta.3 (1.2.0-beta.12 is available)
+ @mariozechner/pi-agent-core 0.52.9 (0.73.1 is available) deprecated
+ @mariozechner/pi-ai 0.52.9 (0.73.1 is available) deprecated
+ @mariozechner/pi-coding-agent 0.52.9 (0.73.1 is available) deprecated
+ @mariozechner/pi-tui 0.52.9 (0.73.1 is available) deprecated
+ @mozilla/readability 0.6.0
+ @napi-rs/canvas 0.1.100 (1.0.0 is available)
+ @sinclair/typebox 0.34.48 (0.34.49 is available)
+ @slack/bolt 4.7.3
+ @slack/web-api 7.17.0
+ @whiskeysockets/baileys 7.0.0-rc.9 (7.0.0-rc13 is available) deprecated
+ ajv 8.20.0
+ chalk 5.6.2
+ chokidar 5.0.0
+ cli-highlight 2.1.11
+ commander 14.0.3 (15.0.0 is available)
+ croner 10.0.1
+ discord-api-types 0.38.48
+ dotenv 17.4.2
+ express 5.2.1
+ file-type 21.3.4 (22.0.1 is available)
+ grammy 1.43.0
+ jiti 2.7.0
+ json5 2.2.3
+ jszip 3.10.1
+ linkedom 0.18.12
+ long 5.3.2
+ markdown-it 14.1.0 (14.2.0 is available)
+ node-edge-tts 1.2.10
+ node-llama-cpp 3.15.1 (3.18.1 is available)
+ osc-progress 0.3.1
+ pdfjs-dist 5.7.284 (6.0.227 is available)
+ playwright-core 1.58.2 (1.60.0 is available)
+ proper-lockfile 4.1.2
+ qrcode-terminal 0.12.0
+ sharp 0.34.5 (0.35.1 is available)
+ signal-utils 0.21.1
+ sqlite-vec 0.1.7-alpha.2 (0.1.9 is available)
+ tar 7.5.7 (7.5.16 is available) deprecated
+ tslog 4.10.2
+ undici 7.21.0 (8.4.1 is available)
+ ws 8.21.0
+ yaml 2.9.0
+ zod 4.4.3
devDependencies:
+ @grammyjs/types 3.27.3
+ @lit-labs/signals 0.2.0 (0.3.0 is available)
+ @lit/context 1.1.6
+ @types/express 5.0.6
+ @types/markdown-it 14.1.2
+ @types/node 25.9.3
+ @types/proper-lockfile 4.1.4
+ @types/qrcode-terminal 0.12.2
+ @types/ws 8.18.1
+ @typescript/native-preview 7.0.0-dev.20260209.1 (7.0.0-dev.20260613.1 is available)
+ @vitest/coverage-v8 4.1.8
+ lit 3.3.3
+ ollama 0.6.3
+ oxfmt 0.28.0 (0.54.0 is available)
+ oxlint 1.69.0
+ oxlint-tsgolint 0.11.5 (0.23.0 is available)
+ rolldown 1.0.0-rc.3 (1.1.1 is available)
+ tsdown 0.20.3 (0.22.2 is available)
+ tsx 4.22.4
+ typescript 5.9.3 (6.0.3 is available)
+ vitest 4.0.18 (4.1.8 is available)
╭ Warning ─────────────────────────────────────────────────────────────────────╮
│                                                                              │
│   Ignored build scripts: @google/genai, core-js.                             │
│   Run "pnpm approve-builds" to pick which dependencies should be allowed     │
│   to run scripts.                                                            │
│                                                                              │
╰──────────────────────────────────────────────────────────────────────────────╯
Done in 16.3s using pnpm v10.23.0
 WARN  Unsupported engine: wanted: {"node":">=22.12.0"} (current: {"node":"v22.11.0","pnpm":"10.23.0"})
Progress: resolved 1, reused 0, downloaded 0, added 0
 WARN  deprecated @mariozechner/pi-ai@0.52.9: please use @earendil-works/pi-ai instead going forward
 WARN  deprecated @mariozechner/pi-agent-core@0.52.9: please use @earendil-works/pi-agent-core instead going forward
 WARN  deprecated @mariozechner/pi-tui@0.52.9: please use @earendil-works/pi-tui instead going forward
 WARN  deprecated @mariozechner/pi-coding-agent@0.52.9: please use @earendil-works/pi-coding-agent instead going forward
 WARN  deprecated @whiskeysockets/baileys@7.0.0-rc.9: This version is affected by a zero-day vulnerability that allows spoofing of messages, please update to
  the latest versions (6.7.22^ or 7.0.0-rc12^)! For more information, check out the public advisory at
  https://github.com/WhiskeySockets/Baileys/security/advisories/GHSA-qvv5-jq5g-4cgg
 WARN  deprecated tar@7.5.7: Old versions of tar are not supported, and contain widely publicized security vulnerabilities, which have been fixed in the current version. Please update. Support for old versions may be purchased (at exorbitant rates) by contacting i@izs.me
Progress: resolved 104, reused 0, downloaded 0, added 0
Progress: resolved 584, reused 0, downloaded 0, added 0
 WARN  8 deprecated subdependencies found: form-data@2.5.4, har-validator@5.1.5, has-own@1.0.1, node-domexception@1.0.0, request-promise@4.2.6, request@2.88.2, uuid@3.4.0, uuid@8.3.2
Progress: resolved 1006, reused 1, downloaded 0, added 0
Progress: resolved 1006, reused 1, downloaded 0, added 0, done
 WARN  Issues with peer dependencies found
.
├─┬ @vitest/coverage-v8 4.1.8
│ └── ✕ unmet peer vitest@4.1.8: found 4.0.18
└─┬ oxlint 1.69.0
  └── ✕ unmet peer oxlint-tsgolint@>=0.22.1: found 0.11.5
devDependencies:
+ @rolldown/binding-linux-x64-gnu ^1.1.1
Packages: +7
+++++++
. prepare$ command -v git >/dev/null 2>&1 && git config core.hooksPath git-hooks || exit 0
. prepare: Done
Done in 5.4s using pnpm v10.23.0
 WARN  Unsupported engine: wanted: {"node":">=22.12.0"} (current: {"node":"v22.11.0","pnpm":"10.23.0"})
> openclaw@2026.2.9 build /app
> pnpm canvas:a2ui:bundle && tsdown && pnpm build:plugin-sdk:dts && node --import tsx scripts/write-plugin-sdk-entry-dts.ts && node --import tsx scripts/canvas-a2ui-copy.ts && node --import tsx scripts/copy-hook-metadata.ts && node --import tsx scripts/write-build-info.ts && node --import tsx scripts/write-cli-compat.ts
 WARN  Unsupported engine: wanted: {"node":">=22.12.0"} (current: {"node":"v22.11.0","pnpm":"10.23.0"})
 WARN  Unsupported engine: wanted: {"node":">=22.12.0"} (current: {"node":"v22.11.0","pnpm":"10.23.0"})
> openclaw@2026.2.9 canvas:a2ui:bundle /app
> bash scripts/bundle-a2ui.sh
file:///app/node_modules/.pnpm/rolldown@1.0.0-rc.3_@emnapi+core@1.10.0_@emnapi+runtime@1.11.1/node_modules/rolldown/dist/cli-setup.mjs:14
else (0, import_binding.createTokioRuntime)(4);
                                           ^
TypeError: (0 , import_binding.createTokioRuntime) is not a function
    at file:///app/node_modules/.pnpm/rolldown@1.0.0-rc.3_@emnapi+core@1.10.0_@emnapi+runtime@1.11.1/node_modules/rolldown/dist/cli-setup.mjs:14:44
    at ModuleJob.run (node:internal/modules/esm/module_job:268:25)
    at async onImport.tracePromise.__proto__ (node:internal/modules/esm/loader:543:26)
    at async asyncRunEntryPointWithESMLoader (node:internal/modules/run_main:116:5)
Node.js v22.11.0
A2UI bundling failed. Re-run with: pnpm canvas:a2ui:bundle
If this persists, verify pnpm deps and try again.
 ELIFECYCLE  Command failed with exit code 1.
 ELIFECYCLE  Command failed with exit code 1.
Build Failed: build daemon returned an error < failed to solve: process "/bin/sh -c git clone --depth 1 --branch \"${OPENCLAW_REF}\" \"${OPENCLAW_REPO}\" .     && rm -f pnpm-lock.yaml     && pnpm install     && pnpm add -w -D @rolldown/binding-linux-x64-gnu     && pnpm build" did not complete successfully: exit code: 1 >
