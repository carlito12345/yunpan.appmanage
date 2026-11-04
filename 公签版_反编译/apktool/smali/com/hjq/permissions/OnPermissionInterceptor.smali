.class public interface abstract Lcom/hjq/permissions/OnPermissionInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract dispatchPermissionRequest(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;Lcom/hjq/permissions/OnPermissionCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory<",
            "**>;",
            "Lcom/hjq/permissions/OnPermissionDescription;",
            "Lcom/hjq/permissions/OnPermissionCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRequestPermissionEnd(Landroid/app/Activity;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Lcom/hjq/permissions/OnPermissionCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRequestPermissionStart(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;Lcom/hjq/permissions/OnPermissionCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory<",
            "**>;",
            "Lcom/hjq/permissions/OnPermissionDescription;",
            "Lcom/hjq/permissions/OnPermissionCallback;",
            ")V"
        }
    .end annotation
.end method
