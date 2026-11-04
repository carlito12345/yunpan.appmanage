disposition: ship

Scope: R9 `dialog_share` LAN-transfer QR sizing, adaptive composition, original control identity and callback preservation only. This is the ordinary bug fix in the incumbent code-led Android world. The cloud-login QR and public source poster are separate layouts; their historical approvals do not resolve this failure. No new comp was required, and no HTML/CSS detector ran on native Views. No implementation was edited by this reviewer.

## persistence

Pass. PRODUCT.md, DESIGN.md and the existing CarHome surface brief establish native Operate mode, Android system sans, warm/cyan/mono roles, portrait/landscape support and preservation of original business widgets. R9 reuses those conventions. The current user appearance—warm/day, 32% panel transparency, flow/mint and particles—was preserved rather than changed for the capture.

Opened the original user failure photo `.codex-attachments/63b9c88b-b026-43bb-bab9-a094c0aa2cc9/bdd6a7a0-73bb-4493-8c0f-088a42f032ef/1002686267.jpg`. It shows the LAN-transfer dialog with its QR reduced to a tiny mark above the instructions. Opened both required Android 11 / API30 VM originals under `car-ui/build/vm-r9/`: `lan-portrait-private.png` (1440×1920) and `lan-landscape-private.png` (1920×1440). Both show the named dialog fully rendered; neither is blank, loading or cut off. Independently computed image hashes match `qr-evidence.json`. These private frames are review evidence only; release evidence uses the redacted counterparts. No live address or QR payload is reproduced here.

Independently computed protected APK SHA-256 `d4ac9b4e3f7b5e0fc2a9ff54db23f1af36061fc47d6c422badb35b77052bb074`, matching the calling packet and `final-installation.json`/`runtime-report.json`. Installation association is the operator's recorded evidence; this reviewer did not operate ADB or independently attest the installed package.

Read the focused `LegacyUi.java` implementation, `R9RegressionTest.java`, the existing cloud-login QR test, original `dialog_share.xml` and `ha.jc` controller. Read the final Gradle log and all ten result XML summaries: **59 tests, zero failures/errors, BUILD SUCCESSFUL in 6m 35s**. Tests were not rerun by this reviewer.

## fidelity

| Contract | State | Evidence |
| --- | --- | --- |
| Reported tiny QR | resolved | Both actual VM images show a large black/white code occupying a substantial square instead of the photographed point. The LAN layout has its own `transferQr` route; it no longer relies on the generic overlay's incidental size. |
| TYPE and original instructions | match | The native title, connection guidance, manual-address text and full help remain readable and preserve their original wording. The manual address remains a distinct alternative to scanning. |
| MATERIAL and quiet zone | match | Both live captures show an opaque white square and clear white perimeter around the code. `QrSquare` is tagged as owned UI, uses opaque white, FIT_CENTER and 18dp padding; the bitmap is untinted and filtering is disabled. The surrounding translucent panel does not wash out the code. |
| Portrait/landscape composition | match | Portrait places the square above the instructions; landscape places it beside them. The title remains above and the sound/Return footer below. Neither code nor action is clipped by the app bounds or system navigation area. Scrollable instructions own the remaining body space. |
| Original instances and controller contract | match | `v_root2` remains the original ConstraintLayout; the original QR, guideline, title/content/IP, sound group/icon and close controls are reparented rather than substituted. `transferQr` does not install replacement sound or close listeners. Original `ha.jc` still binds the sound icon/callback, address, QR file or GONE state, close callback and dismiss lifecycle. |
| Missing and late QR | match within local evidence | The focused test asserts original GONE visibility, hidden white host and positive manual-address height, then makes the same ImageView visible with late content and checks its large square. Production layout follows the ImageView's visibility. No new generator or transfer behavior is introduced. |
| Shared helper compatibility | match within local evidence | `QrSquare` now honors a supplied height bound. The existing cloud-login QR size/state/dismiss test passes in the same final suite. This is regression evidence, not renewed cloud authentication acceptance. |
| Theme geometry | match within fixture evidence | Opened all six `r9-lan-{warm,cyan,mono}-{1440,1920}.png` native fixtures. Each retains the square, complete instructions and footer. Their solid black bitmap is test content, not a live scannable code. |
| Decode and actions | bounded pass | `qr-evidence.json` records successful offline ZXing decoding for both actual frames, matching the displayed LAN address and carrying no query or credential. The reviewer read this result rather than rerunning decoding. The R9 test preserves a sound listener bound before adaptation; its close dismissal is synthetic and attached after adaptation. Source inspection and the operator's runtime Return observation supply the original-close preservation evidence. |
| Incumbent direction | match | THESIS/STORY, FIRST VIEWPORT, FORM and signature favorites interaction are unchanged. The native rounded controls and current appearance remain the existing world; the opaque QR field is functional scan content. |

## ceiling

Reached for the reported LAN QR display failure at the two supplied Android 11 VM orientations. The source, six native fixtures, final local test results and two actual protected-build frames agree on large square sizing, white quiet space, reachable instructions and fixed original actions. No additional UI repair is owed by this bounded review.

Offline screenshot decoding is not a physical phone-camera scan, browser connection or file-transfer result. The runtime record explicitly leaves those untested. Other Android versions, all-module behavior, large-font/focus/TalkBack matrices, vehicle hardware/performance, startup consistency and build protection/cryptography remain outside this verdict. The reported first-launch-to-Launcher symptom is retained as an existing boundary, not closed by the subsequent successful Home launch. This scoped ship does not supersede older unresolved evidence boundaries.

## material_fixes

None required in this review's scope. The user-photo failure is resolved in the supplied current runtime evidence. Stop the source polish loop for this issue.

## keep

Keep the independent measured QR square and opaque white quiet zone, original ConstraintLayout/IDs/instances/listeners, original GONE/manual-address fallback, full scrollable instructions and fixed sound/Return footer. Keep the user's selected appearance and the separation of LAN transfer, cloud-login QR and source-poster layouts. Deliver redacted evidence only; retain private raw frames outside the release package.
