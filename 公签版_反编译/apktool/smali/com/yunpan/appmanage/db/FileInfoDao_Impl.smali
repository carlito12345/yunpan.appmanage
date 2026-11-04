.class public final Lcom/yunpan/appmanage/db/FileInfoDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yunpan/appmanage/db/FileInfoDao;


# instance fields
.field private final __db:Landroidx/room/p;

.field private final __deletionAdapterOfFileInfo:Landroidx/room/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/d;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfFileInfo:Landroidx/room/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/e;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDelete:Landroidx/room/v;

.field private final __preparedStmtOfDeleteAll:Landroidx/room/v;

.field private final __preparedStmtOfDeleteDir:Landroidx/room/v;

.field private final __preparedStmtOfDeleteFromDirFile:Landroidx/room/v;

.field private final __preparedStmtOfDeleteNoExist:Landroidx/room/v;

.field private final __preparedStmtOfUpdateAllIsDelete:Landroidx/room/v;

.field private final __preparedStmtOfUpdateIsExist:Landroidx/room/v;

.field private final __preparedStmtOfUpdateNameAndPath:Landroidx/room/v;

.field private final __preparedStmtOfUpdatePathsRecursively:Landroidx/room/v;


# direct methods
.method public constructor <init>(Landroidx/room/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 5
    .line 6
    new-instance v0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$1;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$1;-><init>(Lcom/yunpan/appmanage/db/FileInfoDao_Impl;Landroidx/room/p;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__insertionAdapterOfFileInfo:Landroidx/room/e;

    .line 12
    .line 13
    new-instance v0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$2;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$2;-><init>(Lcom/yunpan/appmanage/db/FileInfoDao_Impl;Landroidx/room/p;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__deletionAdapterOfFileInfo:Landroidx/room/d;

    .line 19
    .line 20
    new-instance v0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$3;-><init>(Lcom/yunpan/appmanage/db/FileInfoDao_Impl;Landroidx/room/p;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfUpdateNameAndPath:Landroidx/room/v;

    .line 26
    .line 27
    new-instance v0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$4;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$4;-><init>(Lcom/yunpan/appmanage/db/FileInfoDao_Impl;Landroidx/room/p;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfUpdatePathsRecursively:Landroidx/room/v;

    .line 33
    .line 34
    new-instance v0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$5;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$5;-><init>(Lcom/yunpan/appmanage/db/FileInfoDao_Impl;Landroidx/room/p;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfUpdateAllIsDelete:Landroidx/room/v;

    .line 40
    .line 41
    new-instance v0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$6;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$6;-><init>(Lcom/yunpan/appmanage/db/FileInfoDao_Impl;Landroidx/room/p;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfUpdateIsExist:Landroidx/room/v;

    .line 47
    .line 48
    new-instance v0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$7;

    .line 49
    .line 50
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$7;-><init>(Lcom/yunpan/appmanage/db/FileInfoDao_Impl;Landroidx/room/p;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDeleteNoExist:Landroidx/room/v;

    .line 54
    .line 55
    new-instance v0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$8;

    .line 56
    .line 57
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$8;-><init>(Lcom/yunpan/appmanage/db/FileInfoDao_Impl;Landroidx/room/p;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDelete:Landroidx/room/v;

    .line 61
    .line 62
    new-instance v0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$9;

    .line 63
    .line 64
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$9;-><init>(Lcom/yunpan/appmanage/db/FileInfoDao_Impl;Landroidx/room/p;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/v;

    .line 68
    .line 69
    new-instance v0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$10;

    .line 70
    .line 71
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$10;-><init>(Lcom/yunpan/appmanage/db/FileInfoDao_Impl;Landroidx/room/p;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDeleteDir:Landroidx/room/v;

    .line 75
    .line 76
    new-instance v0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$11;

    .line 77
    .line 78
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$11;-><init>(Lcom/yunpan/appmanage/db/FileInfoDao_Impl;Landroidx/room/p;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDeleteFromDirFile:Landroidx/room/v;

    .line 82
    .line 83
    return-void
.end method

.method private __entityCursorConverter_comYunpanAppmanageDbFileInfo(Landroid/database/Cursor;)Lcom/yunpan/appmanage/db/FileInfo;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "path"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->y(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "name"

    .line 10
    .line 11
    invoke-static {v0, v2}, Lcom/bumptech/glide/c;->y(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-string v3, "parent"

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/c;->y(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const-string v4, "size"

    .line 22
    .line 23
    invoke-static {v0, v4}, Lcom/bumptech/glide/c;->y(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const-string v5, "link"

    .line 28
    .line 29
    invoke-static {v0, v5}, Lcom/bumptech/glide/c;->y(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "lastModified"

    .line 34
    .line 35
    invoke-static {v0, v6}, Lcom/bumptech/glide/c;->y(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "isDir"

    .line 40
    .line 41
    invoke-static {v0, v7}, Lcom/bumptech/glide/c;->y(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "isExist"

    .line 46
    .line 47
    invoke-static {v0, v8}, Lcom/bumptech/glide/c;->y(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, -0x1

    .line 53
    if-ne v1, v10, :cond_0

    .line 54
    .line 55
    :goto_0
    move-object v12, v9

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    if-eqz v11, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v12, v1

    .line 69
    :goto_1
    if-ne v2, v10, :cond_2

    .line 70
    .line 71
    :goto_2
    move-object v13, v9

    .line 72
    goto :goto_3

    .line 73
    :cond_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    move-object v13, v1

    .line 85
    :goto_3
    if-ne v3, v10, :cond_4

    .line 86
    .line 87
    :goto_4
    move-object v14, v9

    .line 88
    goto :goto_5

    .line 89
    :cond_4
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_5
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    move-object v14, v1

    .line 101
    :goto_5
    const-wide/16 v1, 0x0

    .line 102
    .line 103
    if-ne v4, v10, :cond_6

    .line 104
    .line 105
    move-wide v15, v1

    .line 106
    goto :goto_6

    .line 107
    :cond_6
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 108
    .line 109
    .line 110
    move-result-wide v3

    .line 111
    move-wide v15, v3

    .line 112
    :goto_6
    if-ne v5, v10, :cond_7

    .line 113
    .line 114
    :goto_7
    move-object/from16 v17, v9

    .line 115
    .line 116
    goto :goto_8

    .line 117
    :cond_7
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_8

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_8
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    goto :goto_7

    .line 129
    :goto_8
    if-ne v6, v10, :cond_9

    .line 130
    .line 131
    :goto_9
    move-wide/from16 v18, v1

    .line 132
    .line 133
    goto :goto_a

    .line 134
    :cond_9
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    goto :goto_9

    .line 139
    :goto_a
    const/4 v1, 0x1

    .line 140
    const/4 v2, 0x0

    .line 141
    if-ne v7, v10, :cond_a

    .line 142
    .line 143
    const/16 v20, 0x0

    .line 144
    .line 145
    goto :goto_c

    .line 146
    :cond_a
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_b

    .line 151
    .line 152
    const/4 v3, 0x1

    .line 153
    goto :goto_b

    .line 154
    :cond_b
    const/4 v3, 0x0

    .line 155
    :goto_b
    move/from16 v20, v3

    .line 156
    .line 157
    :goto_c
    new-instance v3, Lcom/yunpan/appmanage/db/FileInfo;

    .line 158
    .line 159
    move-object v11, v3

    .line 160
    invoke-direct/range {v11 .. v20}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 161
    .line 162
    .line 163
    if-eq v8, v10, :cond_d

    .line 164
    .line 165
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_c

    .line 170
    .line 171
    goto :goto_d

    .line 172
    :cond_c
    const/4 v1, 0x0

    .line 173
    :goto_d
    iput-boolean v1, v3, Lcom/yunpan/appmanage/db/FileInfo;->isExist:Z

    .line 174
    .line 175
    :cond_d
    return-object v3
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
.method public delete(Lcom/yunpan/appmanage/db/FileInfo;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__deletionAdapterOfFileInfo:Landroidx/room/d;

    invoke-virtual {v0, p1}, Landroidx/room/d;->handle(Ljava/lang/Object;)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->endTransaction()V

    .line 6
    throw p1
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 8
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDelete:Landroidx/room/v;

    invoke-virtual {v0}, Landroidx/room/v;->acquire()Lc4/e;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 9
    invoke-interface {v0, v1}, Lc4/c;->y(I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, v1, p1}, Lc4/c;->e(ILjava/lang/String;)V

    .line 11
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    invoke-virtual {p1}, Landroidx/room/p;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    invoke-interface {v0}, Lc4/e;->f()I

    .line 13
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    invoke-virtual {p1}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    invoke-virtual {p1}, Landroidx/room/p;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDelete:Landroidx/room/v;

    invoke-virtual {p1, v0}, Landroidx/room/v;->release(Lc4/e;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 16
    :try_start_3
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    invoke-virtual {v1}, Landroidx/room/p;->endTransaction()V

    .line 17
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :goto_1
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDelete:Landroidx/room/v;

    invoke-virtual {v1, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 19
    throw p1
.end method

.method public deleteAll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/v;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/v;->acquire()Lc4/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

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
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_2
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/room/p;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/v;

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
    iget-object v2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

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
    iget-object v2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/v;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 48
    .line 49
    .line 50
    throw v1
.end method

.method public deleteDir(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDeleteDir:Landroidx/room/v;

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
    const/4 v1, 0x2

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lc4/c;->y(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-interface {v0, v1, p1}, Lc4/c;->e(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/room/p;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :try_start_1
    invoke-interface {v0}, Lc4/e;->f()I

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .line 44
    .line 45
    :try_start_2
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/room/p;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDeleteDir:Landroidx/room/v;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    :try_start_3
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/room/p;->endTransaction()V

    .line 62
    .line 63
    .line 64
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    :goto_2
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDeleteDir:Landroidx/room/v;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method

.method public deleteFromDirFile(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDeleteFromDirFile:Landroidx/room/v;

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
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

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
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    :try_start_2
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/room/p;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDeleteFromDirFile:Landroidx/room/v;

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
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

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
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDeleteFromDirFile:Landroidx/room/v;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public deleteNoExist()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDeleteNoExist:Landroidx/room/v;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/v;->acquire()Lc4/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

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
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_2
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/room/p;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDeleteNoExist:Landroidx/room/v;

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
    iget-object v2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

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
    iget-object v2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfDeleteNoExist:Landroidx/room/v;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 48
    .line 49
    .line 50
    throw v1
.end method

.method public getAllKeyLogDirs(Z)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "SELECT * FROM fileList WHERE isDir=? and (LOWER(name) LIKE \'%tmp%\' or LOWER(name) LIKE \'%temp%\' or LOWER(name) LIKE \'%log%\' or LOWER(name) LIKE \'%cache%\' or LOWER(name) LIKE \'%log\' or LOWER(name) LIKE \'log%\')"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v2, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    move/from16 v0, p1

    .line 11
    .line 12
    int-to-long v4, v0

    .line 13
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/t;->m(IJ)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 19
    .line 20
    .line 21
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 22
    .line 23
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    :try_start_0
    const-string v0, "path"

    .line 28
    .line 29
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const-string v5, "name"

    .line 34
    .line 35
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const-string v6, "parent"

    .line 40
    .line 41
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const-string v7, "size"

    .line 46
    .line 47
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const-string v8, "link"

    .line 52
    .line 53
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const-string v9, "lastModified"

    .line 58
    .line 59
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    const-string v10, "isDir"

    .line 64
    .line 65
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    const-string v11, "isExist"

    .line 70
    .line 71
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    new-instance v12, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 85
    .line 86
    .line 87
    move-result v13

    .line 88
    if-eqz v13, :cond_6

    .line 89
    .line 90
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 91
    .line 92
    .line 93
    move-result v13

    .line 94
    const/4 v14, 0x0

    .line 95
    if-eqz v13, :cond_0

    .line 96
    .line 97
    move-object/from16 v16, v14

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    move-object/from16 v16, v13

    .line 105
    .line 106
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 107
    .line 108
    .line 109
    move-result v13

    .line 110
    if-eqz v13, :cond_1

    .line 111
    .line 112
    move-object/from16 v17, v14

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    move-object/from16 v17, v13

    .line 120
    .line 121
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    if-eqz v13, :cond_2

    .line 126
    .line 127
    move-object/from16 v18, v14

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v13

    .line 134
    move-object/from16 v18, v13

    .line 135
    .line 136
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 137
    .line 138
    .line 139
    move-result-wide v19

    .line 140
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    if-eqz v13, :cond_3

    .line 145
    .line 146
    :goto_4
    move-object/from16 v21, v14

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_3
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    goto :goto_4

    .line 154
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 155
    .line 156
    .line 157
    move-result-wide v22

    .line 158
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 159
    .line 160
    .line 161
    move-result v13

    .line 162
    const/4 v14, 0x0

    .line 163
    if-eqz v13, :cond_4

    .line 164
    .line 165
    const/16 v24, 0x1

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_4
    const/16 v24, 0x0

    .line 169
    .line 170
    :goto_6
    new-instance v13, Lcom/yunpan/appmanage/db/FileInfo;

    .line 171
    .line 172
    move-object v15, v13

    .line 173
    invoke-direct/range {v15 .. v24}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 174
    .line 175
    .line 176
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 177
    .line 178
    .line 179
    move-result v15

    .line 180
    if-eqz v15, :cond_5

    .line 181
    .line 182
    const/4 v14, 0x1

    .line 183
    :cond_5
    iput-boolean v14, v13, Lcom/yunpan/appmanage/db/FileInfo;->isExist:Z

    .line 184
    .line 185
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    goto :goto_7

    .line 191
    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 195
    .line 196
    .line 197
    return-object v12

    .line 198
    :goto_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 202
    .line 203
    .line 204
    goto :goto_9

    .line 205
    :goto_8
    throw v0

    .line 206
    :goto_9
    goto :goto_8
.end method

.method public getAllLogFiles()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "SELECT * FROM fileList WHERE isDir=0 and (LOWER(name) LIKE \'%.tmp\' or LOWER(name) LIKE \'%.temp\' or LOWER(name) LIKE \'%.log\' or LOWER(name) LIKE \'%.xlog\' or LOWER(name) LIKE \'%.cache\')"

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
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v0, "path"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v5, "name"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "parent"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "size"

    .line 40
    .line 41
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "link"

    .line 46
    .line 47
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "lastModified"

    .line 52
    .line 53
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "isDir"

    .line 58
    .line 59
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "isExist"

    .line 64
    .line 65
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    new-instance v12, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 72
    .line 73
    .line 74
    move-result v13

    .line 75
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 79
    .line 80
    .line 81
    move-result v13

    .line 82
    if-eqz v13, :cond_6

    .line 83
    .line 84
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 85
    .line 86
    .line 87
    move-result v13

    .line 88
    const/4 v14, 0x0

    .line 89
    if-eqz v13, :cond_0

    .line 90
    .line 91
    move-object/from16 v16, v14

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    move-object/from16 v16, v13

    .line 99
    .line 100
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 101
    .line 102
    .line 103
    move-result v13

    .line 104
    if-eqz v13, :cond_1

    .line 105
    .line 106
    move-object/from16 v17, v14

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    move-object/from16 v17, v13

    .line 114
    .line 115
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    if-eqz v13, :cond_2

    .line 120
    .line 121
    move-object/from16 v18, v14

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    move-object/from16 v18, v13

    .line 129
    .line 130
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 131
    .line 132
    .line 133
    move-result-wide v19

    .line 134
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 135
    .line 136
    .line 137
    move-result v13

    .line 138
    if-eqz v13, :cond_3

    .line 139
    .line 140
    :goto_4
    move-object/from16 v21, v14

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_3
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v14

    .line 147
    goto :goto_4

    .line 148
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 149
    .line 150
    .line 151
    move-result-wide v22

    .line 152
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 153
    .line 154
    .line 155
    move-result v13

    .line 156
    const/4 v14, 0x1

    .line 157
    if-eqz v13, :cond_4

    .line 158
    .line 159
    const/16 v24, 0x1

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_4
    const/16 v24, 0x0

    .line 163
    .line 164
    :goto_6
    new-instance v13, Lcom/yunpan/appmanage/db/FileInfo;

    .line 165
    .line 166
    move-object v15, v13

    .line 167
    invoke-direct/range {v15 .. v24}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 171
    .line 172
    .line 173
    move-result v15

    .line 174
    if-eqz v15, :cond_5

    .line 175
    .line 176
    goto :goto_7

    .line 177
    :cond_5
    const/4 v14, 0x0

    .line 178
    :goto_7
    iput-boolean v14, v13, Lcom/yunpan/appmanage/db/FileInfo;->isExist:Z

    .line 179
    .line 180
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    goto :goto_8

    .line 186
    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 190
    .line 191
    .line 192
    return-object v12

    .line 193
    :goto_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Landroidx/room/t;->K()V

    .line 197
    .line 198
    .line 199
    goto :goto_a

    .line 200
    :goto_9
    throw v0

    .line 201
    :goto_a
    goto :goto_9
.end method

.method public getCount()I
    .locals 4

    .line 1
    const-string v0, "SELECT COUNT(*) FROM fileList"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 14
    .line 15
    invoke-static {v2, v0}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/room/t;->K()V

    .line 36
    .line 37
    .line 38
    return v1

    .line 39
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/room/t;->K()V

    .line 43
    .line 44
    .line 45
    throw v1
.end method

.method public getCurrentDirPaths(Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
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
    const-string v2, "select * from fileList where `parent`=?"

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
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :try_start_0
    const-string v0, "path"

    .line 33
    .line 34
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const-string v5, "name"

    .line 39
    .line 40
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, "parent"

    .line 45
    .line 46
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const-string v7, "size"

    .line 51
    .line 52
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const-string v8, "link"

    .line 57
    .line 58
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const-string v9, "lastModified"

    .line 63
    .line 64
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const-string v10, "isDir"

    .line 69
    .line 70
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const-string v11, "isExist"

    .line 75
    .line 76
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    new-instance v12, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 83
    .line 84
    .line 85
    move-result v13

    .line 86
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    if-eqz v13, :cond_7

    .line 94
    .line 95
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    const/4 v14, 0x0

    .line 100
    if-eqz v13, :cond_1

    .line 101
    .line 102
    move-object/from16 v16, v14

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    move-object/from16 v16, v13

    .line 110
    .line 111
    :goto_2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 112
    .line 113
    .line 114
    move-result v13

    .line 115
    if-eqz v13, :cond_2

    .line 116
    .line 117
    move-object/from16 v17, v14

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v13

    .line 124
    move-object/from16 v17, v13

    .line 125
    .line 126
    :goto_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v13

    .line 130
    if-eqz v13, :cond_3

    .line 131
    .line 132
    move-object/from16 v18, v14

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    move-object/from16 v18, v13

    .line 140
    .line 141
    :goto_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 142
    .line 143
    .line 144
    move-result-wide v19

    .line 145
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    if-eqz v13, :cond_4

    .line 150
    .line 151
    :goto_5
    move-object/from16 v21, v14

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    goto :goto_5

    .line 159
    :goto_6
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 160
    .line 161
    .line 162
    move-result-wide v22

    .line 163
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    const/4 v14, 0x0

    .line 168
    if-eqz v13, :cond_5

    .line 169
    .line 170
    const/16 v24, 0x1

    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_5
    const/16 v24, 0x0

    .line 174
    .line 175
    :goto_7
    new-instance v13, Lcom/yunpan/appmanage/db/FileInfo;

    .line 176
    .line 177
    move-object v15, v13

    .line 178
    invoke-direct/range {v15 .. v24}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 182
    .line 183
    .line 184
    move-result v15

    .line 185
    if-eqz v15, :cond_6

    .line 186
    .line 187
    const/4 v14, 0x1

    .line 188
    :cond_6
    iput-boolean v14, v13, Lcom/yunpan/appmanage/db/FileInfo;->isExist:Z

    .line 189
    .line 190
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    goto :goto_8

    .line 196
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 200
    .line 201
    .line 202
    return-object v12

    .line 203
    :goto_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 207
    .line 208
    .line 209
    goto :goto_a

    .line 210
    :goto_9
    throw v0

    .line 211
    :goto_a
    goto :goto_9
.end method

.method public getDirCount()I
    .locals 4

    .line 1
    const-string v0, "SELECT COUNT(*) FROM fileList WHERE `isDir`=1"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 14
    .line 15
    invoke-static {v2, v0}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/room/t;->K()V

    .line 36
    .line 37
    .line 38
    return v1

    .line 39
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/room/t;->K()V

    .line 43
    .line 44
    .line 45
    throw v1
.end method

.method public getDirDirCount(Ljava/lang/String;)J
    .locals 3

    .line 1
    const-string v0, "SELECT COUNT(*) FROM fileList WHERE `isDir`=1 and `path` LIKE ? || \'%\'"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/t;->y(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/t;->e(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 36
    .line 37
    .line 38
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const-wide/16 v1, 0x0

    .line 43
    .line 44
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/room/t;->K()V

    .line 48
    .line 49
    .line 50
    return-wide v1

    .line 51
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/room/t;->K()V

    .line 55
    .line 56
    .line 57
    throw v1
.end method

.method public getDirFileCount(Ljava/lang/String;)J
    .locals 3

    .line 1
    const-string v0, "SELECT COUNT(*) FROM fileList WHERE `isDir`=0 and `path` LIKE ? || \'%\'"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/t;->y(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/t;->e(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 36
    .line 37
    .line 38
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const-wide/16 v1, 0x0

    .line 43
    .line 44
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/room/t;->K()V

    .line 48
    .line 49
    .line 50
    return-wide v1

    .line 51
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/room/t;->K()V

    .line 55
    .line 56
    .line 57
    throw v1
.end method

.method public getDirFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
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
    const-string v2, "select * from fileList where `parent`=?"

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
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :try_start_0
    const-string v0, "path"

    .line 33
    .line 34
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const-string v5, "name"

    .line 39
    .line 40
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, "parent"

    .line 45
    .line 46
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const-string v7, "size"

    .line 51
    .line 52
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const-string v8, "link"

    .line 57
    .line 58
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const-string v9, "lastModified"

    .line 63
    .line 64
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const-string v10, "isDir"

    .line 69
    .line 70
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const-string v11, "isExist"

    .line 75
    .line 76
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    new-instance v12, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 83
    .line 84
    .line 85
    move-result v13

    .line 86
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    if-eqz v13, :cond_7

    .line 94
    .line 95
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    const/4 v14, 0x0

    .line 100
    if-eqz v13, :cond_1

    .line 101
    .line 102
    move-object/from16 v16, v14

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    move-object/from16 v16, v13

    .line 110
    .line 111
    :goto_2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 112
    .line 113
    .line 114
    move-result v13

    .line 115
    if-eqz v13, :cond_2

    .line 116
    .line 117
    move-object/from16 v17, v14

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v13

    .line 124
    move-object/from16 v17, v13

    .line 125
    .line 126
    :goto_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result v13

    .line 130
    if-eqz v13, :cond_3

    .line 131
    .line 132
    move-object/from16 v18, v14

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    move-object/from16 v18, v13

    .line 140
    .line 141
    :goto_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 142
    .line 143
    .line 144
    move-result-wide v19

    .line 145
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    if-eqz v13, :cond_4

    .line 150
    .line 151
    :goto_5
    move-object/from16 v21, v14

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    goto :goto_5

    .line 159
    :goto_6
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 160
    .line 161
    .line 162
    move-result-wide v22

    .line 163
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    const/4 v14, 0x0

    .line 168
    if-eqz v13, :cond_5

    .line 169
    .line 170
    const/16 v24, 0x1

    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_5
    const/16 v24, 0x0

    .line 174
    .line 175
    :goto_7
    new-instance v13, Lcom/yunpan/appmanage/db/FileInfo;

    .line 176
    .line 177
    move-object v15, v13

    .line 178
    invoke-direct/range {v15 .. v24}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 182
    .line 183
    .line 184
    move-result v15

    .line 185
    if-eqz v15, :cond_6

    .line 186
    .line 187
    const/4 v14, 0x1

    .line 188
    :cond_6
    iput-boolean v14, v13, Lcom/yunpan/appmanage/db/FileInfo;->isExist:Z

    .line 189
    .line 190
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    goto :goto_8

    .line 196
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 200
    .line 201
    .line 202
    return-object v12

    .line 203
    :goto_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 207
    .line 208
    .line 209
    goto :goto_a

    .line 210
    :goto_9
    throw v0

    .line 211
    :goto_a
    goto :goto_9
.end method

.method public getDirFiles_noHide_sortName(Ljava/lang/String;Z)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
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
    const-string v2, "select * from fileList where `isDir`=? and `parent`=? and name NOT LIKE \'.%\' ORDER BY name"

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-static {v3, v2}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    move/from16 v4, p2

    .line 13
    .line 14
    int-to-long v4, v4

    .line 15
    const/4 v6, 0x1

    .line 16
    invoke-virtual {v2, v6, v4, v5}, Landroidx/room/t;->m(IJ)V

    .line 17
    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroidx/room/t;->y(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/t;->e(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 31
    .line 32
    .line 33
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 34
    .line 35
    invoke-static {v0, v2}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :try_start_0
    const-string v0, "path"

    .line 40
    .line 41
    invoke-static {v3, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const-string v4, "name"

    .line 46
    .line 47
    invoke-static {v3, v4}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const-string v5, "parent"

    .line 52
    .line 53
    invoke-static {v3, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const-string v7, "size"

    .line 58
    .line 59
    invoke-static {v3, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const-string v8, "link"

    .line 64
    .line 65
    invoke-static {v3, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    const-string v9, "lastModified"

    .line 70
    .line 71
    invoke-static {v3, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    const-string v10, "isDir"

    .line 76
    .line 77
    invoke-static {v3, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    const-string v11, "isExist"

    .line 82
    .line 83
    invoke-static {v3, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    new-instance v12, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-eqz v13, :cond_7

    .line 101
    .line 102
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    const/4 v14, 0x0

    .line 107
    if-eqz v13, :cond_1

    .line 108
    .line 109
    move-object/from16 v16, v14

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    move-object/from16 v16, v13

    .line 117
    .line 118
    :goto_2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    if-eqz v13, :cond_2

    .line 123
    .line 124
    move-object/from16 v17, v14

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    move-object/from16 v17, v13

    .line 132
    .line 133
    :goto_3
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    if-eqz v13, :cond_3

    .line 138
    .line 139
    move-object/from16 v18, v14

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_3
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    move-object/from16 v18, v13

    .line 147
    .line 148
    :goto_4
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 149
    .line 150
    .line 151
    move-result-wide v19

    .line 152
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 153
    .line 154
    .line 155
    move-result v13

    .line 156
    if-eqz v13, :cond_4

    .line 157
    .line 158
    :goto_5
    move-object/from16 v21, v14

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_4
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v14

    .line 165
    goto :goto_5

    .line 166
    :goto_6
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 167
    .line 168
    .line 169
    move-result-wide v22

    .line 170
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 171
    .line 172
    .line 173
    move-result v13

    .line 174
    const/4 v14, 0x0

    .line 175
    if-eqz v13, :cond_5

    .line 176
    .line 177
    const/16 v24, 0x1

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_5
    const/16 v24, 0x0

    .line 181
    .line 182
    :goto_7
    new-instance v13, Lcom/yunpan/appmanage/db/FileInfo;

    .line 183
    .line 184
    move-object v15, v13

    .line 185
    invoke-direct/range {v15 .. v24}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 189
    .line 190
    .line 191
    move-result v15

    .line 192
    if-eqz v15, :cond_6

    .line 193
    .line 194
    const/4 v14, 0x1

    .line 195
    :cond_6
    iput-boolean v14, v13, Lcom/yunpan/appmanage/db/FileInfo;->isExist:Z

    .line 196
    .line 197
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    goto :goto_8

    .line 203
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 207
    .line 208
    .line 209
    return-object v12

    .line 210
    :goto_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 214
    .line 215
    .line 216
    goto :goto_a

    .line 217
    :goto_9
    throw v0

    .line 218
    :goto_a
    goto :goto_9
.end method

.method public getDirFiles_noHide_sortTime(Ljava/lang/String;Z)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
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
    const-string v2, "select * from fileList where `isDir`=? and `parent`=? and name NOT LIKE \'.%\' ORDER BY lastModified"

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-static {v3, v2}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    move/from16 v4, p2

    .line 13
    .line 14
    int-to-long v4, v4

    .line 15
    const/4 v6, 0x1

    .line 16
    invoke-virtual {v2, v6, v4, v5}, Landroidx/room/t;->m(IJ)V

    .line 17
    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroidx/room/t;->y(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/t;->e(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 31
    .line 32
    .line 33
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 34
    .line 35
    invoke-static {v0, v2}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :try_start_0
    const-string v0, "path"

    .line 40
    .line 41
    invoke-static {v3, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const-string v4, "name"

    .line 46
    .line 47
    invoke-static {v3, v4}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const-string v5, "parent"

    .line 52
    .line 53
    invoke-static {v3, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const-string v7, "size"

    .line 58
    .line 59
    invoke-static {v3, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const-string v8, "link"

    .line 64
    .line 65
    invoke-static {v3, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    const-string v9, "lastModified"

    .line 70
    .line 71
    invoke-static {v3, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    const-string v10, "isDir"

    .line 76
    .line 77
    invoke-static {v3, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    const-string v11, "isExist"

    .line 82
    .line 83
    invoke-static {v3, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    new-instance v12, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-eqz v13, :cond_7

    .line 101
    .line 102
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    const/4 v14, 0x0

    .line 107
    if-eqz v13, :cond_1

    .line 108
    .line 109
    move-object/from16 v16, v14

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    move-object/from16 v16, v13

    .line 117
    .line 118
    :goto_2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    if-eqz v13, :cond_2

    .line 123
    .line 124
    move-object/from16 v17, v14

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    move-object/from16 v17, v13

    .line 132
    .line 133
    :goto_3
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    if-eqz v13, :cond_3

    .line 138
    .line 139
    move-object/from16 v18, v14

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_3
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    move-object/from16 v18, v13

    .line 147
    .line 148
    :goto_4
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 149
    .line 150
    .line 151
    move-result-wide v19

    .line 152
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 153
    .line 154
    .line 155
    move-result v13

    .line 156
    if-eqz v13, :cond_4

    .line 157
    .line 158
    :goto_5
    move-object/from16 v21, v14

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_4
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v14

    .line 165
    goto :goto_5

    .line 166
    :goto_6
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 167
    .line 168
    .line 169
    move-result-wide v22

    .line 170
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 171
    .line 172
    .line 173
    move-result v13

    .line 174
    const/4 v14, 0x0

    .line 175
    if-eqz v13, :cond_5

    .line 176
    .line 177
    const/16 v24, 0x1

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_5
    const/16 v24, 0x0

    .line 181
    .line 182
    :goto_7
    new-instance v13, Lcom/yunpan/appmanage/db/FileInfo;

    .line 183
    .line 184
    move-object v15, v13

    .line 185
    invoke-direct/range {v15 .. v24}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 189
    .line 190
    .line 191
    move-result v15

    .line 192
    if-eqz v15, :cond_6

    .line 193
    .line 194
    const/4 v14, 0x1

    .line 195
    :cond_6
    iput-boolean v14, v13, Lcom/yunpan/appmanage/db/FileInfo;->isExist:Z

    .line 196
    .line 197
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    goto :goto_8

    .line 203
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 207
    .line 208
    .line 209
    return-object v12

    .line 210
    :goto_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 214
    .line 215
    .line 216
    goto :goto_a

    .line 217
    :goto_9
    throw v0

    .line 218
    :goto_a
    goto :goto_9
.end method

.method public getDirFiles_sortName(Ljava/lang/String;Z)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
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
    const-string v2, "select * from fileList where `isDir`=? and `parent`=? ORDER BY name"

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-static {v3, v2}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    move/from16 v4, p2

    .line 13
    .line 14
    int-to-long v4, v4

    .line 15
    const/4 v6, 0x1

    .line 16
    invoke-virtual {v2, v6, v4, v5}, Landroidx/room/t;->m(IJ)V

    .line 17
    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroidx/room/t;->y(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/t;->e(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 31
    .line 32
    .line 33
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 34
    .line 35
    invoke-static {v0, v2}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :try_start_0
    const-string v0, "path"

    .line 40
    .line 41
    invoke-static {v3, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const-string v4, "name"

    .line 46
    .line 47
    invoke-static {v3, v4}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const-string v5, "parent"

    .line 52
    .line 53
    invoke-static {v3, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const-string v7, "size"

    .line 58
    .line 59
    invoke-static {v3, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const-string v8, "link"

    .line 64
    .line 65
    invoke-static {v3, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    const-string v9, "lastModified"

    .line 70
    .line 71
    invoke-static {v3, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    const-string v10, "isDir"

    .line 76
    .line 77
    invoke-static {v3, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    const-string v11, "isExist"

    .line 82
    .line 83
    invoke-static {v3, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    new-instance v12, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-eqz v13, :cond_7

    .line 101
    .line 102
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    const/4 v14, 0x0

    .line 107
    if-eqz v13, :cond_1

    .line 108
    .line 109
    move-object/from16 v16, v14

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    move-object/from16 v16, v13

    .line 117
    .line 118
    :goto_2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    if-eqz v13, :cond_2

    .line 123
    .line 124
    move-object/from16 v17, v14

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    move-object/from16 v17, v13

    .line 132
    .line 133
    :goto_3
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    if-eqz v13, :cond_3

    .line 138
    .line 139
    move-object/from16 v18, v14

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_3
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    move-object/from16 v18, v13

    .line 147
    .line 148
    :goto_4
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 149
    .line 150
    .line 151
    move-result-wide v19

    .line 152
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 153
    .line 154
    .line 155
    move-result v13

    .line 156
    if-eqz v13, :cond_4

    .line 157
    .line 158
    :goto_5
    move-object/from16 v21, v14

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_4
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v14

    .line 165
    goto :goto_5

    .line 166
    :goto_6
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 167
    .line 168
    .line 169
    move-result-wide v22

    .line 170
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 171
    .line 172
    .line 173
    move-result v13

    .line 174
    const/4 v14, 0x0

    .line 175
    if-eqz v13, :cond_5

    .line 176
    .line 177
    const/16 v24, 0x1

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_5
    const/16 v24, 0x0

    .line 181
    .line 182
    :goto_7
    new-instance v13, Lcom/yunpan/appmanage/db/FileInfo;

    .line 183
    .line 184
    move-object v15, v13

    .line 185
    invoke-direct/range {v15 .. v24}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 189
    .line 190
    .line 191
    move-result v15

    .line 192
    if-eqz v15, :cond_6

    .line 193
    .line 194
    const/4 v14, 0x1

    .line 195
    :cond_6
    iput-boolean v14, v13, Lcom/yunpan/appmanage/db/FileInfo;->isExist:Z

    .line 196
    .line 197
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    goto :goto_8

    .line 203
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 207
    .line 208
    .line 209
    return-object v12

    .line 210
    :goto_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 214
    .line 215
    .line 216
    goto :goto_a

    .line 217
    :goto_9
    throw v0

    .line 218
    :goto_a
    goto :goto_9
.end method

.method public getDirFiles_sortTime(Ljava/lang/String;Z)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
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
    const-string v2, "select * from fileList where `isDir`=? and `parent`=? ORDER BY lastModified"

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-static {v3, v2}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    move/from16 v4, p2

    .line 13
    .line 14
    int-to-long v4, v4

    .line 15
    const/4 v6, 0x1

    .line 16
    invoke-virtual {v2, v6, v4, v5}, Landroidx/room/t;->m(IJ)V

    .line 17
    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroidx/room/t;->y(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/t;->e(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 31
    .line 32
    .line 33
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 34
    .line 35
    invoke-static {v0, v2}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :try_start_0
    const-string v0, "path"

    .line 40
    .line 41
    invoke-static {v3, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const-string v4, "name"

    .line 46
    .line 47
    invoke-static {v3, v4}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const-string v5, "parent"

    .line 52
    .line 53
    invoke-static {v3, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const-string v7, "size"

    .line 58
    .line 59
    invoke-static {v3, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const-string v8, "link"

    .line 64
    .line 65
    invoke-static {v3, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    const-string v9, "lastModified"

    .line 70
    .line 71
    invoke-static {v3, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    const-string v10, "isDir"

    .line 76
    .line 77
    invoke-static {v3, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    const-string v11, "isExist"

    .line 82
    .line 83
    invoke-static {v3, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    new-instance v12, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-eqz v13, :cond_7

    .line 101
    .line 102
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    const/4 v14, 0x0

    .line 107
    if-eqz v13, :cond_1

    .line 108
    .line 109
    move-object/from16 v16, v14

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    move-object/from16 v16, v13

    .line 117
    .line 118
    :goto_2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    if-eqz v13, :cond_2

    .line 123
    .line 124
    move-object/from16 v17, v14

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    move-object/from16 v17, v13

    .line 132
    .line 133
    :goto_3
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    if-eqz v13, :cond_3

    .line 138
    .line 139
    move-object/from16 v18, v14

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_3
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    move-object/from16 v18, v13

    .line 147
    .line 148
    :goto_4
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 149
    .line 150
    .line 151
    move-result-wide v19

    .line 152
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 153
    .line 154
    .line 155
    move-result v13

    .line 156
    if-eqz v13, :cond_4

    .line 157
    .line 158
    :goto_5
    move-object/from16 v21, v14

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_4
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v14

    .line 165
    goto :goto_5

    .line 166
    :goto_6
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 167
    .line 168
    .line 169
    move-result-wide v22

    .line 170
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 171
    .line 172
    .line 173
    move-result v13

    .line 174
    const/4 v14, 0x0

    .line 175
    if-eqz v13, :cond_5

    .line 176
    .line 177
    const/16 v24, 0x1

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_5
    const/16 v24, 0x0

    .line 181
    .line 182
    :goto_7
    new-instance v13, Lcom/yunpan/appmanage/db/FileInfo;

    .line 183
    .line 184
    move-object v15, v13

    .line 185
    invoke-direct/range {v15 .. v24}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 189
    .line 190
    .line 191
    move-result v15

    .line 192
    if-eqz v15, :cond_6

    .line 193
    .line 194
    const/4 v14, 0x1

    .line 195
    :cond_6
    iput-boolean v14, v13, Lcom/yunpan/appmanage/db/FileInfo;->isExist:Z

    .line 196
    .line 197
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    goto :goto_8

    .line 203
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 207
    .line 208
    .line 209
    return-object v12

    .line 210
    :goto_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 214
    .line 215
    .line 216
    goto :goto_a

    .line 217
    :goto_9
    throw v0

    .line 218
    :goto_a
    goto :goto_9
.end method

.method public getDirSize(Ljava/lang/String;)J
    .locals 3

    .line 1
    const-string v0, "SELECT SUM(size) FROM fileList WHERE `isDir`=0 and `path` LIKE ? || \'%\'"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/t;->y(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/t;->e(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 36
    .line 37
    .line 38
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const-wide/16 v1, 0x0

    .line 43
    .line 44
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/room/t;->K()V

    .line 48
    .line 49
    .line 50
    return-wide v1

    .line 51
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/room/t;->K()V

    .line 55
    .line 56
    .line 57
    throw v1
.end method

.method public getFileCount()I
    .locals 4

    .line 1
    const-string v0, "SELECT COUNT(*) FROM fileList WHERE `isDir`=0"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Landroidx/room/t;->J(ILjava/lang/String;)Landroidx/room/t;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 14
    .line 15
    invoke-static {v2, v0}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/room/t;->K()V

    .line 36
    .line 37
    .line 38
    return v1

    .line 39
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/room/t;->K()V

    .line 43
    .line 44
    .line 45
    throw v1
.end method

.method public getFileInfo(Ljava/lang/String;)Lcom/yunpan/appmanage/db/FileInfo;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "select * from fileList where path=?"

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
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :try_start_0
    const-string v0, "path"

    .line 33
    .line 34
    invoke-static {v4, v0}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const-string v5, "name"

    .line 39
    .line 40
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, "parent"

    .line 45
    .line 46
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const-string v7, "size"

    .line 51
    .line 52
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const-string v8, "link"

    .line 57
    .line 58
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const-string v9, "lastModified"

    .line 63
    .line 64
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const-string v10, "isDir"

    .line 69
    .line 70
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const-string v11, "isExist"

    .line 75
    .line 76
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    const/4 v13, 0x0

    .line 85
    if-eqz v12, :cond_7

    .line 86
    .line 87
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    if-eqz v12, :cond_1

    .line 92
    .line 93
    move-object v15, v13

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    move-object v15, v0

    .line 100
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    move-object/from16 v16, v13

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    move-object/from16 v16, v0

    .line 114
    .line 115
    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    move-object/from16 v17, v13

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    move-object/from16 v17, v0

    .line 129
    .line 130
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 131
    .line 132
    .line 133
    move-result-wide v18

    .line 134
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    :goto_4
    move-object/from16 v20, v13

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    goto :goto_4

    .line 148
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 149
    .line 150
    .line 151
    move-result-wide v21

    .line 152
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    const/4 v5, 0x0

    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    const/16 v23, 0x1

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_5
    const/16 v23, 0x0

    .line 163
    .line 164
    :goto_6
    new-instance v13, Lcom/yunpan/appmanage/db/FileInfo;

    .line 165
    .line 166
    move-object v14, v13

    .line 167
    invoke-direct/range {v14 .. v23}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    goto :goto_7

    .line 177
    :cond_6
    const/4 v3, 0x0

    .line 178
    :goto_7
    iput-boolean v3, v13, Lcom/yunpan/appmanage/db/FileInfo;->isExist:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .line 180
    goto :goto_8

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    goto :goto_9

    .line 183
    :cond_7
    :goto_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 187
    .line 188
    .line 189
    return-object v13

    .line 190
    :goto_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 194
    .line 195
    .line 196
    goto :goto_b

    .line 197
    :goto_a
    throw v0

    .line 198
    :goto_b
    goto :goto_a
.end method

.method public insert(Lcom/yunpan/appmanage/db/FileInfo;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/p;->beginTransaction()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__insertionAdapterOfFileInfo:Landroidx/room/e;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/room/e;->insertAndReturnId(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

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
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/room/p;->endTransaction()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public sqlQuery(Lc4/d;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc4/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/bumptech/glide/d;->S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__entityCursorConverter_comYunpanAppmanageDbFileInfo(Landroid/database/Cursor;)Lcom/yunpan/appmanage/db/FileInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :goto_2
    throw v0

    .line 46
    :goto_3
    goto :goto_2
.end method

.method public updateAllIsDelete()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfUpdateAllIsDelete:Landroidx/room/v;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/v;->acquire()Lc4/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

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
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    .line 25
    .line 26
    :try_start_2
    iget-object v2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/room/p;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfUpdateAllIsDelete:Landroidx/room/v;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_0

    .line 39
    :catchall_1
    move-exception v1

    .line 40
    :try_start_3
    iget-object v2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroidx/room/p;->endTransaction()V

    .line 43
    .line 44
    .line 45
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    :goto_0
    iget-object v2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfUpdateAllIsDelete:Landroidx/room/v;

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 49
    .line 50
    .line 51
    throw v1
.end method

.method public updateIsExist(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfUpdateIsExist:Landroidx/room/v;

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
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

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
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    :try_start_2
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/room/p;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfUpdateIsExist:Landroidx/room/v;

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
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

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
    iget-object v1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfUpdateIsExist:Landroidx/room/v;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public updateNameAndPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfUpdateNameAndPath:Landroidx/room/v;

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
    if-nez p2, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lc4/c;->y(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v0, v1, p2}, Lc4/c;->e(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    const/4 p2, 0x2

    .line 23
    if-nez p3, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, p2}, Lc4/c;->y(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-interface {v0, p2, p3}, Lc4/c;->e(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_1
    const/4 p2, 0x3

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    invoke-interface {v0, p2}, Lc4/c;->y(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    invoke-interface {v0, p2, p1}, Lc4/c;->e(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_2
    :try_start_0
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/room/p;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    :try_start_1
    invoke-interface {v0}, Lc4/e;->f()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-object p2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    .line 55
    .line 56
    :try_start_2
    iget-object p2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 57
    .line 58
    invoke-virtual {p2}, Landroidx/room/p;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfUpdateNameAndPath:Landroidx/room/v;

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 64
    .line 65
    .line 66
    return p1

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_3

    .line 69
    :catchall_1
    move-exception p1

    .line 70
    :try_start_3
    iget-object p2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 71
    .line 72
    invoke-virtual {p2}, Landroidx/room/p;->endTransaction()V

    .line 73
    .line 74
    .line 75
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :goto_3
    iget-object p2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfUpdateNameAndPath:Landroidx/room/v;

    .line 77
    .line 78
    invoke-virtual {p2, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public updatePathsRecursively(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfUpdatePathsRecursively:Landroidx/room/v;

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
    const/4 v1, 0x2

    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lc4/c;->y(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-interface {v0, v1, p2}, Lc4/c;->e(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_1
    const/4 p2, 0x3

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    invoke-interface {v0, p2}, Lc4/c;->y(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    invoke-interface {v0, p2, p1}, Lc4/c;->e(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_2
    :try_start_0
    iget-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/room/p;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    :try_start_1
    invoke-interface {v0}, Lc4/e;->f()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-object p2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    .line 55
    .line 56
    :try_start_2
    iget-object p2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 57
    .line 58
    invoke-virtual {p2}, Landroidx/room/p;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfUpdatePathsRecursively:Landroidx/room/v;

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 64
    .line 65
    .line 66
    return p1

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_3

    .line 69
    :catchall_1
    move-exception p1

    .line 70
    :try_start_3
    iget-object p2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__db:Landroidx/room/p;

    .line 71
    .line 72
    invoke-virtual {p2}, Landroidx/room/p;->endTransaction()V

    .line 73
    .line 74
    .line 75
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :goto_3
    iget-object p2, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl;->__preparedStmtOfUpdatePathsRecursively:Landroidx/room/v;

    .line 77
    .line 78
    invoke-virtual {p2, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method
