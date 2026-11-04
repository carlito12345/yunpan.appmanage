# R11 design documentation

Scope: approved system change from the user's latest marked screenshot. Existing DESIGN.md merged; palettes, type and unrelated historical evidence preserved.

## Changed tokens and policies

- Removed the obsolete cyan-cap10dp and mono-cap16dp theme caps. Cyan/mono primary component mappings now use rounded.tile26dp; cyan category chips use rounded.legacy-control22dp.
- Replaced theme-preview-cyan8dp with the shared theme-preview16dp and mapped the theme chooser to it. Added frosted-board28dp as the shared dialog-material clipping role.
- CarUi.rounded now preserves each caller's role radius. Favorites26dp, header18dp, hero32dp and rail40dp are not one universal radius.
- Favorites heading and edit control use borderless material; favorite cards regain thin default or chosen edges, and the add tile keeps its original border. The warm/day sidecar favorite sample now has the thin outline.
- Sidecar component radii and theme/modal/appearance metadata now match the source; panel CSS remains a translation, not device evidence.

## Evidence and limits

- 62 tests / 11 suites, zero failures/errors; final log reports 3m 8s. Source snapshot checked against all17 current UI Java files.
- Five package-tool regressions passed in 0.439s, as recorded by the parent's R11 verification.
- UI DEX SHA256 `5044c9ccc5e4fcb1d91f2abdc254be753c8df2a80085565dabd0e969f9bd2bf6`; 143 classes.
- 18 native fixture images; Home uses CarHome, boot uses original binary XML with a test RecyclerView and no populated real options.
- disposition: recapture; no current installed-APK device capture, VM, saved-value, IME, boot execution or vehicle acceptance. Historical results were not promoted to current acceptance.

## Artifact identities

- `应用管家-com.maxinf.car-AES加固版.apk`: 30523160 bytes; SHA256 `d2797dbe3db6c3c57ff336424176786e70beaf74a0457bdda1b5bf16d0ab3e18`.
- `应用管家-com.maxinf.car-兼容版.apk`: 19103314 bytes; SHA256 `8ac17de2101a1ab7df958350074c8c5205a9cbfa0a82c8b4cb611dba84a1d286`.
- `应用管家-com.yunpan.appmanage-AES加固版.apk`: 30412568 bytes; SHA256 `3d7b0659075cd78bed2765b7063c4bef4ae661e1b10f05311e8f508011b8324a`.
- `应用管家-com.yunpan.appmanage-兼容版.apk`: 19115602 bytes; SHA256 `f1a76ee02a4b0455a3492cf3e7007e8a7f110b7bfb46bdcea239f22298bab631`.

Not canonized/repaired: runtime evidence gaps and unrelated incumbent drift. The pre-existing Theme Choices panel still translates native min-height80dp/padding12dp 16dp as CSS min-height86px/padding16px 18px; this unrelated translation drift was left unchanged. No palette, source icon bytes, typography, business callbacks or private data were changed by this documentation pass.
