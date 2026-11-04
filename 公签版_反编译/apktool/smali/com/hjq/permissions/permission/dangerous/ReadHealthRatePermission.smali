.class public final Lcom/hjq/permissions/permission/dangerous/ReadHealthRatePermission;
.super Lcom/hjq/permissions/permission/dangerous/HealthDataBasePermission;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hjq/permissions/permission/dangerous/ReadHealthRatePermission;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMISSION_NAME:Ljava/lang/String; = "android.permission.health.READ_HEART_RATE"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/ReadHealthRatePermission$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/ReadHealthRatePermission$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hjq/permissions/permission/dangerous/ReadHealthRatePermission;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hjq/permissions/permission/dangerous/HealthDataBasePermission;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/dangerous/HealthDataBasePermission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/hjq/permissions/permission/dangerous/ReadHealthRatePermission$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/dangerous/ReadHealthRatePermission;-><init>(Landroid/os/Parcel;)V

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
    invoke-super/range {p0 .. p5}, Lcom/hjq/permissions/permission/dangerous/HealthDataBasePermission;->checkSelfByManifestFile(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/manifest/AndroidManifestInfo;Ljava/util/List;Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/dangerous/ReadHealthRatePermission;->getFromAndroidVersion(Landroid/content/Context;)I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    invoke-static {p1, p3}, Lcom/hjq/permissions/permission/base/BasePermission;->getMinSdkVersion(Landroid/content/Context;Lcom/hjq/permissions/manifest/AndroidManifestInfo;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-le p2, p1, :cond_0

    .line 13
    .line 14
    const-string p1, "android.permission.BODY_SENSORS"

    .line 15
    .line 16
    const/16 p2, 0x21

    .line 17
    .line 18
    invoke-static {p4, p1, p2}, Lcom/hjq/permissions/permission/base/BasePermission;->checkPermissionRegistrationStatus(Ljava/util/List;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public getFromAndroidVersion(Landroid/content/Context;)I
    .locals 0

    const/16 p1, 0x22

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
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getBodySensorsPermission()Lcom/hjq/permissions/permission/base/IPermission;

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

.method public getPermissionName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "android.permission.health.READ_HEART_RATE"

    .line 2
    .line 3
    return-object v0
.end method
