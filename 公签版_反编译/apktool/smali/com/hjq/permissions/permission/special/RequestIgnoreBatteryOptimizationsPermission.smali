.class public final Lcom/hjq/permissions/permission/special/RequestIgnoreBatteryOptimizationsPermission;
.super Lcom/hjq/permissions/permission/common/SpecialPermission;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hjq/permissions/permission/special/RequestIgnoreBatteryOptimizationsPermission;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMISSION_NAME:Ljava/lang/String; = "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/permissions/permission/special/RequestIgnoreBatteryOptimizationsPermission$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/RequestIgnoreBatteryOptimizationsPermission$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hjq/permissions/permission/special/RequestIgnoreBatteryOptimizationsPermission;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/hjq/permissions/permission/special/RequestIgnoreBatteryOptimizationsPermission$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/special/RequestIgnoreBatteryOptimizationsPermission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getFromAndroidVersion(Landroid/content/Context;)I
    .locals 0

    const/16 p1, 0x17

    return p1
.end method

.method public getPermissionName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 2
    .line 3
    return-object v0
.end method

.method public getPermissionPageType(Landroid/content/Context;)Lcom/hjq/permissions/permission/PermissionPageType;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BatteryLife"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid11()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lo8/b;->i()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lo8/b;->k()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    sget-object p1, Lcom/hjq/permissions/permission/PermissionPageType;->OPAQUE_ACTIVITY:Lcom/hjq/permissions/permission/PermissionPageType;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    sget v0, Lo8/b;->j:I

    .line 23
    .line 24
    const v1, -0x642e7b99

    .line 25
    .line 26
    .line 27
    if-ne v0, v1, :cond_3

    .line 28
    .line 29
    sget-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string v0, ""

    .line 35
    .line 36
    :goto_0
    invoke-static {v0}, Lo8/b;->a(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/16 v1, 0xf

    .line 41
    .line 42
    if-ne v0, v1, :cond_3

    .line 43
    .line 44
    sget-object p1, Lcom/hjq/permissions/permission/PermissionPageType;->OPAQUE_ACTIVITY:Lcom/hjq/permissions/permission/PermissionPageType;

    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_3
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid6()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-static {p0, p1}, Lr8/b;->j(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    new-instance v0, Landroid/content/Intent;

    .line 60
    .line 61
    const-string v1, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 62
    .line 63
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->getPackageNameUri(Landroid/content/Context;)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v0}, Lcom/hjq/permissions/tools/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    sget-object p1, Lcom/hjq/permissions/permission/PermissionPageType;->TRANSPARENT_ACTIVITY:Lcom/hjq/permissions/permission/PermissionPageType;

    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_4
    sget-object p1, Lcom/hjq/permissions/permission/PermissionPageType;->OPAQUE_ACTIVITY:Lcom/hjq/permissions/permission/PermissionPageType;

    .line 83
    .line 84
    return-object p1
.end method

.method public getPermissionSettingIntents(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BatteryLife"
        }
    .end annotation

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
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid6()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroid/content/Intent;

    .line 15
    .line 16
    const-string v3, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 17
    .line 18
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->getPackageNameUri(Landroid/content/Context;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/hjq/permissions/permission/special/RequestIgnoreBatteryOptimizationsPermission;->isGrantedPermission(Landroid/content/Context;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lo8/b;->i()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    :cond_0
    move-object v1, v2

    .line 41
    :cond_1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid12()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    new-instance v3, Landroid/content/Intent;

    .line 48
    .line 49
    const-string v4, "android.settings.VIEW_ADVANCED_POWER_USAGE_DETAIL"

    .line 50
    .line 51
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->getPackageNameUri(Landroid/content/Context;)Landroid/net/Uri;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move-object v3, v2

    .line 63
    :goto_0
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid6()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    new-instance v2, Landroid/content/Intent;

    .line 70
    .line 71
    const-string v4, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    .line 72
    .line 73
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    if-eqz p2, :cond_7

    .line 77
    .line 78
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid11()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_4

    .line 83
    .line 84
    invoke-static {}, Lo8/b;->i()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_7

    .line 89
    .line 90
    invoke-static {}, Lo8/b;->k()Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-nez p2, :cond_7

    .line 95
    .line 96
    :cond_4
    if-eqz v3, :cond_5

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    :cond_5
    if-eqz v2, :cond_6

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_6
    if-eqz v1, :cond_a

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_7
    if-eqz v1, :cond_8

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_8
    if-eqz v3, :cond_9

    .line 118
    .line 119
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_9
    if-eqz v2, :cond_a

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    :cond_a
    :goto_1
    invoke-static {}, Lo8/b;->i()Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-nez p2, :cond_b

    .line 132
    .line 133
    invoke-static {}, Lo8/b;->k()Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    if-eqz p2, :cond_c

    .line 138
    .line 139
    :cond_b
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->getApplicationDetailsSettingIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    invoke-static {}, Lcom/hjq/permissions/permission/base/BasePermission;->getManageApplicationSettingIntent()Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    invoke-static {}, Lcom/hjq/permissions/permission/base/BasePermission;->getApplicationSettingIntent()Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :cond_c
    invoke-virtual {p0}, Lcom/hjq/permissions/permission/base/BasePermission;->getAndroidSettingIntent()Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    return-object v0
.end method

.method public getResultWaitTime(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lr8/b;->k(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-static {}, Lo8/b;->i()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x3e8

    .line 14
    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid15()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-super {p0, p1}, Lcom/hjq/permissions/permission/common/SpecialPermission;->getResultWaitTime(Landroid/content/Context;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid14()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    sget-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const-string v0, ""

    .line 40
    .line 41
    :goto_0
    invoke-static {v0}, Lo8/b;->a(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v2, 0x2

    .line 46
    if-ge v0, v2, :cond_3

    .line 47
    .line 48
    return v1

    .line 49
    :cond_3
    invoke-super {p0, p1}, Lcom/hjq/permissions/permission/common/SpecialPermission;->getResultWaitTime(Landroid/content/Context;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :cond_4
    return v1

    .line 55
    :cond_5
    invoke-static {}, Lo8/b;->k()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid11()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    return v1

    .line 68
    :cond_6
    invoke-super {p0, p1}, Lcom/hjq/permissions/permission/common/SpecialPermission;->getResultWaitTime(Landroid/content/Context;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1
.end method

.method public isGrantedPermission(Landroid/content/Context;Z)Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid6()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-static {p1}, La2/a;->C(Landroid/content/Context;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Landroid/os/PowerManager;

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p2, p1}, La2/a;->x(Landroid/os/PowerManager;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public isRegisterPermissionByManifestFile()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
