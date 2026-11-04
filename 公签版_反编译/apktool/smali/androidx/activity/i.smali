.class public abstract Landroidx/activity/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c(Landroid/app/ActivityManager;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
