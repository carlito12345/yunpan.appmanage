---
"name": "应用管家 · 车机"
"description": "A native personal tools console with warm, cyan and monochrome day/night themes."
"colors":
  "canvas-day": "#F4F1EA"
  "surface-day": "#FFFEFA"
  "soft-day": "#EAE5DA"
  "ink-day": "#20221D"
  "muted-day": "#66695F"
  "outline-day": "#D6D3C7"
  "accent-day": "#E99657"
  "pressed-accent-day": "#F1B37A"
  "on-accent": "#271B12"
  "rail": "#1D201B"
  "rail-foreground": "#D8DCCE"
  "canvas-night": "#171816"
  "surface-night": "#252622"
  "soft-night": "#32332D"
  "ink-night": "#F5F1E8"
  "muted-night": "#B6B6A9"
  "outline-night": "#4E5046"
  "accent-night": "#F0A060"
  "pressed-accent-night": "#F5AE78"
  "cyan-canvas-day": "#EBF6FA"
  "cyan-surface-day": "#FAFEFF"
  "cyan-soft-day": "#D8ECF3"
  "cyan-ink-day": "#102C3C"
  "cyan-muted-day": "#446473"
  "cyan-outline-day": "#99BDC9"
  "cyan-accent-day": "#006A83"
  "cyan-pressed-accent-day": "#00566D"
  "cyan-on-accent-day": "#FFFFFF"
  "cyan-rail-day": "#0A2030"
  "cyan-rail-foreground-day": "#D9F8FF"
  "cyan-canvas-night": "#07121D"
  "cyan-surface-night": "#102230"
  "cyan-soft-night": "#1A3444"
  "cyan-ink-night": "#E8FAFF"
  "cyan-muted-night": "#A3C6D5"
  "cyan-outline-night": "#366579"
  "cyan-accent-night": "#61E4FF"
  "cyan-pressed-accent-night": "#A5F2FF"
  "cyan-on-accent-night": "#06212B"
  "cyan-rail-night": "#051019"
  "cyan-rail-foreground-night": "#C8EFFF"
  "mono-canvas-day": "#EDEFF1"
  "mono-surface-day": "#FFFFFF"
  "mono-soft-day": "#DDE1E5"
  "mono-ink-day": "#17191D"
  "mono-muted-day": "#525B65"
  "mono-outline-day": "#B1BAC4"
  "mono-accent-day": "#24282D"
  "mono-pressed-accent-day": "#454C55"
  "mono-on-accent-day": "#FFFFFF"
  "mono-rail-day": "#15171A"
  "mono-rail-foreground-day": "#EDF0F4"
  "mono-canvas-night": "#101112"
  "mono-surface-night": "#222426"
  "mono-soft-night": "#34373A"
  "mono-ink-night": "#F6F7F8"
  "mono-muted-night": "#B9BEC4"
  "mono-outline-night": "#646B72"
  "mono-accent-night": "#F2F3F5"
  "mono-pressed-accent-night": "#CED2D7"
  "mono-on-accent-night": "#141618"
  "mono-rail-night": "#08090A"
  "mono-rail-foreground-night": "#E4E7EB"
  "rail-pressed": "#424438"
  "hero-action-pressed": "#3D3D32"
  "theme-control-pressed": "#3D4248"
  "brand-foreground": "#F4F1EA"
  "hero-action-foreground": "#FFFEFA"
  "danger-day": "#AD3926"
  "danger-night": "#FFA48E"
"typography":
  "display":
    "fontFamily": "sans-serif"
    "fontSize": "34sp"
    "fontWeight": 700
  "headline":
    "fontFamily": "sans-serif"
    "fontSize": "30sp"
    "fontWeight": 700
  "legacy-title":
    "fontFamily": "sans-serif"
    "fontSize": "28sp"
    "fontWeight": 700
  "title":
    "fontFamily": "sans-serif"
    "fontSize": "25sp"
    "fontWeight": 700
  "card-title":
    "fontFamily": "sans-serif"
    "fontSize": "21sp"
    "fontWeight": 700
  "legacy-section":
    "fontFamily": "sans-serif"
    "fontSize": "20sp"
    "fontWeight": 700
  "body":
    "fontFamily": "sans-serif"
    "fontSize": "19sp"
    "fontWeight": 400
  "action":
    "fontFamily": "sans-serif"
    "fontSize": "18sp"
    "fontWeight": 700
  "support":
    "fontFamily": "sans-serif"
    "fontSize": "16sp"
    "fontWeight": 400
  "label":
    "fontFamily": "sans-serif"
    "fontSize": "14sp"
    "fontWeight": 400
  "caption":
    "fontFamily": "sans-serif"
    "fontSize": "13sp"
    "fontWeight": 400
"rounded":
  "field": "18dp"
  "tab": "21dp"
  "legacy-control": "22dp"
  "legacy-row": "14dp"
  "icon-control": "24dp"
  "tile": "26dp"
  "action": "28dp"
  "dialog": "30dp"
  "hero": "32dp"
  "rail": "40dp"
  "cyan-cap": "10dp"
  "mono-cap": "16dp"
  "theme-preview-cyan": "8dp"
"spacing":
  "4": "4dp"
  "6": "6dp"
  "8": "8dp"
  "10": "10dp"
  "12": "12dp"
  "14": "14dp"
  "16": "16dp"
  "18": "18dp"
  "20": "20dp"
  "22": "22dp"
  "24": "24dp"
  "26": "26dp"
  "28": "28dp"
"components":
  "button-primary-day":
    "backgroundColor": "{colors.accent-day}"
    "textColor": "{colors.on-accent}"
    "typography": "{typography.action}"
    "rounded": "{rounded.tile}"
    "padding": "12dp 18dp"
  "button-primary-day-pressed":
    "backgroundColor": "{colors.pressed-accent-day}"
    "textColor": "{colors.on-accent}"
    "rounded": "{rounded.tile}"
  "button-primary-night":
    "backgroundColor": "{colors.accent-night}"
    "textColor": "{colors.on-accent}"
    "typography": "{typography.action}"
    "rounded": "{rounded.tile}"
    "padding": "12dp 18dp"
  "button-primary-night-pressed":
    "backgroundColor": "{colors.pressed-accent-night}"
    "textColor": "{colors.on-accent}"
    "rounded": "{rounded.tile}"
  "cyan-button-primary-day":
    "backgroundColor": "{colors.cyan-accent-day}"
    "textColor": "{colors.cyan-on-accent-day}"
    "typography": "{typography.action}"
    "rounded": "{rounded.cyan-cap}"
    "padding": "12dp 18dp"
  "cyan-button-primary-day-pressed":
    "backgroundColor": "{colors.cyan-pressed-accent-day}"
    "textColor": "{colors.cyan-on-accent-day}"
    "rounded": "{rounded.cyan-cap}"
  "cyan-button-primary-night":
    "backgroundColor": "{colors.cyan-accent-night}"
    "textColor": "{colors.cyan-on-accent-night}"
    "typography": "{typography.action}"
    "rounded": "{rounded.cyan-cap}"
    "padding": "12dp 18dp"
  "cyan-button-primary-night-pressed":
    "backgroundColor": "{colors.cyan-pressed-accent-night}"
    "textColor": "{colors.cyan-on-accent-night}"
    "rounded": "{rounded.cyan-cap}"
  "mono-button-primary-day":
    "backgroundColor": "{colors.mono-accent-day}"
    "textColor": "{colors.mono-on-accent-day}"
    "typography": "{typography.action}"
    "rounded": "{rounded.mono-cap}"
    "padding": "12dp 18dp"
  "mono-button-primary-day-pressed":
    "backgroundColor": "{colors.mono-pressed-accent-day}"
    "textColor": "{colors.mono-on-accent-day}"
    "rounded": "{rounded.mono-cap}"
  "mono-button-primary-night":
    "backgroundColor": "{colors.mono-accent-night}"
    "textColor": "{colors.mono-on-accent-night}"
    "typography": "{typography.action}"
    "rounded": "{rounded.mono-cap}"
    "padding": "12dp 18dp"
  "mono-button-primary-night-pressed":
    "backgroundColor": "{colors.mono-pressed-accent-night}"
    "textColor": "{colors.mono-on-accent-night}"
    "rounded": "{rounded.mono-cap}"
  "button-secondary-day":
    "backgroundColor": "{colors.soft-day}"
    "textColor": "{colors.ink-day}"
    "typography": "{typography.action}"
    "rounded": "{rounded.tile}"
    "padding": "12dp 18dp"
  "hero-action":
    "backgroundColor": "{colors.rail}"
    "textColor": "{colors.hero-action-foreground}"
    "typography": "{typography.action}"
    "rounded": "{rounded.action}"
    "padding": "12dp 18dp"
  "favorite-day":
    "backgroundColor": "{colors.surface-day}"
    "textColor": "{colors.ink-day}"
    "typography": "{typography.card-title}"
    "rounded": "{rounded.tile}"
    "padding": "18dp 20dp"
  "search-day":
    "backgroundColor": "{colors.soft-day}"
    "textColor": "{colors.ink-day}"
    "rounded": "{rounded.field}"
    "padding": "12dp 18dp"
  "field-day":
    "backgroundColor": "{colors.surface-day}"
    "textColor": "{colors.ink-day}"
    "typography": "{typography.body}"
    "rounded": "{rounded.field}"
    "padding": "10dp 18dp"
  "navigation-selected-day":
    "backgroundColor": "{colors.accent-day}"
    "textColor": "{colors.on-accent}"
    "rounded": "{rounded.action}"
    "padding": "12dp 0dp"
  "legacy-check-day":
    "backgroundColor": "{colors.surface-day}"
    "textColor": "{colors.ink-day}"
    "rounded": "{rounded.legacy-row}"
    "padding": "14dp"
  "cyan-chip-selected-night":
    "backgroundColor": "{colors.cyan-accent-night}"
    "textColor": "{colors.cyan-on-accent-night}"
    "rounded": "{rounded.cyan-cap}"
  "theme-choice-mono-day":
    "backgroundColor": "{colors.mono-canvas-day}"
    "textColor": "{colors.mono-ink-day}"
    "typography": "{typography.card-title}"
    "rounded": "{rounded.mono-cap}"
    "padding": "16dp 18dp"
---

# Design System: 应用管家 · 车机

## Overview

**Creative North Star: "个人控制台 / Personal Control Console"**

A practical personal console for Chinese car-display users. The original reference establishes the warm orange and cream identity. The user has expanded that approved world to three selectable expressions: 暖橙 · 奶油, 冰蓝 · 荧光科技 and 黑白 · 墨镜阴影. They share readable Chinese system type, persistent dark navigation, explicit selection and the same real application workflows.

Warm keeps broad, rounded surfaces; cyan uses cool blue panels, bright selection and tighter outlined corners; monochrome uses neutral contrast, restrained corners and native shadow on app/favorite cards. Original business widgets remain the functional authority. Optional static/Canvas/video wallpaper keeps its own colors behind the application main shell; shared panel transparency and selectable borders are separate appearance controls. Shipping UI is native Java Views and Android drawables.

**Key Characteristics:**

- Three complete, manually selected day/night palettes with paired foregrounds.
- A persistent dark rail and clear labeled routes to real tools.
- Role-specific app cards, category chips, checkbox rows, fields and wrapping actions.
- Actual installed-app icons alongside the shared authored line-icon family.
- Editable favorites with explicit add, rename, remove, move and recovery controls.
- Optional app-shell static/particle/video wallpaper with preview, crop, Apply and Cancel.
- Shared panel transparency and optional borders that preserve foreground and wallpaper opacity.

This records the stable visual contract in CarUi, CarHome, LegacyUi, FrostedDialogs, ThemePicker, the wallpaper classes, WrapLayout and ResourceIndex. The user's five device photographs under .codex-attachments/8d3a5254-f4ce-42c3-ac20-1c860b3deb19 are authoritative failure evidence for the functions footer, automation actions, file labels, network controls/loading and installer-choice menu. The user clarified that the theme-button defect is text position. The approved palettes and identity remain unchanged. Exterior black bands in those photographs do not establish an app-window or inset defect.

Images under car-ui/previews/modules and car-ui/previews/regressions-r3 are Robolectric API 28 Native Graphics renders using original APK binary XML and its resource table. Current targeted tests compile original adapter row-binding bodies with small test-only adapter/model plumbing; car-ui/prepare_binding_tests.py records source hashes and decompilation corrections in car-ui/build/original-binding-test-provenance.json. Data remains fixture data. TV/custom recyclers, MyTextView and AppCompatSeekBar have native test counterparts. The Hive test copies the original measurement, path and non-image drawing contract with a static sample; it does not run the complete custom widget or animator lifecycle. Production retains original business widgets. These are fixture layout/paint checks, not installed-APK captures.

The exact R3 APK (SHA-256 ca7eac737e65e4afe55d3283c3e228f5672997b0a51622851a0b50603022eed2) was installed with data preserved on the user-specified G636 test VM, Android 11 / API 30. The installed package hash matched. Historical runtime captures under car-ui/build/vm-validation cover 1440×1920 portrait and 1920×1440 after system rotation. They show the separated functions footer, compact automation header and horizontal original rows, named file locations/actions and loaded internal directories, stacked/side-by-side network panes with the bounded original Hive loader, four settings sections, centered theme label, actual theme picker and live warm/day → cyan/night → mono/day theme changes. Installer-menu evidence uses the menu-only crop r3-installer-menu-only.png. VM app-list/search captures also show the IME working. These installed-R3 captures are distinct from the Robolectric fixtures and do not validate R4.

The earlier 326 resource-ID preservation/measurement checks did not establish usable bound layouts; the device photographs exposed that limit. Historical reviews retain their earlier scope; the VM evidence is assessed separately in .impeccable/vm-review-r3.md. This document asserts no whole-business-runtime or ship approval. The VM search for MT shows duplicate results from the original ha/o.java case 8 name/package result merge without deduplication; that business defect remains unfixed. No FATAL EXCEPTION appears in the captured log scoped to PID 26126, which does not establish absence of every runtime failure. Original-PNG pixel/crop checks confirmed complete rail drawing; the apparent omission in a scaled viewer is not an APK defect.

R4 responds to the user's new 1002686233.jpg failure photo and the same floating-button failure reproduced in the installed R3 VM (r3-float-before.png and its hierarchy). WRAP_CONTENT selectors and 1dp separators had been treated as elastic content: the selector/key/map lists collapsed while a separator became a large orange block. This is a confirmed layout failure, separate from the earlier scaled-viewer rail issue. .impeccable/failure-review-r4.md records the six affected shared layout families; the R3 target-path successes remain historical evidence rather than a claim that other pages were adapted.

At the 2026-11-04 R4 handoff, source and car-ui/previews/regressions-r4 covered representative original binary-XML layouts with explicit test rows and native test counterparts, not complete business controllers. Dynamic-content checks used a SurfaceView to test host visibility and editor anchors, without executing the real editor. The final local run in car-ui/build/gradle-test-r4-final.log completed successfully in 1m46s: 31 tests, zero failures/errors, with 62 compiled UI classes. Dialog Window checks measured decor against actual owner bounds and final Window attributes. The artifact was 应用管家-全面适配测试-R4-20261104.apk, SHA-256 e0ad467687277272d523e6569808194eb6ec6f0226771aca6febda03203ced83. .impeccable/finish-review-r4.md retained an installed-recapture boundary: attempts then encountered device offline / timeout 10060, with no R4 installation by the implementation team at that handoff. Those historical statements remain scoped to that time.

R5 follows ten new user runtime images and the explicit request for a frosted dialog panel with the owner dimmed. The reconnected VM's user-installed exact R4 hash was verified before a data-preserving R5 install succeeded. .impeccable/failure-review-r5.md records the real clickable-dialog integration, late file-menu binding, multirow download toolbar, empty network allocation and named form failures. The frozen artifact is 应用管家-弹窗与子页修复-R5-20261104.apk, SHA-256 489a88d3a27106020124ff1582a1e1cd6a98d7a2668edf3bea00c2316eec30e8, 18,927,028 bytes. Its final local suite completed successfully in 2m8s: 39 tests, zero failures/errors, with 66 compiled UI classes. The public certificate, v1/v2/v3 signatures, alignment and 2,293 preserved payload entries were verified. This exact package installed with data preserved, and the VM package hash matched. The first Home launch returned to Launcher, followed by a successful explicit second Home launch with app PID 12749; cold start is not accepted as fully verified. Intermediate captures, including final-* files associated with ac415b, are not evidence for this final hash; .impeccable/finish-review-r5.md separates the batches.

car-ui/build/vm-r5/runtime-report.json records 22 release/ captures for this final hash on G636, Android 11/API 30 at 1440×1920 and 1920×1440. They cover the clean dialog in warm/day, mono/day and cyan/night, cyan rotation while open and a clear owner after dismissal; ThemePicker in mono/cyan, ShortcutPicker and favorite editing; directory file menu; both download orientations with all six commands; log main/editor; door fields, full lower help and fixed footer across scrolling/rotation; native-key enable and the real broadcast Action form. The network capture shows an unselected remote pane compacted while the local path remains LOADING; it does not prove a loaded local list. Runtime Window evidence establishes DIM_BEHIND and a bounded frame; numerical 0.46/0.58 dim amounts come from source/local Window tests, not the runtime text dump. No save, cleanup, delete, service change or favorite change was performed. The filtered main-process CarUi:E/AndroidRuntime:E result has zero entries, within that filter only. The VM ended on ActivityHome with mono/day, user rotation 0 and accelerometer rotation 0 restored.

R5 is a frozen historical checkpoint: 应用管家_弹窗与子页修复_R5_源码与检查_20261104.zip, SHA-256 4afbf58859aaa7f411a74b6caf86f3711fbb39098e2fb6b2d5d46d48bc10d5d4. Its test/runtime boundaries above do not validate R6. The earlier R6 engine phase used 应用管家-动态壁纸-R6-20261104.apk, SHA-256 17bed211bdde26d7fdaa071e1e2da88db92ce8cf64f7621939633cb84793f2c4, with 44 local tests, 96 UI classes and BUILD SUCCESSFUL in 1m56s. The final wallpaper-center/crop artifact is 应用管家-壁纸中心-R6-20261104.apk, SHA-256 1b1bca46afcbf65d3d38ce65d9e9b64c1caa395b98bc44c68566a7e8156a85fc, 18,947,508 bytes and 114 compiled UI classes. Its six-suite run has 49 tests (9+8+7+7+8+10), zero failures/errors; the installed VM package hash matches.

car-ui/build/vm-r6/runtime-report.json separates engine and final phases. The engine captures/media record cover six particle styles, video selection/Cancel/Apply, rotation, background release/resume and static playback hold. Final evidence is the report's 16-image allowlist for the 1b1b hash: wallpaper-center entry from the theme dialog and original advanced-background button; image selection/crop/preview/Apply/reopen; pan and keyboard zoom with owner rotation; default star/moon restoration; cyan particle/control tints; and narrow video confirmation with own PID 26338 frames advancing 46→80, muted looping AVC. DocumentsUI selection completed by keyboard; touch selection was not accepted, and pinch is implemented but not VM-injected. Exact 1440×1920 / 1920×1440 crop output dimensions are local native-geometry evidence; private output JPEG metadata was not read. The main filtered UI error count is zero within its scope. The VM ended mono/day, wallpaper off and rotation 0/0, with no own media client; the two self-created test sources were removed. Cold start remains unaccepted: first explicit Home start returned Launcher, then a warm second start succeeded.

R7 is 应用管家-MT双窗与全局外观-R7-20261104.apk, SHA-256 af4249ca5d37057bf0e84085e47089633e677714dda0ea7f65ad355ead0b505d, 18,955,700 bytes and 135 UI classes. Its eight local suites total 56 (9+8+7+7+8+4+10+3), zero failures/errors, completed in 2m4s. car-ui/build/vm-r7/runtime-report.json and final-installation.json record a matching installed hash, 15 current runtime captures and 12 native fixture renders. Runtime covers independent side-by-side panes with late-arriving real local rows, three-column provider wrapping, large QR request/view/cancel, and a 35% transparency + 流光飞舞 + 樱粉 draft/application. Two border-region samples changed; this is visual sampling rather than a GPU benchmark. QR delivery images are redacted; no phone scan, account confirmation, authenticated directory or transfer was accepted. Theme-center footer and combined-commit notice were visible. Main PID 9546 has zero scoped UI error lines. The first explicit launch returned Launcher; a later COLD Home start succeeded in 2985ms, without establishing general cold-start reliability.

R7 preserved the user's existing warm/day theme and local video, recording no video URI. It restored only the new appearance values to transparency 0 / border style 0 / color 0 and rotation/accelerometer 0/0; the historical R6 mono/day + off restoration was not reapplied. R6 lifecycle/video evidence stays historical. Current scope is named paths and shared contracts, not all 333 layouts or complete business runtime. Local browsing may still load transiently or persistently; real accounts/transfers, USB fine settings, asynchronous APK metadata, full IME/font/lifecycle/device matrices, API17–25 animation behavior, hardware performance and vehicle operation remain open. Original search duplication P2 remains unfixed. Panel HTML/CSS is a translation, not native evidence.

R8 is an ordinary author/source extension within this system. The reported full local run has 57 passing tests; SourceInfoTest adds exact attribution/link/channel assertions and Close reachability/dismissal at the two owner sizes. The public poster asset separately matches SHA-256 f7dce8a56326f62de4f02c92bcea7653e1d7efef47ebb2debf6f3fdba362035a. Four specified protected-build Android 11/API30 captures under car-ui/build/vm-r8 show the complete source dialog at 1440×1920 and 1920×1440, theme-center lower source section and home scroll-footer. Existing warm/day, 32% transparency, flow/mint border and particle wallpaper were preserved. .impeccable/finish-review-r8.md gives scoped ship for these attribution/poster entries only. Compatible and protected APK identities are separate release metadata in the sidecar; packaging protection is not a visual-system or security/whole-business acceptance claim.

## Colors

The frontmatter is normative. Unsuffixed theme names retain established warm token names; cyan- and mono- prefixes identify added palettes. Each pair maps directly to the eleven CarUi.Skin roles. The sidecar extensions.themePalettes carries those role-to-token bindings.

### Primary

- **暖橙 · 奶油:** Warm Orange by day and Night Apricot by night. The action panel, selected destination and primary actions use accent; labels and icons use on-accent.
- **冰蓝 · 荧光科技:** Deep Cyan by day with white on-accent; Fluorescent Ice by night with deep blue on-accent. Night is the initial mode when switching to this theme.
- **黑白 · 墨镜阴影:** Graphite action surfaces with white labels by day; pale silver actions with near-black labels by night. Selection remains explicit without adding a colored accent.
- **Pressed accent:** each theme and mode has a separately authored pressed-accent token paired with that scheme's on-accent.

### Neutral

- **Canvas:** workspace background, named background in Skin.
- **Surface:** app/favorite cards, standard fields, dialogs and unselected category chips.
- **Soft:** secondary controls, selected checkbox rows and pressed surface controls.
- **Ink:** primary text, internal line icons and focus strokes on neutral helper controls.
- **Muted:** hints, support text and unavailable-state descriptions.
- **Outline:** dashed add boundaries; cyan also uses it as a thin outline on surface and rail drawables.
- **Rail / rail foreground:** dark navigation in every theme and mode. Active routes use accent/on-accent.
- **Semantic danger:** the shared text pass preserves recognizable legacy red using the existing day/night danger pair, independent of selected theme. This does not introduce a destructive-button variant.

Existing console roles remain explicit shared constants: the dark hero action's foreground and pressed fill, inactive rail press, theme-control press, brand word and day/night rail labels. Do not silently recolor these as eleven-role Skin values.

**The Paired States Rule.** Resolve fill, foreground, icon and focus stroke from the same theme and mode. Primary controls keep their on-accent foreground when pressed; neutral controls keep ink on surface-family fills.

The default saved state is warm/day. ThemePicker stores theme and dark separately in car_ui_v1. Selecting a different theme starts cyan in night mode and warm/mono in day mode; selecting the current theme preserves its mode. There is one saved dark flag. R7's theme center also stores transparency, borderStyle and borderColor in car_ui_v1. Apply, choosing a theme or changing day/night commits the current appearance draft together; explanatory copy states this. Cancel leaves it unsaved. Theme choice does not overwrite favorites or wallpaper selection. System-wallpaper-derived Dynamic Color, automatic system-night synchronization and complete Material 3 theming are not implemented. Wallpaper, border-color choices and shared Skin roles remain distinct.

## Typography

Android sans-serif with device Chinese fallback remains the common face. New labels use native sp, bold where indicated, and disable extra font padding. Shared clickable legacy text uses sans-serif-medium. The frontmatter preserves the observed hierarchy.

- **Display / Headline:** action-panel and console page headings.
- **Legacy title / section:** rebuilt module headings and grouped settings headings.
- **Title / Card title:** favorite section titles and two-line favorite names.
- **Body / Action:** native fields, picker rows and helper controls.
- **Support / Label / Caption:** instructions, destination kinds, rail names, clock detail and dates.

Component-specific treatments remain: picker title (27sp), edit/theme dialog titles (26sp), picker tabs (17sp), custom explanation and theme description (15sp). The real clock uses the title size at normal weight. Shared legacy text is clamped to 17–28sp. App names wrap to two lines with end ellipsis; checkbox descriptions can wrap to six; category chips remain single-line.

Use larger text to expose needed vertical growth and scrolling. Existing large-font module previews are bounded evidence, not proof that every legacy screen accepts every accessibility font scale.

## Layout

Use dp for geometry and sp for type. The 1440×1920 portrait and 1920×1440 landscape dimensions are capture targets. Resolve actual available width before composing lists, toolbars and dialogs.

The console uses left/top/right/bottom padding (16/18/24/18dp), an 88dp rail and a 24dp gap before the flexible content column. Its header holds the title and real TextClock. Favorites scroll vertically while the rail stays outside that scroll. Favorites use two equal columns when portrait or square and three when width exceeds height, with 14dp gaps and minimum heights of 146dp portrait / 132dp landscape. Allow content to grow past those minima.

Legacy module composition follows the existing task:

- **Apps:** heading and original back/refresh controls, horizontal category selector, original search and an elastic app list. Grid spans respond to measured list width.
- **Functions:** the original grid takes the elastic content area; the real version string in fragment_cmd/v_ts occupies a measured footer below it. Footer and list bounds must not overlap, including after late text binding.
- **Automation:** original return, service and settings actions remain compact horizontal icon/label controls in a wrapping header, followed by the title and an elastic original list. item_laboratory entries use a horizontal icon and wrapping description rather than stacked cards.
- **Files:** original storage selector, labeled wrapping action bar, path, clipboard controls and an elastic file list. item_root/v_pathName is a horizontal icon/label location row, not an app-category or checkbox selector. Size its strip for the complete bound row. Status, permission, loading and task controls stay with the original workflow.
- **Network:** MT-style cloud/local panes stay side by side in both target orientations, each with its own source, path, single-column file viewport, state and bottom toolbar. File rows are flat full-width icon/name/metadata rows with original thumbnails, badges and selection/state controls. Original adapters and business handlers remain. Provider choices keep the original TV list/adapter and use V7Grid columns based on available width and font scale, wrapping horizontally instead of becoming a vertical pile.
- **Settings:** four persistent section pages, 显示 / 安装 / 连接 / 高级, below the heading. The section selector becomes a left column in wide space and a top row in narrower/taller space. Each section scrolls independently without recreating original widgets. Long installation/permission descriptions use a reading column; short connection/reminder toggles use a width- and font-scale-aware grid; related advanced fields share a two-column layout when space permits. A single vertical pile of controls does not satisfy this surface's composition contract.
- **Other forms/dialogs:** reuse original containers where controllers depend on their concrete types. Adapt known form roles explicitly; compact interactive groups and content widgets remain protected. A known dialog content panel may be recomposed even when its original listener consumes background clicks; that listener alone does not make the whole form a compact control. Unknown adapter rows retain their structure. Original RecyclerView, ViewPager, WebView, editors and media surfaces remain content.

R4 adds explicit composition contracts for six shared families:

| Family | Composition contract |
| --- | --- |
| Related mapping lists | Float and DIY retain key → map columns; sidebar adds region → key → map. A bounded command strip sits above one shared remaining-height workspace; the map area takes flexible width. Full help follows the workspace. |
| Selector and main list | Recognize command/type/path selectors independently of XML zero height or horizontal-list orientation. Give selectors a bounded content/target height; only the identified main content takes remaining height. |
| Compact actions and main content | Keep each original action intact and wrap the complete group by available width, including action-only horizontal groups. Titles and the original main viewport remain separate. |
| Scroll forms and fixed footers | Preserve the original ScrollView/NestedScrollView as one bounded viewport, its natural-height form content and fixed bottom actions outside it. Preserve positive-height local lists and functional preview regions. |
| Multiple content/state regions and editor hosts | Downloads separate file browsing from incoming links/tasks and retain each area's original state layers. File pickers keep bounded paths/files/footer roles. CodeEditor keeps v_root as the direct late-content host and retains its original top/bottom anchors; only toolbar height is made explicit. |
| Natural-height selector forms | Group short selectors as form controls inside a scrollable form rather than manufacturing equal-weight bodies. |

WRAP_CONTENT is not an elastic-height signal. Preserve positive local list heights and the geometry of retained plain-View dividers, spacers and functional regions. The mapping strategy retains former decorative separator instances outside content measurement; this does not authorize hiding arbitrary Views. The sidebar appearance preview keeps its original coordinate geometry. Original adapters, list semantics, listeners and business behavior remain authoritative.

Noninteractive form labels align to START. Supported v_lay_bottom groups with the original return/yes controls keep their original buttons, note inputs and clickable enable controls in one WrapLayout; note inputs have a 160dp minimum width. This retains their instances and releases room for the bounded form viewport. The R4 dialog_add_intent captures record the earlier TextView-only footer case; R5 also retains the real door-enable control outside its original scroll viewport.

R5 log/key/broadcast/door forms retain original fields and local lists, composing each associated label, input and optional selector on a compact row. The five real log-check options use a responsive grid. File menus retain their original t1 rows and APK information Views across show-before-data and hidden/late metadata binding; invisible metadata reserves no empty panel. Download toolbars measure the actual six command rows at their natural height rather than a fixed selector strip. Log/key/USB pages keep complete actions, task context and adapter/state-driven empty guidance.

Shared inline actions also set the inner standard LinearLayout's 52dp minimum height, preserving the real enable target when the original ConstraintLayout does not honor its own minimum. USB composition has structural XML evidence only; there is no USB-specific fixture or runtime test because exercising that page would change an existing auto-click setting.

WrapLayout gives actions an 8dp horizontal/vertical gap, measures them against available width and moves complete controls to the next row. GONE controls and their elastic wrappers consume no space; wrappers follow subsequent original visibility changes. Responsive legacy grid counts come from measured list width and target item width, not the old fixed eight-column assumption. A linear list retains its original manager.

New console touch targets are at least 48dp: icon controls 48dp, picker tabs 50dp, helper actions 52dp, fields 54dp, custom submit 56dp and rail destinations 76dp minimum. Legacy action/check/app rows receive a 52dp minimum; selector chips receive 48dp. These source adaptations do not certify every legacy hit area.

The add picker is bounded by min(window width − 48dp, 680dp) and min(window height − 64dp, 780dp). Edit uses min(home width − 48dp, 500dp). The theme center is bounded by min(window width − 40dp, 620dp) and min(window height − 48dp, 760dp), with scrolling controls and a fixed footer. Legacy dialogs resolve owning Activity bounds, falling back to display metrics. Compact dialogs wrap actual content within window height minus 48dp; dialog_menu caps width at 380dp, other compact dialogs at 620dp, explicit full settings/shell/media/DIY or bounded file/form dialogs at 820dp, bounded by window width minus 40dp. Only full-dialog roles receive the bounded 900dp height. Choice rows stay horizontal/full-width; installer mode and installed-app choice remain separate. Fixed-footer forms keep actions outside their original scroll viewport. Shared legacy windows request IME resize; complete form/device keyboard behavior remains unverified.

QR login preserves the original image, state and controller-dependent containers. A large bounded square uses an opaque white 18dp quiet zone, untinted FIT_CENTER image and fixed Close below it. Panel transparency never fades the white code area or its readable state layer. Requesting/viewing/canceling a QR is distinct from successful scanning or authentication.

Overlays retain positive original dimensions. The original HiveProgressView remains a bounded 100dp square, including while visible; its width-driven measurement must not receive an unconstrained pane-width replacement. Theme its supported color role with the current accent. File/network selection guidance appears only for an empty adapter without a visible error or loading state; a populated path changes the message to the current-directory empty state. Guidance must follow actual state rather than cover populated content or imply a successful connection.

**The Native Units Rule.** Keep geometry in dp, text in sp, and reflow tied to actual available native bounds. Reference capture pixels are not a fixed layout canvas.

**The Bound Content Rule.** Use each production layout's real IDs and row-binding contract. Verify visible labels inside ancestor bounds, footer separation, content-sized menus and visible custom-loader bounds; successful inflation and measurement alone are insufficient.

**The Viewport Roles Rule.** Distinguish fixed geometry, content-height selectors, bounded scroll viewports and actual remaining-space content before recomposing a parent. Preserve fixed actions and region-specific state layers; never infer a usable workspace from resource IDs or nonpositive height alone.


## Elevation & Depth

Page/card surfaces use tonal layering; cyan adds a thin outline on surface and rail drawables. “荧光” describes bright accent and contrast, not a bloom effect. R5 adds an explicitly requested frosted modal material while retaining the existing palettes.

Monochrome gives native View elevation to favorite tiles (5dp) and legacy app/app-face nodes (4dp on supported Android versions). Dialog decor receives native elevation (20dp on API 21+). Android owns the resulting shadows; these are not CSS box-shadows or evidence of vehicle rendering. Other controls remain flat.

FrostedDialogs samples only the owning Activity's decor at 1/12 resolution, then applies two CPU separable radius-4 box-blur passes. Baseline surface alpha is 210/255 day, 220/255 night or 245/255 without a sample. R7 applies the configured panel opacity once across snapshot and tonal fill while preserving their proportions, rather than multiplying two independent layers. Foreground and wallpaper alpha stay unchanged. The in-memory panel is not system realtime cross-window blur or proof of SurfaceView capture. Native FLAG_DIM_BEHIND remains 0.46 day / 0.58 night, independent of panel transparency.

Sampling refreshes on bounded dialog/owner-resize/theme events. Keyed Board replacement/detach releases bitmap, listeners and border scheduling without replacing the external dismiss callback. Native fields, selected rows and focus backgrounds remain distinct from transparent hosts. The Board draws its own 28dp warm/mono or 16dp cyan corners and configured/default border outside the generic radius-cap helper.

**The Modal Layers Rule.** Keep the frosted panel, sharp interactive content and native owner dim as separate roles. Refresh and release the in-memory sample at bounded lifecycle events, retain original close/dismiss callbacks, and apply the configured panel opacity once to the fallback or sampled material.

Appearance offers 0–100% panel transparency (0 opaque, 100 transparent), 主题默认 / 纯色包边 / 多彩渐变 / 流光飞舞 borders and six primary edge colors. The native GradientDrawable subclass preserves functional focus/pressed boundaries. Flow follows an 8s linear cycle with draw-driven 33ms invalidation and one pending tick; hidden/closed drawables do not continue scheduling. API26+ checks the system animation switch, falling back to a static edge. API17–25 reads animation scale at drawable creation. Scheduling/reduction checks are local evidence, not old-device, frame-rate, GPU or power validation.

**The Surface Opacity Rule.** Apply transparency to shared panel material only, preserve foreground and wallpaper opacity, and keep QR quiet zones opaque. Use one compositing budget for the frosted snapshot and tonal fill.

Shared focus and pressed affordances use a 2dp state-list stroke. Neutral legacy app faces, actions, checkbox rows, general rows and destination-picker rows use ink; theme-preview rows use their own 3dp accent stroke. The selectable edge flow is separate from control transitions; native drag shadows and platform interaction behavior remain platform-owned.

Wallpaper motion is an optional background layer, separate from control transitions. Particle invalidation is scheduled at a bounded 33ms interval only while attached, active, visible and outside static mode; this is a scheduling policy, not a measured frame-rate claim. Video uses the platform MediaPlayer/TextureView path with muted looping and centered crop. Hidden/paused/detached views release MediaPlayer and Surface resources. The explicit static mode stops repeated particle ticks or holds video playback; hardware power/performance claims remain outside local evidence.

## Shapes

Warm retains the established hierarchy: broad rail and action panel, rounded cards and helper actions, tighter fields. The frontmatter stores requested native radii. CarUi.rounded caps requested radii at 10dp for cyan and 16dp for monochrome, leaving smaller values unchanged. Theme-picker sample rows are drawn separately at 8dp for cyan and 16dp for warm/mono; their selected outline is 3dp and default outline 1dp.

Cyan surface and rail drawables receive a 1dp active-scheme outline with the default border style; configured appearance can replace that decoration. Focus and press retain their 2dp functional state stroke. The add tile retains its dashed default boundary. Do not assume warm icon controls remain geometrically circular after a theme cap.

The shared icon family uses a 24-unit coordinate system and a 1.8-unit stroke with rounded caps and joins, with an intrinsic 24×24 drawable size for legacy ImageViews. During live theme changes, the legacy theme pass identifies authored Icons by drawable type and recolors them to current ink regardless of View ID, including ID-less file-toolbar icons after warm-to-cyan switching. Installed apps and original colored control/storage/network raster artwork retain their colors, identity and aspect ratio. Tint only known monochrome controls or authored line icons; a resource name ending in _ico is not a tinting contract. Targeted fixture assertions check visible current-ink pixels after that theme switch and no color filter on the original service raster; the installed-VM file-page capture also shows correct live icon recoloring. Vehicle rendering remains unverified. Selection indicators are drawn separately as native outlined boxes and ticks; they are not decorative icons or replacement business state.

## Components

### Buttons

Primary helper buttons use accent/on-accent and paired pressed accent; secondary helpers use soft/ink and press to surface. Both have 52dp minimum height, 18dp horizontal / 12dp vertical padding, and optional 22dp icon separated by 8dp. Their requested radius is tile, then the theme cap applies. Primary focus strokes use on-accent; neutral helper strokes use ink.

The hero add action uses current rail fill with the existing shared milk foreground and dark pressed fill. Custom submit remains full-width at 56dp minimum. Disabled move buttons use native enabled state and alpha (0.4). Legacy toolbar actions retain original clickable instances, receive labels, 52dp minimum height and 14dp horizontal / 10dp vertical padding, then wrap as complete controls.

### Cards / Containers

Favorite tiles use surface/ink, muted destination metadata and a 36dp icon. They press to soft and focus with ink. Monochrome elevation is limited to the source roles described above. Unavailable destinations remain editable and show “暂不可用 · 可编辑”; empty favorites retain add and recovery text.

Legacy app cards center a 54dp original icon above the original two-line name. The outer row leaves a 6dp inset around an app face for separation. App faces use surface at rest, soft when pressed, an ink state stroke and requested 22dp corners. Other bound rows use row/check/action roles rather than receiving the favorite layout.

Settings section pages express hierarchy through a selected section control, shared heading treatment, supporting text, related-control groups and responsive internal layouts. Preserve reading order and space for long permission descriptions; place short connection toggles and paired fields using available space. Section switches retain original controls and per-section scroll containers.

The add tile has an explicit state drawable: dashed outline at rest, solid 2dp ink outline on focus, and soft fill on press. The hero arrow uses accent/pressed-accent with an on-accent state stroke. These source-level states do not establish real hardware or D-pad focus traversal.

### Inputs / Fields

Native EditText uses surface/ink, muted hints, 54dp minimum height, 18dp horizontal / 10dp vertical padding, field radius and an ink focus stroke. Picker search is an 18sp soft field with 12dp vertical padding. Theme caps apply.

Required or invalid values use native setError. Cursor, selection, error popup and keyboard remain Android-owned. The installed-VM app-search path has working IME evidence; error presentation and keyboard behavior across other forms and vehicle hardware remain unverified. Preserve original input instances, IDs, data and listeners when recomposing forms.

### Navigation

The rail remains left-aligned in the two car-display orientations. A destination stacks a 25dp icon over a centered 14sp label. Selected routes use accent/on-accent; inactive routes use rail foreground. The mono/day brand mark uses rail foreground for contrast. Primary routes, a separate 主题 chooser and 日间/夜间 action remain labeled. The theme label itself uses centered TextView gravity so it aligns beneath its icon like its neighbors. Settings opens the original workflow.

Back exits editing, then returns from a non-nested workspace to favorites; original nested file/network handling is delegated. This describes source routing, not verified predictive Back, rotary behavior or compact-phone navigation.

### Chips and Checkbox Rows

Original app-category and display-mode selectors become single-line category chips. Selected chips use accent/on-accent and pressed-accent; unselected chips use surface/ink and press to soft. They have 48dp minimum height, 8dp trailing separation and requested 22dp corners, then theme caps apply. They retain original row/model binding rather than adding a new filter data source.

Settings section selectors share those selected/unselected color and focus pairs, with bold 18sp labels. They navigate persistent local sections rather than changing settings values.

Checkbox rows retain original model state and listeners. Checked rows use soft with an outlined tick: warm/day uses ink for legibility, while other themes/modes use accent. Unchecked rows use surface with a muted outlined box. The row's focus/pressed boundary uses ink. Original names wrap to six lines, with a 24dp indicator and 12dp gap. State is read after original adapter binding; unsupported models retain existing state artwork. Do not style every clickable row as a checkbox or make visual selection stand in for business state.

### Pickers and Favorite Editing

The destination picker offers internal functions, launchable apps and validated custom destinations. Its three source tabs sit in a soft track with surface selection and ink text; they are distinct from legacy category chips. Rows have a 78dp minimum height, two text levels, 34dp destination icon, 24dp add glyph and ink focus/pressed boundary.

Editing reveals explicit remove controls and a drag instruction. Long-press uses Android's native drag shadow; a drop target uses alpha (0.65) until exit/end. The edit dialog retains rename, delete, save and 前移/后移 alternatives. Duplicates and missing targets use existing native Toast feedback.

### Theme Center and Appearance

主题中心 puts panel transparency, border style/color and a checkerboard material preview above the three theme choices in one bounded scroll viewport. Apply/Cancel stay in a fixed footer. Theme cards retain their own color roles, “当前” marker and selected/focus boundary. Draft controls change the preview; Cancel does not save. Apply, choosing a theme or toggling day/night saves the appearance together, as the visible explanatory copy states. Opening 壁纸中心 leaves an unsaved appearance draft uncommitted. Hardware focus/rotary traversal and complete font/device combinations remain unverified.

**The Appearance Commit Rule.** Keep draft appearance changes local until Apply, a theme choice or a day/night choice commits them together. State that combined action visibly and keep Cancel unsaved.

### About and Source

关于与来源 reuses the existing type, panel, border and action styles. Keep customization authorship `carlito` separate from source APK attribution `应用管家社区官方【应用管家】`, with Tencent channel `updata3927`. It is reachable from the theme center's lower 关于与来源 section and the home content's scroll-footer `定制作者：carlito · 官方来源`; it remains secondary to favorites and real tool workflows.

SourceInfo displays the unchanged public poster from carui/source_channel.jpg with FIT_CENTER on opaque white, preserving its full aspect and quiet space. The poster takes remaining bounded height; 打开官方社区 and 关闭 stay in a fixed row with 52dp minimum actions. SourceInfo.resize participates in the shared owner-rotation helper. The community button opens the exact supplied https://pd.qq.com/s/7eyokceit?b=5 only on explicit selection; opening or closing the information panel does not launch it or save theme/appearance/wallpaper preferences. These supported-size captures establish layout/readability, not a fresh all-theme/font/hardware or link/QR-scanning matrix.

### Wallpaper Center

The theme-center title row exposes 壁纸中心; the original 设置/高级/修改管家背景 action opens the same center. A clean installation defaults to off; the feature decorates the main shell/hosted workspace without installing a launcher WallpaperService. Sources are off, static, Canvas particles and local video. The six patterns and background/particle choices remain. Particle speed/density use 0–100 controls, default 50/45, with energy-saving static playback disabled. The old strength preference remains compatible but is ignored; its control and shared wallpaper veil are removed in R7.

The bounded editor keeps preview above controls in portrait and beside them in wide space, with fixed Apply/Cancel. Owner resize retains draft and scroll container. Preview and applied static/star-moon/solid/particle/video content have no shared tint veil; off uses the theme canvas. Native controls keep theme tints. Global appearance changes panel material rather than fading wallpaper, text or icons.

Static mode offers 选择静态壁纸 · 按屏幕裁切, a separate 恢复默认星月 action and the existing six solid backgrounds. The original AppStart bj_2 star/moon asset is retained, with its 0.7/0.25 focal point preserved across orientations. The prior private bj.png/jpg source appears only when present, is bounded to a 2048px decode edge and is not modified/deleted. New image selection requests a local image document, decodes off the UI thread with a 4096px/~8-million-pixel bound, and handles EXIF orientation on API 24+.

The crop frame follows the actual owner-screen aspect, supporting pan, pinch, keyboard movement/zoom and Reset. Rotation preserves center/relative zoom. Target outputs are 1440×1920 / 1920×1440; larger outputs retain aspect within 2560px/~4MP. Saved-crop display decode now permits 4096px/~8MP, avoiding the former 2048px second halving; legacy bj.png/jpg retains its separate decode bound. 使用裁切 creates a private draft; Apply commits it. Cancel/replacement cleanup affects only eligible app-owned copies, leaving originals untouched. R6 gesture/output evidence remains historical rather than being counted as R7 repetition.

Video selection requests ACTION_OPEN_DOCUMENT with video/*, OPENABLE and EXTRA_LOCAL_ONLY. The native result Fragment carries the draft and newly acquired unused read grant back to preview, including picker cancellation/state restoration. Selection alone does not save. Apply writes car_wallpaper_v1; Cancel releases a new unused grant while preserving the prior saved URI/grant. Applying a replacement or explicit removal releases the old read grant when the saved URI changes. Off mode may retain the selected URI for reuse; Remove plus Apply clears it. Missing chooser, unreadable source, unavailable persistent access and decoder errors use native feedback and a readable fallback.

**The Wallpaper Draft Rule.** Keep preview separate from saved wallpaper, render both without a shared veil, and commit only on Apply. Preserve the previous video URI grant on Cancel, release unused/replaced grants at their proper boundary, discard unsaved private image copies without changing originals, and stop rendering resources when inactive.

**The Original Widgets Rule.** Recompose original controls without replacing their IDs, instances, adapters, business data or click handlers. ResourceIndex supplies original resource identity, composition strategy and XML order; role styling runs after original binding.

**The Semantic Composition Rule.** Preserve compact clickable controls and unknown adapter-row structure. Compose known rows by their real label/icon roles, retain original focus/key callbacks, and keep action names visible for touch use.

Mapping and form help uses the full original text without line-limit truncation or ellipsis. Help is distinct from the short functions-version footer. Preserve the original scroll path and available space so long instructions remain reachable.

**The Visible Alternatives Rule.** Keep editing, adding and recovery understandable through labels and explicit controls. Gesture support supplements those paths rather than becoming the only way to manage favorites.

## Do's and Don'ts

### Do:

- **Do** preserve all three user-approved themes and their separately authored day/night roles.
- **Do** resolve foregrounds, pressed fills, icons and focus strokes as a complete scheme.
- **Do** adapt native layouts to measured available width and let forms scroll vertically.
- **Do** distinguish app cards, category chips, checkbox rows, fields and toolbar actions by native role.
- **Do** preserve original widget instances, IDs, adapters, listeners and real business content.
- **Do** verify production row labels, artwork, footers, menus and visible loading geometry against the real binding contract.
- **Do** preserve fixed geometry, selector roles, original scroll viewports, fixed footers and full help text across representative layout families.
- **Do** keep dialog content sharp over the bounded in-memory frosted panel and native dim, with a readable fallback and preserved callbacks.
- **Do** preserve wallpaper colors and foreground opacity while applying panel transparency separately, with explicit draft commits and lifecycle-bound rendering.
- **Do** retain actual app icons, the shared line family and labeled favorite-management alternatives.
- **Do** label Robolectric binary-XML renders, test substitutions and device/runtime gaps accurately.

### Don't:

- **Don't** mix a foreground from one theme with a fill from another or invent automatic theme synchronization.
- **Don't** extend the dialog sampling blur into page-wide effects or monochrome card elevation to every control.
- **Don't** force old fixed-column arrangements or rigid horizontal forms into narrower native viewports.
- **Don't** flatten settings into an unstructured vertical stack; preserve grouped hierarchy and responsive use of space.
- **Don't** replace original controls with visual mocks or fabricate permission, network or vehicle state.
- **Don't** flatten compact actions or unknown adapter rows, tint all legacy artwork, or give every dialog the same fixed height.
- **Don't** assume every focusable view has a visible state drawable or every legacy target meets the minimum.
- **Don't** treat preserved resource IDs and successful measurement as proof of visible, usable bound content.
- **Don't** treat WRAP_CONTENT or every zero-height list as elastic, or reuse one revision's VM captures to accept a later APK.
- **Don't** treat a wallpaper preview as saved state, discard the prior URI grant on Cancel, or equate app-shell backgrounds with system wallpaper.
- **Don't** treat panel HTML/CSS, earlier finish verdicts or fixture previews as current full-runtime or device approval.
