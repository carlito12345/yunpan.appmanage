.class public abstract synthetic Lm0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    return p0
.end method

.method public static bridge synthetic B()Landroid/graphics/Path$Op;
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    return-object v0
.end method

.method public static bridge synthetic C()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/print/PrintManager;

    return-object v0
.end method

.method public static bridge synthetic D(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    return p0
.end method

.method public static bridge synthetic a(Landroid/view/accessibility/CaptioningManager;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Landroid/graphics/drawable/Drawable;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    return p0
.end method

.method public static bridge synthetic f(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Ljava/lang/Object;)Landroid/app/AppOpsManager;
    .locals 0

    .line 1
    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static bridge synthetic h()Landroid/graphics/Path$Op;
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    return-object v0
.end method

.method public static bridge synthetic i(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/view/accessibility/CaptioningManager;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/view/accessibility/CaptioningManager;

    return-object v0
.end method

.method public static bridge synthetic m()V
    .locals 0

    .line 1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic n(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    return-void
.end method

.method public static bridge synthetic o(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method

.method public static bridge synthetic p(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method

.method public static bridge synthetic q(Landroid/media/AudioManager;Landroid/view/KeyEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static bridge synthetic r(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    return-void
.end method

.method public static bridge synthetic s(Ljava/lang/ReflectiveOperationException;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    return-void
.end method

.method public static bridge synthetic t(Ljavax/crypto/Cipher;[B)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    return-void
.end method

.method public static bridge synthetic u(Landroid/widget/ListView;)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Lio/github/rosemoe/sora/widget/CodeEditor;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic w(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    return p0
.end method

.method public static bridge synthetic x()Landroid/graphics/Path$Op;
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    return-object v0
.end method

.method public static bridge synthetic y()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/hardware/ConsumerIrManager;

    return-object v0
.end method

.method public static bridge synthetic z(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    return-void
.end method
