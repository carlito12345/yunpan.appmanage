.class public abstract synthetic Lr8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/hjq/permissions/permission/base/IPermission;Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/manifest/AndroidManifestInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static b(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static c(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/hjq/permissions/permission/base/IPermission;->getFromAndroidVersion(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static d(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static e(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static f(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Ljava/util/List;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, p1, v0}, Lcom/hjq/permissions/permission/base/IPermission;->getPermissionSettingIntents(Landroid/content/Context;Z)Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static g(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public static h(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public static i(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/hjq/permissions/permission/base/IPermission;->getForegroundPermissions(Landroid/content/Context;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    xor-int/lit8 p0, p0, 0x1

    .line 14
    .line 15
    return p0
.end method

.method public static j(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, p1, v0}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static k(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/hjq/permissions/permission/base/IPermission;->getFromAndroidVersion(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->getSdkVersion()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-gt p0, p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method
