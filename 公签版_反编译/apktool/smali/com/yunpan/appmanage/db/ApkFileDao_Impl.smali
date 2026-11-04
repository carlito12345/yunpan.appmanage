.class public final Lcom/yunpan/appmanage/db/ApkFileDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yunpan/appmanage/db/ApkFileDao;


# instance fields
.field private final __db:Landroidx/room/p;

.field private final __insertionAdapterOfApkFileBean:Landroidx/room/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/e;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteInsertTime:Landroidx/room/v;

.field private final __preparedStmtOfUpdateBeanAbi:Landroidx/room/v;


# direct methods
.method public constructor <init>(Landroidx/room/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

    .line 5
    .line 6
    new-instance v0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl$1;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/ApkFileDao_Impl$1;-><init>(Lcom/yunpan/appmanage/db/ApkFileDao_Impl;Landroidx/room/p;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__insertionAdapterOfApkFileBean:Landroidx/room/e;

    .line 12
    .line 13
    new-instance v0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl$2;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/ApkFileDao_Impl$2;-><init>(Lcom/yunpan/appmanage/db/ApkFileDao_Impl;Landroidx/room/p;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__preparedStmtOfDeleteInsertTime:Landroidx/room/v;

    .line 19
    .line 20
    new-instance v0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl$3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/yunpan/appmanage/db/ApkFileDao_Impl$3;-><init>(Lcom/yunpan/appmanage/db/ApkFileDao_Impl;Landroidx/room/p;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__preparedStmtOfUpdateBeanAbi:Landroidx/room/v;

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
.method public deleteInsertTime(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__preparedStmtOfDeleteInsertTime:Landroidx/room/v;

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
    invoke-interface {v0, v1, p1, p2}, Lc4/c;->m(IJ)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/room/p;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :try_start_1
    invoke-interface {v0}, Lc4/e;->f()I

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    .line 28
    .line 29
    :try_start_2
    iget-object p1, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/room/p;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__preparedStmtOfDeleteInsertTime:Landroidx/room/v;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception p1

    .line 43
    :try_start_3
    iget-object p2, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroidx/room/p;->endTransaction()V

    .line 46
    .line 47
    .line 48
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    :goto_0
    iget-object p2, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__preparedStmtOfDeleteInsertTime:Landroidx/room/v;

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public getApkFileBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/ApkFileBean;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "select * from apkFiles where `path`=?"

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
    iget-object v0, v1, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

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
    const-string v5, "lastModified"

    .line 39
    .line 40
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, "apkName"

    .line 45
    .line 46
    invoke-static {v4, v6}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const-string v7, "packageName"

    .line 51
    .line 52
    invoke-static {v4, v7}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const-string v8, "versionName"

    .line 57
    .line 58
    invoke-static {v4, v8}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const-string v9, "versionCode"

    .line 63
    .line 64
    invoke-static {v4, v9}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const-string v10, "minSdk"

    .line 69
    .line 70
    invoke-static {v4, v10}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const-string v11, "abi"

    .line 75
    .line 76
    invoke-static {v4, v11}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    const-string v12, "insertTime"

    .line 81
    .line 82
    invoke-static {v4, v12}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    const-string v13, "sign"

    .line 87
    .line 88
    invoke-static {v4, v13}, Lcom/bumptech/glide/c;->z(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    const-string v14, "isSystemUid"

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
    if-eqz v15, :cond_8

    .line 104
    .line 105
    new-instance v15, Lcom/yunpan/appmanage/db/ApkFileBean;

    .line 106
    .line 107
    invoke-direct {v15}, Lcom/yunpan/appmanage/db/ApkFileBean;-><init>()V

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
    iput-object v3, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->path:Ljava/lang/String;

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    goto/16 :goto_8

    .line 121
    .line 122
    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->path:Ljava/lang/String;

    .line 127
    .line 128
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 129
    .line 130
    .line 131
    move-result-wide v0

    .line 132
    iput-wide v0, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->lastModified:J

    .line 133
    .line 134
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_2

    .line 139
    .line 140
    iput-object v3, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->apkName:Ljava/lang/String;

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->apkName:Ljava/lang/String;

    .line 148
    .line 149
    :goto_2
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    iput-object v3, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->packageName:Ljava/lang/String;

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iput-object v0, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->packageName:Ljava/lang/String;

    .line 163
    .line 164
    :goto_3
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_4

    .line 169
    .line 170
    iput-object v3, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->versionName:Ljava/lang/String;

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iput-object v0, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->versionName:Ljava/lang/String;

    .line 178
    .line 179
    :goto_4
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 180
    .line 181
    .line 182
    move-result-wide v0

    .line 183
    iput-wide v0, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->versionCode:J

    .line 184
    .line 185
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    iput v0, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->minSdk:I

    .line 190
    .line 191
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_5

    .line 196
    .line 197
    iput-object v3, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->abi:Ljava/lang/String;

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_5
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iput-object v0, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->abi:Ljava/lang/String;

    .line 205
    .line 206
    :goto_5
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 207
    .line 208
    .line 209
    move-result-wide v0

    .line 210
    iput-wide v0, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->insertTime:J

    .line 211
    .line 212
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_6

    .line 217
    .line 218
    iput-object v3, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->sign:Ljava/lang/String;

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_6
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iput-object v0, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->sign:Ljava/lang/String;

    .line 226
    .line 227
    :goto_6
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_7

    .line 232
    .line 233
    const/4 v3, 0x1

    .line 234
    goto :goto_7

    .line 235
    :cond_7
    const/4 v3, 0x0

    .line 236
    :goto_7
    iput-boolean v3, v15, Lcom/yunpan/appmanage/db/ApkFileBean;->isSystemUid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .line 238
    move-object v3, v15

    .line 239
    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 243
    .line 244
    .line 245
    return-object v3

    .line 246
    :goto_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, Landroidx/room/t;->K()V

    .line 250
    .line 251
    .line 252
    throw v0
.end method

.method public insert(Lcom/yunpan/appmanage/db/ApkFileBean;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/p;->beginTransaction()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__insertionAdapterOfApkFileBean:Landroidx/room/e;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/room/e;->insertAndReturnId(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-object p1, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

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
    iget-object v0, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/room/p;->endTransaction()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public updateBeanAbi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/p;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__preparedStmtOfUpdateBeanAbi:Landroidx/room/v;

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
    if-nez p1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, p2}, Lc4/c;->y(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-interface {v0, p2, p1}, Lc4/c;->e(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

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
    iget-object p1, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/room/p;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .line 44
    .line 45
    :try_start_2
    iget-object p1, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/room/p;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__preparedStmtOfUpdateBeanAbi:Landroidx/room/v;

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
    iget-object p2, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__db:Landroidx/room/p;

    .line 60
    .line 61
    invoke-virtual {p2}, Landroidx/room/p;->endTransaction()V

    .line 62
    .line 63
    .line 64
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    :goto_2
    iget-object p2, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl;->__preparedStmtOfUpdateBeanAbi:Landroidx/room/v;

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Landroidx/room/v;->release(Lc4/e;)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method
