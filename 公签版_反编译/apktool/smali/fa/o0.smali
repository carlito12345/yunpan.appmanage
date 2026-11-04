.class public final Lfa/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Lfa/j0;

.field public final c:Lfa/k0;

.field public final d:Lfa/l0;

.field public e:Lcom/yunpan/appmanage/shizuku/IUserService;

.field public final f:Lcom/bumptech/glide/manager/s;

.field public final g:Lfa/m0;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lfa/o0;->a:Z

    .line 6
    .line 7
    new-instance v1, Lfa/j0;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lfa/j0;-><init>(Lfa/o0;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lfa/o0;->b:Lfa/j0;

    .line 13
    .line 14
    new-instance v1, Lfa/k0;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lfa/k0;-><init>(Lfa/o0;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lfa/o0;->c:Lfa/k0;

    .line 20
    .line 21
    new-instance v1, Lfa/l0;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lfa/l0;-><init>(Lfa/o0;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lfa/o0;->d:Lfa/l0;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 30
    .line 31
    new-instance v1, Lcom/bumptech/glide/manager/s;

    .line 32
    .line 33
    new-instance v2, Landroid/content/ComponentName;

    .line 34
    .line 35
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-class v4, Lcom/yunpan/appmanage/shizuku/UserService;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v2}, Lcom/bumptech/glide/manager/s;-><init>(Landroid/content/ComponentName;)V

    .line 51
    .line 52
    .line 53
    iput-boolean v0, v1, Lcom/bumptech/glide/manager/s;->b:Z

    .line 54
    .line 55
    const-string v2, "shizuku"

    .line 56
    .line 57
    iput-object v2, v1, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 58
    .line 59
    iput-object v1, p0, Lfa/o0;->f:Lcom/bumptech/glide/manager/s;

    .line 60
    .line 61
    new-instance v1, Lfa/m0;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Lfa/m0;-><init>(Lfa/o0;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lfa/o0;->g:Lfa/m0;

    .line 67
    .line 68
    iput-boolean v0, p0, Lfa/o0;->h:Z

    .line 69
    .line 70
    return-void
.end method

.method public static a()Lfa/o0;
    .locals 1

    .line 1
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b()Landroid/app/IActivityManager;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const-string v2, "activity"

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lhi/c;

    .line 10
    .line 11
    invoke-static {v2}, Lhi/g;->a(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lhi/c;-><init>(Landroid/os/IBinder;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Lhi/c;

    .line 24
    .line 25
    invoke-static {v2}, Lhi/g;->a(Ljava/lang/String;)Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Lhi/c;-><init>(Landroid/os/IBinder;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public static c()Landroid/hardware/input/IInputManager;
    .locals 2

    .line 1
    new-instance v0, Lhi/c;

    .line 2
    .line 3
    const-string v1, "input"

    .line 4
    .line 5
    invoke-static {v1}, Lhi/g;->a(Ljava/lang/String;)Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lhi/c;-><init>(Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public static e()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    const/16 v3, 0x17

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    if-le v2, v3, :cond_7

    .line 28
    .line 29
    new-instance v2, Lhi/c;

    .line 30
    .line 31
    const-string v3, "appops"

    .line 32
    .line 33
    invoke-static {v3}, Lhi/g;->a(Ljava/lang/String;)Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {v2, v3}, Lhi/c;-><init>(Landroid/os/IBinder;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteSettingsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v0, v3}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    :try_start_0
    const-string v3, "android.permission.WRITE_SETTINGS"

    .line 55
    .line 56
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-static {}, Landroidx/fragment/app/o1;->a()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-interface {v2, v3, v5, v1, v4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v3

    .line 69
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getReadExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v0, v3}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_2

    .line 81
    .line 82
    :try_start_1
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 83
    .line 84
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-static {}, Landroidx/fragment/app/o1;->a()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-interface {v2, v3, v5, v1, v4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catch_1
    move-exception v3

    .line 97
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_1
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v0, v3}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_3

    .line 109
    .line 110
    :try_start_2
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 111
    .line 112
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-static {}, Landroidx/fragment/app/o1;->a()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    invoke-interface {v2, v3, v5, v1, v4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catch_2
    move-exception v3

    .line 125
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    .line 127
    .line 128
    :cond_3
    :goto_2
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getPackageUsageStatsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {v0, v3}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-nez v3, :cond_4

    .line 137
    .line 138
    :try_start_3
    const-string v3, "android:get_usage_stats"

    .line 139
    .line 140
    invoke-static {v3}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-static {}, Landroidx/fragment/app/o1;->a()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    invoke-interface {v2, v3, v5, v1, v4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :catch_3
    move-exception v3

    .line 153
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    .line 155
    .line 156
    :cond_4
    :goto_3
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAnswerPhoneCallsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-static {v0, v3}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-nez v3, :cond_5

    .line 165
    .line 166
    :try_start_4
    const-string v3, "android.permission.ANSWER_PHONE_CALLS"

    .line 167
    .line 168
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    invoke-static {}, Landroidx/fragment/app/o1;->a()I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    invoke-interface {v2, v3, v5, v1, v4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :catch_4
    move-exception v3

    .line 181
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    .line 183
    .line 184
    :cond_5
    :goto_4
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-static {v0, v3}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-nez v3, :cond_6

    .line 193
    .line 194
    :try_start_5
    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 195
    .line 196
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    invoke-static {}, Landroidx/fragment/app/o1;->a()I

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    invoke-interface {v2, v3, v5, v1, v4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :catch_5
    move-exception v3

    .line 209
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 210
    .line 211
    .line 212
    :cond_6
    :goto_5
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getRequestInstallPackagesPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-static {v0, v3}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-nez v3, :cond_7

    .line 221
    .line 222
    :try_start_6
    const-string v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 223
    .line 224
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    invoke-static {}, Landroidx/fragment/app/o1;->a()I

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    invoke-interface {v2, v3, v5, v1, v4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 233
    .line 234
    .line 235
    goto :goto_6

    .line 236
    :catch_6
    move-exception v2

    .line 237
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 238
    .line 239
    .line 240
    :cond_7
    :goto_6
    new-instance v2, Lhi/c;

    .line 241
    .line 242
    const-string v3, "package"

    .line 243
    .line 244
    invoke-static {v3}, Lhi/g;->a(Ljava/lang/String;)Landroid/os/IBinder;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-direct {v2, v3}, Lhi/c;-><init>(Landroid/os/IBinder;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-static {v0}, Lif/a;->b0(Landroid/content/Context;)Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-nez v3, :cond_8

    .line 260
    .line 261
    :try_start_7
    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    .line 262
    .line 263
    invoke-interface {v2, v1, v3, v4}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 264
    .line 265
    .line 266
    goto :goto_7

    .line 267
    :catch_7
    move-exception v3

    .line 268
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 269
    .line 270
    .line 271
    :cond_8
    :goto_7
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    iget-object v3, v3, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 276
    .line 277
    const-string v5, "android.permission.DUMP"

    .line 278
    .line 279
    invoke-virtual {v3, v5, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-eqz v3, :cond_9

    .line 284
    .line 285
    :try_start_8
    invoke-interface {v2, v1, v5, v4}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 286
    .line 287
    .line 288
    goto :goto_8

    .line 289
    :catch_8
    move-exception v3

    .line 290
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 291
    .line 292
    .line 293
    :cond_9
    :goto_8
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    iget-object v3, v3, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 298
    .line 299
    const-string v5, "android.permission.READ_LOGS"

    .line 300
    .line 301
    invoke-virtual {v3, v5, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    if-eqz v3, :cond_a

    .line 306
    .line 307
    :try_start_9
    invoke-interface {v2, v1, v5, v4}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 308
    .line 309
    .line 310
    goto :goto_9

    .line 311
    :catch_9
    move-exception v1

    .line 312
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 313
    .line 314
    .line 315
    :cond_a
    :goto_9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    const-string v2, "verifier_verify_adb_installs"

    .line 320
    .line 321
    const/4 v3, 0x1

    .line 322
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_b

    .line 327
    .line 328
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 333
    .line 334
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    .line 340
    .line 341
    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    const-string v2, "package_verifier_enable"

    .line 346
    .line 347
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-eqz v1, :cond_c

    .line 352
    .line 353
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 358
    .line 359
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    .line 365
    .line 366
    :cond_c
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    const-string v1, "install_non_market_apps"

    .line 371
    .line 372
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-eq v0, v3, :cond_d

    .line 377
    .line 378
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 383
    .line 384
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 389
    .line 390
    .line 391
    :cond_d
    return-void
.end method

.method public static f()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    const-string v2, "moe.shizuku.privileged.api"

    .line 7
    .line 8
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    :catch_0
    return v0
.end method


# virtual methods
.method public final d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lfa/o0;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->p:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-static {}, Lfa/o0;->f()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lfa/o0;->h:Z

    .line 22
    .line 23
    :try_start_0
    iget-object v0, p0, Lfa/o0;->b:Lfa/j0;

    .line 24
    .line 25
    invoke-static {v0}, Lhi/b;->a(Lfa/j0;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lfa/o0;->c:Lfa/k0;

    .line 29
    .line 30
    sget-object v1, Lhi/b;->k:Ljava/util/ArrayList;

    .line 31
    .line 32
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :try_start_1
    sget-object v2, Lhi/b;->l:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v3, Lhi/a;

    .line 36
    .line 37
    invoke-direct {v3, v0}, Lhi/a;-><init>(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    iget-object v0, p0, Lfa/o0;->d:Lfa/l0;

    .line 45
    .line 46
    invoke-static {v0}, Lhi/b;->b(Lfa/l0;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 55
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lfa/o0;->g:Lfa/m0;

    .line 2
    .line 3
    iget-object v1, p0, Lfa/o0;->f:Lcom/bumptech/glide/manager/s;

    .line 4
    .line 5
    const-string v2, "\u8bf7\u5728shizuku\u4e2d\u5141\u8bb8"

    .line 6
    .line 7
    invoke-static {}, Lfa/o0;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_4

    .line 12
    .line 13
    sget-boolean v3, Lhi/b;->g:Z

    .line 14
    .line 15
    if-nez v3, :cond_3

    .line 16
    .line 17
    sget-object v3, Lhi/b;->a:Landroid/os/IBinder;

    .line 18
    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    invoke-interface {v3}, Landroid/os/IBinder;->pingBinder()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    :try_start_0
    invoke-static {v1}, Lhi/b;->m(Lcom/bumptech/glide/manager/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :catch_0
    const/4 v3, 0x0

    .line 31
    iput-object v3, p0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 32
    .line 33
    :try_start_1
    invoke-static {}, Lhi/b;->f()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    invoke-static {v1, v0}, Lhi/b;->e(Lcom/bumptech/glide/manager/s;Lfa/m0;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-static {}, Lhi/b;->l()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Ljava/lang/Exception;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 57
    .line 58
    const v3, 0x7f13002f

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v2, "\u4f7f\u7528"

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :catch_1
    move-exception v0

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    :try_start_2
    invoke-static {}, Lhi/b;->j()Ldf/c;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ldf/a;

    .line 88
    .line 89
    invoke-virtual {v0}, Ldf/a;->k()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 90
    .line 91
    .line 92
    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    .line 93
    .line 94
    const-string v1, "\u8bf7\u5148\u5141\u8bb8\u6743\u9650"

    .line 95
    .line 96
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :catch_2
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/RuntimeException;

    .line 102
    .line 103
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 107
    :goto_0
    new-instance v1, Ljava/lang/Exception;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v1

    .line 121
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    .line 122
    .line 123
    const-string v1, "\u8bf7\u5148\u6fc0\u6d3bShizuku"

    .line 124
    .line 125
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    .line 130
    .line 131
    const-string v1, "\u8bf7\u5148\u5347\u7ea7Shizuku\u7248\u672c"

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    .line 138
    .line 139
    const-string v1, "\u8bf7\u5148\u5b89\u88c5Shizuku"

    .line 140
    .line 141
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v0
.end method
