.class public final Lcom/yunpan/appmanage/db/AppDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yunpan/appmanage/db/AppDao;


# instance fields
.field private final __db:Landroidx/room/p;

.field private final __insertionAdapterOfAppBean:Landroidx/room/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/e;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAll:Landroidx/room/v;

.field private final __preparedStmtOfDeletePackageName:Landroidx/room/v;


# direct methods
.method public constructor <init>(Landroidx/room/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 5
    .line 6
    new-instance v0, Lcom/yunpan/appmanage/db/AppDao_Impl$1;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/AppDao_Impl$1;-><init>(Lcom/yunpan/appmanage/db/AppDao_Impl;Landroidx/room/p;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__insertionAdapterOfAppBean:Landroidx/room/e;

    .line 12
    .line 13
    new-instance v0, Lcom/yunpan/appmanage/db/AppDao_Impl$2;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/AppDao_Impl$2;-><init>(Lcom/yunpan/appmanage/db/AppDao_Impl;Landroidx/room/p;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/v;

    .line 19
    .line 20
    new-instance v0, Lcom/yunpan/appmanage/db/AppDao_Impl$3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/AppDao_Impl$3;-><init>(Lcom/yunpan/appmanage/db/AppDao_Impl;Landroidx/room/p;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__preparedStmtOfDeletePackageName:Landroidx/room/v;

    .line 26
    .line 27
    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public deleteAll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/v;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/v;->acquire()Lc4/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/room/p;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :try_start_1
    invoke-interface {v0}, Lc4/e;->f()I

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_2
    iget-object v1, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/room/p;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/v;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception v1

    .line 39
    :try_start_3
    iget-object v2, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroidx/room/p;->endTransaction()V

    .line 42
    .line 43
    .line 44
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :goto_0
    iget-object v2, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/v;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 48
    .line 49
    .line 50
    throw v1
.end method

.method public deletePackageName(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__preparedStmtOfDeletePackageName:Landroidx/room/v;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/v;->acquire()Lc4/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lc4/c;->y(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v0, v1, p1}, Lc4/c;->e(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/room/p;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    :try_start_1
    invoke-interface {v0}, Lc4/e;->f()I

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    :try_start_2
    iget-object p1, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/room/p;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__preparedStmtOfDeletePackageName:Landroidx/room/v;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :catchall_1
    move-exception p1

    .line 49
    :try_start_3
    iget-object v1, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/room/p;->endTransaction()V

    .line 52
    .line 53
    .line 54
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    :goto_1
    iget-object v1, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__preparedStmtOfDeletePackageName:Landroidx/room/v;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    const-string v2, "select * from app where pack=?"

    const/4 v3, 0x1

    invoke-static {v3, v2}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    move-result-object v2

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {v2, v3}, Landroidx/room/t;->y(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/t;->e(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 5
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    invoke-static {v0, v2}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    move-result-object v4

    .line 6
    :try_start_0
    const-string v0, "name"

    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 7
    const-string v5, "pack"

    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 8
    const-string v6, "apkPath"

    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 9
    const-string v7, "apkParentPath"

    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 10
    const-string v8, "dataDir"

    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 11
    const-string v9, "uid"

    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 12
    const-string v10, "isSystem"

    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 13
    const-string v11, "isHide"

    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 14
    const-string v12, "isDisable"

    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 15
    const-string v13, "isCanStart"

    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 16
    const-string v14, "isUnInstall"

    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 17
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    const/4 v3, 0x0

    if-eqz v15, :cond_b

    .line 18
    new-instance v15, Lcom/yunpan/appmanage/db/AppBean;

    invoke-direct {v15}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 19
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 20
    iput-object v3, v15, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 21
    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 22
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    iput-object v3, v15, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    goto :goto_2

    .line 24
    :cond_2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 25
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    iput-object v3, v15, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    goto :goto_3

    .line 27
    :cond_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 28
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    iput-object v3, v15, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    goto :goto_4

    .line 30
    :cond_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 31
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    iput-object v3, v15, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    goto :goto_5

    .line 33
    :cond_5
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 34
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 35
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    .line 36
    :goto_6
    iput-boolean v0, v15, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 37
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    .line 38
    :goto_7
    iput-boolean v0, v15, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 39
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    .line 40
    :goto_8
    iput-boolean v0, v15, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 41
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    .line 42
    :goto_9
    iput-boolean v0, v15, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 43
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v3, 0x1

    .line 44
    :cond_a
    iput-boolean v3, v15, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v15

    .line 45
    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 46
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    return-object v3

    .line 47
    :goto_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 48
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 49
    throw v0
.end method

.method public get_appBean(I)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 50
    const-string v0, "select * from app where uid=?"

    const/4 v2, 0x1

    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    .line 51
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/t;->m(IJ)V

    .line 52
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 53
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    move-result-object v4

    .line 54
    :try_start_0
    const-string v0, "name"

    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 55
    const-string v5, "pack"

    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 56
    const-string v6, "apkPath"

    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 57
    const-string v7, "apkParentPath"

    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 58
    const-string v8, "dataDir"

    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 59
    const-string v9, "uid"

    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 60
    const-string v10, "isSystem"

    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 61
    const-string v11, "isHide"

    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 62
    const-string v12, "isDisable"

    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 63
    const-string v13, "isCanStart"

    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 64
    const-string v14, "isUnInstall"

    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 65
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 67
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 68
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    const/4 v1, 0x0

    if-eqz v16, :cond_0

    .line 69
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    .line 70
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 71
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 72
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    goto :goto_2

    .line 73
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 74
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 75
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    goto :goto_3

    .line 76
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 77
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 78
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    goto :goto_4

    .line 79
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 80
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 81
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    goto :goto_5

    .line 82
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 83
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 84
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v16, 0x0

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 85
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 86
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    .line 87
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 88
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    .line 89
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 90
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 91
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 92
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 93
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 94
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 95
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 96
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    return-object v15

    .line 97
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 98
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 99
    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method

.method public get_appBean_name(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "select * from app where name=?"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v3, v2}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroidx/room/t;->y(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/t;->e(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :try_start_0
    const-string v0, "name"

    .line 33
    .line 34
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const-string v5, "pack"

    .line 39
    .line 40
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, "apkPath"

    .line 45
    .line 46
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const-string v7, "apkParentPath"

    .line 51
    .line 52
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const-string v8, "dataDir"

    .line 57
    .line 58
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const-string v9, "uid"

    .line 63
    .line 64
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const-string v10, "isSystem"

    .line 69
    .line 70
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const-string v11, "isHide"

    .line 75
    .line 76
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    const-string v12, "isDisable"

    .line 81
    .line 82
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    const-string v13, "isCanStart"

    .line 87
    .line 88
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    const-string v14, "isUnInstall"

    .line 93
    .line 94
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    const/4 v3, 0x0

    .line 103
    if-eqz v15, :cond_b

    .line 104
    .line 105
    new-instance v15, Lcom/yunpan/appmanage/db/AppBean;

    .line 106
    .line 107
    invoke-direct {v15}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 111
    .line 112
    .line 113
    move-result v16

    .line 114
    if-eqz v16, :cond_1

    .line 115
    .line 116
    iput-object v3, v15, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    goto/16 :goto_a

    .line 121
    .line 122
    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, v15, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 127
    .line 128
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_2

    .line 133
    .line 134
    iput-object v3, v15, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iput-object v0, v15, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 142
    .line 143
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    iput-object v3, v15, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, v15, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_4

    .line 163
    .line 164
    iput-object v3, v15, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iput-object v0, v15, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 172
    .line 173
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_5

    .line 178
    .line 179
    iput-object v3, v15, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_5
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iput-object v0, v15, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 187
    .line 188
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    iput v0, v15, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 193
    .line 194
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    const/4 v3, 0x0

    .line 199
    if-eqz v0, :cond_6

    .line 200
    .line 201
    const/4 v0, 0x1

    .line 202
    goto :goto_6

    .line 203
    :cond_6
    const/4 v0, 0x0

    .line 204
    :goto_6
    iput-boolean v0, v15, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 205
    .line 206
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_7

    .line 211
    .line 212
    const/4 v0, 0x1

    .line 213
    goto :goto_7

    .line 214
    :cond_7
    const/4 v0, 0x0

    .line 215
    :goto_7
    iput-boolean v0, v15, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 216
    .line 217
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_8

    .line 222
    .line 223
    const/4 v0, 0x1

    .line 224
    goto :goto_8

    .line 225
    :cond_8
    const/4 v0, 0x0

    .line 226
    :goto_8
    iput-boolean v0, v15, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 227
    .line 228
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_9

    .line 233
    .line 234
    const/4 v0, 0x1

    .line 235
    goto :goto_9

    .line 236
    :cond_9
    const/4 v0, 0x0

    .line 237
    :goto_9
    iput-boolean v0, v15, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 238
    .line 239
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_a

    .line 244
    .line 245
    const/4 v3, 0x1

    .line 246
    :cond_a
    iput-boolean v3, v15, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .line 248
    move-object v3, v15

    .line 249
    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 253
    .line 254
    .line 255
    return-object v3

    .line 256
    :goto_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 260
    .line 261
    .line 262
    throw v0
.end method

.method public get_app_NoCanStart()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "select * from app where isUnInstall=0 and isCanStart=0"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "name"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "pack"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "apkPath"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "apkParentPath"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "dataDir"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isSystem"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isHide"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "isDisable"

    .line 70
    .line 71
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "isCanStart"

    .line 76
    .line 77
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "isUnInstall"

    .line 82
    .line 83
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    new-instance v15, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    const/4 v1, 0x0

    .line 112
    if-eqz v16, :cond_0

    .line 113
    .line 114
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_b

    .line 119
    .line 120
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 173
    .line 174
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 195
    .line 196
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_5
    const/4 v1, 0x0

    .line 207
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 208
    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 219
    .line 220
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 230
    .line 231
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 241
    .line 242
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 252
    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 264
    .line 265
    .line 266
    return-object v15

    .line 267
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :goto_c
    throw v0

    .line 275
    :goto_d
    goto :goto_c
.end method

.method public get_app_all()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "select * from app"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "name"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "pack"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "apkPath"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "apkParentPath"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "dataDir"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isSystem"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isHide"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "isDisable"

    .line 70
    .line 71
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "isCanStart"

    .line 76
    .line 77
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "isUnInstall"

    .line 82
    .line 83
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    new-instance v15, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    const/4 v1, 0x0

    .line 112
    if-eqz v16, :cond_0

    .line 113
    .line 114
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_b

    .line 119
    .line 120
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 173
    .line 174
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 195
    .line 196
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_5
    const/4 v1, 0x0

    .line 207
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 208
    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 219
    .line 220
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 230
    .line 231
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 241
    .line 242
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 252
    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 264
    .line 265
    .line 266
    return-object v15

    .line 267
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :goto_c
    throw v0

    .line 275
    :goto_d
    goto :goto_c
.end method

.method public get_app_all_order()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "SELECT * FROM app ORDER BY CASE WHEN isCanStart = 1 THEN 0 ELSE 1 END, CASE WHEN apkPath = \'\' THEN 1 ELSE 0 END, CASE WHEN isUnInstall = 1 THEN 1 ELSE 0 END, CASE WHEN isHide = 1 THEN 1 ELSE 0 END, CASE WHEN isDisable = 1 THEN 1 ELSE 0 END"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "name"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "pack"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "apkPath"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "apkParentPath"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "dataDir"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isSystem"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isHide"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "isDisable"

    .line 70
    .line 71
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "isCanStart"

    .line 76
    .line 77
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "isUnInstall"

    .line 82
    .line 83
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    new-instance v15, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    const/4 v1, 0x0

    .line 112
    if-eqz v16, :cond_0

    .line 113
    .line 114
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_b

    .line 119
    .line 120
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 173
    .line 174
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 195
    .line 196
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_5
    const/4 v1, 0x0

    .line 207
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 208
    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 219
    .line 220
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 230
    .line 231
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 241
    .line 242
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 252
    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 264
    .line 265
    .line 266
    return-object v15

    .line 267
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :goto_c
    throw v0

    .line 275
    :goto_d
    goto :goto_c
.end method

.method public get_app_canStart()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "select * from app where isUnInstall=0 and isCanStart=1"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "name"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "pack"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "apkPath"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "apkParentPath"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "dataDir"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isSystem"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isHide"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "isDisable"

    .line 70
    .line 71
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "isCanStart"

    .line 76
    .line 77
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "isUnInstall"

    .line 82
    .line 83
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    new-instance v15, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    const/4 v1, 0x0

    .line 112
    if-eqz v16, :cond_0

    .line 113
    .line 114
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_b

    .line 119
    .line 120
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 173
    .line 174
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 195
    .line 196
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_5
    const/4 v1, 0x0

    .line 207
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 208
    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 219
    .line 220
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 230
    .line 231
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 241
    .line 242
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 252
    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 264
    .line 265
    .line 266
    return-object v15

    .line 267
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :goto_c
    throw v0

    .line 275
    :goto_d
    goto :goto_c
.end method

.method public get_app_canStart_noUnInstall_noDisable()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "select * from app where isCanStart=1 and isUnInstall=0 and isDisable=0"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "name"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "pack"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "apkPath"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "apkParentPath"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "dataDir"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isSystem"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isHide"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "isDisable"

    .line 70
    .line 71
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "isCanStart"

    .line 76
    .line 77
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "isUnInstall"

    .line 82
    .line 83
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    new-instance v15, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    const/4 v1, 0x0

    .line 112
    if-eqz v16, :cond_0

    .line 113
    .line 114
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_b

    .line 119
    .line 120
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 173
    .line 174
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 195
    .line 196
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_5
    const/4 v1, 0x0

    .line 207
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 208
    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 219
    .line 220
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 230
    .line 231
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 241
    .line 242
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 252
    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 264
    .line 265
    .line 266
    return-object v15

    .line 267
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :goto_c
    throw v0

    .line 275
    :goto_d
    goto :goto_c
.end method

.method public get_app_disable()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "select * from app where isDisable=1"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "name"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "pack"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "apkPath"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "apkParentPath"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "dataDir"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isSystem"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isHide"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "isDisable"

    .line 70
    .line 71
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "isCanStart"

    .line 76
    .line 77
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "isUnInstall"

    .line 82
    .line 83
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    new-instance v15, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    const/4 v1, 0x0

    .line 112
    if-eqz v16, :cond_0

    .line 113
    .line 114
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_b

    .line 119
    .line 120
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 173
    .line 174
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 195
    .line 196
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_5
    const/4 v1, 0x0

    .line 207
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 208
    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 219
    .line 220
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 230
    .line 231
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 241
    .line 242
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 252
    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 264
    .line 265
    .line 266
    return-object v15

    .line 267
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :goto_c
    throw v0

    .line 275
    :goto_d
    goto :goto_c
.end method

.method public get_app_hide()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "select * from app where isHide=1 and isUnInstall=0"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "name"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "pack"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "apkPath"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "apkParentPath"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "dataDir"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isSystem"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isHide"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "isDisable"

    .line 70
    .line 71
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "isCanStart"

    .line 76
    .line 77
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "isUnInstall"

    .line 82
    .line 83
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    new-instance v15, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    const/4 v1, 0x0

    .line 112
    if-eqz v16, :cond_0

    .line 113
    .line 114
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_b

    .line 119
    .line 120
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 173
    .line 174
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 195
    .line 196
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_5
    const/4 v1, 0x0

    .line 207
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 208
    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 219
    .line 220
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 230
    .line 231
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 241
    .line 242
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 252
    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 264
    .line 265
    .line 266
    return-object v15

    .line 267
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :goto_c
    throw v0

    .line 275
    :goto_d
    goto :goto_c
.end method

.method public get_app_noCanStart_noHide_noUnInstall_noDisable()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "select * from app where isCanStart=0 and isHide=0 and isUnInstall=0 and isDisable=0 and apkPath!=\'\'"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "name"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "pack"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "apkPath"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "apkParentPath"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "dataDir"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isSystem"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isHide"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "isDisable"

    .line 70
    .line 71
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "isCanStart"

    .line 76
    .line 77
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "isUnInstall"

    .line 82
    .line 83
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    new-instance v15, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    const/4 v1, 0x0

    .line 112
    if-eqz v16, :cond_0

    .line 113
    .line 114
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_b

    .line 119
    .line 120
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 173
    .line 174
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 195
    .line 196
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_5
    const/4 v1, 0x0

    .line 207
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 208
    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 219
    .line 220
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 230
    .line 231
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 241
    .line 242
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 252
    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 264
    .line 265
    .line 266
    return-object v15

    .line 267
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :goto_c
    throw v0

    .line 275
    :goto_d
    goto :goto_c
.end method

.method public get_app_noHide_noUnInstall_noDisable()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "select * from app where isHide=0 and isUnInstall=0 and isDisable=0"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "name"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "pack"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "apkPath"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "apkParentPath"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "dataDir"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isSystem"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isHide"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "isDisable"

    .line 70
    .line 71
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "isCanStart"

    .line 76
    .line 77
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "isUnInstall"

    .line 82
    .line 83
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    new-instance v15, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    const/4 v1, 0x0

    .line 112
    if-eqz v16, :cond_0

    .line 113
    .line 114
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_b

    .line 119
    .line 120
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 173
    .line 174
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 195
    .line 196
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_5
    const/4 v1, 0x0

    .line 207
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 208
    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 219
    .line 220
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 230
    .line 231
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 241
    .line 242
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 252
    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 264
    .line 265
    .line 266
    return-object v15

    .line 267
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :goto_c
    throw v0

    .line 275
    :goto_d
    goto :goto_c
.end method

.method public get_app_storage()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "select * from app where uid>5000 and isHide=0 and isUnInstall=0 and isCanStart=1"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "name"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "pack"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "apkPath"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "apkParentPath"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "dataDir"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isSystem"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isHide"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "isDisable"

    .line 70
    .line 71
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "isCanStart"

    .line 76
    .line 77
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "isUnInstall"

    .line 82
    .line 83
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    new-instance v15, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    const/4 v1, 0x0

    .line 112
    if-eqz v16, :cond_0

    .line 113
    .line 114
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_b

    .line 119
    .line 120
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 173
    .line 174
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 195
    .line 196
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_5
    const/4 v1, 0x0

    .line 207
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 208
    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 219
    .line 220
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 230
    .line 231
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 241
    .line 242
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 252
    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 264
    .line 265
    .line 266
    return-object v15

    .line 267
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :goto_c
    throw v0

    .line 275
    :goto_d
    goto :goto_c
.end method

.method public get_app_system()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "select * from app where isSystem=1"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "name"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "pack"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "apkPath"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "apkParentPath"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "dataDir"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isSystem"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isHide"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "isDisable"

    .line 70
    .line 71
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "isCanStart"

    .line 76
    .line 77
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "isUnInstall"

    .line 82
    .line 83
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    new-instance v15, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    const/4 v1, 0x0

    .line 112
    if-eqz v16, :cond_0

    .line 113
    .line 114
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_b

    .line 119
    .line 120
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 173
    .line 174
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 195
    .line 196
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_5
    const/4 v1, 0x0

    .line 207
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 208
    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 219
    .line 220
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 230
    .line 231
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 241
    .line 242
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 252
    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 264
    .line 265
    .line 266
    return-object v15

    .line 267
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :goto_c
    throw v0

    .line 275
    :goto_d
    goto :goto_c
.end method

.method public get_app_system_canStart_noHide_noUnInstall_noDisable()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "select * from app where isSystem=1 and isCanStart=1 and isHide=0 and isUnInstall=0 and isDisable=0"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "name"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "pack"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "apkPath"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "apkParentPath"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "dataDir"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isSystem"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isHide"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "isDisable"

    .line 70
    .line 71
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "isCanStart"

    .line 76
    .line 77
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "isUnInstall"

    .line 82
    .line 83
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    new-instance v15, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    const/4 v1, 0x0

    .line 112
    if-eqz v16, :cond_0

    .line 113
    .line 114
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_b

    .line 119
    .line 120
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 173
    .line 174
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 195
    .line 196
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_5
    const/4 v1, 0x0

    .line 207
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 208
    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 219
    .line 220
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 230
    .line 231
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 241
    .line 242
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 252
    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 264
    .line 265
    .line 266
    return-object v15

    .line 267
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :goto_c
    throw v0

    .line 275
    :goto_d
    goto :goto_c
.end method

.method public get_app_unInstall()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "select * from app where isUnInstall=1"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "name"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "pack"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "apkPath"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "apkParentPath"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "dataDir"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isSystem"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isHide"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "isDisable"

    .line 70
    .line 71
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "isCanStart"

    .line 76
    .line 77
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "isUnInstall"

    .line 82
    .line 83
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    new-instance v15, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    const/4 v1, 0x0

    .line 112
    if-eqz v16, :cond_0

    .line 113
    .line 114
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_b

    .line 119
    .line 120
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 173
    .line 174
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 195
    .line 196
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_5
    const/4 v1, 0x0

    .line 207
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 208
    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 219
    .line 220
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 230
    .line 231
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 241
    .line 242
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 252
    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 264
    .line 265
    .line 266
    return-object v15

    .line 267
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :goto_c
    throw v0

    .line 275
    :goto_d
    goto :goto_c
.end method

.method public get_app_unInstallHashDate()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "select * from app where apkPath=\'\'"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "name"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "pack"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "apkPath"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "apkParentPath"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "dataDir"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isSystem"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isHide"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "isDisable"

    .line 70
    .line 71
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "isCanStart"

    .line 76
    .line 77
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "isUnInstall"

    .line 82
    .line 83
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    new-instance v15, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    const/4 v1, 0x0

    .line 112
    if-eqz v16, :cond_0

    .line 113
    .line 114
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_b

    .line 119
    .line 120
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 173
    .line 174
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 195
    .line 196
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_5
    const/4 v1, 0x0

    .line 207
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 208
    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 219
    .line 220
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 230
    .line 231
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 241
    .line 242
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 252
    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 264
    .line 265
    .line 266
    return-object v15

    .line 267
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :goto_c
    throw v0

    .line 275
    :goto_d
    goto :goto_c
.end method

.method public get_app_user()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "select * from app where isSystem=0"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "name"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "pack"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "apkPath"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "apkParentPath"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "dataDir"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isSystem"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isHide"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "isDisable"

    .line 70
    .line 71
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "isCanStart"

    .line 76
    .line 77
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "isUnInstall"

    .line 82
    .line 83
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    new-instance v15, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    const/4 v1, 0x0

    .line 112
    if-eqz v16, :cond_0

    .line 113
    .line 114
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_b

    .line 119
    .line 120
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 173
    .line 174
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 195
    .line 196
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_5
    const/4 v1, 0x0

    .line 207
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 208
    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 219
    .line 220
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 230
    .line 231
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 241
    .line 242
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 252
    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 264
    .line 265
    .line 266
    return-object v15

    .line 267
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :goto_c
    throw v0

    .line 275
    :goto_d
    goto :goto_c
.end method

.method public get_app_user_canStart_noHide_noUnInstall_noDisable()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "select * from app where isSystem=0 and isCanStart=1 and isHide=0 and isUnInstall=0 and isDisable=0"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "name"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "pack"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "apkPath"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "apkParentPath"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "dataDir"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isSystem"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isHide"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "isDisable"

    .line 70
    .line 71
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "isCanStart"

    .line 76
    .line 77
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "isUnInstall"

    .line 82
    .line 83
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    new-instance v15, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    const/4 v1, 0x0

    .line 112
    if-eqz v16, :cond_0

    .line 113
    .line 114
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_b

    .line 119
    .line 120
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 173
    .line 174
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 195
    .line 196
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_5
    const/4 v1, 0x0

    .line 207
    :goto_6
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 208
    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 219
    .line 220
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 230
    .line 231
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 241
    .line 242
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 252
    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 264
    .line 265
    .line 266
    return-object v15

    .line 267
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :goto_c
    throw v0

    .line 275
    :goto_d
    goto :goto_c
.end method

.method public insert(Lcom/yunpan/appmanage/db/AppBean;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/p;->beginTransaction()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__insertionAdapterOfAppBean:Landroidx/room/e;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/room/e;->insertAndReturnId(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-object p1, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/room/p;->endTransaction()V

    .line 25
    .line 26
    .line 27
    return-wide v0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    iget-object v0, p0, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/room/p;->endTransaction()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public isAppDir(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "select * from app where apkParentPath=?"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v3, v2}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroidx/room/t;->y(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/t;->e(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :try_start_0
    const-string v0, "name"

    .line 33
    .line 34
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const-string v5, "pack"

    .line 39
    .line 40
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, "apkPath"

    .line 45
    .line 46
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const-string v7, "apkParentPath"

    .line 51
    .line 52
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const-string v8, "dataDir"

    .line 57
    .line 58
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const-string v9, "uid"

    .line 63
    .line 64
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const-string v10, "isSystem"

    .line 69
    .line 70
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const-string v11, "isHide"

    .line 75
    .line 76
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    const-string v12, "isDisable"

    .line 81
    .line 82
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    const-string v13, "isCanStart"

    .line 87
    .line 88
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    const-string v14, "isUnInstall"

    .line 93
    .line 94
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    const/4 v3, 0x0

    .line 103
    if-eqz v15, :cond_b

    .line 104
    .line 105
    new-instance v15, Lcom/yunpan/appmanage/db/AppBean;

    .line 106
    .line 107
    invoke-direct {v15}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 111
    .line 112
    .line 113
    move-result v16

    .line 114
    if-eqz v16, :cond_1

    .line 115
    .line 116
    iput-object v3, v15, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    goto/16 :goto_a

    .line 121
    .line 122
    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, v15, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 127
    .line 128
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_2

    .line 133
    .line 134
    iput-object v3, v15, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iput-object v0, v15, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 142
    .line 143
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    iput-object v3, v15, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, v15, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_4

    .line 163
    .line 164
    iput-object v3, v15, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iput-object v0, v15, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 172
    .line 173
    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_5

    .line 178
    .line 179
    iput-object v3, v15, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_5
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iput-object v0, v15, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 187
    .line 188
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    iput v0, v15, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 193
    .line 194
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    const/4 v3, 0x0

    .line 199
    if-eqz v0, :cond_6

    .line 200
    .line 201
    const/4 v0, 0x1

    .line 202
    goto :goto_6

    .line 203
    :cond_6
    const/4 v0, 0x0

    .line 204
    :goto_6
    iput-boolean v0, v15, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 205
    .line 206
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_7

    .line 211
    .line 212
    const/4 v0, 0x1

    .line 213
    goto :goto_7

    .line 214
    :cond_7
    const/4 v0, 0x0

    .line 215
    :goto_7
    iput-boolean v0, v15, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 216
    .line 217
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_8

    .line 222
    .line 223
    const/4 v0, 0x1

    .line 224
    goto :goto_8

    .line 225
    :cond_8
    const/4 v0, 0x0

    .line 226
    :goto_8
    iput-boolean v0, v15, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 227
    .line 228
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_9

    .line 233
    .line 234
    const/4 v0, 0x1

    .line 235
    goto :goto_9

    .line 236
    :cond_9
    const/4 v0, 0x0

    .line 237
    :goto_9
    iput-boolean v0, v15, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 238
    .line 239
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_a

    .line 244
    .line 245
    const/4 v3, 0x1

    .line 246
    :cond_a
    iput-boolean v3, v15, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .line 248
    move-object v3, v15

    .line 249
    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 253
    .line 254
    .line 255
    return-object v3

    .line 256
    :goto_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 260
    .line 261
    .line 262
    throw v0
.end method

.method public search_name(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "SELECT * FROM app WHERE LOWER(name) LIKE \'%\' || LOWER(?) || \'%\'"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v3, v2}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroidx/room/t;->y(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/t;->e(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :try_start_0
    const-string v0, "name"

    .line 33
    .line 34
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const-string v5, "pack"

    .line 39
    .line 40
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, "apkPath"

    .line 45
    .line 46
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const-string v7, "apkParentPath"

    .line 51
    .line 52
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const-string v8, "dataDir"

    .line 57
    .line 58
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const-string v9, "uid"

    .line 63
    .line 64
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const-string v10, "isSystem"

    .line 69
    .line 70
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const-string v11, "isHide"

    .line 75
    .line 76
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    const-string v12, "isDisable"

    .line 81
    .line 82
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    const-string v13, "isCanStart"

    .line 87
    .line 88
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    const-string v14, "isUnInstall"

    .line 93
    .line 94
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    new-instance v15, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_b

    .line 112
    .line 113
    new-instance v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 114
    .line 115
    invoke-direct {v3}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 119
    .line 120
    .line 121
    move-result v16

    .line 122
    const/4 v1, 0x0

    .line 123
    if-eqz v16, :cond_1

    .line 124
    .line 125
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    goto/16 :goto_c

    .line 130
    .line 131
    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 136
    .line 137
    :goto_2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_2

    .line 142
    .line 143
    const/4 v1, 0x0

    .line 144
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 152
    .line 153
    :goto_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_3

    .line 158
    .line 159
    const/4 v1, 0x0

    .line 160
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 168
    .line 169
    :goto_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_4

    .line 174
    .line 175
    const/4 v1, 0x0

    .line 176
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 184
    .line 185
    :goto_5
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_5

    .line 190
    .line 191
    const/4 v1, 0x0

    .line 192
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_5
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 200
    .line 201
    :goto_6
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    iput v1, v3, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 206
    .line 207
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    const/16 v16, 0x0

    .line 212
    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v3, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 219
    .line 220
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v3, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 230
    .line 231
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v3, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 241
    .line 242
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v3, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 252
    .line 253
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_a

    .line 258
    .line 259
    const/4 v1, 0x1

    .line 260
    goto :goto_b

    .line 261
    :cond_a
    const/4 v1, 0x0

    .line 262
    :goto_b
    iput-boolean v1, v3, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 263
    .line 264
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .line 266
    .line 267
    move-object/from16 v1, p0

    .line 268
    .line 269
    goto/16 :goto_1

    .line 270
    .line 271
    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 275
    .line 276
    .line 277
    return-object v15

    .line 278
    :goto_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 282
    .line 283
    .line 284
    goto :goto_e

    .line 285
    :goto_d
    throw v0

    .line 286
    :goto_e
    goto :goto_d
.end method

.method public search_pack(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "SELECT * FROM app WHERE LOWER(pack) LIKE \'%\' || LOWER(?) || \'%\'"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v3, v2}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroidx/room/t;->y(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/t;->e(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Lcom/yunpan/appmanage/db/AppDao_Impl;->__db:Landroidx/room/p;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :try_start_0
    const-string v0, "name"

    .line 33
    .line 34
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const-string v5, "pack"

    .line 39
    .line 40
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, "apkPath"

    .line 45
    .line 46
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const-string v7, "apkParentPath"

    .line 51
    .line 52
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const-string v8, "dataDir"

    .line 57
    .line 58
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const-string v9, "uid"

    .line 63
    .line 64
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const-string v10, "isSystem"

    .line 69
    .line 70
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const-string v11, "isHide"

    .line 75
    .line 76
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    const-string v12, "isDisable"

    .line 81
    .line 82
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    const-string v13, "isCanStart"

    .line 87
    .line 88
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    const-string v14, "isUnInstall"

    .line 93
    .line 94
    invoke-static {v4, v14}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    new-instance v15, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_b

    .line 112
    .line 113
    new-instance v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 114
    .line 115
    invoke-direct {v3}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 119
    .line 120
    .line 121
    move-result v16

    .line 122
    const/4 v1, 0x0

    .line 123
    if-eqz v16, :cond_1

    .line 124
    .line 125
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    goto/16 :goto_c

    .line 130
    .line 131
    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 136
    .line 137
    :goto_2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_2

    .line 142
    .line 143
    const/4 v1, 0x0

    .line 144
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 152
    .line 153
    :goto_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_3

    .line 158
    .line 159
    const/4 v1, 0x0

    .line 160
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 168
    .line 169
    :goto_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_4

    .line 174
    .line 175
    const/4 v1, 0x0

    .line 176
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 184
    .line 185
    :goto_5
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_5

    .line 190
    .line 191
    const/4 v1, 0x0

    .line 192
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_5
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 200
    .line 201
    :goto_6
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    iput v1, v3, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 206
    .line 207
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    const/16 v16, 0x0

    .line 212
    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_7

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_7
    iput-boolean v1, v3, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 219
    .line 220
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 229
    :goto_8
    iput-boolean v1, v3, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 230
    .line 231
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :goto_9
    iput-boolean v1, v3, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 241
    .line 242
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    goto :goto_a

    .line 250
    :cond_9
    const/4 v1, 0x0

    .line 251
    :goto_a
    iput-boolean v1, v3, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 252
    .line 253
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_a

    .line 258
    .line 259
    const/4 v1, 0x1

    .line 260
    goto :goto_b

    .line 261
    :cond_a
    const/4 v1, 0x0

    .line 262
    :goto_b
    iput-boolean v1, v3, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 263
    .line 264
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .line 266
    .line 267
    move-object/from16 v1, p0

    .line 268
    .line 269
    goto/16 :goto_1

    .line 270
    .line 271
    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 275
    .line 276
    .line 277
    return-object v15

    .line 278
    :goto_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 282
    .line 283
    .line 284
    goto :goto_e

    .line 285
    :goto_d
    throw v0

    .line 286
    :goto_e
    goto :goto_d
.end method
