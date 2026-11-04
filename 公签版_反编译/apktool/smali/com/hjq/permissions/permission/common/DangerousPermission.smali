.class public abstract Lcom/hjq/permissions/permission/common/DangerousPermission;
.super Lcom/hjq/permissions/permission/base/BasePermission;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hjq/permissions/permission/base/BasePermission;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/base/BasePermission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getPermissionChannel(Landroid/content/Context;)Lcom/hjq/permissions/permission/PermissionChannel;
    .locals 0

    .line 1
    sget-object p1, Lcom/hjq/permissions/permission/PermissionChannel;->REQUEST_PERMISSIONS:Lcom/hjq/permissions/permission/PermissionChannel;

    .line 2
    .line 3
    return-object p1
.end method

.method public getPermissionPageType(Landroid/content/Context;)Lcom/hjq/permissions/permission/PermissionPageType;
    .locals 0

    .line 1
    sget-object p1, Lcom/hjq/permissions/permission/PermissionPageType;->TRANSPARENT_ACTIVITY:Lcom/hjq/permissions/permission/PermissionPageType;

    .line 2
    .line 3
    return-object p1
.end method

.method public getPermissionSettingIntents(Landroid/content/Context;Z)Ljava/util/List;
    .locals 2
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
    const/4 v0, 0x5

    .line 4
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lo8/b;->l()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lo8/b;->m()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getXiaoMiApplicationPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {}, Lo8/b;->j()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-static {}, Lo8/b;->m()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    sget-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v0, ""

    .line 45
    .line 46
    :goto_0
    const-string v1, "^2\\.0\\.[0-5]\\.\\d+$"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getXiaoMiApplicationPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-static {}, Lo8/b;->h()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getMeiZuApplicationPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->getApplicationDetailsSettingIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/hjq/permissions/permission/base/BasePermission;->getManageApplicationSettingIntent()Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/hjq/permissions/permission/base/BasePermission;->getApplicationSettingIntent()Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/hjq/permissions/permission/base/BasePermission;->getAndroidSettingIntent()Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    return-object p2
.end method

.method public isDoNotAskAgainPermission(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    invoke-interface {p0, p1}, Lcom/hjq/permissions/permission/base/IPermission;->getFromAndroidVersion(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->getSdkVersion()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/common/DangerousPermission;->isDoNotAskAgainPermissionByLowVersion(Landroid/app/Activity;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/common/DangerousPermission;->isDoNotAskAgainPermissionByStandardVersion(Landroid/app/Activity;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public isDoNotAskAgainPermissionByLowVersion(Landroid/app/Activity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isDoNotAskAgainPermissionByStandardVersion(Landroid/app/Activity;)Z
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
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/hjq/permissions/manager/AlreadyRequestPermissionsManager;->isAlreadyRequestPermissions(Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Lcom/hjq/permissions/permission/base/IPermission;->getPermissionName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/hjq/permissions/permission/base/BasePermission;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p0}, Lcom/hjq/permissions/permission/base/IPermission;->getPermissionName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p1, v0}, Lcom/hjq/permissions/permission/base/BasePermission;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    :cond_1
    return v1
.end method

.method public isGrantedPermission(Landroid/content/Context;Z)Z
    .locals 2

    .line 1
    invoke-interface {p0, p1}, Lcom/hjq/permissions/permission/base/IPermission;->getFromAndroidVersion(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->getSdkVersion()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/hjq/permissions/permission/common/DangerousPermission;->isGrantedPermissionByLowVersion(Landroid/content/Context;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hjq/permissions/permission/common/DangerousPermission;->isGrantedPermissionByStandardVersion(Landroid/content/Context;Z)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public isGrantedPermissionByLowVersion(Landroid/content/Context;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isGrantedPermissionByStandardVersion(Landroid/content/Context;Z)Z
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
    invoke-interface {p0}, Lcom/hjq/permissions/permission/base/IPermission;->getPermissionName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p1, p2}, Lcom/hjq/permissions/permission/base/BasePermission;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public isRegisterPermissionByManifestFile()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
