.class public abstract synthetic Lcom/hierynomus/security/jce/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/animation/Animator;->resume()V

    return-void
.end method

.method public static bridge synthetic B(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 1
    const-string v0, "secure-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 1
    const-string v0, "detached-surface"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic D(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 1
    const-string v0, "tunneled-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic a(Landroid/app/AppOpsManager;ILjava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "android:read_phone_state"

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/hardware/display/DisplayManager;IIILandroid/view/Surface;)Landroid/hardware/display/VirtualDisplay;
    .locals 7

    .line 1
    const-string v1, "AppEmbeddedVD"

    const/4 v6, 0x3

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Landroid/hardware/display/VirtualDisplay;)Landroid/view/Display;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/lang/Object;)Landroid/view/accessibility/CaptioningManager;
    .locals 0

    .line 1
    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    return-object p0
.end method

.method public static bridge synthetic e()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public static bridge synthetic f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic g(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i()Ljava/net/InetAddress;
    .locals 1

    .line 1
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic j(Landroid/view/accessibility/CaptioningManager;)Ljava/util/Locale;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/animation/Animator;->pause()V

    return-void
.end method

.method public static bridge synthetic l(Landroid/animation/ObjectAnimator;Lh4/l0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/database/Cursor;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void
.end method

.method public static bridge synthetic n(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    return-void
.end method

.method public static bridge synthetic o(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public static bridge synthetic p(Landroid/hardware/display/VirtualDisplay;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplay;->release()V

    return-void
.end method

.method public static bridge synthetic q(Landroid/media/MediaCodec;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic r(Landroid/media/audiofx/LoudnessEnhancer;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/audiofx/LoudnessEnhancer;->release()V

    return-void
.end method

.method public static bridge synthetic s(Ljavax/crypto/Cipher;[BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    return-void
.end method

.method public static bridge synthetic t(Landroid/app/ActivityManager;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic u(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 1
    const-string v0, "adaptive-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Landroid/media/MediaCodecInfo$CodecCapabilities;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic w(Landroid/view/ViewGroup;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic x(Landroid/view/accessibility/CaptioningManager;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Landroid/widget/EditText;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->isAttachedToWindow()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic z(Landroid/widget/TextView;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result p0

    return p0
.end method
