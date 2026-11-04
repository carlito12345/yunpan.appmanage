.class public final Lcom/hjq/permissions/core/PermissionDescriptionLogic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hjq/permissions/core/OnPermissionFragmentCallback;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mFinishRunnable:Ljava/lang/Runnable;

.field private final mPermissionDescription:Lcom/hjq/permissions/OnPermissionDescription;

.field private final mPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/Runnable;Lcom/hjq/permissions/OnPermissionDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lcom/hjq/permissions/OnPermissionDescription;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hjq/permissions/core/PermissionDescriptionLogic;->mActivity:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/hjq/permissions/core/PermissionDescriptionLogic;->mPermissions:Ljava/util/List;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/hjq/permissions/core/PermissionDescriptionLogic;->mPermissionDescription:Lcom/hjq/permissions/OnPermissionDescription;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/hjq/permissions/core/PermissionDescriptionLogic;->mFinishRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onRequestPermissionAnomaly()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionDescriptionLogic;->mPermissionDescription:Lcom/hjq/permissions/OnPermissionDescription;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hjq/permissions/core/PermissionDescriptionLogic;->mActivity:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/hjq/permissions/core/PermissionDescriptionLogic;->mPermissions:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/hjq/permissions/OnPermissionDescription;->onRequestPermissionEnd(Landroid/app/Activity;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onRequestPermissionFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionDescriptionLogic;->mPermissionDescription:Lcom/hjq/permissions/OnPermissionDescription;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hjq/permissions/core/PermissionDescriptionLogic;->mActivity:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/hjq/permissions/core/PermissionDescriptionLogic;->mPermissions:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/hjq/permissions/OnPermissionDescription;->onRequestPermissionEnd(Landroid/app/Activity;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionDescriptionLogic;->mFinishRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onRequestPermissionNow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionDescriptionLogic;->mPermissionDescription:Lcom/hjq/permissions/OnPermissionDescription;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hjq/permissions/core/PermissionDescriptionLogic;->mActivity:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/hjq/permissions/core/PermissionDescriptionLogic;->mPermissions:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/hjq/permissions/OnPermissionDescription;->onRequestPermissionStart(Landroid/app/Activity;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
