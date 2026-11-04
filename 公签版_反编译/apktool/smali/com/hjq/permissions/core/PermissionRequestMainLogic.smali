.class public final Lcom/hjq/permissions/core/PermissionRequestMainLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCallBack:Lcom/hjq/permissions/OnPermissionCallback;

.field private final mFragmentFactory:Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory<",
            "**>;"
        }
    .end annotation
.end field

.field private final mPermissionDescription:Lcom/hjq/permissions/OnPermissionDescription;

.field private final mPermissionInterceptor:Lcom/hjq/permissions/OnPermissionInterceptor;

.field private final mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionInterceptor;Lcom/hjq/permissions/OnPermissionDescription;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory<",
            "**>;",
            "Lcom/hjq/permissions/OnPermissionInterceptor;",
            "Lcom/hjq/permissions/OnPermissionDescription;",
            "Lcom/hjq/permissions/OnPermissionCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->mActivity:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->mRequestList:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->mFragmentFactory:Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->mPermissionInterceptor:Lcom/hjq/permissions/OnPermissionInterceptor;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->mPermissionDescription:Lcom/hjq/permissions/OnPermissionDescription;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->mCallBack:Lcom/hjq/permissions/OnPermissionCallback;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->lambda$postDelayedUnlockActivityOrientation$1(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/hjq/permissions/core/PermissionRequestMainLogic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->postDelayedHandlerRequestPermissionsResult()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->requestPermissionsByFragment(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Ljava/util/List;Lcom/hjq/permissions/permission/PermissionChannel;Lcom/hjq/permissions/core/PermissionDescriptionLogic;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->lambda$requestPermissionsByFragment$0(Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Ljava/util/List;Lcom/hjq/permissions/permission/PermissionChannel;Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V

    return-void
.end method

.method public static synthetic c(Lcom/hjq/permissions/core/PermissionRequestMainLogic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->handlePermissionRequestResult()V

    return-void
.end method

.method private static getUnauthorizedList(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-ge v4, v5, :cond_11

    .line 27
    .line 28
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lcom/hjq/permissions/permission/base/IPermission;

    .line 33
    .line 34
    invoke-static {v2, v5}, Lcom/hjq/permissions/tools/PermissionUtils;->containsPermission(Ljava/util/Collection;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-interface {v5, p0}, Lcom/hjq/permissions/permission/base/IPermission;->isSupportRequestPermission(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-nez v6, :cond_1

    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_1
    invoke-interface {v5, p0}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_2
    invoke-interface {v5, p0}, Lcom/hjq/permissions/permission/base/IPermission;->getPermissionChannel(Landroid/content/Context;)Lcom/hjq/permissions/permission/PermissionChannel;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    sget-object v7, Lcom/hjq/permissions/permission/PermissionChannel;->START_ACTIVITY:Lcom/hjq/permissions/permission/PermissionChannel;

    .line 66
    .line 67
    if-ne v6, v7, :cond_3

    .line 68
    .line 69
    new-array v6, v0, [Lcom/hjq/permissions/permission/base/IPermission;

    .line 70
    .line 71
    aput-object v5, v6, v3

    .line 72
    .line 73
    invoke-static {v6}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :cond_3
    invoke-interface {v5, p0}, Lcom/hjq/permissions/permission/base/IPermission;->getPermissionGroup(Landroid/content/Context;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_4

    .line 91
    .line 92
    new-array v6, v0, [Lcom/hjq/permissions/permission/base/IPermission;

    .line 93
    .line 94
    aput-object v5, v6, v3

    .line 95
    .line 96
    invoke-static {v6}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto/16 :goto_4

    .line 104
    .line 105
    :cond_4
    const/4 v5, 0x0

    .line 106
    move v7, v4

    .line 107
    move-object v8, v5

    .line 108
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-ge v7, v9, :cond_a

    .line 113
    .line 114
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    check-cast v9, Lcom/hjq/permissions/permission/base/IPermission;

    .line 119
    .line 120
    invoke-interface {v9, p0}, Lcom/hjq/permissions/permission/base/IPermission;->getPermissionGroup(Landroid/content/Context;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    invoke-static {v10, v6}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-nez v10, :cond_5

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    invoke-interface {v9, p0}, Lcom/hjq/permissions/permission/base/IPermission;->isSupportRequestPermission(Landroid/content/Context;)Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-nez v10, :cond_6

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_6
    invoke-interface {v9, p0}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;)Z

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    if-eqz v10, :cond_7

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_7
    if-nez v8, :cond_8

    .line 146
    .line 147
    new-instance v8, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    :cond_8
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    invoke-static {v2, v9}, Lcom/hjq/permissions/tools/PermissionUtils;->containsPermission(Ljava/util/Collection;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    if-eqz v10, :cond_9

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_9
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    :goto_2
    add-int/2addr v7, v0

    .line 166
    goto :goto_1

    .line 167
    :cond_a
    if-eqz v8, :cond_10

    .line 168
    .line 169
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-eqz v6, :cond_b

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_b
    invoke-static {p0, v8}, Lcom/hjq/permissions/tools/PermissionApi;->isGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Z

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    if-eqz v6, :cond_c

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_c
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    if-eqz v7, :cond_e

    .line 192
    .line 193
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    check-cast v7, Lcom/hjq/permissions/permission/base/IPermission;

    .line 198
    .line 199
    invoke-interface {v7, p0}, Lcom/hjq/permissions/permission/base/IPermission;->isBackgroundPermission(Landroid/content/Context;)Z

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    if-nez v9, :cond_d

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 207
    .line 208
    .line 209
    new-instance v5, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    :cond_e
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-nez v6, :cond_f

    .line 222
    .line 223
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    :cond_f
    if-eqz v5, :cond_10

    .line 227
    .line 228
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    if-nez v6, :cond_10

    .line 233
    .line 234
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    :cond_10
    :goto_4
    add-int/2addr v4, v0

    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_11
    return-object v1
.end method

.method private handlePermissionRequestResult()V
    .locals 8

    .line 1
    iget-object v7, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->mRequestList:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {v7}, Lcom/hjq/permissions/tools/PermissionUtils;->isActivityUnavailable(Landroid/app/Activity;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v5, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hjq/permissions/permission/base/IPermission;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-interface {v1, v7, v2}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->mPermissionInterceptor:Lcom/hjq/permissions/OnPermissionInterceptor;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    iget-object v6, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->mCallBack:Lcom/hjq/permissions/OnPermissionCallback;

    .line 65
    .line 66
    move-object v1, v7

    .line 67
    invoke-interface/range {v0 .. v6}, Lcom/hjq/permissions/OnPermissionInterceptor;->onRequestPermissionEnd(Landroid/app/Activity;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v7}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->postDelayedUnlockActivityOrientation(Landroid/app/Activity;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private static synthetic lambda$postDelayedUnlockActivityOrientation$1(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hjq/permissions/manager/ActivityOrientationManager;->unlockActivityOrientation(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$requestPermissionsByFragment$0(Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Ljava/util/List;Lcom/hjq/permissions/permission/PermissionChannel;Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;->createAndCommitFragment(Ljava/util/List;Lcom/hjq/permissions/permission/PermissionChannel;Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private postDelayedHandlerRequestPermissionsResult()V
    .locals 3

    .line 1
    new-instance v0, La2/h;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x64

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/tools/PermissionTaskHandler;->sendTask(Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private postDelayedUnlockActivityOrientation(Landroid/app/Activity;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/hjq/permissions/core/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/hjq/permissions/core/c;-><init>(Landroid/app/Activity;I)V

    .line 5
    .line 6
    .line 7
    const-wide/16 v1, 0x64

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/tools/PermissionTaskHandler;->sendTask(Ljava/lang/Runnable;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static requestPermissionsByFragment(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;Ljava/lang/Runnable;)V
    .locals 7
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
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v0, Lcom/hjq/permissions/permission/PermissionChannel;->REQUEST_PERMISSIONS:Lcom/hjq/permissions/permission/PermissionChannel;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/hjq/permissions/permission/base/IPermission;

    .line 28
    .line 29
    invoke-interface {v2, p0}, Lcom/hjq/permissions/permission/base/IPermission;->getPermissionChannel(Landroid/content/Context;)Lcom/hjq/permissions/permission/PermissionChannel;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    sget-object v3, Lcom/hjq/permissions/permission/PermissionChannel;->REQUEST_PERMISSIONS:Lcom/hjq/permissions/permission/PermissionChannel;

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lcom/hjq/permissions/permission/PermissionChannel;->START_ACTIVITY:Lcom/hjq/permissions/permission/PermissionChannel;

    .line 39
    .line 40
    :cond_2
    move-object v4, v0

    .line 41
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid6()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    sget-object v0, Lcom/hjq/permissions/permission/PermissionChannel;->REQUEST_PERMISSIONS:Lcom/hjq/permissions/permission/PermissionChannel;

    .line 48
    .line 49
    if-ne v4, v0, :cond_3

    .line 50
    .line 51
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    new-instance v5, Lcom/hjq/permissions/core/PermissionDescriptionLogic;

    .line 56
    .line 57
    invoke-direct {v5, p0, p1, p4, p3}, Lcom/hjq/permissions/core/PermissionDescriptionLogic;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/Runnable;Lcom/hjq/permissions/OnPermissionDescription;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/hjq/permissions/core/b;

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    move-object v1, v0

    .line 64
    move-object v2, p2

    .line 65
    move-object v3, p1

    .line 66
    invoke-direct/range {v1 .. v6}, Lcom/hjq/permissions/core/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p3, p0, p1, v0, p4}, Lcom/hjq/permissions/OnPermissionDescription;->askWhetherRequestPermission(Landroid/app/Activity;Ljava/util/List;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public request()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->mRequestList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->mActivity:Landroid/app/Activity;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->mRequestList:Ljava/util/List;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->getUnauthorizedList(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->handlePermissionRequestResult()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/util/List;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    iget-object v1, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->mActivity:Landroid/app/Activity;

    .line 64
    .line 65
    iget-object v8, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->mFragmentFactory:Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    .line 66
    .line 67
    iget-object v9, p0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->mPermissionDescription:Lcom/hjq/permissions/OnPermissionDescription;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/hjq/permissions/manager/ActivityOrientationManager;->lockActivityOrientation(Landroid/app/Activity;)V

    .line 70
    .line 71
    .line 72
    new-instance v10, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;

    .line 73
    .line 74
    move-object v2, v10

    .line 75
    move-object v3, p0

    .line 76
    move-object v5, v1

    .line 77
    move-object v6, v8

    .line 78
    move-object v7, v9

    .line 79
    invoke-direct/range {v2 .. v7}, Lcom/hjq/permissions/core/PermissionRequestMainLogic$1;-><init>(Lcom/hjq/permissions/core/PermissionRequestMainLogic;Ljava/util/Iterator;Landroid/app/Activity;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v0, v8, v9, v10}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->requestPermissionsByFragment(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;Ljava/lang/Runnable;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->handlePermissionRequestResult()V

    .line 87
    .line 88
    .line 89
    return-void
.end method
