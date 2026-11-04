.class public final Lcom/hjq/permissions/permission/special/NotificationServicePermission;
.super Lcom/hjq/permissions/permission/common/SpecialPermission;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hjq/permissions/permission/special/NotificationServicePermission;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP_POST_NOTIFICATION_DEFAULT_VALUE:I = 0xb

.field private static final OP_POST_NOTIFICATION_FIELD_NAME:Ljava/lang/String; = "OP_POST_NOTIFICATION"

.field public static final PERMISSION_NAME:Ljava/lang/String; = "android.permission.NOTIFICATION_SERVICE"


# instance fields
.field private final mNotificationChannelId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/permissions/permission/special/NotificationServicePermission$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/NotificationServicePermission$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hjq/permissions/permission/special/NotificationServicePermission;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/hjq/permissions/permission/special/NotificationServicePermission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/special/NotificationServicePermission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/hjq/permissions/permission/special/NotificationServicePermission$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/special/NotificationServicePermission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/hjq/permissions/permission/common/SpecialPermission;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/hjq/permissions/permission/special/NotificationServicePermission;->mNotificationChannelId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkSelfByManifestFile(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/manifest/AndroidManifestInfo;Ljava/util/List;Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Lcom/hjq/permissions/manifest/AndroidManifestInfo;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;",
            ">;",
            "Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/hjq/permissions/permission/base/BasePermission;->checkSelfByManifestFile(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/manifest/AndroidManifestInfo;Ljava/util/List;Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionVersion;->getTargetSdkVersion(Landroid/content/Context;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/16 p2, 0x21

    .line 9
    .line 10
    if-lt p1, p2, :cond_0

    .line 11
    .line 12
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    .line 13
    .line 14
    invoke-static {p4, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->findPermissionInfoByList(Ljava/util/List;Ljava/lang/String;)Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const p3, 0x7fffffff

    .line 19
    .line 20
    .line 21
    invoke-static {p2, p1, p3}, Lcom/hjq/permissions/permission/base/BasePermission;->checkPermissionRegistrationStatus(Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public getFromAndroidVersion(Landroid/content/Context;)I
    .locals 0

    const/16 p1, 0x13

    return p1
.end method

.method public getNotificationChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/permission/special/NotificationServicePermission;->mNotificationChannelId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPermissionName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "android.permission.NOTIFICATION_SERVICE"

    .line 2
    .line 3
    return-object v0
.end method

.method public getPermissionSettingIntents(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
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
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid8()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    const-string v2, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    .line 19
    .line 20
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "android.provider.extra.APP_PACKAGE"

    .line 28
    .line 29
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, La2/a;->j(Landroid/content/Context;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroid/app/NotificationManager;

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    iget-object v5, p0, Lcom/hjq/permissions/permission/special/NotificationServicePermission;->mNotificationChannelId:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_0

    .line 47
    .line 48
    iget-object v5, p0, Lcom/hjq/permissions/permission/special/NotificationServicePermission;->mNotificationChannelId:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v3, v5}, Lcom/hjq/permissions/permission/special/b;->c(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v5, 0x0

    .line 56
    :goto_0
    if-eqz v5, :cond_2

    .line 57
    .line 58
    invoke-static {v3}, La2/s0;->z(Landroid/app/NotificationManager;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    const-string v2, "android.provider.extra.CHANNEL_ID"

    .line 68
    .line 69
    invoke-static {v5}, Lcom/hjq/permissions/permission/special/b;->i(Landroid/app/NotificationChannel;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid11()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    const-string v2, "android.provider.extra.CONVERSATION_ID"

    .line 83
    .line 84
    invoke-static {v5}, Landroidx/media3/exoplayer/video/b0;->o(Landroid/app/NotificationChannel;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 95
    .line 96
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    :cond_3
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid5()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    new-instance v0, Landroid/content/Intent;

    .line 116
    .line 117
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v2, "app_package"

    .line 125
    .line 126
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 134
    .line 135
    const-string v2, "app_uid"

    .line 136
    .line 137
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    :cond_4
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid13()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_5

    .line 148
    .line 149
    new-instance v0, Landroid/content/Intent;

    .line 150
    .line 151
    const-string v1, "android.settings.ALL_APPS_NOTIFICATION_SETTINGS"

    .line 152
    .line 153
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    :cond_5
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->getApplicationDetailsSettingIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    invoke-static {}, Lcom/hjq/permissions/permission/base/BasePermission;->getManageApplicationSettingIntent()Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    invoke-static {}, Lcom/hjq/permissions/permission/base/BasePermission;->getApplicationSettingIntent()Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/hjq/permissions/permission/base/BasePermission;->getAndroidSettingIntent()Landroid/content/Intent;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    return-object p2
.end method

.method public isGrantedPermission(Landroid/content/Context;Z)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid4_4()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid7()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/16 v1, 0xb

    .line 14
    .line 15
    const-string v2, "OP_POST_NOTIFICATION"

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-static {p1, v2, v1, v0}, Lcom/hjq/permissions/permission/base/BasePermission;->checkOpPermission(Landroid/content/Context;Ljava/lang/String;IZ)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_1
    invoke-static {p1}, La2/a;->j(Landroid/content/Context;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Landroid/app/NotificationManager;

    .line 29
    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    invoke-static {p1, v2, v1, v0}, Lcom/hjq/permissions/permission/base/BasePermission;->checkOpPermission(Landroid/content/Context;Ljava/lang/String;IZ)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_2
    invoke-static {p2}, La2/s0;->z(Landroid/app/NotificationManager;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 v1, 0x0

    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    return v1

    .line 45
    :cond_3
    iget-object p1, p0, Lcom/hjq/permissions/permission/special/NotificationServicePermission;->mNotificationChannelId:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_6

    .line 52
    .line 53
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid8()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    iget-object p1, p0, Lcom/hjq/permissions/permission/special/NotificationServicePermission;->mNotificationChannelId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p2, p1}, Lcom/hjq/permissions/permission/special/b;->c(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    invoke-static {p1}, Lcom/hjq/permissions/permission/special/b;->a(Landroid/app/NotificationChannel;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_5

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    const/4 v0, 0x0

    .line 76
    :cond_6
    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/permission/base/BasePermission;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/hjq/permissions/permission/special/NotificationServicePermission;->mNotificationChannelId:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
