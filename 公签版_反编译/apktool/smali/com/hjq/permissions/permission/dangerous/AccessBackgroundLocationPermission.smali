.class public final Lcom/hjq/permissions/permission/dangerous/AccessBackgroundLocationPermission;
.super Lcom/hjq/permissions/permission/common/DangerousPermission;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hjq/permissions/permission/dangerous/AccessBackgroundLocationPermission;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMISSION_NAME:Ljava/lang/String; = "android.permission.ACCESS_BACKGROUND_LOCATION"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/AccessBackgroundLocationPermission$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/AccessBackgroundLocationPermission$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hjq/permissions/permission/dangerous/AccessBackgroundLocationPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hjq/permissions/permission/common/DangerousPermission;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/common/DangerousPermission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/hjq/permissions/permission/dangerous/AccessBackgroundLocationPermission$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/dangerous/AccessBackgroundLocationPermission;-><init>(Landroid/os/Parcel;)V

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
    const/16 p2, 0x1f

    .line 9
    .line 10
    const-string p3, "android.permission.ACCESS_FINE_LOCATION"

    .line 11
    .line 12
    if-lt p1, p2, :cond_0

    .line 13
    .line 14
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 15
    .line 16
    invoke-static {p4, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->checkPermissionRegistrationStatus(Ljava/util/List;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p4, p3}, Lcom/hjq/permissions/permission/base/BasePermission;->checkPermissionRegistrationStatus(Ljava/util/List;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p4, p3}, Lcom/hjq/permissions/permission/base/BasePermission;->checkPermissionRegistrationStatus(Ljava/util/List;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public checkSelfByRequestPermissions(Landroid/app/Activity;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/permission/base/BasePermission;->checkSelfByRequestPermissions(Landroid/app/Activity;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionVersion;->getTargetSdkVersion(Landroid/content/Context;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/16 v0, 0x1f

    .line 9
    .line 10
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 11
    .line 12
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 13
    .line 14
    if-lt p1, v0, :cond_1

    .line 15
    .line 16
    invoke-static {p2, v2}, Lcom/hjq/permissions/tools/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-static {p2, v1}, Lcom/hjq/permissions/tools/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string p2, "Applying for background positioning permissions must include \"android.permission.ACCESS_FINE_LOCATION\""

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 38
    const/4 v0, 0x0

    .line 39
    const/4 v3, -0x1

    .line 40
    const/4 v4, -0x1

    .line 41
    const/4 v5, -0x1

    .line 42
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-ge v0, v6, :cond_5

    .line 47
    .line 48
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Lcom/hjq/permissions/permission/base/IPermission;

    .line 53
    .line 54
    invoke-static {v6, p0}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsPermission(Lcom/hjq/permissions/permission/base/IPermission;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_2

    .line 59
    .line 60
    move v4, v0

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    invoke-static {v6, v1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsPermission(Lcom/hjq/permissions/permission/base/IPermission;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_3

    .line 67
    .line 68
    move v3, v0

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    invoke-static {v6, v2}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsPermission(Lcom/hjq/permissions/permission/base/IPermission;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_4

    .line 75
    .line 76
    move v5, v0

    .line 77
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    if-eq v3, p1, :cond_7

    .line 81
    .line 82
    if-gt v3, v4, :cond_6

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v0, "Please place the "

    .line 90
    .line 91
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/hjq/permissions/permission/dangerous/AccessBackgroundLocationPermission;->getPermissionName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v0, "\" permission after the \"android.permission.ACCESS_FINE_LOCATION\" permission"

    .line 102
    .line 103
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_7
    :goto_3
    if-eq v5, p1, :cond_9

    .line 115
    .line 116
    if-gt v5, v4, :cond_8

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v0, "Please place the \""

    .line 124
    .line 125
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/hjq/permissions/permission/dangerous/AccessBackgroundLocationPermission;->getPermissionName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v0, "\" permission after the \"android.permission.ACCESS_COARSE_LOCATION\" permission"

    .line 136
    .line 137
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :cond_9
    :goto_4
    return-void
.end method

.method public getForegroundPermissions(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid12()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessFineLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessCoarseLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x2

    .line 18
    new-array v3, v3, [Lcom/hjq/permissions/permission/base/IPermission;

    .line 19
    .line 20
    aput-object v1, v3, v0

    .line 21
    .line 22
    aput-object v2, v3, p1

    .line 23
    .line 24
    invoke-static {v3}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessFineLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-array p1, p1, [Lcom/hjq/permissions/permission/base/IPermission;

    .line 34
    .line 35
    aput-object v1, p1, v0

    .line 36
    .line 37
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public getFromAndroidVersion(Landroid/content/Context;)I
    .locals 0

    const/16 p1, 0x1d

    return p1
.end method

.method public getPermissionGroup(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, "location_group"

    .line 2
    .line 3
    return-object p1
.end method

.method public getPermissionName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 2
    .line 3
    return-object v0
.end method

.method public getPermissionPageType(Landroid/content/Context;)Lcom/hjq/permissions/permission/PermissionPageType;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->getSdkVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/dangerous/AccessBackgroundLocationPermission;->getFromAndroidVersion(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ne v0, p1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/hjq/permissions/permission/PermissionPageType;->TRANSPARENT_ACTIVITY:Lcom/hjq/permissions/permission/PermissionPageType;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-static {}, Lo8/b;->i()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_5

    .line 19
    .line 20
    invoke-static {}, Lo8/b;->k()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_5

    .line 25
    .line 26
    sget p1, Lo8/b;->j:I

    .line 27
    .line 28
    const v0, -0x6b5d6bcf

    .line 29
    .line 30
    .line 31
    if-ne p1, v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const v0, 0x5e67d94a

    .line 35
    .line 36
    .line 37
    if-ne p1, v0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const v0, -0xae345d4

    .line 41
    .line 42
    .line 43
    if-ne p1, v0, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-static {}, Lo8/b;->g()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    sget-object p1, Lcom/hjq/permissions/permission/PermissionPageType;->OPAQUE_ACTIVITY:Lcom/hjq/permissions/permission/PermissionPageType;

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_5
    :goto_0
    sget-object p1, Lcom/hjq/permissions/permission/PermissionPageType;->TRANSPARENT_ACTIVITY:Lcom/hjq/permissions/permission/PermissionPageType;

    .line 57
    .line 58
    return-object p1
.end method

.method public getRequestIntervalTime(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lr8/b;->k(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x96

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public isBackgroundPermission(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isDoNotAskAgainPermissionByLowVersion(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessFineLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/hjq/permissions/permission/base/IPermission;->isDoNotAskAgainPermission(Landroid/app/Activity;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public isDoNotAskAgainPermissionByStandardVersion(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid12()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessFineLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessCoarseLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessFineLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p1}, Lcom/hjq/permissions/permission/base/IPermission;->isDoNotAskAgainPermission(Landroid/app/Activity;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessCoarseLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0, p1}, Lcom/hjq/permissions/permission/base/IPermission;->isDoNotAskAgainPermission(Landroid/app/Activity;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    :goto_0
    return p1

    .line 51
    :cond_1
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessFineLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0, p1}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessFineLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v0, p1}, Lcom/hjq/permissions/permission/base/IPermission;->isDoNotAskAgainPermission(Landroid/app/Activity;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    return p1

    .line 70
    :cond_2
    invoke-super {p0, p1}, Lcom/hjq/permissions/permission/common/DangerousPermission;->isDoNotAskAgainPermissionByStandardVersion(Landroid/app/Activity;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    return p1
.end method

.method public isGrantedPermissionByLowVersion(Landroid/content/Context;Z)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessFineLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public isGrantedPermissionByStandardVersion(Landroid/content/Context;Z)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid12()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessFineLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessCoarseLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0, p1, p2}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessFineLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0, p1, p2}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    return v1

    .line 40
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/permission/common/DangerousPermission;->isGrantedPermissionByStandardVersion(Landroid/content/Context;Z)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1
.end method
