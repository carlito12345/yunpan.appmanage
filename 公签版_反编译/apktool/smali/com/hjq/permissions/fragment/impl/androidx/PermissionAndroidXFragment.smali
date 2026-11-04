.class public abstract Lcom/hjq/permissions/fragment/impl/androidx/PermissionAndroidXFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/hjq/permissions/fragment/IFragmentMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Lcom/hjq/permissions/fragment/IFragmentMethod<",
        "Landroidx/fragment/app/j0;",
        "Landroidx/fragment/app/d1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public commitFragmentAttach(Landroidx/fragment/app/d1;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/d1;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, p0, p1, v2}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->d(Z)I

    return-void
.end method

.method public bridge synthetic commitFragmentAttach(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/fragment/app/d1;

    invoke-virtual {p0, p1}, Lcom/hjq/permissions/fragment/impl/androidx/PermissionAndroidXFragment;->commitFragmentAttach(Landroidx/fragment/app/d1;)V

    return-void
.end method

.method public commitFragmentDetach()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/d1;

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
    new-instance v1, Landroidx/fragment/app/a;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/d1;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->d(Z)I

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

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
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

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
    invoke-interface {p0}, Lcom/hjq/permissions/fragment/IFragmentMethodExtension;->getPermissionChannelImpl()Lcom/hjq/permissions/core/PermissionChannelImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/hjq/permissions/core/PermissionChannelImpl;->onFragmentRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

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
