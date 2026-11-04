.class public final Lcom/hjq/permissions/permission/dangerous/BluetoothScanPermission;
.super Lcom/hjq/permissions/permission/common/DangerousPermission;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hjq/permissions/permission/dangerous/BluetoothScanPermission;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMISSION_NAME:Ljava/lang/String; = "android.permission.BLUETOOTH_SCAN"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/BluetoothScanPermission$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/BluetoothScanPermission$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hjq/permissions/permission/dangerous/BluetoothScanPermission;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/hjq/permissions/permission/dangerous/BluetoothScanPermission$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/dangerous/BluetoothScanPermission;-><init>(Landroid/os/Parcel;)V

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
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/dangerous/BluetoothScanPermission;->getFromAndroidVersion(Landroid/content/Context;)I

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
    const-string p1, "android.permission.BLUETOOTH_ADMIN"

    .line 17
    .line 18
    const/16 v0, 0x1e

    .line 19
    .line 20
    invoke-static {p4, p1, v0}, Lcom/hjq/permissions/permission/base/BasePermission;->checkPermissionRegistrationStatus(Ljava/util/List;Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {p4, p3, v0}, Lcom/hjq/permissions/permission/base/BasePermission;->checkPermissionRegistrationStatus(Ljava/util/List;Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {p2, p3}, Lcom/hjq/permissions/tools/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    if-nez p5, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-virtual {p5}, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->neverForLocation()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    iget p1, p5, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->maxSdkVersion:I

    .line 44
    .line 45
    const p2, 0x7fffffff

    .line 46
    .line 47
    .line 48
    const-string p3, "\" "

    .line 49
    .line 50
    if-eq p1, p2, :cond_4

    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string p2, "android:maxSdkVersion=\""

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget p2, p5, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->maxSdkVersion:I

    .line 60
    .line 61
    invoke-static {p1, p2, p3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    const-string p1, ""

    .line 67
    .line 68
    :goto_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    new-instance p4, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v0, "If your app doesn\'t use "

    .line 73
    .line 74
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p5, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->name:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, " to get physical location, please change the <uses-permission android:name=\""

    .line 83
    .line 84
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v0, p5, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->name:Ljava/lang/String;

    .line 88
    .line 89
    const-string v1, "/> node in the manifest file to <uses-permission android:name=\""

    .line 90
    .line 91
    invoke-static {p4, v0, p3, p1, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p3, p5, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->name:Ljava/lang/String;

    .line 95
    .line 96
    const-string v0, "\" android:usesPermissionFlags=\"neverForLocation\" "

    .line 97
    .line 98
    const-string v1, "/> node, if your app need use \""

    .line 99
    .line 100
    invoke-static {p4, p3, v0, p1, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p5, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->name:Ljava/lang/String;

    .line 104
    .line 105
    const-string p3, "\" to get physical location, also need to add \"android.permission.ACCESS_FINE_LOCATION\" permissions"

    .line 106
    .line 107
    invoke-static {p1, p3, p4}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p2
.end method

.method public getFromAndroidVersion(Landroid/content/Context;)I
    .locals 0

    const/16 p1, 0x1f

    return p1
.end method

.method public getMinTargetSdkVersion(Landroid/content/Context;)I
    .locals 0

    const/16 p1, 0x17

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
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid12()Z

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
    const-string v0, "android.permission.BLUETOOTH_SCAN"

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
