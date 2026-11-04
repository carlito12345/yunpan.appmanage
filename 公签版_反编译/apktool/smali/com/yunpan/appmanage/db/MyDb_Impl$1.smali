.class Lcom/yunpan/appmanage/db/MyDb_Impl$1;
.super Landroidx/room/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunpan/appmanage/db/MyDb_Impl;->createOpenHelper(Landroidx/room/c;)Lc4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunpan/appmanage/db/MyDb_Impl;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/db/MyDb_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/db/MyDb_Impl$1;->this$0:Lcom/yunpan/appmanage/db/MyDb_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/q;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createAllTables(Lc4/a;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS `fileList` (`path` TEXT NOT NULL, `name` TEXT NOT NULL, `parent` TEXT NOT NULL, `size` INTEGER NOT NULL, `link` TEXT, `lastModified` INTEGER NOT NULL, `isDir` INTEGER NOT NULL, `isExist` INTEGER NOT NULL DEFAULT true, PRIMARY KEY(`path`))"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lc4/a;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE TABLE IF NOT EXISTS `apkFiles` (`path` TEXT NOT NULL, `lastModified` INTEGER NOT NULL, `apkName` TEXT, `packageName` TEXT, `versionName` TEXT, `versionCode` INTEGER NOT NULL, `minSdk` INTEGER NOT NULL, `abi` TEXT, `insertTime` INTEGER NOT NULL, `sign` TEXT DEFAULT \'\', `isSystemUid` INTEGER NOT NULL DEFAULT 0, PRIMARY KEY(`path`))"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lc4/a;->d(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CREATE TABLE IF NOT EXISTS `app` (`name` TEXT, `pack` TEXT NOT NULL, `apkPath` TEXT, `apkParentPath` TEXT, `dataDir` TEXT, `uid` INTEGER NOT NULL, `isSystem` INTEGER NOT NULL, `isHide` INTEGER NOT NULL, `isDisable` INTEGER NOT NULL, `isCanStart` INTEGER NOT NULL, `isUnInstall` INTEGER NOT NULL, PRIMARY KEY(`pack`))"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lc4/a;->d(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lc4/a;->d(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'4135cdf74409428db4bd0ef6688b7463\')"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lc4/a;->d(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public dropAllTables(Lc4/a;)V
    .locals 1

    .line 1
    const-string v0, "DROP TABLE IF EXISTS `fileList`"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lc4/a;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DROP TABLE IF EXISTS `apkFiles`"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lc4/a;->d(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "DROP TABLE IF EXISTS `app`"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lc4/a;->d(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/yunpan/appmanage/db/MyDb_Impl$1;->this$0:Lcom/yunpan/appmanage/db/MyDb_Impl;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/yunpan/appmanage/db/MyDb_Impl;->access$000(Lcom/yunpan/appmanage/db/MyDb_Impl;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p1}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    throw p1

    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Lc4/a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/yunpan/appmanage/db/MyDb_Impl$1;->this$0:Lcom/yunpan/appmanage/db/MyDb_Impl;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/yunpan/appmanage/db/MyDb_Impl;->access$100(Lcom/yunpan/appmanage/db/MyDb_Impl;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lg/b;->t(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    throw p1

    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public onOpen(Lc4/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl$1;->this$0:Lcom/yunpan/appmanage/db/MyDb_Impl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/yunpan/appmanage/db/MyDb_Impl;->access$202(Lcom/yunpan/appmanage/db/MyDb_Impl;Lc4/a;)Lc4/a;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/db/MyDb_Impl$1;->this$0:Lcom/yunpan/appmanage/db/MyDb_Impl;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/yunpan/appmanage/db/MyDb_Impl;->access$300(Lcom/yunpan/appmanage/db/MyDb_Impl;Lc4/a;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/yunpan/appmanage/db/MyDb_Impl$1;->this$0:Lcom/yunpan/appmanage/db/MyDb_Impl;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/yunpan/appmanage/db/MyDb_Impl;->access$400(Lcom/yunpan/appmanage/db/MyDb_Impl;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lg/b;->t(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    throw p1

    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public onPostMigrate(Lc4/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPreMigrate(Lc4/a;)V
    .locals 4

    .line 1
    const-string v0, "db"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lke/c;

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lke/c;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const-string v1, "SELECT name FROM sqlite_master WHERE type = \'trigger\'"

    .line 14
    .line 15
    invoke-interface {p1, v1}, Lc4/a;->s(Ljava/lang/String;)Landroid/database/Cursor;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Lke/c;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    invoke-static {v1, v2}, Lqf/c;->g(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lqf/c;->e(Lke/c;)Lke/c;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v3}, Lke/c;->listIterator(I)Ljava/util/ListIterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_1
    :goto_1
    move-object v1, v0

    .line 49
    check-cast v1, Lke/a;

    .line 50
    .line 51
    invoke-virtual {v1}, Lke/a;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1}, Lke/a;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    const-string v2, "triggerName"

    .line 64
    .line 65
    invoke-static {v1, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v2, "room_fts_content_sync_"

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    const-string v2, "DROP TRIGGER IF EXISTS "

    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {p1, v1}, Lc4/a;->d(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    return-void

    .line 87
    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :catchall_1
    move-exception v0

    .line 89
    invoke-static {v1, p1}, Lqf/c;->g(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :goto_3
    throw v0

    .line 94
    :goto_4
    goto :goto_3
.end method

.method public onValidateSchema(Lc4/a;)Landroidx/room/r;
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, La4/a;

    .line 11
    .line 12
    const/4 v9, 0x1

    .line 13
    const/4 v4, 0x1

    .line 14
    const-string v6, "path"

    .line 15
    .line 16
    const-string v7, "TEXT"

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v5, 0x1

    .line 20
    move-object v3, v2

    .line 21
    invoke-direct/range {v3 .. v9}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const-string v3, "path"

    .line 25
    .line 26
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance v2, La4/a;

    .line 30
    .line 31
    const/4 v10, 0x1

    .line 32
    const/4 v5, 0x0

    .line 33
    const-string v7, "name"

    .line 34
    .line 35
    const-string v8, "TEXT"

    .line 36
    .line 37
    const/4 v9, 0x0

    .line 38
    const/4 v6, 0x1

    .line 39
    move-object v4, v2

    .line 40
    invoke-direct/range {v4 .. v10}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string v4, "name"

    .line 44
    .line 45
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    new-instance v2, La4/a;

    .line 49
    .line 50
    const/4 v11, 0x1

    .line 51
    const/4 v6, 0x0

    .line 52
    const-string v8, "parent"

    .line 53
    .line 54
    const-string v9, "TEXT"

    .line 55
    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v7, 0x1

    .line 58
    move-object v5, v2

    .line 59
    invoke-direct/range {v5 .. v11}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    const-string v5, "parent"

    .line 63
    .line 64
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    new-instance v2, La4/a;

    .line 68
    .line 69
    const/4 v12, 0x1

    .line 70
    const/4 v7, 0x0

    .line 71
    const-string v9, "size"

    .line 72
    .line 73
    const-string v10, "INTEGER"

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v8, 0x1

    .line 77
    move-object v6, v2

    .line 78
    invoke-direct/range {v6 .. v12}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    const-string v5, "size"

    .line 82
    .line 83
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    new-instance v2, La4/a;

    .line 87
    .line 88
    const/4 v12, 0x0

    .line 89
    const-string v9, "link"

    .line 90
    .line 91
    const-string v10, "TEXT"

    .line 92
    .line 93
    move-object v6, v2

    .line 94
    invoke-direct/range {v6 .. v12}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    const-string v5, "link"

    .line 98
    .line 99
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    new-instance v2, La4/a;

    .line 103
    .line 104
    const/4 v12, 0x1

    .line 105
    const-string v9, "lastModified"

    .line 106
    .line 107
    const-string v10, "INTEGER"

    .line 108
    .line 109
    move-object v6, v2

    .line 110
    invoke-direct/range {v6 .. v12}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    .line 112
    .line 113
    const-string v5, "lastModified"

    .line 114
    .line 115
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    new-instance v2, La4/a;

    .line 119
    .line 120
    const-string v9, "isDir"

    .line 121
    .line 122
    const-string v10, "INTEGER"

    .line 123
    .line 124
    move-object v6, v2

    .line 125
    invoke-direct/range {v6 .. v12}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    const-string v6, "isDir"

    .line 129
    .line 130
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    new-instance v2, La4/a;

    .line 134
    .line 135
    const/4 v13, 0x1

    .line 136
    const/4 v8, 0x0

    .line 137
    const-string v10, "isExist"

    .line 138
    .line 139
    const-string v11, "INTEGER"

    .line 140
    .line 141
    const-string v12, "true"

    .line 142
    .line 143
    const/4 v9, 0x1

    .line 144
    move-object v7, v2

    .line 145
    invoke-direct/range {v7 .. v13}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    const-string v6, "isExist"

    .line 149
    .line 150
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    new-instance v2, Ljava/util/HashSet;

    .line 154
    .line 155
    const/4 v6, 0x0

    .line 156
    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 157
    .line 158
    .line 159
    new-instance v7, Ljava/util/HashSet;

    .line 160
    .line 161
    invoke-direct {v7, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 162
    .line 163
    .line 164
    new-instance v8, La4/e;

    .line 165
    .line 166
    const-string v9, "fileList"

    .line 167
    .line 168
    invoke-direct {v8, v9, v1, v2, v7}, La4/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v9}, La4/e;->a(Lc4/a;Ljava/lang/String;)La4/e;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v8, v1}, La4/e;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    const-string v7, "\n Found:\n"

    .line 180
    .line 181
    if-nez v2, :cond_0

    .line 182
    .line 183
    new-instance v0, Landroidx/room/r;

    .line 184
    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v3, "fileList(com.yunpan.appmanage.db.FileInfo).\n Expected:\n"

    .line 188
    .line 189
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-direct {v0, v6, v1}, Landroidx/room/r;-><init>(ZLjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return-object v0

    .line 209
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 210
    .line 211
    const/16 v2, 0xb

    .line 212
    .line 213
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 214
    .line 215
    .line 216
    new-instance v15, La4/a;

    .line 217
    .line 218
    const-string v11, "path"

    .line 219
    .line 220
    const-string v12, "TEXT"

    .line 221
    .line 222
    const/4 v14, 0x1

    .line 223
    const/4 v9, 0x1

    .line 224
    const/4 v13, 0x0

    .line 225
    const/4 v10, 0x1

    .line 226
    move-object v8, v15

    .line 227
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    new-instance v3, La4/a;

    .line 234
    .line 235
    const-string v19, "lastModified"

    .line 236
    .line 237
    const-string v20, "INTEGER"

    .line 238
    .line 239
    const/16 v22, 0x1

    .line 240
    .line 241
    const/16 v17, 0x0

    .line 242
    .line 243
    const/16 v21, 0x0

    .line 244
    .line 245
    const/16 v18, 0x1

    .line 246
    .line 247
    move-object/from16 v16, v3

    .line 248
    .line 249
    invoke-direct/range {v16 .. v22}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    new-instance v3, La4/a;

    .line 256
    .line 257
    const-string v11, "apkName"

    .line 258
    .line 259
    const-string v12, "TEXT"

    .line 260
    .line 261
    const/4 v14, 0x0

    .line 262
    const/4 v9, 0x0

    .line 263
    move-object v8, v3

    .line 264
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 265
    .line 266
    .line 267
    const-string v5, "apkName"

    .line 268
    .line 269
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    new-instance v3, La4/a;

    .line 273
    .line 274
    const-string v11, "packageName"

    .line 275
    .line 276
    const-string v12, "TEXT"

    .line 277
    .line 278
    move-object v8, v3

    .line 279
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 280
    .line 281
    .line 282
    const-string v5, "packageName"

    .line 283
    .line 284
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    new-instance v3, La4/a;

    .line 288
    .line 289
    const-string v11, "versionName"

    .line 290
    .line 291
    const-string v12, "TEXT"

    .line 292
    .line 293
    move-object v8, v3

    .line 294
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 295
    .line 296
    .line 297
    const-string v5, "versionName"

    .line 298
    .line 299
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    new-instance v3, La4/a;

    .line 303
    .line 304
    const-string v11, "versionCode"

    .line 305
    .line 306
    const-string v12, "INTEGER"

    .line 307
    .line 308
    const/4 v14, 0x1

    .line 309
    move-object v8, v3

    .line 310
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 311
    .line 312
    .line 313
    const-string v5, "versionCode"

    .line 314
    .line 315
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    new-instance v3, La4/a;

    .line 319
    .line 320
    const-string v11, "minSdk"

    .line 321
    .line 322
    const-string v12, "INTEGER"

    .line 323
    .line 324
    move-object v8, v3

    .line 325
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 326
    .line 327
    .line 328
    const-string v5, "minSdk"

    .line 329
    .line 330
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    new-instance v3, La4/a;

    .line 334
    .line 335
    const-string v11, "abi"

    .line 336
    .line 337
    const-string v12, "TEXT"

    .line 338
    .line 339
    const/4 v14, 0x0

    .line 340
    move-object v8, v3

    .line 341
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 342
    .line 343
    .line 344
    const-string v5, "abi"

    .line 345
    .line 346
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    new-instance v3, La4/a;

    .line 350
    .line 351
    const-string v11, "insertTime"

    .line 352
    .line 353
    const-string v12, "INTEGER"

    .line 354
    .line 355
    const/4 v14, 0x1

    .line 356
    move-object v8, v3

    .line 357
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 358
    .line 359
    .line 360
    const-string v5, "insertTime"

    .line 361
    .line 362
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    new-instance v3, La4/a;

    .line 366
    .line 367
    const-string v11, "sign"

    .line 368
    .line 369
    const-string v12, "TEXT"

    .line 370
    .line 371
    const/4 v14, 0x0

    .line 372
    const-string v13, "\'\'"

    .line 373
    .line 374
    move-object v8, v3

    .line 375
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 376
    .line 377
    .line 378
    const-string v5, "sign"

    .line 379
    .line 380
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    new-instance v3, La4/a;

    .line 384
    .line 385
    const-string v11, "isSystemUid"

    .line 386
    .line 387
    const-string v12, "INTEGER"

    .line 388
    .line 389
    const/4 v14, 0x1

    .line 390
    const-string v13, "0"

    .line 391
    .line 392
    move-object v8, v3

    .line 393
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 394
    .line 395
    .line 396
    const-string v5, "isSystemUid"

    .line 397
    .line 398
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    new-instance v3, Ljava/util/HashSet;

    .line 402
    .line 403
    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 404
    .line 405
    .line 406
    new-instance v5, Ljava/util/HashSet;

    .line 407
    .line 408
    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 409
    .line 410
    .line 411
    new-instance v8, La4/e;

    .line 412
    .line 413
    const-string v9, "apkFiles"

    .line 414
    .line 415
    invoke-direct {v8, v9, v1, v3, v5}, La4/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 416
    .line 417
    .line 418
    invoke-static {v0, v9}, La4/e;->a(Lc4/a;Ljava/lang/String;)La4/e;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-virtual {v8, v1}, La4/e;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    if-nez v3, :cond_1

    .line 427
    .line 428
    new-instance v0, Landroidx/room/r;

    .line 429
    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    const-string v3, "apkFiles(com.yunpan.appmanage.db.ApkFileBean).\n Expected:\n"

    .line 433
    .line 434
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-direct {v0, v6, v1}, Landroidx/room/r;-><init>(ZLjava/lang/String;)V

    .line 451
    .line 452
    .line 453
    return-object v0

    .line 454
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 455
    .line 456
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 457
    .line 458
    .line 459
    new-instance v2, La4/a;

    .line 460
    .line 461
    const-string v11, "name"

    .line 462
    .line 463
    const-string v12, "TEXT"

    .line 464
    .line 465
    const/4 v14, 0x0

    .line 466
    const/4 v9, 0x0

    .line 467
    const/4 v13, 0x0

    .line 468
    const/4 v10, 0x1

    .line 469
    move-object v8, v2

    .line 470
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    new-instance v2, La4/a;

    .line 477
    .line 478
    const-string v18, "pack"

    .line 479
    .line 480
    const-string v19, "TEXT"

    .line 481
    .line 482
    const/16 v21, 0x1

    .line 483
    .line 484
    const/16 v16, 0x1

    .line 485
    .line 486
    const/16 v20, 0x0

    .line 487
    .line 488
    const/16 v17, 0x1

    .line 489
    .line 490
    move-object v15, v2

    .line 491
    invoke-direct/range {v15 .. v21}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 492
    .line 493
    .line 494
    const-string v3, "pack"

    .line 495
    .line 496
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    new-instance v2, La4/a;

    .line 500
    .line 501
    const-string v11, "apkPath"

    .line 502
    .line 503
    const-string v12, "TEXT"

    .line 504
    .line 505
    move-object v8, v2

    .line 506
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 507
    .line 508
    .line 509
    const-string v3, "apkPath"

    .line 510
    .line 511
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    new-instance v2, La4/a;

    .line 515
    .line 516
    const-string v11, "apkParentPath"

    .line 517
    .line 518
    const-string v12, "TEXT"

    .line 519
    .line 520
    move-object v8, v2

    .line 521
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 522
    .line 523
    .line 524
    const-string v3, "apkParentPath"

    .line 525
    .line 526
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    new-instance v2, La4/a;

    .line 530
    .line 531
    const-string v11, "dataDir"

    .line 532
    .line 533
    const-string v12, "TEXT"

    .line 534
    .line 535
    move-object v8, v2

    .line 536
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 537
    .line 538
    .line 539
    const-string v3, "dataDir"

    .line 540
    .line 541
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    new-instance v2, La4/a;

    .line 545
    .line 546
    const-string v11, "uid"

    .line 547
    .line 548
    const-string v12, "INTEGER"

    .line 549
    .line 550
    const/4 v14, 0x1

    .line 551
    move-object v8, v2

    .line 552
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 553
    .line 554
    .line 555
    const-string v3, "uid"

    .line 556
    .line 557
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    new-instance v2, La4/a;

    .line 561
    .line 562
    const-string v11, "isSystem"

    .line 563
    .line 564
    const-string v12, "INTEGER"

    .line 565
    .line 566
    move-object v8, v2

    .line 567
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 568
    .line 569
    .line 570
    const-string v3, "isSystem"

    .line 571
    .line 572
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    new-instance v2, La4/a;

    .line 576
    .line 577
    const-string v11, "isHide"

    .line 578
    .line 579
    const-string v12, "INTEGER"

    .line 580
    .line 581
    move-object v8, v2

    .line 582
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 583
    .line 584
    .line 585
    const-string v3, "isHide"

    .line 586
    .line 587
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    new-instance v2, La4/a;

    .line 591
    .line 592
    const-string v11, "isDisable"

    .line 593
    .line 594
    const-string v12, "INTEGER"

    .line 595
    .line 596
    move-object v8, v2

    .line 597
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 598
    .line 599
    .line 600
    const-string v3, "isDisable"

    .line 601
    .line 602
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    new-instance v2, La4/a;

    .line 606
    .line 607
    const-string v11, "isCanStart"

    .line 608
    .line 609
    const-string v12, "INTEGER"

    .line 610
    .line 611
    move-object v8, v2

    .line 612
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 613
    .line 614
    .line 615
    const-string v3, "isCanStart"

    .line 616
    .line 617
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    new-instance v2, La4/a;

    .line 621
    .line 622
    const-string v11, "isUnInstall"

    .line 623
    .line 624
    const-string v12, "INTEGER"

    .line 625
    .line 626
    move-object v8, v2

    .line 627
    invoke-direct/range {v8 .. v14}, La4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 628
    .line 629
    .line 630
    const-string v3, "isUnInstall"

    .line 631
    .line 632
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    new-instance v2, Ljava/util/HashSet;

    .line 636
    .line 637
    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 638
    .line 639
    .line 640
    new-instance v3, Ljava/util/HashSet;

    .line 641
    .line 642
    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 643
    .line 644
    .line 645
    new-instance v4, La4/e;

    .line 646
    .line 647
    const-string v5, "app"

    .line 648
    .line 649
    invoke-direct {v4, v5, v1, v2, v3}, La4/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 650
    .line 651
    .line 652
    invoke-static {v0, v5}, La4/e;->a(Lc4/a;Ljava/lang/String;)La4/e;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    invoke-virtual {v4, v0}, La4/e;->equals(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v1

    .line 660
    if-nez v1, :cond_2

    .line 661
    .line 662
    new-instance v1, Landroidx/room/r;

    .line 663
    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    .line 665
    .line 666
    const-string v3, "app(com.yunpan.appmanage.db.AppBean).\n Expected:\n"

    .line 667
    .line 668
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-direct {v1, v6, v0}, Landroidx/room/r;-><init>(ZLjava/lang/String;)V

    .line 685
    .line 686
    .line 687
    return-object v1

    .line 688
    :cond_2
    new-instance v0, Landroidx/room/r;

    .line 689
    .line 690
    const/4 v1, 0x1

    .line 691
    const/4 v2, 0x0

    .line 692
    invoke-direct {v0, v1, v2}, Landroidx/room/r;-><init>(ZLjava/lang/String;)V

    .line 693
    .line 694
    .line 695
    return-object v0
.end method
