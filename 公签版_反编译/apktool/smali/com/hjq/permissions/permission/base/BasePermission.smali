.class public abstract Lcom/hjq/permissions/permission/base/BasePermission;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hjq/permissions/permission/base/IPermission;


# static fields
.field public static final MODE_UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOpPermission(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/hjq/permissions/permission/base/BasePermission;->getOpPermissionMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    return p3

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static checkOpPermission(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->getOpPermissionMode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    return p2

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static checkPermissionRegistrationStatus(Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-static {p0, p1, v0}, Lcom/hjq/permissions/permission/base/BasePermission;->checkPermissionRegistrationStatus(Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;Ljava/lang/String;I)V

    return-void
.end method

.method public static checkPermissionRegistrationStatus(Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;Ljava/lang/String;I)V
    .locals 3

    if-eqz p0, :cond_2

    .line 5
    iget p0, p0, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->maxSdkVersion:I

    if-ge p0, p2, :cond_1

    .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The AndroidManifest.xml file <uses-permission android:name=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" android:maxSdkVersion=\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\" /> does not meet the requirements, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7fffffff

    if-eq p2, p1, :cond_0

    .line 7
    const-string p0, "the minimum requirement for maxSdkVersion is "

    .line 8
    invoke-static {p2, p0}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 9
    :cond_0
    const-string p1, "please delete the android:maxSdkVersion=\""

    const-string p2, "\" attribute"

    .line 10
    invoke-static {p1, p0, p2}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Please register permissions in the AndroidManifest.xml file <uses-permission android:name=\""

    const-string v0, "\" />"

    .line 13
    invoke-static {p2, p1, v0}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkPermissionRegistrationStatus(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 2
    invoke-static {p0, p1, v0}, Lcom/hjq/permissions/permission/base/BasePermission;->checkPermissionRegistrationStatus(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public static checkPermissionRegistrationStatus(Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->findPermissionInfoByList(Ljava/util/List;Ljava/lang/String;)Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/hjq/permissions/permission/base/BasePermission;->checkPermissionRegistrationStatus(Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;Ljava/lang/String;I)V

    return-void
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, La2/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static findPermissionInfoByList(Ljava/util/List;Ljava/lang/String;)Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->name:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0
.end method

.method public static getApplicationSettingIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getApplicationSettingsIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getManageApplicationSettingIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getManageApplicationSettingsIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getMinSdkVersion(Landroid/content/Context;Lcom/hjq/permissions/manifest/AndroidManifestInfo;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid7()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lq/t;->a(Landroid/content/pm/ApplicationInfo;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object p0, p1, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->usesSdkInfo:Lcom/hjq/permissions/manifest/node/UsesSdkManifestInfo;

    .line 19
    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget p0, p0, Lcom/hjq/permissions/manifest/node/UsesSdkManifestInfo;->minSdkVersion:I

    .line 24
    .line 25
    return p0

    .line 26
    :cond_2
    :goto_0
    const/16 p0, 0x11

    .line 27
    .line 28
    return p0
.end method

.method public static getOpPermissionMode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid6()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/hierynomus/security/jce/a;->e()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lr8/a;->i(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lm0/h;->g(Ljava/lang/Object;)Landroid/app/AppOpsManager;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lm0/h;->g(Ljava/lang/Object;)Landroid/app/AppOpsManager;

    move-result-object v0

    :goto_0
    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid10()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, v2, p0}, Lh4/e0;->b(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, v2, p0}, Lm0/h;->b(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 7
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static getOpPermissionMode(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 8
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid6()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-static {}, Lcom/hierynomus/security/jce/a;->e()Ljava/lang/Class;

    move-result-object v4

    invoke-static {p0, v4}, Lr8/a;->i(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lm0/h;->g(Ljava/lang/Object;)Landroid/app/AppOpsManager;

    move-result-object v4

    goto :goto_0

    .line 10
    :cond_0
    const-string v4, "appops"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lm0/h;->g(Ljava/lang/Object;)Landroid/app/AppOpsManager;

    move-result-object v4

    :goto_0
    const/4 v5, -0x1

    if-nez v4, :cond_1

    return v5

    .line 11
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/hierynomus/security/jce/a;->e()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v7, 0x0

    .line 13
    invoke-virtual {p1, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 14
    :catch_1
    :goto_1
    :try_start_2
    const-string p1, "checkOpNoThrow"

    new-array v7, v3, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    aput-object v8, v7, v1

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v0

    invoke-virtual {v6, p1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    aput-object v6, v3, v1

    aput-object p0, v3, v0

    invoke-virtual {p1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    .line 16
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v5
.end method

.method public static isExistOpPermission(Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/hierynomus/security/jce/a;->e()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :catch_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->getSdkVersion()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/16 v3, 0x1f

    .line 8
    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-class v3, Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    const-string v4, "shouldShowRequestPermissionRationale"

    .line 22
    .line 23
    new-array v5, v1, [Ljava/lang/Class;

    .line 24
    .line 25
    const-class v6, Ljava/lang/String;

    .line 26
    .line 27
    aput-object v6, v5, v0

    .line 28
    .line 29
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object p1, v1, v0

    .line 36
    .line 37
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return p0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    goto :goto_0

    .line 50
    :catch_1
    move-exception v0

    .line 51
    goto :goto_0

    .line 52
    :catch_2
    move-exception v0

    .line 53
    :goto_0
    invoke-static {v0}, Lm0/h;->s(Ljava/lang/ReflectiveOperationException;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-static {p0, p1}, Lr8/a;->p(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    return p0
.end method


# virtual methods
.method public checkCompliance(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/manifest/AndroidManifestInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Lcom/hjq/permissions/manifest/AndroidManifestInfo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->checkSelfByTargetSdkVersion(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    iget-object v4, p3, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->permissionInfoList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/hjq/permissions/permission/base/IPermission;->getPermissionName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v4, v0}, Lcom/hjq/permissions/permission/base/BasePermission;->findPermissionInfoByList(Ljava/util/List;Ljava/lang/String;)Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    move-object v0, p0

    .line 17
    move-object v1, p1

    .line 18
    move-object v2, p2

    .line 19
    move-object v3, p3

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/hjq/permissions/permission/base/BasePermission;->checkSelfByManifestFile(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/manifest/AndroidManifestInfo;Ljava/util/List;Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hjq/permissions/permission/base/BasePermission;->checkSelfByRequestPermissions(Landroid/app/Activity;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

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
    invoke-virtual {p0}, Lcom/hjq/permissions/permission/base/BasePermission;->isRegisterPermissionByManifestFile()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p0}, Lcom/hjq/permissions/permission/base/IPermission;->getPermissionName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p5, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->checkPermissionRegistrationStatus(Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
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

    return-void
.end method

.method public checkSelfByTargetSdkVersion(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->getMinTargetSdkVersion(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionVersion;->getTargetSdkVersion(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Request \""

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p0}, Lcom/hjq/permissions/permission/base/IPermission;->getPermissionName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, "\" permission, The targetSdkVersion SDK must be "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " or more, if you do not want to upgrade targetSdkVersion, please apply with the old permission"

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/hjq/permissions/permission/base/IPermission;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lcom/hjq/permissions/permission/base/IPermission;

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsPermission(Lcom/hjq/permissions/permission/base/IPermission;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsPermission(Lcom/hjq/permissions/permission/base/IPermission;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_2
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public getAndroidSettingIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getAndroidSettingsIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getApplicationDetailsSettingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/hjq/permissions/permission/base/IPermission;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getApplicationDetailsSettingsIntent(Landroid/content/Context;[Lcom/hjq/permissions/permission/base/IPermission;)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public synthetic getForegroundPermissions(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lr8/b;->b(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getMinTargetSdkVersion(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lr8/b;->c(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public synthetic getOldPermissions(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lr8/b;->d(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPackageNameUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionUtils;->getPackageNameUri(Landroid/content/Context;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic getPermissionGroup(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lr8/b;->e(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getPermissionSettingIntents(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lr8/b;->f(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getRequestIntervalTime(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lr8/b;->g(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public synthetic getResultWaitTime(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lr8/b;->h(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public synthetic isBackgroundPermission(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lr8/b;->i(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final synthetic isGrantedPermission(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lr8/b;->j(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public abstract isRegisterPermissionByManifestFile()Z
.end method

.method public synthetic isSupportRequestPermission(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lr8/b;->k(Lcom/hjq/permissions/permission/base/IPermission;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/hjq/permissions/permission/base/IPermission;->getPermissionName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
