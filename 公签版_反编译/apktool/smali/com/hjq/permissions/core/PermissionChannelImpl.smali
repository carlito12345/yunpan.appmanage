.class public abstract Lcom/hjq/permissions/core/PermissionChannelImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hjq/permissions/fragment/IFragmentCallback;


# static fields
.field public static final REQUEST_CODE:Ljava/lang/String; = "request_code"

.field public static final REQUEST_PERMISSIONS:Ljava/lang/String; = "request_permissions"


# instance fields
.field private mAlreadyRequest:Z

.field private final mFragmentMethod:Lcom/hjq/permissions/fragment/IFragmentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hjq/permissions/fragment/IFragmentMethod<",
            "**>;"
        }
    .end annotation
.end field

.field private mManualDetach:Z

.field private mNonSystemRestartMark:Z

.field private mPermissionFragmentCallback:Lcom/hjq/permissions/core/OnPermissionFragmentCallback;

.field private final mTaskToken:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/hjq/permissions/fragment/IFragmentMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/permissions/fragment/IFragmentMethod<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mTaskToken:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mFragmentMethod:Lcom/hjq/permissions/fragment/IFragmentMethod;

    .line 12
    .line 13
    return-void
.end method

.method private commitFragmentDetach()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mManualDetach:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mFragmentMethod:Lcom/hjq/permissions/fragment/IFragmentMethod;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/hjq/permissions/fragment/IFragmentMethodExtension;->commitFragmentDetach()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mFragmentMethod:Lcom/hjq/permissions/fragment/IFragmentMethod;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/hjq/permissions/fragment/IFragmentMethodNative;->getActivity()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private getPermissionFragmentCallback()Lcom/hjq/permissions/core/OnPermissionFragmentCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mPermissionFragmentCallback:Lcom/hjq/permissions/core/OnPermissionFragmentCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method private isFragmentUnavailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mFragmentMethod:Lcom/hjq/permissions/fragment/IFragmentMethod;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/hjq/permissions/fragment/IFragmentMethodNative;->isAdded()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mFragmentMethod:Lcom/hjq/permissions/fragment/IFragmentMethod;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/hjq/permissions/fragment/IFragmentMethodNative;->isRemoving()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mTaskToken:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/tools/PermissionTaskHandler;->cancelTask(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getPermissionRequestCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mFragmentMethod:Lcom/hjq/permissions/fragment/IFragmentMethod;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/hjq/permissions/fragment/IFragmentMethodNative;->getArguments()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    const-string v1, "request_code"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getPermissionRequestList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mFragmentMethod:Lcom/hjq/permissions/fragment/IFragmentMethod;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/hjq/permissions/fragment/IFragmentMethodNative;->getArguments()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid13()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-static {v0}, La2/e;->k(Landroid/os/Bundle;)Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_1
    const-string v1, "request_permissions"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public getStartActivityDelegate()Lcom/hjq/permissions/start/IStartActivityDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mFragmentMethod:Lcom/hjq/permissions/fragment/IFragmentMethod;

    .line 2
    .line 3
    return-object v0
.end method

.method public handlerPermissionCallback()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->isFragmentUnavailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->getActivity()Landroid/app/Activity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/hjq/permissions/tools/PermissionUtils;->isActivityUnavailable(Landroid/app/Activity;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-direct {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->getPermissionFragmentCallback()Lcom/hjq/permissions/core/OnPermissionFragmentCallback;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v1}, Lcom/hjq/permissions/core/PermissionChannelImpl;->setPermissionFragmentCallback(Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V

    .line 25
    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/hjq/permissions/core/OnPermissionFragmentCallback;->onRequestPermissionFinish()V

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-direct {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->commitFragmentDetach()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public notificationPermissionCallback()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/hjq/permissions/tools/PermissionUtils;->isActivityUnavailable(Landroid/app/Activity;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->cancelTask()V

    .line 13
    .line 14
    .line 15
    new-instance v1, La2/h;

    .line 16
    .line 17
    const/16 v2, 0xb

    .line 18
    .line 19
    invoke-direct {v1, v2, p0}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->getPermissionRequestList()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0, v2}, Lcom/hjq/permissions/tools/PermissionApi;->getMaxWaitTimeByPermissions(Landroid/content/Context;Ljava/util/List;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-long v2, v0

    .line 31
    invoke-virtual {p0, v1, v2, v3}, Lcom/hjq/permissions/core/PermissionChannelImpl;->sendTask(Ljava/lang/Runnable;J)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public synthetic onFragmentActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp8/a;->a(Lcom/hjq/permissions/fragment/IFragmentCallback;IILandroid/content/Intent;)V

    return-void
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->cancelTask()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->getPermissionFragmentCallback()Lcom/hjq/permissions/core/OnPermissionFragmentCallback;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/hjq/permissions/core/OnPermissionFragmentCallback;->onRequestPermissionAnomaly()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->setPermissionFragmentCallback(Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mManualDetach:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-direct {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->getActivity()Landroid/app/Activity;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/hjq/permissions/tools/PermissionUtils;->isActivityUnavailable(Landroid/app/Activity;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    invoke-static {v0}, Lcom/hjq/permissions/manager/ActivityOrientationManager;->unlockActivityOrientation(Landroid/app/Activity;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public synthetic onFragmentRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp8/a;->b(Lcom/hjq/permissions/fragment/IFragmentCallback;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onFragmentResume()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mNonSystemRestartMark:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mFragmentMethod:Lcom/hjq/permissions/fragment/IFragmentMethod;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/hjq/permissions/fragment/IFragmentMethodExtension;->commitFragmentDetach()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mAlreadyRequest:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mAlreadyRequest:Z

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->getActivity()Landroid/app/Activity;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/hjq/permissions/tools/PermissionUtils;->isActivityUnavailable(Landroid/app/Activity;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->getPermissionRequestCode()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-gtz v1, :cond_3

    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->getPermissionRequestList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_6

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    invoke-virtual {p0, v0, v2, v1}, Lcom/hjq/permissions/core/PermissionChannelImpl;->startPermissionRequest(Landroid/app/Activity;Ljava/util/List;I)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->getPermissionFragmentCallback()Lcom/hjq/permissions/core/OnPermissionFragmentCallback;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_5

    .line 58
    .line 59
    return-void

    .line 60
    :cond_5
    invoke-interface {v0}, Lcom/hjq/permissions/core/OnPermissionFragmentCallback;->onRequestPermissionNow()V

    .line 61
    .line 62
    .line 63
    :cond_6
    :goto_0
    return-void
.end method

.method public requestPermissions([Ljava/lang/String;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mFragmentMethod:Lcom/hjq/permissions/fragment/IFragmentMethod;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/hjq/permissions/fragment/IFragmentMethodNative;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mFragmentMethod:Lcom/hjq/permissions/fragment/IFragmentMethod;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/hjq/permissions/fragment/IFragmentMethodNative;->getActivity()Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Landroidx/fragment/app/j0;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {v0}, Lcom/hjq/permissions/tools/PermissionUtils;->isActivityUnavailable(Landroid/app/Activity;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :try_start_1
    invoke-static {v0, p1, p2}, La2/a;->l(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public sendTask(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mTaskToken:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {p1, v0, p2, p3}, Lcom/hjq/permissions/tools/PermissionTaskHandler;->sendTask(Ljava/lang/Runnable;Ljava/lang/Object;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setNonSystemRestartMark(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mNonSystemRestartMark:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPermissionFragmentCallback(Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hjq/permissions/core/PermissionChannelImpl;->mPermissionFragmentCallback:Lcom/hjq/permissions/core/OnPermissionFragmentCallback;

    .line 2
    .line 3
    return-void
.end method

.method public abstract startPermissionRequest(Landroid/app/Activity;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;I)V"
        }
    .end annotation
.end method
