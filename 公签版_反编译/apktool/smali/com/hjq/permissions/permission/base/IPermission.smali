.class public interface abstract Lcom/hjq/permissions/permission/base/IPermission;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract checkCompliance(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/manifest/AndroidManifestInfo;)V
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
.end method

.method public abstract getForegroundPermissions(Landroid/content/Context;)Ljava/util/List;
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
.end method

.method public abstract getFromAndroidVersion(Landroid/content/Context;)I
.end method

.method public abstract getMinTargetSdkVersion(Landroid/content/Context;)I
.end method

.method public abstract getOldPermissions(Landroid/content/Context;)Ljava/util/List;
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
.end method

.method public abstract getPermissionChannel(Landroid/content/Context;)Lcom/hjq/permissions/permission/PermissionChannel;
.end method

.method public abstract getPermissionGroup(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getPermissionName()Ljava/lang/String;
.end method

.method public abstract getPermissionPageType(Landroid/content/Context;)Lcom/hjq/permissions/permission/PermissionPageType;
.end method

.method public abstract getPermissionSettingIntents(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPermissionSettingIntents(Landroid/content/Context;Z)Ljava/util/List;
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
.end method

.method public abstract getRequestIntervalTime(Landroid/content/Context;)I
.end method

.method public abstract getResultWaitTime(Landroid/content/Context;)I
.end method

.method public abstract isBackgroundPermission(Landroid/content/Context;)Z
.end method

.method public abstract isDoNotAskAgainPermission(Landroid/app/Activity;)Z
.end method

.method public abstract isGrantedPermission(Landroid/content/Context;)Z
.end method

.method public abstract isGrantedPermission(Landroid/content/Context;Z)Z
.end method

.method public abstract isSupportRequestPermission(Landroid/content/Context;)Z
.end method
