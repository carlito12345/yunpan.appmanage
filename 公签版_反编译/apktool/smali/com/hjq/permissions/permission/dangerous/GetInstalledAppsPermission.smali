.class public final Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;
.super Lcom/hjq/permissions/permission/common/DangerousPermission;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIUI_OP_GET_INSTALLED_APPS_DEFAULT_VALUE:I = 0x2726

.field private static final MIUI_OP_GET_INSTALLED_APPS_FIELD_NAME:Ljava/lang/String; = "OP_GET_INSTALLED_APPS"

.field private static final ONE_UI_GET_APP_LIST_PERMISSION_NAME:Ljava/lang/String; = "com.samsung.android.permission.GET_APP_LIST"

.field public static final PERMISSION_NAME:Ljava/lang/String; = "com.android.permission.GET_INSTALLED_APPS"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getOpsNameByFlyme(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, "_op_56"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private static isSupportRequestPermissionByFlyme()Z
    .locals 3

    .line 1
    invoke-static {}, Lo8/b;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const-string v0, ""

    .line 15
    .line 16
    :goto_0
    invoke-static {v0}, Lo8/b;->a(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v2, 0x9

    .line 21
    .line 22
    if-lt v0, v2, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_2
    return v1
.end method

.method private static isSupportRequestPermissionByMiui()Z
    .locals 1

    .line 1
    invoke-static {}, Lo8/b;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    const-string v0, "OP_GET_INSTALLED_APPS"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/hjq/permissions/permission/base/BasePermission;->isExistOpPermission(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method private static isSupportRequestPermissionByOneUi(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget v0, Lo8/b;->j:I

    .line 2
    .line 3
    const v1, 0x48cc75a

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v2

    .line 16
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "com.samsung.android.permission.GET_APP_LIST"

    .line 21
    .line 22
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_4

    .line 27
    .line 28
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid9()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-static {p0}, Landroidx/emoji2/text/b;->a(Landroid/content/pm/PermissionInfo;)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    and-int/lit8 p0, p0, 0xf

    .line 44
    .line 45
    :goto_1
    if-ne p0, v3, :cond_3

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    :cond_3
    return v2

    .line 49
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :cond_4
    return v2
.end method

.method private isSupportRequestPermissionBySystem(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {p0}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->getPermissionName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid9()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-static {v2}, Landroidx/emoji2/text/b;->a(Landroid/content/pm/PermissionInfo;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget p1, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    and-int/lit8 p1, p1, 0xf

    .line 31
    .line 32
    :goto_0
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_1
    return v0

    .line 37
    :catch_0
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v2, "oem_installed_apps_runtime_permission_enable"

    .line 42
    .line 43
    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p1
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    if-ne p1, v0, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    const/4 v0, 0x0

    .line 51
    :goto_2
    return v0

    .line 52
    :catch_1
    return v1
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
    const/16 p2, 0x1e

    .line 9
    .line 10
    if-ge p1, p2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid11()Z

    .line 14
    .line 15
    .line 16
    const-string p1, "android.permission.QUERY_ALL_PACKAGES"

    .line 17
    .line 18
    invoke-static {p4, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->findPermissionInfoByList(Ljava/util/List;Ljava/lang/String;)Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-nez p2, :cond_2

    .line 23
    .line 24
    iget-object p2, p3, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->queriesPackageList:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string p3, "Please register permissions in the AndroidManifest.xml file <uses-permission android:name=\""

    .line 36
    .line 37
    const-string p4, "\" />, or add the app package name to the <queries> tag in the AndroidManifest.xml file"

    .line 38
    .line 39
    invoke-static {p3, p1, p4}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p2

    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public getFromAndroidVersion(Landroid/content/Context;)I
    .locals 0

    const/16 p1, 0x11

    return p1
.end method

.method public getPermissionChannel(Landroid/content/Context;)Lcom/hjq/permissions/permission/PermissionChannel;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid6()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->isSupportRequestPermissionBySystem(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/hjq/permissions/permission/PermissionChannel;->REQUEST_PERMISSIONS:Lcom/hjq/permissions/permission/PermissionChannel;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->isSupportRequestPermissionByOneUi(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    sget-object p1, Lcom/hjq/permissions/permission/PermissionChannel;->START_ACTIVITY:Lcom/hjq/permissions/permission/PermissionChannel;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    invoke-static {}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->isSupportRequestPermissionByFlyme()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    sget-object p1, Lcom/hjq/permissions/permission/PermissionChannel;->START_ACTIVITY:Lcom/hjq/permissions/permission/PermissionChannel;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_2
    sget-object p1, Lcom/hjq/permissions/permission/PermissionChannel;->START_ACTIVITY:Lcom/hjq/permissions/permission/PermissionChannel;

    .line 35
    .line 36
    return-object p1
.end method

.method public getPermissionName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.android.permission.GET_INSTALLED_APPS"

    .line 2
    .line 3
    return-object v0
.end method

.method public getPermissionPageType(Landroid/content/Context;)Lcom/hjq/permissions/permission/PermissionPageType;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->getPermissionChannel(Landroid/content/Context;)Lcom/hjq/permissions/permission/PermissionChannel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/hjq/permissions/permission/PermissionChannel;->REQUEST_PERMISSIONS:Lcom/hjq/permissions/permission/PermissionChannel;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/hjq/permissions/permission/PermissionPageType;->TRANSPARENT_ACTIVITY:Lcom/hjq/permissions/permission/PermissionPageType;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    sget-object p1, Lcom/hjq/permissions/permission/PermissionPageType;->OPAQUE_ACTIVITY:Lcom/hjq/permissions/permission/PermissionPageType;

    .line 13
    .line 14
    return-object p1
.end method

.method public getPermissionSettingIntents(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
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
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lo8/b;->j()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lo8/b;->m()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-static {}, Lo8/b;->l()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-static {}, Lo8/b;->m()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    :cond_1
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getXiaoMiApplicationPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-static {}, Lo8/b;->h()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getMeiZuApplicationPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->getApplicationDetailsSettingIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/hjq/permissions/permission/base/BasePermission;->getManageApplicationSettingIntent()Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/hjq/permissions/permission/base/BasePermission;->getApplicationSettingIntent()Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/hjq/permissions/permission/base/BasePermission;->getAndroidSettingIntent()Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    return-object p2
.end method

.method public isDoNotAskAgainPermission(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid6()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->isSupportRequestPermissionBySystem(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/common/DangerousPermission;->isDoNotAskAgainPermissionByStandardVersion(Landroid/app/Activity;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_0
    invoke-static {p1}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->isSupportRequestPermissionByOneUi(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid4_4()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-static {}, Lo8/b;->k()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-static {}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->isSupportRequestPermissionByMiui()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-static {}, Lo8/b;->m()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    return v1

    .line 51
    :cond_2
    invoke-static {p0, p1}, Lr8/b;->j(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    xor-int/lit8 p1, p1, 0x1

    .line 56
    .line 57
    return p1

    .line 58
    :cond_3
    return v1
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
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_4

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->isSupportRequestPermissionBySystem(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->getPermissionName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p1, p2}, Lcom/hjq/permissions/permission/base/BasePermission;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_0
    invoke-static {p1}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->isSupportRequestPermissionByOneUi(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    const-string p2, "com.samsung.android.permission.GET_APP_LIST"

    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/hjq/permissions/permission/base/BasePermission;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_1
    invoke-static {}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->isSupportRequestPermissionByFlyme()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_4

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->getOpsNameByFlyme(Landroid/content/Context;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/4 v1, -0x1

    .line 51
    invoke-static {p2, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/4 p2, 0x4

    .line 56
    if-eq p1, p2, :cond_3

    .line 57
    .line 58
    const/4 p2, 0x6

    .line 59
    if-ne p1, p2, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    :cond_3
    :goto_0
    return v0

    .line 64
    :cond_4
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid4_4()Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-eqz p2, :cond_6

    .line 69
    .line 70
    invoke-static {}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->isSupportRequestPermissionByMiui()Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_6

    .line 75
    .line 76
    invoke-static {}, Lo8/b;->m()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-nez p2, :cond_5

    .line 81
    .line 82
    return v0

    .line 83
    :cond_5
    const-string p2, "OP_GET_INSTALLED_APPS"

    .line 84
    .line 85
    const/16 v1, 0x2726

    .line 86
    .line 87
    invoke-static {p1, p2, v1, v0}, Lcom/hjq/permissions/permission/base/BasePermission;->checkOpPermission(Landroid/content/Context;Ljava/lang/String;IZ)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    return p1

    .line 92
    :cond_6
    return v0
.end method

.method public isSupportRequestPermission(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lr8/b;->k(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid6()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->isSupportRequestPermissionBySystem(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->isSupportRequestPermissionByOneUi(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid4_4()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-static {}, Lo8/b;->k()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-static {}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;->isSupportRequestPermissionByMiui()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-static {}, Lo8/b;->m()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_2
    return v0
.end method
