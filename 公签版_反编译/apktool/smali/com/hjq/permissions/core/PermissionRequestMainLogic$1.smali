.class Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hjq/permissions/core/PermissionRequestMainLogic;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hjq/permissions/core/PermissionRequestMainLogic;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$fragmentFactory:Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

.field final synthetic val$iterator:Ljava/util/Iterator;

.field final synthetic val$permissionDescription:Lcom/hjq/permissions/OnPermissionDescription;


# direct methods
.method public constructor <init>(Lcom/hjq/permissions/core/PermissionRequestMainLogic;Ljava/util/Iterator;Landroid/app/Activity;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->this$0:Lcom/hjq/permissions/core/PermissionRequestMainLogic;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$iterator:Ljava/util/Iterator;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$activity:Landroid/app/Activity;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$fragmentFactory:Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$permissionDescription:Lcom/hjq/permissions/OnPermissionDescription;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->lambda$run$0(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;)V

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->access$100(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    move-object v1, v0

    .line 3
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$iterator:Ljava/util/Iterator;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$iterator:Ljava/util/Iterator;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/util/List;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object v2, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$activity:Landroid/app/Activity;

    .line 29
    .line 30
    invoke-static {v2, v1}, Lcom/hjq/permissions/tools/PermissionApi;->isGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    move-object v6, v1

    .line 38
    if-eqz v6, :cond_9

    .line 39
    .line 40
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    goto :goto_4

    .line 47
    :cond_3
    const/4 v0, 0x0

    .line 48
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/hjq/permissions/permission/base/IPermission;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$activity:Landroid/app/Activity;

    .line 55
    .line 56
    invoke-interface {v1, v2}, Lcom/hjq/permissions/permission/base/IPermission;->isBackgroundPermission(Landroid/content/Context;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_7

    .line 61
    .line 62
    iget-object v2, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$activity:Landroid/app/Activity;

    .line 63
    .line 64
    invoke-interface {v1, v2}, Lcom/hjq/permissions/permission/base/IPermission;->getForegroundPermissions(Landroid/content/Context;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v2, 0x1

    .line 69
    if-eqz v1, :cond_6

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_6

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Lcom/hjq/permissions/permission/base/IPermission;

    .line 92
    .line 93
    iget-object v4, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$activity:Landroid/app/Activity;

    .line 94
    .line 95
    invoke-interface {v3, v4}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-nez v3, :cond_4

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    const/4 v0, 0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    move v2, v0

    .line 105
    :cond_6
    if-nez v2, :cond_7

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->run()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_7
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$activity:Landroid/app/Activity;

    .line 112
    .line 113
    invoke-static {v0, v6}, Lcom/hjq/permissions/tools/PermissionApi;->getMaxIntervalTimeByPermissions(Landroid/content/Context;Ljava/util/List;)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_8

    .line 118
    .line 119
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$activity:Landroid/app/Activity;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$fragmentFactory:Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$permissionDescription:Lcom/hjq/permissions/OnPermissionDescription;

    .line 124
    .line 125
    invoke-static {v0, v6, v1, v2, p0}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->access$100(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;Ljava/lang/Runnable;)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_8
    iget-object v5, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$activity:Landroid/app/Activity;

    .line 130
    .line 131
    iget-object v7, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$fragmentFactory:Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    .line 132
    .line 133
    iget-object v8, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->val$permissionDescription:Lcom/hjq/permissions/OnPermissionDescription;

    .line 134
    .line 135
    new-instance v1, Lcom/hjq/permissions/core/d;

    .line 136
    .line 137
    move-object v3, v1

    .line 138
    move-object v4, p0

    .line 139
    invoke-direct/range {v3 .. v8}, Lcom/hjq/permissions/core/d;-><init>(Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;)V

    .line 140
    .line 141
    .line 142
    int-to-long v2, v0

    .line 143
    invoke-static {v1, v2, v3}, Lcom/hjq/permissions/tools/PermissionTaskHandler;->sendTask(Ljava/lang/Runnable;J)V

    .line 144
    .line 145
    .line 146
    :goto_3
    return-void

    .line 147
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;->this$0:Lcom/hjq/permissions/core/PermissionRequestMainLogic;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->access$000(Lcom/hjq/permissions/core/PermissionRequestMainLogic;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method
