.class public final Lcom/hjq/permissions/core/PermissionChannelImplByStartActivity;
.super Lcom/hjq/permissions/core/PermissionChannelImpl;
.source "SourceFile"


# instance fields
.field private mIgnoreActivityResultCount:I


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
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/hjq/permissions/core/PermissionChannelImplByStartActivity;->mIgnoreActivityResultCount:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a(Lcom/hjq/permissions/core/PermissionChannelImplByStartActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hjq/permissions/core/PermissionChannelImplByStartActivity;->lambda$startPermissionRequest$0()V

    return-void
.end method

.method private synthetic lambda$startPermissionRequest$0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/hjq/permissions/core/PermissionChannelImplByStartActivity;->mIgnoreActivityResultCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/hjq/permissions/core/PermissionChannelImplByStartActivity;->mIgnoreActivityResultCount:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public onFragmentActivityResult(IILandroid/content/Intent;)V
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
    iget p2, p0, Lcom/hjq/permissions/core/PermissionChannelImplByStartActivity;->mIgnoreActivityResultCount:I

    .line 9
    .line 10
    if-lez p2, :cond_1

    .line 11
    .line 12
    add-int/lit8 p2, p2, -0x1

    .line 13
    .line 14
    iput p2, p0, Lcom/hjq/permissions/core/PermissionChannelImplByStartActivity;->mIgnoreActivityResultCount:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-static {p1}, Lcom/hjq/permissions/manager/PermissionRequestCodeManager;->releaseRequestCode(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->notificationPermissionCallback()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public startPermissionRequest(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 4
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
    invoke-virtual {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->getStartActivityDelegate()Lcom/hjq/permissions/start/IStartActivityDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, p2, v1}, Lcom/hjq/permissions/tools/PermissionApi;->getBestPermissionSettingIntent(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, La2/h;

    .line 11
    .line 12
    const/16 v3, 0xd

    .line 13
    .line 14
    invoke-direct {v2, v3, p0}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0, v1, p3, v2}, Lcom/hjq/permissions/start/StartActivityAgent;->startActivityForResult(Landroid/content/Context;Lcom/hjq/permissions/start/IStartActivityDelegate;Ljava/util/List;ILjava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Lcom/hjq/permissions/manager/AlreadyRequestPermissionsManager;->addAlreadyRequestPermissions(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
