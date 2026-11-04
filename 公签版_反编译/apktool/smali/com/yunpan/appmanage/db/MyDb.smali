.class public abstract Lcom/yunpan/appmanage/db/MyDb;
.super Landroidx/room/p;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lcom/yunpan/appmanage/db/MyDb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/p;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yunpan/appmanage/db/MyDb;->lambda$addIfFile$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yunpan/appmanage/db/MyDb;->lambda$deleteDir_thread$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/yunpan/appmanage/db/MyDb;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yunpan/appmanage/db/MyDb;->lambda$addFile_thread$1(Ljava/lang/String;)V

    return-void
.end method

.method public static get()Lcom/yunpan/appmanage/db/MyDb;
    .locals 1

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/db/MyDb;->INSTANCE:Lcom/yunpan/appmanage/db/MyDb;

    .line 2
    .line 3
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/db/MyDb;->INSTANCE:Lcom/yunpan/appmanage/db/MyDb;

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string p0, "context"

    .line 10
    .line 11
    invoke-static {v2, p0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    const/16 v1, 0x9

    .line 17
    .line 18
    if-ge v0, v1, :cond_7

    .line 19
    .line 20
    const-string v1, "files2.db"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_6

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v8, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v9, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v4, Landroidx/room/o;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-direct {v4, v0}, Landroidx/room/o;-><init>(I)V

    .line 59
    .line 60
    .line 61
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 62
    .line 63
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v3, Lgf/g;

    .line 67
    .line 68
    const/16 v0, 0x14

    .line 69
    .line 70
    invoke-direct {v3, v0}, Lgf/g;-><init>(I)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Landroidx/room/c;

    .line 74
    .line 75
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    const-string v6, "activity"

    .line 78
    .line 79
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    instance-of v10, v6, Landroid/app/ActivityManager;

    .line 84
    .line 85
    const/4 v11, 0x0

    .line 86
    if-eqz v10, :cond_1

    .line 87
    .line 88
    check-cast v6, Landroid/app/ActivityManager;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    move-object v6, v11

    .line 92
    :goto_1
    if-eqz v6, :cond_3

    .line 93
    .line 94
    const/16 v10, 0x13

    .line 95
    .line 96
    if-lt v1, v10, :cond_2

    .line 97
    .line 98
    invoke-static {v6}, Landroidx/activity/i;->c(Landroid/app/ActivityManager;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    :cond_2
    if-nez p0, :cond_3

    .line 103
    .line 104
    const/4 p0, 0x3

    .line 105
    const/4 v6, 0x3

    .line 106
    goto :goto_2

    .line 107
    :cond_3
    const/4 p0, 0x2

    .line 108
    const/4 v6, 0x2

    .line 109
    :goto_2
    move-object v1, v0

    .line 110
    invoke-direct/range {v1 .. v9}, Landroidx/room/c;-><init>(Landroid/content/Context;Lgf/g;Landroidx/room/o;Ljava/util/ArrayList;ILjava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 111
    .line 112
    .line 113
    const-class p0, Lcom/yunpan/appmanage/db/MyDb;

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1}, Lue/d;->b(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v2}, Lue/d;->b(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    const-string v3, "fullPackage"

    .line 134
    .line 135
    invoke-static {v1, v3}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    const/4 v4, 0x1

    .line 143
    if-nez v3, :cond_4

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    add-int/2addr v3, v4

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    const-string v3, "this as java.lang.String).substring(startIndex)"

    .line 156
    .line 157
    invoke-static {v2, v3}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_3
    const/16 v3, 0x5f

    .line 161
    .line 162
    const/16 v5, 0x2e

    .line 163
    .line 164
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    const-string v3, "replace(...)"

    .line 169
    .line 170
    invoke-static {v2, v3}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v3, "_Impl"

    .line 174
    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-nez v3, :cond_5

    .line 184
    .line 185
    move-object v1, v2

    .line 186
    goto :goto_4

    .line 187
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-static {v1, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    const-string v3, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.Room.getGeneratedImplementation>"

    .line 214
    .line 215
    invoke-static {v1, v3}, Lue/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v1, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    check-cast p0, Landroidx/room/p;

    .line 227
    .line 228
    invoke-virtual {p0, v0}, Landroidx/room/p;->init(Landroidx/room/c;)V

    .line 229
    .line 230
    .line 231
    check-cast p0, Lcom/yunpan/appmanage/db/MyDb;

    .line 232
    .line 233
    sput-object p0, Lcom/yunpan/appmanage/db/MyDb;->INSTANCE:Lcom/yunpan/appmanage/db/MyDb;

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 237
    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v2, "Failed to create an instance of "

    .line 241
    .line 242
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v0

    .line 260
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 261
    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v2, "Cannot access the constructor "

    .line 265
    .line 266
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw v0

    .line 284
    :catch_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 285
    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    const-string v3, "Cannot find implementation for "

    .line 289
    .line 290
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string p0, ". "

    .line 301
    .line 302
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string p0, " does not exist"

    .line 309
    .line 310
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw v0

    .line 321
    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 322
    .line 323
    goto/16 :goto_0

    .line 324
    .line 325
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 326
    .line 327
    const-string v0, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    .line 328
    .line 329
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    throw p0

    .line 333
    :cond_8
    :goto_6
    return-void
.end method

.method private synthetic lambda$addFile_thread$1(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$addIfFile$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p0}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private static synthetic lambda$deleteDir_thread$2(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p0}, Lcom/yunpan/appmanage/db/FileInfoDao;->deleteDir(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public addFile(Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Lx9/w3;

    invoke-direct {v0, p1}, Lx9/w3;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    new-instance p1, Lcom/yunpan/appmanage/db/FileInfo;

    iget-object v2, v0, Lx9/w3;->b:Ljava/lang/String;

    iget-object v3, v0, Lx9/w3;->a:Ljava/lang/String;

    iget-object v4, v0, Lx9/w3;->e:Ljava/lang/String;

    iget-wide v5, v0, Lx9/w3;->d:J

    iget-object v7, v0, Lx9/w3;->f:Ljava/lang/String;

    iget-wide v8, v0, Lx9/w3;->g:J

    iget-boolean v10, v0, Lx9/w3;->c:Z

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 5
    invoke-virtual {p0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yunpan/appmanage/db/FileInfoDao;->insert(Lcom/yunpan/appmanage/db/FileInfo;)J

    :catch_0
    return-void
.end method

.method public addFile(Lx9/w3;)V
    .locals 11

    .line 6
    iget-object v0, p1, Lx9/w3;->b:Ljava/lang/String;

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Lcom/yunpan/appmanage/db/FileInfo;

    iget-object v2, p1, Lx9/w3;->b:Ljava/lang/String;

    iget-object v3, p1, Lx9/w3;->a:Ljava/lang/String;

    iget-object v4, p1, Lx9/w3;->e:Ljava/lang/String;

    iget-wide v5, p1, Lx9/w3;->d:J

    iget-object v7, p1, Lx9/w3;->f:Ljava/lang/String;

    iget-wide v8, p1, Lx9/w3;->g:J

    iget-boolean v10, p1, Lx9/w3;->c:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 8
    invoke-virtual {p0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/yunpan/appmanage/db/FileInfoDao;->insert(Lcom/yunpan/appmanage/db/FileInfo;)J

    return-void
.end method

.method public addFile_thread(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 2
    .line 3
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    new-instance v1, La2/c0;

    .line 8
    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-direct {v1, p0, v2, p1}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public addIfFile(Ljava/io/File;)Z
    .locals 0

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yunpan/appmanage/db/MyDb;->addIfFile(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addIfFile(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 3
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 6
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 7
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v2, Lcom/yunpan/appmanage/db/b;

    invoke-direct {v2, v1, p1}, Lcom/yunpan/appmanage/db/b;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v2}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    return v1
.end method

.method public addList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "INSERT OR REPLACE INTO fileList(path,name,parent,size,link,lastModified,isDir) values(?,?,?,?,?,?,?)"

    .line 3
    .line 4
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Landroidx/room/p;->compileStatement(Ljava/lang/String;)Lc4/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroidx/room/p;->getOpenHelper()Lc4/b;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ld4/g;

    .line 21
    .line 22
    invoke-virtual {v1}, Ld4/g;->r()Lc4/a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Lc4/a;->a()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/yunpan/appmanage/db/FileInfo;

    .line 44
    .line 45
    iget-object v3, v2, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    .line 46
    .line 47
    const-string v4, "\\"

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v3, v2, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    invoke-interface {v0, v4, v3}, Lc4/c;->e(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v3, v2, Lcom/yunpan/appmanage/db/FileInfo;->name:Ljava/lang/String;

    .line 63
    .line 64
    const/4 v4, 0x2

    .line 65
    invoke-interface {v0, v4, v3}, Lc4/c;->e(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v3, v2, Lcom/yunpan/appmanage/db/FileInfo;->parent:Ljava/lang/String;

    .line 69
    .line 70
    const/4 v4, 0x3

    .line 71
    invoke-interface {v0, v4, v3}, Lc4/c;->e(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-wide v3, v2, Lcom/yunpan/appmanage/db/FileInfo;->size:J

    .line 75
    .line 76
    const/4 v5, 0x4

    .line 77
    invoke-interface {v0, v5, v3, v4}, Lc4/c;->m(IJ)V

    .line 78
    .line 79
    .line 80
    iget-object v3, v2, Lcom/yunpan/appmanage/db/FileInfo;->link:Ljava/lang/String;

    .line 81
    .line 82
    const/4 v4, 0x5

    .line 83
    invoke-interface {v0, v4, v3}, Lc4/c;->e(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-wide v3, v2, Lcom/yunpan/appmanage/db/FileInfo;->lastModified:J

    .line 87
    .line 88
    const/4 v5, 0x6

    .line 89
    invoke-interface {v0, v5, v3, v4}, Lc4/c;->m(IJ)V

    .line 90
    .line 91
    .line 92
    iget-boolean v2, v2, Lcom/yunpan/appmanage/db/FileInfo;->isDir:Z

    .line 93
    .line 94
    if-eqz v2, :cond_1

    .line 95
    .line 96
    const-wide/16 v2, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    const-wide/16 v2, 0x0

    .line 100
    .line 101
    :goto_1
    const/4 v4, 0x7

    .line 102
    invoke-interface {v0, v4, v2, v3}, Lc4/c;->m(IJ)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v0}, Lc4/e;->G()J

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    invoke-interface {v1}, Lc4/a;->n()V

    .line 112
    .line 113
    .line 114
    invoke-interface {v1}, Lc4/a;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .line 119
    .line 120
    :catch_0
    :try_start_2
    monitor-exit p0

    .line 121
    return-void

    .line 122
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    goto :goto_4

    .line 124
    :goto_3
    throw p1

    .line 125
    :goto_4
    goto :goto_3
.end method

.method public deleteDir_thread(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 2
    .line 3
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    new-instance v1, Lcom/yunpan/appmanage/db/a;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p1, v2}, Lcom/yunpan/appmanage/db/a;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public abstract getApkFileDao()Lcom/yunpan/appmanage/db/ApkFileDao;
.end method

.method public abstract getAppDao()Lcom/yunpan/appmanage/db/AppDao;
.end method

.method public abstract getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;
.end method

.method public updateName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lx9/w3;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Lx9/w3;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p2, Lcom/yunpan/appmanage/db/FileInfo;

    .line 14
    .line 15
    iget-object v1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p1, Lx9/w3;->e:Ljava/lang/String;

    .line 20
    .line 21
    iget-wide v4, p1, Lx9/w3;->d:J

    .line 22
    .line 23
    iget-object v6, p1, Lx9/w3;->f:Ljava/lang/String;

    .line 24
    .line 25
    iget-wide v7, p1, Lx9/w3;->g:J

    .line 26
    .line 27
    iget-boolean v9, p1, Lx9/w3;->c:Z

    .line 28
    .line 29
    move-object v0, p2

    .line 30
    invoke-direct/range {v0 .. v9}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1, p2}, Lcom/yunpan/appmanage/db/FileInfoDao;->insert(Lcom/yunpan/appmanage/db/FileInfo;)J

    .line 38
    .line 39
    .line 40
    return-void
.end method
