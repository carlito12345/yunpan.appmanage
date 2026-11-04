.class public abstract synthetic Lcom/hjq/permissions/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/hjq/permissions/core/PermissionRequestMainLogic;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p0

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionInterceptor;Lcom/hjq/permissions/OnPermissionDescription;Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v7}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->request()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static b(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0

    .line 1
    if-nez p6, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p6, p4, p5}, Lcom/hjq/permissions/OnPermissionCallback;->onPermissionResult(Ljava/util/List;Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static c(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0

    .line 1
    invoke-interface/range {p0 .. p5}, Lcom/hjq/permissions/OnPermissionInterceptor;->dispatchPermissionRequest(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
