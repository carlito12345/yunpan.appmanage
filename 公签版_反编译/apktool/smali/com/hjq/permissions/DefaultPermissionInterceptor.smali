.class final Lcom/hjq/permissions/DefaultPermissionInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hjq/permissions/OnPermissionInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic dispatchPermissionRequest(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/hjq/permissions/a;->a(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public final synthetic onRequestPermissionEnd(Landroid/app/Activity;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/hjq/permissions/a;->b(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public final synthetic onRequestPermissionStart(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/hjq/permissions/a;->c(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method
