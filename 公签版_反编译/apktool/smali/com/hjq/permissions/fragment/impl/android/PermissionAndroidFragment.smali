.class public abstract Lcom/hjq/permissions/fragment/impl/android/PermissionAndroidFragment;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/hjq/permissions/fragment/IFragmentMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Lcom/hjq/permissions/fragment/IFragmentMethod<",
        "Landroid/app/Activity;",
        "Landroid/app/FragmentManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public commitFragmentAttach(Landroid/app/FragmentManager;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public bridge synthetic commitFragmentAttach(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/app/FragmentManager;

    invoke-virtual {p0, p1}, Lcom/hjq/permissions/fragment/impl/android/PermissionAndroidFragment;->commitFragmentAttach(Landroid/app/FragmentManager;)V

    return-void
.end method

.method public commitFragmentDetach()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lcom/hjq/permissions/fragment/IFragmentMethodExtension;->getPermissionChannelImpl()Lcom/hjq/permissions/core/PermissionChannelImpl;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/hjq/permissions/core/PermissionChannelImpl;->onFragmentActivityResult(IILandroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lcom/hjq/permissions/fragment/IFragmentMethodExtension;->getPermissionChannelImpl()Lcom/hjq/permissions/core/PermissionChannelImpl;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->onFragmentDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lcom/hjq/permissions/fragment/IFragmentMethodExtension;->getPermissionChannelImpl()Lcom/hjq/permissions/core/PermissionChannelImpl;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/hjq/permissions/core/PermissionChannelImpl;->onFragmentRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lcom/hjq/permissions/fragment/IFragmentMethodExtension;->getPermissionChannelImpl()Lcom/hjq/permissions/core/PermissionChannelImpl;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->onFragmentResume()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setNonSystemRestartMark(Z)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/hjq/permissions/fragment/IFragmentMethodExtension;->getPermissionChannelImpl()Lcom/hjq/permissions/core/PermissionChannelImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/hjq/permissions/core/PermissionChannelImpl;->setNonSystemRestartMark(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPermissionFragmentCallback(Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/hjq/permissions/fragment/IFragmentMethodExtension;->getPermissionChannelImpl()Lcom/hjq/permissions/core/PermissionChannelImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/hjq/permissions/core/PermissionChannelImpl;->setPermissionFragmentCallback(Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
