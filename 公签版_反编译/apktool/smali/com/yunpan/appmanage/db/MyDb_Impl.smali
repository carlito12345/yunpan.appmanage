.class public final Lcom/yunpan/appmanage/db/MyDb_Impl;
.super Lcom/yunpan/appmanage/db/MyDb;
.source "SourceFile"


# instance fields
.field private volatile _apkFileDao:Lcom/yunpan/appmanage/db/ApkFileDao;

.field private volatile _appDao:Lcom/yunpan/appmanage/db/AppDao;

.field private volatile _fileInfoDao:Lcom/yunpan/appmanage/db/FileInfoDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yunpan/appmanage/db/MyDb;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/yunpan/appmanage/db/MyDb_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/p;->mCallbacks:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/yunpan/appmanage/db/MyDb_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/p;->mCallbacks:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/yunpan/appmanage/db/MyDb_Impl;Lc4/a;)Lc4/a;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/p;->mDatabase:Lc4/a;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$300(Lcom/yunpan/appmanage/db/MyDb_Impl;Lc4/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/p;->internalInitInvalidationTracker(Lc4/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/yunpan/appmanage/db/MyDb_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/p;->mCallbacks:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    .line 1
    const-string v0, "VACUUM"

    .line 2
    .line 3
    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 4
    .line 5
    invoke-super {p0}, Landroidx/room/p;->assertNotMainThread()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/room/p;->getOpenHelper()Lc4/b;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ld4/g;

    .line 13
    .line 14
    invoke-virtual {v2}, Ld4/g;->r()Lc4/a;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :try_start_0
    invoke-super {p0}, Landroidx/room/p;->beginTransaction()V

    .line 19
    .line 20
    .line 21
    const-string v3, "DELETE FROM `fileList`"

    .line 22
    .line 23
    invoke-interface {v2, v3}, Lc4/a;->d(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v3, "DELETE FROM `apkFiles`"

    .line 27
    .line 28
    invoke-interface {v2, v3}, Lc4/a;->d(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v3, "DELETE FROM `app`"

    .line 32
    .line 33
    invoke-interface {v2, v3}, Lc4/a;->d(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-super {p0}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-super {p0}, Landroidx/room/p;->endTransaction()V

    .line 40
    .line 41
    .line 42
    invoke-interface {v2, v1}, Lc4/a;->s(Ljava/lang/String;)Landroid/database/Cursor;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 47
    .line 48
    .line 49
    invoke-interface {v2}, Lc4/a;->C()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    invoke-interface {v2, v0}, Lc4/a;->d(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void

    .line 59
    :catchall_0
    move-exception v3

    .line 60
    invoke-super {p0}, Landroidx/room/p;->endTransaction()V

    .line 61
    .line 62
    .line 63
    invoke-interface {v2, v1}, Lc4/a;->s(Ljava/lang/String;)Landroid/database/Cursor;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 68
    .line 69
    .line 70
    invoke-interface {v2}, Lc4/a;->C()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_1

    .line 75
    .line 76
    invoke-interface {v2, v0}, Lc4/a;->d(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    throw v3
.end method

.method public createInvalidationTracker()Landroidx/room/k;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Landroidx/room/k;

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    new-array v4, v4, [Ljava/lang/String;

    .line 16
    .line 17
    const-string v5, "fileList"

    .line 18
    .line 19
    aput-object v5, v4, v1

    .line 20
    .line 21
    const-string v1, "apkFiles"

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    aput-object v1, v4, v5

    .line 25
    .line 26
    const-string v1, "app"

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    aput-object v1, v4, v5

    .line 30
    .line 31
    invoke-direct {v3, p0, v0, v2, v4}, Landroidx/room/k;-><init>(Lcom/yunpan/appmanage/db/MyDb_Impl;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v3
.end method

.method public createOpenHelper(Landroidx/room/c;)Lc4/b;
    .locals 3

    .line 1
    new-instance v0, Landroidx/room/s;

    .line 2
    .line 3
    new-instance v1, Lcom/yunpan/appmanage/db/MyDb_Impl$1;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/yunpan/appmanage/db/MyDb_Impl$1;-><init>(Lcom/yunpan/appmanage/db/MyDb_Impl;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Landroidx/room/s;-><init>(Landroidx/room/c;Landroidx/room/q;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Landroidx/room/c;->a:Landroid/content/Context;

    .line 13
    .line 14
    new-instance v1, Ld4/g;

    .line 15
    .line 16
    const-string v2, "files2.db"

    .line 17
    .line 18
    invoke-direct {v1, p1, v2, v0}, Ld4/g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/s;)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public getApkFileDao()Lcom/yunpan/appmanage/db/ApkFileDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl;->_apkFileDao:Lcom/yunpan/appmanage/db/ApkFileDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl;->_apkFileDao:Lcom/yunpan/appmanage/db/ApkFileDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl;->_apkFileDao:Lcom/yunpan/appmanage/db/ApkFileDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;-><init>(Landroidx/room/p;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl;->_apkFileDao:Lcom/yunpan/appmanage/db/ApkFileDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl;->_apkFileDao:Lcom/yunpan/appmanage/db/ApkFileDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public getAppDao()Lcom/yunpan/appmanage/db/AppDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl;->_appDao:Lcom/yunpan/appmanage/db/AppDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl;->_appDao:Lcom/yunpan/appmanage/db/AppDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl;->_appDao:Lcom/yunpan/appmanage/db/AppDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/yunpan/appmanage/db/AppDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/yunpan/appmanage/db/AppDao_Impl;-><init>(Landroidx/room/p;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl;->_appDao:Lcom/yunpan/appmanage/db/AppDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl;->_appDao:Lcom/yunpan/appmanage/db/AppDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl;->_fileInfoDao:Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl;->_fileInfoDao:Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl;->_fileInfoDao:Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;-><init>(Landroidx/room/p;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl;->_fileInfoDao:Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl;->_fileInfoDao:Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 7
    .line 8
    invoke-static {}, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->getRequiredConverters()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-class v1, Lcom/yunpan/appmanage/db/ApkFileDao;

    .line 16
    .line 17
    invoke-static {}, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->getRequiredConverters()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-class v1, Lcom/yunpan/appmanage/db/AppDao;

    .line 25
    .line 26
    invoke-static {}, Lcom/yunpan/appmanage/db/AppDao_Impl;->getRequiredConverters()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
