.class public abstract synthetic Lua/t7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic D(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic a(Landroid/text/TextPaint;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic b()I
    .locals 1

    .line 1
    sget v0, Landroid/system/OsConstants;->EACCES:I

    return v0
.end method

.method public static bridge synthetic c(Landroid/system/ErrnoException;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    return p0
.end method

.method public static bridge synthetic d(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    return p0
.end method

.method public static bridge synthetic e(Landroid/media/session/PlaybackState;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic f(Landroid/content/ContextWrapper;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/net/ConnectivityManager;Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/lang/Throwable;)Landroid/system/ErrnoException;
    .locals 0

    .line 1
    check-cast p0, Landroid/system/ErrnoException;

    return-object p0
.end method

.method public static bridge synthetic j()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static bridge synthetic k(Landroid/text/TextPaint;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/lang/String;)Ljava/util/Locale;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 8

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static bridge synthetic n(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic o(Landroid/media/session/MediaController;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic p(Landroid/media/session/PlaybackState;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    return-void
.end method

.method public static bridge synthetic q(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method public static bridge synthetic r(Landroid/widget/LinearLayout;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method public static bridge synthetic s(Landroid/widget/LinearLayout;Lvb/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public static bridge synthetic t(Landroid/widget/PopupWindow;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setElevation(F)V

    return-void
.end method

.method public static bridge synthetic u(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Landroid/graphics/drawable/RippleDrawable;

    return p0
.end method

.method public static bridge synthetic v(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic w(Landroid/text/TextPaint;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic x(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Landroid/system/ErrnoException;

    return p0
.end method

.method public static bridge synthetic z()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method
