# R10 documentation check — 2026-11-05

This is an ordinary extension of the existing native Android system. `DESIGN.md` and `.impeccable/design.json` were preserved; no new palette, typography, token, visual world or raster was introduced. The existing surface brief receives the scoped implementation record below. The finishing disposition is **recapture**, not ship.

## Existing system and approved local changes

- Warm, cyan and monochrome retain their authored day/night role colors and Android system sans. The existing body role remains 19sp, and field padding remains 18dp horizontally/10dp vertically.
- Home uses existing spacing tokens as real margins: 16dp below the application heading, 18dp above the favorites heading and 14dp below it. The existing favorite grid gutters remain separate from those section margins.
- The user's explicit exception applies only to **already added favorite function cards**. `favoriteBackground()` disables appearance edge decoration for those cards, including cyan's default outline and global solid/gradient/flow borders. Theme radii remain warm 26dp/cyan 10dp/mono 16dp, panel transparency remains active, and focus/press feedback uses the soft fill. This does not establish a system-wide prohibition on borders.
- The **添加跳转** tile keeps its original dashed/default, focused and global appearance treatment. The rail, hero, section heading, controls and other panels retain their existing border rules.
- Numeric inputs no longer retain undersized positive height/width constraints. They use at least 54dp height and a font-aware minimum width of at least 104dp; the number's text measurement plus 36dp horizontal padding can increase that width. Matching old inline numeric rows wrap the original label/input/help instances. Numeric input values and original business save code were not rewritten.
- The existing attribution remains carlito / 应用管家社区官方【应用管家】. Both output package identities use the previously supplied launcher JPG, recorded SHA256 `eb7fdaa3f161cf1a4fb1c59818bee6376f854f0d5811001473183abe555510e4`. The public source poster is not replaced by that launcher image.

## Source and build identity

The three current files were hashed and matched `car-ui/build/compiled-sources.json`:

| Source | SHA256 |
|---|---|
| CarUi.java | `82849b253cd14a9c09410490203856cc25a72aa829d0dc50d938d27726fe937b` |
| CarHome.java | `cd465b822e180fc19fca873306b9de9c62c43f8fe0c67b38f014a054fde05d9a` |
| LegacyUi.java | `140efecc49716fe7c8cb2b223074e26328d19be90af649813f69acac325186d5` |

The compiled UI DEX has 143 classes and SHA256 `bb8dfbb7a321976ecde67388b75e13db1f64e345fd74aafa8bd5057ea6072a49`. `R10RegressionTest.java` SHA256 is `e825ff0a8cb091f20bb41ac69fc99da94cf68858b80aa51db4022c08a311730e`.

All four APK file hashes were independently read and matched their corresponding reports in `car-ui/dist/r10`:

| Package / variant | Bytes | SHA256 |
|---|---:|---|
| com.yunpan.appmanage / compatible | 19115602 | `7d9ac812bf2eb56e4df5257aed8525a4a2326cd4cee2f23776437d3d3a3f44c3` |
| com.yunpan.appmanage / AES | 30412568 | `5584d69c5bfae3e00986acac71152eb131f377a1654a419ad4b9ac33e4d2cf48` |
| com.maxinf.car / compatible | 19103314 | `0da7c3af14b232663eb0e14191660b8e8844cf8605dfa27f1a7fb0ac3ddec3b7` |
| com.maxinf.car / AES | 30523160 | `7c453355466ae00d5b8b2067901941253ba1efc9da255d2ed523688d543fcddb` |

Compatible reports declare minimum API17 and signed/aligned. AES reports declare minimum API29, v1/v2/v3 and alignment verification, and all-DEX encryption round trips. All use certificate SHA256 `c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8`. These are static build checks, not installed-device observations.

## Evidence and limits

`gradle-test-r10-final4.log` contains 62 passed test lines and `BUILD SUCCESSFUL in 2m 2s`. Three new R10 tests cover numeric geometry/text/listener retention, portrait home and landscape home. They exercise font scales 1.0/1.3 for numeric fields, and all six theme/day-night combinations, four border styles and normal/pressed/focused card fills. The parent separately reports five passing Python package-tool checks in 0.814s; this documentation pass did not rerun them.

`r10-boot-*` images are original binary-XML/native graphics fixtures with a test RecyclerView whose options list is not filled. They establish the three original numeric controls' local geometry, not the full live settings path. `r10-home-*` images render the actual `CarHome` class with a synthetic particle background, 32% transparency and flow appearance. Neither family is a VM screenshot.

`.impeccable/finish-review-r10.md` requests **recapture** because the final installed APK's home and real populated boot settings have no current device/emulator captures. The reported VM endpoint timed out 10060 and device status was empty. Source editing is not requested by that review; this is not rebuild or ship. Installed startup, persistence through the actual save controller, IME input, real automation/boot execution and vehicle behavior remain unaccepted. P1/R9 device evidence is historical and cannot accept R10.

The broad incumbent optional-border narrative is preserved. The approved favorite-card exception is documented at surface scope rather than silently regenerating the system files or repairing older sidecar/fixture drift. No craft-floor defect, evidence gap or unused runtime state was promoted into a token.
