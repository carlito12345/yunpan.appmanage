.class public abstract synthetic Lt0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/media/session/MediaController$TransportControls;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    return-void
.end method

.method public static bridge synthetic B(Landroid/media/session/MediaController$TransportControls;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    return-void
.end method

.method public static bridge synthetic C(Landroid/media/session/MediaController$TransportControls;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->rewind()V

    return-void
.end method

.method public static bridge synthetic D(Landroid/media/session/MediaController$TransportControls;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    return-void
.end method

.method public static bridge synthetic a(Landroid/media/session/PlaybackState;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/view/accessibility/AccessibilityWindowInfo;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Landroid/media/session/PlaybackState;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/lang/Object;)Landroid/media/session/MediaController;
    .locals 0

    .line 1
    check-cast p0, Landroid/media/session/MediaController;

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/lang/Object;)Landroid/media/session/MediaSessionManager;
    .locals 0

    .line 1
    check-cast p0, Landroid/media/session/MediaSessionManager;

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/lang/Object;)Landroid/telecom/TelecomManager;
    .locals 0

    .line 1
    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/lang/Object;)Landroid/util/Size;
    .locals 0

    .line 1
    check-cast p0, Landroid/util/Size;

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/lang/Object;)Landroid/util/SizeF;
    .locals 0

    .line 1
    check-cast p0, Landroid/util/SizeF;

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/lang/Object;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 0

    .line 1
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/session/MediaController;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Landroid/media/session/MediaSessionManager;)Ljava/util/List;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Landroid/media/session/MediaSessionManager;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/yunpan/appmanage/service/AccService;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getWindows()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Landroid/media/session/MediaController$TransportControls;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->fastForward()V

    return-void
.end method

.method public static bridge synthetic r(Landroid/media/session/MediaController$TransportControls;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    return-void
.end method

.method public static bridge synthetic s(Landroid/media/session/MediaSessionManager;Lta/r;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    return-void
.end method

.method public static bridge synthetic t(Landroid/media/session/MediaSessionManager;Lta/r;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    return-void
.end method

.method public static bridge synthetic u(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static bridge synthetic v(Landroid/widget/EdgeEffect;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    return-void
.end method

.method public static bridge synthetic w(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Landroid/util/Size;

    return p0
.end method

.method public static bridge synthetic x(Landroid/media/session/MediaController$TransportControls;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    return-void
.end method

.method public static bridge synthetic y(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Landroid/util/SizeF;

    return p0
.end method

.method public static bridge synthetic z(Landroid/media/session/MediaController$TransportControls;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->stop()V

    return-void
.end method
