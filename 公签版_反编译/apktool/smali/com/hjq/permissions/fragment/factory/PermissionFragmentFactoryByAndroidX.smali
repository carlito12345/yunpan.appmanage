.class public final Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactoryByAndroidX;
.super Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory<",
        "Landroidx/fragment/app/j0;",
        "Landroidx/fragment/app/d1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/fragment/app/j0;Landroidx/fragment/app/d1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;-><init>(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createAndCommitFragment(Ljava/util/List;Lcom/hjq/permissions/permission/PermissionChannel;Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Lcom/hjq/permissions/permission/PermissionChannel;",
            "Lcom/hjq/permissions/core/OnPermissionFragmentCallback;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hjq/permissions/permission/PermissionChannel;->REQUEST_PERMISSIONS:Lcom/hjq/permissions/permission/PermissionChannel;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/hjq/permissions/fragment/impl/androidx/PermissionAndroidXFragmentByRequestPermissions;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/hjq/permissions/fragment/impl/androidx/PermissionAndroidXFragmentByRequestPermissions;-><init>()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Lcom/hjq/permissions/fragment/impl/androidx/PermissionAndroidXFragmentByStartActivity;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/hjq/permissions/fragment/impl/androidx/PermissionAndroidXFragmentByStartActivity;-><init>()V

    .line 14
    .line 15
    .line 16
    :goto_0
    const v2, 0xffff

    .line 17
    .line 18
    .line 19
    if-ne p2, v0, :cond_1

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;->getActivity()Landroid/app/Activity;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Landroidx/fragment/app/j0;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_0
    const/16 v2, 0xff

    .line 32
    .line 33
    :catch_1
    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/hjq/permissions/manager/PermissionRequestCodeManager;->generateRandomRequestCode(I)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;->generatePermissionArguments(Ljava/util/List;I)Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {v1, p1}, Lcom/hjq/permissions/fragment/IFragmentMethodNative;->setArguments(Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    invoke-interface {v1, p1}, Lcom/hjq/permissions/fragment/IFragmentMethodExtension;->setNonSystemRestartMark(Z)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v1, p3}, Lcom/hjq/permissions/fragment/IFragmentMethodExtension;->setPermissionFragmentCallback(Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;->getFragmentManager()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroidx/fragment/app/d1;

    .line 56
    .line 57
    invoke-interface {v1, p1}, Lcom/hjq/permissions/fragment/IFragmentMethodExtension;->commitFragmentAttach(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
