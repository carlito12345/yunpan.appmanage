.class public final Lcom/hjq/permissions/permission/dangerous/ReadExternalStoragePermission;
.super Lcom/hjq/permissions/permission/common/DangerousPermission;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hjq/permissions/permission/dangerous/ReadExternalStoragePermission;",
            ">;"
        }
    .end annotation
.end field

.field static final META_DATA_KEY_SCOPED_STORAGE:Ljava/lang/String; = "ScopedStorage"

.field public static final PERMISSION_NAME:Ljava/lang/String; = "android.permission.READ_EXTERNAL_STORAGE"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/ReadExternalStoragePermission$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/ReadExternalStoragePermission$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hjq/permissions/permission/dangerous/ReadExternalStoragePermission;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/hjq/permissions/permission/dangerous/ReadExternalStoragePermission$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/dangerous/ReadExternalStoragePermission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public checkSelfByManifestFile(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/manifest/AndroidManifestInfo;Ljava/util/List;Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;)V
    .locals 1
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
    const-string p4, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 5
    .line 6
    invoke-static {p2, p4}, Lcom/hjq/permissions/tools/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p2, p3, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->applicationInfo:Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionVersion;->getTargetSdkVersion(Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object p3, p2, Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;->metaDataInfoList:Ljava/util/List;

    .line 23
    .line 24
    if-eqz p3, :cond_3

    .line 25
    .line 26
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p4

    .line 34
    if-eqz p4, :cond_3

    .line 35
    .line 36
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p4

    .line 40
    check-cast p4, Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;

    .line 41
    .line 42
    iget-object p5, p4, Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;->name:Ljava/lang/String;

    .line 43
    .line 44
    const-string v0, "ScopedStorage"

    .line 45
    .line 46
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p5

    .line 50
    if-eqz p5, :cond_2

    .line 51
    .line 52
    iget-object p3, p4, Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;->value:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 p3, 0x0

    .line 60
    :goto_0
    const/16 p4, 0x1d

    .line 61
    .line 62
    if-lt p1, p4, :cond_5

    .line 63
    .line 64
    iget-boolean p2, p2, Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;->requestLegacyExternalStorage:Z

    .line 65
    .line 66
    if-nez p2, :cond_5

    .line 67
    .line 68
    if-eqz p3, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string p2, "Please register the android:requestLegacyExternalStorage=\"true\" attribute in the AndroidManifest.xml file, otherwise it will cause incompatibility with the old version"

    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_5
    :goto_1
    const/16 p2, 0x1e

    .line 80
    .line 81
    if-lt p1, p2, :cond_7

    .line 82
    .line 83
    if-eqz p3, :cond_6

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    const-string p2, "The storage permission application is abnormal. If you have adapted the scope storage, please register the <meta-data android:name=\"ScopedStorage\" android:value=\"true\" /> attribute in the AndroidManifest.xml file. If there is no adaptation scope storage, please use \"android.permission.MANAGE_EXTERNAL_STORAGE\" to apply for permission"

    .line 89
    .line 90
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_7
    :goto_2
    return-void
.end method

.method public checkSelfByRequestPermissions(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
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
    const/16 p2, 0x21

    .line 9
    .line 10
    if-ge p1, p2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string p2, "When the project targetSdkVersion >= 33, the \"android.permission.READ_EXTERNAL_STORAGE\" permission cannot be applied for, and some problems will occur.Because after testing, if targetSdkVersion >= 33 applies for \"android.permission.READ_EXTERNAL_STORAGE\" or \"android.permission.WRITE_EXTERNAL_STORAGE\", it will be directly rejected by the system and no authorization dialog box will be displayed.If the App has been adapted for scoped storage, the should be requested \"android.permission.READ_MEDIA_IMAGES\" or \"android.permission.READ_MEDIA_VIDEO\" or \"android.permission.READ_MEDIA_AUDIO\" permission.If the App does not need to adapt scoped storage, the should be requested \"android.permission.MANAGE_EXTERNAL_STORAGE\" permission"

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
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
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2
    .line 3
    return-object v0
.end method

.method public isDoNotAskAgainPermissionByStandardVersion(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid13()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionVersion;->getTargetSdkVersion(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x21

    .line 12
    .line 13
    if-lt v0, v1, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getReadMediaImagesPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/hjq/permissions/permission/base/IPermission;->isDoNotAskAgainPermission(Landroid/app/Activity;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getReadMediaVideoPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p1}, Lcom/hjq/permissions/permission/base/IPermission;->isDoNotAskAgainPermission(Landroid/app/Activity;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getReadMediaAudioPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0, p1}, Lcom/hjq/permissions/permission/base/IPermission;->isDoNotAskAgainPermission(Landroid/app/Activity;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    return p1

    .line 49
    :cond_1
    invoke-super {p0, p1}, Lcom/hjq/permissions/permission/common/DangerousPermission;->isDoNotAskAgainPermissionByStandardVersion(Landroid/app/Activity;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method public isGrantedPermissionByStandardVersion(Landroid/content/Context;Z)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid13()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionVersion;->getTargetSdkVersion(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x21

    .line 12
    .line 13
    if-lt v0, v1, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getReadMediaImagesPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1, p2}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getReadMediaVideoPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p1, p2}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getReadMediaAudioPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0, p1, p2}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;Z)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    return p1

    .line 49
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/permission/common/DangerousPermission;->isGrantedPermissionByStandardVersion(Landroid/content/Context;Z)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1
.end method
