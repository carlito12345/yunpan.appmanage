.class public final synthetic Lcom/hjq/permissions/core/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

.field public final synthetic e:Lcom/hjq/permissions/OnPermissionDescription;


# direct methods
.method public synthetic constructor <init>(Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hjq/permissions/core/d;->a:Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;

    iput-object p2, p0, Lcom/hjq/permissions/core/d;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/hjq/permissions/core/d;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/hjq/permissions/core/d;->d:Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    iput-object p5, p0, Lcom/hjq/permissions/core/d;->e:Lcom/hjq/permissions/OnPermissionDescription;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/core/d;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/hjq/permissions/core/d;->a:Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;

    iget-object v2, p0, Lcom/hjq/permissions/core/d;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/hjq/permissions/core/d;->d:Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    iget-object v4, p0, Lcom/hjq/permissions/core/d;->e:Lcom/hjq/permissions/OnPermissionDescription;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->a(Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;)V

    return-void
.end method
