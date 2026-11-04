.class public final Lcom/hjq/permissions/permission/special/SystemAlertWindowPermission;
.super Lcom/hjq/permissions/permission/common/SpecialPermission;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hjq/permissions/permission/special/SystemAlertWindowPermission;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP_SYSTEM_ALERT_WINDOW_DEFAULT_VALUE:I = 0x18

.field private static final OP_SYSTEM_ALERT_WINDOW_FIELD_NAME:Ljava/lang/String; = "OP_SYSTEM_ALERT_WINDOW"

.field public static final PERMISSION_NAME:Ljava/lang/String; = "android.permission.SYSTEM_ALERT_WINDOW"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/permissions/permission/special/SystemAlertWindowPermission$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/SystemAlertWindowPermission$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hjq/permissions/permission/special/SystemAlertWindowPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hjq/permissions/permission/common/SpecialPermission;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/common/SpecialPermission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/hjq/permissions/permission/special/SystemAlertWindowPermission$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/special/SystemAlertWindowPermission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getFromAndroidVersion(Landroid/content/Context;)I
    .locals 0

    const/16 p1, 0x11

    return p1
.end method

.method public getPermissionName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 2
    .line 3
    return-object v0
.end method

.method public getPermissionSettingIntents(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid6()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid11()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lo8/b;->i()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lo8/b;->k()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lo8/b;->m()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getXiaoMiApplicationPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lo8/b;->h()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getMeiZuApplicationPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 59
    .line 60
    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 61
    .line 62
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->getPackageNameUri(Landroid/content/Context;)Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    new-instance v0, Landroid/content/Intent;

    .line 76
    .line 77
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :cond_2
    invoke-static {}, Lo8/b;->g()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    new-instance v0, Landroid/content/Intent;

    .line 92
    .line 93
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v1, "com.huawei.systemmanager"

    .line 97
    .line 98
    const-string v2, "com.huawei.systemmanager.addviewmonitor.AddViewMonitorActivity"

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    new-instance v2, Landroid/content/Intent;

    .line 104
    .line 105
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v3, "com.huawei.notificationmanager.ui.NotificationManagmentActivity"

    .line 109
    .line 110
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    sget-object v1, Lo8/b;->l:Ljava/lang/String;

    .line 114
    .line 115
    if-eqz v1, :cond_3

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    const-string v1, ""

    .line 119
    .line 120
    :goto_1
    const-string v3, "3.0"

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_4

    .line 127
    .line 128
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    :goto_2
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getHuaWeiMobileManagerAppIntent(Landroid/content/Context;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    .line 147
    .line 148
    goto/16 :goto_3

    .line 149
    .line 150
    :cond_5
    invoke-static {}, Lo8/b;->k()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_7

    .line 155
    .line 156
    invoke-static {}, Lo8/b;->m()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_6

    .line 161
    .line 162
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getXiaoMiApplicationPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    :cond_6
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getXiaoMiMobileManagerAppIntent(Landroid/content/Context;)Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_7
    invoke-static {}, Lo8/b;->h()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_8

    .line 182
    .line 183
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getMeiZuApplicationPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_8
    sget v0, Lo8/b;->j:I

    .line 192
    .line 193
    const v1, -0x642e7b99

    .line 194
    .line 195
    .line 196
    if-ne v0, v1, :cond_9

    .line 197
    .line 198
    new-instance v0, Landroid/content/Intent;

    .line 199
    .line 200
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v1, "com.oppo.safe"

    .line 204
    .line 205
    const-string v2, "com.oppo.safe.permission.PermissionTopActivity"

    .line 206
    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getOppoSafeCenterAppIntent(Landroid/content/Context;)Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_9
    const v1, -0x1186f8dc    # -1.92676E28f

    .line 222
    .line 223
    .line 224
    if-ne v0, v1, :cond_a

    .line 225
    .line 226
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getVivoMobileManagerAppIntent(Landroid/content/Context;)Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_a
    const v1, 0x48cc75a

    .line 235
    .line 236
    .line 237
    if-ne v0, v1, :cond_b

    .line 238
    .line 239
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getOneUiPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_b
    const v1, 0x6ba129e4

    .line 248
    .line 249
    .line 250
    if-ne v0, v1, :cond_c

    .line 251
    .line 252
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid5_1()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-nez v0, :cond_c

    .line 257
    .line 258
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getSmartisanPermissionPageIntent()Ljava/util/List;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 263
    .line 264
    .line 265
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getSmartisanSecurityCenterAppIntent(Landroid/content/Context;)Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    .line 271
    .line 272
    :cond_c
    :goto_3
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->getApplicationDetailsSettingIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    invoke-static {}, Lcom/hjq/permissions/permission/base/BasePermission;->getManageApplicationSettingIntent()Landroid/content/Intent;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    invoke-static {}, Lcom/hjq/permissions/permission/base/BasePermission;->getApplicationSettingIntent()Landroid/content/Intent;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/hjq/permissions/permission/base/BasePermission;->getAndroidSettingIntent()Landroid/content/Intent;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    return-object p2
.end method

.method public isGrantedPermission(Landroid/content/Context;Z)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid6()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, La2/a;->w(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid4_4()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/4 v0, 0x1

    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    const-string p2, "OP_SYSTEM_ALERT_WINDOW"

    .line 21
    .line 22
    const/16 v1, 0x18

    .line 23
    .line 24
    invoke-static {p1, p2, v1, v0}, Lcom/hjq/permissions/permission/base/BasePermission;->checkOpPermission(Landroid/content/Context;Ljava/lang/String;IZ)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public isRegisterPermissionByManifestFile()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
