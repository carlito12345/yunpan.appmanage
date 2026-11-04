.class public abstract synthetic Lcom/hjq/permissions/permission/special/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/app/usage/StorageStats;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic B(Landroid/app/usage/StorageStats;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    return-void
.end method

.method public static bridge synthetic C(Ljava/nio/file/attribute/DosFileAttributeView;Z)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/nio/file/attribute/DosFileAttributeView;->setSystem(Z)V

    return-void
.end method

.method public static bridge synthetic D(Ljava/nio/file/attribute/DosFileAttributeView;Z)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/nio/file/attribute/DosFileAttributeView;->setArchive(Z)V

    return-void
.end method

.method public static bridge synthetic a(Landroid/app/NotificationChannel;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/app/usage/StorageStats;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic c(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(ILandroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p0}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/app/usage/StorageStatsManager;Ljava/util/UUID;I)Landroid/app/usage/StorageStats;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/util/UUID;I)Landroid/app/usage/StorageStats;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/lang/Object;)Landroid/app/usage/StorageStatsManager;
    .locals 0

    .line 1
    check-cast p0, Landroid/app/usage/StorageStatsManager;

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/os/StrictMode$ThreadPolicy$Builder;)Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/nio/file/attribute/DosFileAttributeView;

    return-object v0
.end method

.method public static bridge synthetic i(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j()Ljava/nio/file/LinkOption;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    return-object v0
.end method

.method public static bridge synthetic k(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/lang/Object;)Ljava/nio/file/attribute/DosFileAttributeView;
    .locals 0

    .line 1
    check-cast p0, Ljava/nio/file/attribute/DosFileAttributeView;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic o()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    return-object v0
.end method

.method public static bridge synthetic p(Landroid/app/usage/StorageStats;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getAppBytes()J

    return-void
.end method

.method public static bridge synthetic q(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    return-void
.end method

.method public static bridge synthetic r(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/nio/file/Files;->setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)Ljava/nio/file/Path;

    return-void
.end method

.method public static bridge synthetic s(Ljava/nio/file/Path;Ljava/util/HashSet;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    return-void
.end method

.method public static bridge synthetic t(Ljava/nio/file/attribute/DosFileAttributeView;Z)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/nio/file/attribute/DosFileAttributeView;->setReadOnly(Z)V

    return-void
.end method

.method public static bridge synthetic u(Landroid/content/pm/PackageManager;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic w(Landroid/app/usage/StorageStats;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic x()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic y(Landroid/app/usage/StorageStats;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    return-void
.end method

.method public static bridge synthetic z(Ljava/nio/file/attribute/DosFileAttributeView;Z)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/nio/file/attribute/DosFileAttributeView;->setHidden(Z)V

    return-void
.end method
