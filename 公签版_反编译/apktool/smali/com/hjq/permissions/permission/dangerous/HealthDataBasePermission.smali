.class public abstract Lcom/hjq/permissions/permission/dangerous/HealthDataBasePermission;
.super Lcom/hjq/permissions/permission/common/DangerousPermission;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hjq/permissions/permission/common/DangerousPermission;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/common/DangerousPermission;-><init>(Landroid/os/Parcel;)V

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
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid16()Z

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid16()Z

    .line 8
    .line 9
    .line 10
    iget-object p2, p3, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->activityInfoList:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 p3, 0x0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    const-string p5, "android.intent.category.HEALTH_PERMISSIONS"

    .line 22
    .line 23
    const-string v0, "android.intent.action.VIEW_PERMISSION_USAGE"

    .line 24
    .line 25
    if-eqz p4, :cond_4

    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    check-cast p4, Lcom/hjq/permissions/manifest/node/ActivityManifestInfo;

    .line 32
    .line 33
    iget-object p4, p4, Lcom/hjq/permissions/manifest/node/ActivityManifestInfo;->intentFilterInfoList:Ljava/util/List;

    .line 34
    .line 35
    if-nez p4, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    :cond_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/hjq/permissions/manifest/node/IntentFilterManifestInfo;

    .line 53
    .line 54
    iget-object v2, v1, Lcom/hjq/permissions/manifest/node/IntentFilterManifestInfo;->actionList:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    iget-object v1, v1, Lcom/hjq/permissions/manifest/node/IntentFilterManifestInfo;->categoryList:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v1, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    const/4 p3, 0x1

    .line 71
    :cond_3
    if-eqz p3, :cond_0

    .line 72
    .line 73
    :cond_4
    if-eqz p3, :cond_5

    .line 74
    .line 75
    return-void

    .line 76
    :cond_5
    const-string p2, "\t\t<intent-filter>\n\t\t    <action android:name=\""

    .line 77
    .line 78
    const-string p3, "\" />\n\t\t    <category android:name=\""

    .line 79
    .line 80
    const-string p4, "\" />\n\t\t</intent-filter>"

    .line 81
    .line 82
    invoke-static {p2, v0, p3, p5, p4}, Lta/q;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    new-instance p4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string p5, "Please add an intent filter for \""

    .line 91
    .line 92
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, "\" in the AndroidManifest.xml file.\n"

    .line 103
    .line 104
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :goto_1
    throw p3

    .line 119
    :goto_2
    goto :goto_1
.end method

.method public getPermissionGroup(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, "health_group"

    .line 2
    .line 3
    return-object p1
.end method

.method public getPermissionPageType(Landroid/content/Context;)Lcom/hjq/permissions/permission/PermissionPageType;
    .locals 0

    .line 1
    sget-object p1, Lcom/hjq/permissions/permission/PermissionPageType;->OPAQUE_ACTIVITY:Lcom/hjq/permissions/permission/PermissionPageType;

    .line 2
    .line 3
    return-object p1
.end method

.method public getPermissionSettingIntents(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
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
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/permission/common/DangerousPermission;->getPermissionSettingIntents(Landroid/content/Context;Z)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid14()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid16()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid15()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Landroid/content/Intent;

    .line 30
    .line 31
    const-string v2, "android.health.connect.action.MANAGE_HEALTH_PERMISSIONS"

    .line 32
    .line 33
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    new-instance p1, Landroid/content/Intent;

    .line 49
    .line 50
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 57
    .line 58
    const-string v1, "android.health.connect.action.HEALTH_HOME_SETTINGS"

    .line 59
    .line 60
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    invoke-interface {p2, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    return-object p2
.end method
