.class public final Lcom/hjq/permissions/core/PermissionChannelImplByRequestPermissions;
.super Lcom/hjq/permissions/core/PermissionChannelImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/hjq/permissions/fragment/IFragmentMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/permissions/fragment/IFragmentMethod<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/permissions/core/PermissionChannelImpl;-><init>(Lcom/hjq/permissions/fragment/IFragmentMethod;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onFragmentRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->getPermissionRequestCode()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eq p1, p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/hjq/permissions/manager/PermissionRequestCodeManager;->releaseRequestCode(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->notificationPermissionCallback()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public startPermissionRequest(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid6()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, La2/h;

    .line 8
    .line 9
    const/16 p2, 0xc

    .line 10
    .line 11
    invoke-direct {p1, p2, p0}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 p2, 0x0

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/hjq/permissions/core/PermissionChannelImpl;->sendTask(Ljava/lang/Runnable;J)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {p2}, Lcom/hjq/permissions/tools/PermissionUtils;->convertPermissionArray(Ljava/util/List;)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1, p3}, Lcom/hjq/permissions/core/PermissionChannelImpl;->requestPermissions([Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Lcom/hjq/permissions/manager/AlreadyRequestPermissionsManager;->addAlreadyRequestPermissions(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
