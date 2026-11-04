.class public abstract synthetic Lm0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method public static bridge synthetic B()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method public static bridge synthetic C()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/media/projection/MediaProjectionManager;

    return-object v0
.end method

.method public static bridge synthetic D()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/content/pm/PackageInstaller;

    return-object v0
.end method

.method public static bridge synthetic a(Landroid/widget/EditText;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getLetterSpacing()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/graphics/Canvas;FF)I
    .locals 6

    .line 1
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Landroid/util/Size;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageInstaller;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/lang/Object;)Landroid/content/pm/PackageInstaller;
    .locals 0

    .line 1
    check-cast p0, Landroid/content/pm/PackageInstaller;

    return-object p0
.end method

.method public static bridge synthetic f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/app/Notification;)Landroid/media/AudioAttributes;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public static bridge synthetic h()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method public static bridge synthetic i(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Landroid/app/Notification;Landroid/media/AudioAttributes;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method public static bridge synthetic k(Landroid/graphics/drawable/Drawable;FF)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    return-void
.end method

.method public static bridge synthetic l(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method public static bridge synthetic n(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static bridge synthetic o(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method public static bridge synthetic p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static bridge synthetic q(Landroid/util/Size;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    return-void
.end method

.method public static bridge synthetic r(Landroid/os/PowerManager;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic s(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Landroid/graphics/drawable/RippleDrawable;

    return p0
.end method

.method public static bridge synthetic t(Landroid/util/Size;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic u()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/content/RestrictionsManager;

    return-object v0
.end method

.method public static bridge synthetic v(Landroid/util/Size;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    return-void
.end method

.method public static bridge synthetic w()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public static bridge synthetic x()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/media/tv/TvInputManager;

    return-object v0
.end method

.method public static bridge synthetic y()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/app/usage/UsageStatsManager;

    return-object v0
.end method

.method public static bridge synthetic z()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/hardware/camera2/CameraManager;

    return-object v0
.end method
