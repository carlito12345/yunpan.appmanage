.class public final Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactoryByAndroid;
.super Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory<",
        "Landroid/app/Activity;",
        "Landroid/app/FragmentManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/FragmentManager;)V
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
    .locals 1
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
    new-instance p2, Lcom/hjq/permissions/fragment/impl/android/PermissionAndroidFragmentByRequestPermissions;

    .line 6
    .line 7
    invoke-direct {p2}, Lcom/hjq/permissions/fragment/impl/android/PermissionAndroidFragmentByRequestPermissions;-><init>()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Lcom/hjq/permissions/fragment/impl/android/PermissionAndroidFragmentByStartActivity;

    .line 12
    .line 13
    invoke-direct {p2}, Lcom/hjq/permissions/fragment/impl/android/PermissionAndroidFragmentByStartActivity;-><init>()V

    .line 14
    .line 15
    .line 16
    :goto_0
    const v0, 0xffff

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/hjq/permissions/manager/PermissionRequestCodeManager;->generateRandomRequestCode(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;->generatePermissionArguments(Ljava/util/List;I)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, p1}, Lcom/hjq/permissions/fragment/IFragmentMethodNative;->setArguments(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    invoke-interface {p2, p1}, Lcom/hjq/permissions/fragment/IFragmentMethodExtension;->setNonSystemRestartMark(Z)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p2, p3}, Lcom/hjq/permissions/fragment/IFragmentMethodExtension;->setPermissionFragmentCallback(Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;->getFragmentManager()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/app/FragmentManager;

    .line 42
    .line 43
    invoke-interface {p2, p1}, Lcom/hjq/permissions/fragment/IFragmentMethodExtension;->commitFragmentAttach(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
