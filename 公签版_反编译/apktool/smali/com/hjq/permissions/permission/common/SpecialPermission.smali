.class public abstract Lcom/hjq/permissions/permission/common/SpecialPermission;
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
    sget-object p1, Lcom/hjq/permissions/permission/PermissionChannel;->START_ACTIVITY:Lcom/hjq/permissions/permission/PermissionChannel;

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

.method public getResultWaitTime(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/permission/base/BasePermission;->isSupportRequestPermission(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid11()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/16 v0, 0x12c

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/16 p1, 0xc8

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/16 p1, 0x12c

    .line 21
    .line 22
    :goto_0
    invoke-static {}, Lo8/b;->g()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_4

    .line 27
    .line 28
    sget v1, Lo8/b;->j:I

    .line 29
    .line 30
    const v2, 0x5e67d94a

    .line 31
    .line 32
    .line 33
    if-ne v1, v2, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const v2, -0xae345d4

    .line 37
    .line 38
    .line 39
    if-ne v1, v2, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move v0, p1

    .line 43
    goto :goto_2

    .line 44
    :cond_4
    :goto_1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid8()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_5

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_5
    const/16 v0, 0x1f4

    .line 52
    .line 53
    :goto_2
    return v0
.end method

.method public isDoNotAskAgainPermission(Landroid/app/Activity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isRegisterPermissionByManifestFile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
