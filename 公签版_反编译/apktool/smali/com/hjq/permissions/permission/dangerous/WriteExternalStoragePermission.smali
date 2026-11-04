.class public final Lcom/hjq/permissions/permission/dangerous/WriteExternalStoragePermission;
.super Lcom/hjq/permissions/permission/common/DangerousPermission;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hjq/permissions/permission/dangerous/WriteExternalStoragePermission;",
            ">;"
        }
    .end annotation
.end field

.field static final META_DATA_KEY_SCOPED_STORAGE:Ljava/lang/String; = "ScopedStorage"

.field public static final PERMISSION_NAME:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/WriteExternalStoragePermission$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/WriteExternalStoragePermission$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hjq/permissions/permission/dangerous/WriteExternalStoragePermission;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/hjq/permissions/permission/dangerous/WriteExternalStoragePermission$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/dangerous/WriteExternalStoragePermission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public checkSelfByManifestFile(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/manifest/AndroidManifestInfo;Ljava/util/List;Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;)V
    .locals 3
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
    iget-object p3, p3, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->applicationInfo:Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionVersion;->getTargetSdkVersion(Landroid/content/Context;)I

    .line 10
    .line 11
    .line 12
    move-result p5

    .line 13
    const/16 v0, 0x1d

    .line 14
    .line 15
    if-ge p5, v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/hjq/permissions/permission/dangerous/WriteExternalStoragePermission;->getPermissionName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p4, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->checkPermissionRegistrationStatus(Ljava/util/List;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionVersion;->getTargetSdkVersion(Landroid/content/Context;)I

    .line 26
    .line 27
    .line 28
    move-result p5

    .line 29
    const/16 v1, 0x1e

    .line 30
    .line 31
    if-lt p5, v1, :cond_2

    .line 32
    .line 33
    const-string p5, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 34
    .line 35
    invoke-static {p4, p5}, Lcom/hjq/permissions/permission/base/BasePermission;->findPermissionInfoByList(Ljava/util/List;Ljava/lang/String;)Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p5

    .line 39
    if-eqz p5, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/hjq/permissions/permission/dangerous/WriteExternalStoragePermission;->getPermissionName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p5

    .line 45
    invoke-static {p4, p5, v0}, Lcom/hjq/permissions/permission/base/BasePermission;->checkPermissionRegistrationStatus(Ljava/util/List;Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/hjq/permissions/permission/dangerous/WriteExternalStoragePermission;->getPermissionName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p5

    .line 53
    iget-boolean v2, p3, Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;->requestLegacyExternalStorage:Z

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    const/16 v2, 0x1d

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/16 v2, 0x1c

    .line 61
    .line 62
    :goto_0
    invoke-static {p4, p5, v2}, Lcom/hjq/permissions/permission/base/BasePermission;->checkPermissionRegistrationStatus(Ljava/util/List;Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    :goto_1
    const-string p4, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 66
    .line 67
    invoke-static {p2, p4}, Lcom/hjq/permissions/tools/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_4

    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionVersion;->getTargetSdkVersion(Landroid/content/Context;)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iget-object p2, p3, Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;->metaDataInfoList:Ljava/util/List;

    .line 79
    .line 80
    if-eqz p2, :cond_6

    .line 81
    .line 82
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result p4

    .line 90
    if-eqz p4, :cond_6

    .line 91
    .line 92
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    check-cast p4, Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;

    .line 97
    .line 98
    iget-object p5, p4, Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;->name:Ljava/lang/String;

    .line 99
    .line 100
    const-string v2, "ScopedStorage"

    .line 101
    .line 102
    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p5

    .line 106
    if-eqz p5, :cond_5

    .line 107
    .line 108
    iget-object p2, p4, Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;->value:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    const/4 p2, 0x0

    .line 116
    :goto_2
    if-lt p1, v0, :cond_8

    .line 117
    .line 118
    iget-boolean p3, p3, Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;->requestLegacyExternalStorage:Z

    .line 119
    .line 120
    if-nez p3, :cond_8

    .line 121
    .line 122
    if-eqz p2, :cond_7

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    const-string p2, "Please register the android:requestLegacyExternalStorage=\"true\" attribute in the AndroidManifest.xml file, otherwise it will cause incompatibility with the old version"

    .line 128
    .line 129
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_8
    :goto_3
    if-lt p1, v1, :cond_a

    .line 134
    .line 135
    if-eqz p2, :cond_9

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    const-string p2, "The storage permission application is abnormal. If you have adapted the scope storage, please register the <meta-data android:name=\"ScopedStorage\" android:value=\"true\" /> attribute in the AndroidManifest.xml file. If there is no adaptation scope storage, please use \"android.permission.MANAGE_EXTERNAL_STORAGE\" to apply for permission"

    .line 141
    .line 142
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :cond_a
    :goto_4
    return-void
.end method

.method public getFromAndroidVersion(Landroid/content/Context;)I
    .locals 0

    const/16 p1, 0x17

    return p1
.end method

.method public getPermissionGroup(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, "storage_group"

    .line 2
    .line 3
    return-object p1
.end method

.method public getPermissionName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    .line 3
    return-object v0
.end method

.method public isDoNotAskAgainPermissionByStandardVersion(Landroid/app/Activity;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid11()Z

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
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionVersion;->getTargetSdkVersion(Landroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v2, 0x1e

    .line 13
    .line 14
    if-lt v0, v2, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionVersion;->getTargetSdkVersion(Landroid/content/Context;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v2, 0x1d

    .line 22
    .line 23
    if-lt v0, v2, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid10()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lh4/e0;->w()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    invoke-super {p0, p1}, Lcom/hjq/permissions/permission/common/DangerousPermission;->isDoNotAskAgainPermissionByStandardVersion(Landroid/app/Activity;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public isGrantedPermissionByStandardVersion(Landroid/content/Context;Z)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid11()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionVersion;->getTargetSdkVersion(Landroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v2, 0x1e

    .line 13
    .line 14
    if-lt v0, v2, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionVersion;->getTargetSdkVersion(Landroid/content/Context;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v2, 0x1d

    .line 22
    .line 23
    if-lt v0, v2, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid10()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lh4/e0;->w()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/permission/common/DangerousPermission;->isGrantedPermissionByStandardVersion(Landroid/content/Context;Z)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public isRegisterPermissionByManifestFile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
