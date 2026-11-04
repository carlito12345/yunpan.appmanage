.class public final Lcom/hjq/permissions/permission/dangerous/NearbyWifiDevicesPermission;
.super Lcom/hjq/permissions/permission/common/DangerousPermission;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hjq/permissions/permission/dangerous/NearbyWifiDevicesPermission;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMISSION_NAME:Ljava/lang/String; = "android.permission.NEARBY_WIFI_DEVICES"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/NearbyWifiDevicesPermission$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/NearbyWifiDevicesPermission$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hjq/permissions/permission/dangerous/NearbyWifiDevicesPermission;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/hjq/permissions/permission/dangerous/NearbyWifiDevicesPermission$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/dangerous/NearbyWifiDevicesPermission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public checkSelfByManifestFile(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/manifest/AndroidManifestInfo;Ljava/util/List;Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;)V
    .locals 2
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
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/dangerous/NearbyWifiDevicesPermission;->getFromAndroidVersion(Landroid/content/Context;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p1, p3}, Lcom/hjq/permissions/permission/base/BasePermission;->getMinSdkVersion(Landroid/content/Context;Lcom/hjq/permissions/manifest/AndroidManifestInfo;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const-string p3, "android.permission.ACCESS_FINE_LOCATION"

    .line 13
    .line 14
    if-le v0, p1, :cond_0

    .line 15
    .line 16
    const/16 p1, 0x20

    .line 17
    .line 18
    invoke-static {p4, p3, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->checkPermissionRegistrationStatus(Ljava/util/List;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {p2, p3}, Lcom/hjq/permissions/tools/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    if-nez p5, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-virtual {p5}, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->neverForLocation()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    iget p1, p5, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->maxSdkVersion:I

    .line 39
    .line 40
    const p2, 0x7fffffff

    .line 41
    .line 42
    .line 43
    const-string p3, "\" "

    .line 44
    .line 45
    if-eq p1, p2, :cond_4

    .line 46
    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string p2, "android:maxSdkVersion=\""

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget p2, p5, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->maxSdkVersion:I

    .line 55
    .line 56
    invoke-static {p1, p2, p3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :cond_4
    const-string p1, ""

    .line 62
    .line 63
    :goto_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance p4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v0, "If your app doesn\'t use "

    .line 68
    .line 69
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p5, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->name:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, " to get physical location, please change the <uses-permission android:name=\""

    .line 78
    .line 79
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v0, p5, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->name:Ljava/lang/String;

    .line 83
    .line 84
    const-string v1, "/> node in the manifest file to <uses-permission android:name=\""

    .line 85
    .line 86
    invoke-static {p4, v0, p3, p1, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p3, p5, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->name:Ljava/lang/String;

    .line 90
    .line 91
    const-string v0, "\" android:usesPermissionFlags=\"neverForLocation\" "

    .line 92
    .line 93
    const-string v1, "/> node, if your app need use \""

    .line 94
    .line 95
    invoke-static {p4, p3, v0, p1, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p5, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->name:Ljava/lang/String;

    .line 99
    .line 100
    const-string p3, "\" to get physical location, also need to add \"android.permission.ACCESS_FINE_LOCATION\" permissions"

    .line 101
    .line 102
    invoke-static {p1, p3, p4}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p2
.end method

.method public getFromAndroidVersion(Landroid/content/Context;)I
    .locals 0

    const/16 p1, 0x21

    return p1
.end method

.method public getOldPermissions(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessFineLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Lcom/hjq/permissions/permission/base/IPermission;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p1, v0, v1

    .line 10
    .line 11
    invoke-static {v0}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getPermissionGroup(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid13()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string p1, "nearby_devices_group"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p1, "location_group"

    .line 11
    .line 12
    :goto_0
    return-object p1
.end method

.method public getPermissionName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    .line 2
    .line 3
    return-object v0
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
