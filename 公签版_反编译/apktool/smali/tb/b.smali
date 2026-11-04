.class public abstract synthetic Ltb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic B(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const v0, 0x7f0801fa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic C()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CUT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static bridge synthetic D()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PASTE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static bridge synthetic a(Leb/c;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/media/AudioManager;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Landroid/widget/EdgeEffect;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Ljava/lang/Object;)Landroid/app/ActivityManager$AppTask;
    .locals 0

    .line 1
    check-cast p0, Landroid/app/ActivityManager$AppTask;

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/media/projection/MediaProjectionManager;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const v0, 0x7f080182

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/media/projection/MediaProjectionManager;ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/lang/Object;)Landroid/media/projection/MediaProjectionManager;
    .locals 0

    .line 1
    check-cast p0, Landroid/media/projection/MediaProjectionManager;

    return-object p0
.end method

.method public static bridge synthetic j()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_TEXT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static bridge synthetic k(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Leb/c;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/app/ActivityManager;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Landroid/app/ActivityManager$AppTask;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V

    return-void
.end method

.method public static bridge synthetic o(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic p(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    return-void
.end method

.method public static bridge synthetic q(Landroid/view/inputmethod/CursorAnchorInfo$Builder;FFFFI)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    return-void
.end method

.method public static bridge synthetic r(Landroid/view/inputmethod/CursorAnchorInfo$Builder;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    return-void
.end method

.method public static bridge synthetic s(Landroid/view/inputmethod/CursorAnchorInfo$Builder;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    return-void
.end method

.method public static bridge synthetic t(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/graphics/Matrix;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    return-void
.end method

.method public static bridge synthetic u(Landroid/view/inputmethod/InputMethodManager;Lio/github/rosemoe/sora/widget/CodeEditor;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    return-void
.end method

.method public static bridge synthetic v(Landroid/widget/EdgeEffect;FF)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return-void
.end method

.method public static bridge synthetic w(Landroid/widget/TextView;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setZ(F)V

    return-void
.end method

.method public static bridge synthetic x(Leb/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic y(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const v0, 0x7f0801f9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COPY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method
