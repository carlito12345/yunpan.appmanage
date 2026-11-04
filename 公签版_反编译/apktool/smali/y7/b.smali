.class public final Ly7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Ly7/b;->a:I

    iput-object p2, p0, Ly7/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Ly7/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    const/16 p3, 0x17

    iput p3, p0, Ly7/b;->a:I

    .line 6
    iput-object p1, p0, Ly7/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Ly7/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p2, p0, Ly7/b;->a:I

    iput-object p1, p0, Ly7/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Ly7/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkh/e;)V
    .locals 2

    const/16 v0, 0xd

    iput v0, p0, Ly7/b;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ly7/b;->c:Ljava/lang/Object;

    .line 5
    new-instance p1, Lkf/d;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lkf/d;-><init>(IZ)V

    iput-object p1, p0, Ly7/b;->b:Ljava/lang/Object;

    return-void
.end method

.method private final b()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/io/File;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/io/File;

    .line 17
    .line 18
    const-string v3, ""

    .line 19
    .line 20
    invoke-virtual {v1, v0, v2, v3}, Ly7/b;->a(Ljava/io/File;ZLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_7

    .line 24
    .line 25
    :cond_0
    const-string v0, ""

    .line 26
    .line 27
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v4, 0x1a

    .line 30
    .line 31
    if-lt v3, v4, :cond_2

    .line 32
    .line 33
    :try_start_0
    iget-object v3, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Ljava/io/File;

    .line 36
    .line 37
    invoke-static {v3}, Lvb/t;->d(Ljava/io/File;)Ljava/nio/file/Path;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Lvb/t;->k(Ljava/nio/file/Path;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    iget-object v3, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v3, Ljava/io/File;

    .line 50
    .line 51
    invoke-static {v3}, Lvb/t;->d(Ljava/io/File;)Ljava/nio/file/Path;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3}, Lvb/t;->e(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v3}, Lvb/t;->b(Ljava/nio/file/Path;)Ljava/io/File;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v3}, Lvb/t;->b(Ljava/nio/file/Path;)Ljava/io/File;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    iget-object v3, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v3, Ljava/io/File;

    .line 80
    .line 81
    invoke-virtual {v1, v3, v2, v0}, Ly7/b;->a(Ljava/io/File;ZLjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :catch_0
    :cond_1
    move-object v3, v0

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object v3, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v3, Ljava/io/File;

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-object v4, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v4, Ljava/io/File;

    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_1

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_1

    .line 118
    .line 119
    iget-object v3, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v3, Ljava/io/File;

    .line 122
    .line 123
    invoke-virtual {v1, v3, v2, v0}, Ly7/b;->a(Ljava/io/File;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :goto_0
    iget-object v0, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Ljava/io/File;

    .line 130
    .line 131
    const/4 v4, 0x0

    .line 132
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 133
    .line 134
    .line 135
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    goto :goto_1

    .line 137
    :catch_1
    nop

    .line 138
    move-object v5, v4

    .line 139
    :goto_1
    const/4 v6, 0x1

    .line 140
    if-nez v5, :cond_5

    .line 141
    .line 142
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 143
    .line 144
    const/16 v8, 0x1e

    .line 145
    .line 146
    if-lt v7, v8, :cond_5

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    const-string v8, "/Android/data"

    .line 153
    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    if-eqz v7, :cond_5

    .line 159
    .line 160
    new-instance v7, Ljava/io/File;

    .line 161
    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    add-int/lit8 v0, v0, -0x4

    .line 180
    .line 181
    invoke-virtual {v9, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v0, "\u200bdata"

    .line 189
    .line 190
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    if-eqz v5, :cond_5

    .line 205
    .line 206
    array-length v0, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 207
    if-lez v0, :cond_5

    .line 208
    .line 209
    :try_start_3
    new-instance v0, Lcom/yunpan/appmanage/db/FileInfo;

    .line 210
    .line 211
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    const-string v10, "data"

    .line 216
    .line 217
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    const-string v14, ""

    .line 222
    .line 223
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    .line 224
    .line 225
    .line 226
    move-result-wide v15

    .line 227
    const/16 v17, 0x1

    .line 228
    .line 229
    const-wide/16 v12, 0x0

    .line 230
    .line 231
    move-object v8, v0

    .line 232
    invoke-direct/range {v8 .. v17}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 233
    .line 234
    .line 235
    iget-object v7, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v7, Lcom/yunpan/appmanage/util/z;

    .line 238
    .line 239
    iget-object v7, v7, Lcom/yunpan/appmanage/util/z;->a:Ljava/lang/Object;

    .line 240
    .line 241
    monitor-enter v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 242
    :try_start_4
    iget-object v8, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v8, Lcom/yunpan/appmanage/util/z;

    .line 245
    .line 246
    iget-object v8, v8, Lcom/yunpan/appmanage/util/z;->b:Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v0, Lcom/yunpan/appmanage/util/z;

    .line 254
    .line 255
    iget-object v0, v0, Lcom/yunpan/appmanage/util/z;->b:Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    const/16 v8, 0x190

    .line 262
    .line 263
    if-lt v0, v8, :cond_3

    .line 264
    .line 265
    new-instance v4, Ljava/util/ArrayList;

    .line 266
    .line 267
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v0, Lcom/yunpan/appmanage/util/z;

    .line 270
    .line 271
    iget-object v0, v0, Lcom/yunpan/appmanage/util/z;->b:Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 274
    .line 275
    .line 276
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v0, Lcom/yunpan/appmanage/util/z;

    .line 279
    .line 280
    iget-object v0, v0, Lcom/yunpan/appmanage/util/z;->b:Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :catchall_0
    move-exception v0

    .line 287
    goto :goto_4

    .line 288
    :cond_3
    :goto_2
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 289
    if-eqz v4, :cond_4

    .line 290
    .line 291
    :try_start_5
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast v0, Lcom/yunpan/appmanage/util/z;

    .line 294
    .line 295
    iget-object v0, v0, Lcom/yunpan/appmanage/util/z;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 298
    .line 299
    .line 300
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v0, Lcom/yunpan/appmanage/util/z;

    .line 303
    .line 304
    iget-object v7, v0, Lcom/yunpan/appmanage/util/z;->e:Ljava/util/concurrent/ExecutorService;

    .line 305
    .line 306
    new-instance v8, Ly7/b;

    .line 307
    .line 308
    const/4 v9, 0x4

    .line 309
    const/4 v10, 0x0

    .line 310
    invoke-direct {v8, v9, v0, v4, v10}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 311
    .line 312
    .line 313
    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :catch_2
    nop

    .line 318
    :cond_4
    :goto_3
    const/4 v0, 0x1

    .line 319
    goto :goto_5

    .line 320
    :goto_4
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 321
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 322
    :catch_3
    nop

    .line 323
    :cond_5
    const/4 v0, 0x0

    .line 324
    :goto_5
    if-eqz v5, :cond_6

    .line 325
    .line 326
    array-length v4, v5

    .line 327
    :goto_6
    if-ge v2, v4, :cond_6

    .line 328
    .line 329
    aget-object v7, v5, v2

    .line 330
    .line 331
    iget-object v8, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v8, Lcom/yunpan/appmanage/util/z;

    .line 334
    .line 335
    iget-object v8, v8, Lcom/yunpan/appmanage/util/z;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 336
    .line 337
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 338
    .line 339
    .line 340
    iget-object v8, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v8, Lcom/yunpan/appmanage/util/z;

    .line 343
    .line 344
    iget-object v9, v8, Lcom/yunpan/appmanage/util/z;->c:Ljava/util/concurrent/ExecutorService;

    .line 345
    .line 346
    new-instance v10, Ly7/b;

    .line 347
    .line 348
    const/4 v11, 0x5

    .line 349
    const/4 v12, 0x0

    .line 350
    invoke-direct {v10, v11, v8, v7, v12}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 351
    .line 352
    .line 353
    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 354
    .line 355
    .line 356
    add-int/lit8 v2, v2, 0x1

    .line 357
    .line 358
    goto :goto_6

    .line 359
    :cond_6
    if-eqz v0, :cond_7

    .line 360
    .line 361
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v0, Lcom/yunpan/appmanage/util/z;

    .line 364
    .line 365
    iget-object v0, v0, Lcom/yunpan/appmanage/util/z;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 368
    .line 369
    .line 370
    goto :goto_7

    .line 371
    :cond_7
    iget-object v0, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v0, Ljava/io/File;

    .line 374
    .line 375
    invoke-virtual {v1, v0, v6, v3}, Ly7/b;->a(Ljava/io/File;ZLjava/lang/String;)V

    .line 376
    .line 377
    .line 378
    :goto_7
    return-void
.end method

.method private final c()V
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v3, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 8
    .line 9
    iget v4, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->type:I

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    if-ne v4, v5, :cond_39

    .line 13
    .line 14
    const-string v4, "\u4e0a\u4f20\u4e2d"

    .line 15
    .line 16
    iput-object v4, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 17
    .line 18
    const-string v4, "\u505c\u6b62"

    .line 19
    .line 20
    iput-object v4, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 21
    .line 22
    iput-boolean v2, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->isTask_stop:Z

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/16 v4, 0xa

    .line 29
    .line 30
    iput v4, v3, Landroid/os/Message;->what:I

    .line 31
    .line 32
    iget-object v6, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v6, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 35
    .line 36
    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v6, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v6, Lcom/yunpan/appmanage/carsdk/u;

    .line 41
    .line 42
    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 43
    .line 44
    .line 45
    iget-object v3, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v3, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 48
    .line 49
    iget-object v6, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 50
    .line 51
    iget v7, v6, Lx9/n5;->a:I

    .line 52
    .line 53
    const/4 v8, -0x1

    .line 54
    const-string v9, ""

    .line 55
    .line 56
    if-ne v7, v0, :cond_b

    .line 57
    .line 58
    iget-object v4, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v4, Lcom/yunpan/appmanage/carsdk/u;

    .line 61
    .line 62
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 63
    .line 64
    iget-object v5, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 65
    .line 66
    const-string v6, ".txt"

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_0

    .line 73
    .line 74
    const-string v5, "text/plain"

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 78
    .line 79
    iget-object v5, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 80
    .line 81
    const-string v6, ".apk"

    .line 82
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_1

    .line 88
    .line 89
    const-string v5, "application/vnd.android.package-archive"

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 93
    .line 94
    iget-object v5, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 95
    .line 96
    const-string v6, ".zip"

    .line 97
    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_2

    .line 103
    .line 104
    const-string v5, "application/x-zip-compressed"

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 108
    .line 109
    iget-object v5, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 110
    .line 111
    const-string v6, ".rar"

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-nez v5, :cond_7

    .line 118
    .line 119
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 120
    .line 121
    iget-object v5, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 122
    .line 123
    const-string v6, ".7z"

    .line 124
    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_3

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 133
    .line 134
    iget-object v5, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 135
    .line 136
    const-string v6, ".exe"

    .line 137
    .line 138
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    const-string v6, "application/x-msdownload"

    .line 143
    .line 144
    if-eqz v5, :cond_5

    .line 145
    .line 146
    :cond_4
    move-object v5, v6

    .line 147
    goto :goto_1

    .line 148
    :cond_5
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 149
    .line 150
    iget-object v5, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 151
    .line 152
    const-string v7, ".flac"

    .line 153
    .line 154
    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_6

    .line 159
    .line 160
    const-string v5, "audio/flac"

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_6
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 164
    .line 165
    iget-object v5, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 166
    .line 167
    const-string v7, ".e"

    .line 168
    .line 169
    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_4

    .line 174
    .line 175
    const-string v5, "image/e"

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_7
    :goto_0
    const-string v5, "application/x-compressed"

    .line 179
    .line 180
    :goto_1
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 186
    .line 187
    const-string v10, "E MMM dd yyyy HH:mm:ss "

    .line 188
    .line 189
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 190
    .line 191
    invoke-direct {v7, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 192
    .line 193
    .line 194
    new-instance v10, Ljava/util/Date;

    .line 195
    .line 196
    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v7, "GMT+0800 (\u4e2d\u56fd\u6807\u51c6\u65f6\u95f4)"

    .line 207
    .line 208
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_2

    .line 216
    :catch_0
    nop

    .line 217
    move-object v6, v9

    .line 218
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    if-eqz v7, :cond_8

    .line 223
    .line 224
    const-string v6, "Tue Oct 31 2023 17:03:45 GMT+0800 (\u4e2d\u56fd\u6807\u51c6\u65f6\u95f4)"

    .line 225
    .line 226
    :cond_8
    iput v8, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I

    .line 227
    .line 228
    new-instance v7, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    iget-object v10, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 234
    .line 235
    iget-object v10, v10, Lx9/n5;->c:Ljava/lang/String;

    .line 236
    .line 237
    const-string v11, "/html5up.php"

    .line 238
    .line 239
    invoke-static {v10, v11, v7}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    new-instance v10, Ll9/b;

    .line 244
    .line 245
    invoke-direct {v10, v7}, Ll9/b;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iput-object v3, v10, Lm9/e;->d:Ljava/lang/Object;

    .line 249
    .line 250
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 251
    .line 252
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 253
    .line 254
    iget-object v7, v10, Lm9/e;->i:Lk9/a;

    .line 255
    .line 256
    const-string v11, "User-Agent"

    .line 257
    .line 258
    const-string v12, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0"

    .line 259
    .line 260
    invoke-virtual {v7, v11, v12}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v7, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 264
    .line 265
    iget-object v7, v7, Lx9/n5;->i:Ljava/lang/String;

    .line 266
    .line 267
    iget-object v11, v10, Lm9/e;->i:Lk9/a;

    .line 268
    .line 269
    const-string v12, "Cookie"

    .line 270
    .line 271
    invoke-virtual {v11, v12, v7}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    new-instance v7, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    iget-object v11, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 280
    .line 281
    iget-object v11, v11, Lx9/n5;->c:Ljava/lang/String;

    .line 282
    .line 283
    const-string v12, "/mydisk.php"

    .line 284
    .line 285
    invoke-static {v11, v12, v7}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    iget-object v11, v10, Lm9/e;->i:Lk9/a;

    .line 290
    .line 291
    const-string v12, "Referer"

    .line 292
    .line 293
    invoke-virtual {v11, v12, v7}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    new-array v7, v0, [Z

    .line 297
    .line 298
    aput-boolean v0, v7, v2

    .line 299
    .line 300
    const-string v11, "task"

    .line 301
    .line 302
    const-string v12, "1"

    .line 303
    .line 304
    invoke-virtual {v10, v11, v12, v7}, Lm9/e;->h(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 305
    .line 306
    .line 307
    new-array v7, v0, [Z

    .line 308
    .line 309
    aput-boolean v0, v7, v2

    .line 310
    .line 311
    const-string v11, "vie"

    .line 312
    .line 313
    const-string v12, "3"

    .line 314
    .line 315
    invoke-virtual {v10, v11, v12, v7}, Lm9/e;->h(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 316
    .line 317
    .line 318
    new-array v7, v0, [Z

    .line 319
    .line 320
    aput-boolean v0, v7, v2

    .line 321
    .line 322
    const-string v11, "ve"

    .line 323
    .line 324
    const-string v12, "2"

    .line 325
    .line 326
    invoke-virtual {v10, v11, v12, v7}, Lm9/e;->h(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 327
    .line 328
    .line 329
    new-array v7, v0, [Z

    .line 330
    .line 331
    aput-boolean v0, v7, v2

    .line 332
    .line 333
    const-string v11, "id"

    .line 334
    .line 335
    const-string v12, "WU_FILE_1"

    .line 336
    .line 337
    invoke-virtual {v10, v11, v12, v7}, Lm9/e;->h(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 338
    .line 339
    .line 340
    iget-object v7, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 341
    .line 342
    iget-object v7, v7, Lx9/w3;->a:Ljava/lang/String;

    .line 343
    .line 344
    new-array v11, v0, [Z

    .line 345
    .line 346
    aput-boolean v0, v11, v2

    .line 347
    .line 348
    const-string v12, "name"

    .line 349
    .line 350
    invoke-virtual {v10, v12, v7, v11}, Lm9/e;->h(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 351
    .line 352
    .line 353
    const-string v7, "type"

    .line 354
    .line 355
    new-array v11, v0, [Z

    .line 356
    .line 357
    aput-boolean v0, v11, v2

    .line 358
    .line 359
    invoke-virtual {v10, v7, v5, v11}, Lm9/e;->h(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 360
    .line 361
    .line 362
    const-string v5, "lastModifiedDate"

    .line 363
    .line 364
    new-array v7, v0, [Z

    .line 365
    .line 366
    aput-boolean v0, v7, v2

    .line 367
    .line 368
    invoke-virtual {v10, v5, v6, v7}, Lm9/e;->h(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 369
    .line 370
    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    iget-object v6, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 377
    .line 378
    iget-wide v6, v6, Lx9/w3;->d:J

    .line 379
    .line 380
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    new-array v6, v0, [Z

    .line 388
    .line 389
    aput-boolean v0, v6, v2

    .line 390
    .line 391
    const-string v7, "size"

    .line 392
    .line 393
    invoke-virtual {v10, v7, v5, v6}, Lm9/e;->h(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 394
    .line 395
    .line 396
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpPathInfo:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 397
    .line 398
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 399
    .line 400
    new-array v6, v0, [Z

    .line 401
    .line 402
    aput-boolean v0, v6, v2

    .line 403
    .line 404
    const-string v2, "folder_id_bb_n"

    .line 405
    .line 406
    invoke-virtual {v10, v2, v5, v6}, Lm9/e;->h(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 407
    .line 408
    .line 409
    new-instance v2, Ljava/io/File;

    .line 410
    .line 411
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 412
    .line 413
    iget-object v5, v5, Lx9/w3;->b:Ljava/lang/String;

    .line 414
    .line 415
    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    const-string v5, "upload_file"

    .line 419
    .line 420
    invoke-virtual {v10, v2, v5}, Lm9/a;->j(Ljava/io/File;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    new-instance v2, Lba/m;

    .line 424
    .line 425
    invoke-direct {v2, v3, v4}, Lba/m;-><init>(Lcom/yunpan/appmanage/bean/WpTaskBean;Lcom/yunpan/appmanage/carsdk/u;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v10, v2}, Lm9/e;->b(Lnh/b;)V

    .line 429
    .line 430
    .line 431
    :goto_3
    iget v2, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I

    .line 432
    .line 433
    if-ne v2, v8, :cond_a

    .line 434
    .line 435
    iget-boolean v2, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->isTask_stop:Z

    .line 436
    .line 437
    if-eqz v2, :cond_9

    .line 438
    .line 439
    sget-object v2, Lcom/yunpan/appmanage/util/f0;->b:Lokhttp3/OkHttpClient;

    .line 440
    .line 441
    invoke-static {v2, v3}, Lb9/b;->b(Lokhttp3/OkHttpClient;Ljava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    const-string v2, "\u5df2\u4e3b\u52a8\u505c\u6b62"

    .line 445
    .line 446
    iput-object v2, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 447
    .line 448
    iput v0, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I

    .line 449
    .line 450
    :cond_9
    const-wide/16 v4, 0x64

    .line 451
    .line 452
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 453
    .line 454
    .line 455
    goto :goto_3

    .line 456
    :catch_1
    nop

    .line 457
    goto :goto_3

    .line 458
    :cond_a
    iget-object v0, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 459
    .line 460
    check-cast v0, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 461
    .line 462
    iput-object v9, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 463
    .line 464
    goto/16 :goto_41

    .line 465
    .line 466
    :cond_b
    const-string v10, "\u91cd\u65b0\u4e0a\u4f20"

    .line 467
    .line 468
    if-ne v7, v5, :cond_c

    .line 469
    .line 470
    :try_start_2
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 471
    .line 472
    check-cast v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 473
    .line 474
    invoke-static {v3, v0}, Lqf/c;->h0(Lcom/yunpan/appmanage/bean/WpTaskBean;Lcom/yunpan/appmanage/carsdk/u;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 475
    .line 476
    .line 477
    goto/16 :goto_41

    .line 478
    .line 479
    :catch_2
    move-exception v0

    .line 480
    iget-object v2, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v2, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 483
    .line 484
    iput-object v10, v2, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 485
    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .line 490
    .line 491
    invoke-static {v0, v3, v9}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    iput-object v0, v2, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 496
    .line 497
    goto/16 :goto_41

    .line 498
    .line 499
    :cond_c
    const/16 v5, 0x14

    .line 500
    .line 501
    if-ne v7, v5, :cond_d

    .line 502
    .line 503
    :try_start_3
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 506
    .line 507
    invoke-static {v3, v0}, Ls1/g;->i0(Lcom/yunpan/appmanage/bean/WpTaskBean;Lcom/yunpan/appmanage/carsdk/u;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 508
    .line 509
    .line 510
    goto/16 :goto_41

    .line 511
    .line 512
    :catch_3
    move-exception v0

    .line 513
    iget-object v2, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 514
    .line 515
    check-cast v2, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 516
    .line 517
    iput-object v10, v2, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 518
    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .line 523
    .line 524
    invoke-static {v0, v3, v9}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    iput-object v0, v2, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 529
    .line 530
    goto/16 :goto_41

    .line 531
    .line 532
    :cond_d
    const/16 v5, 0x15

    .line 533
    .line 534
    if-ne v7, v5, :cond_e

    .line 535
    .line 536
    :try_start_4
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 537
    .line 538
    check-cast v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 539
    .line 540
    invoke-static {v3, v0}, Ls1/g;->h0(Lcom/yunpan/appmanage/bean/WpTaskBean;Lcom/yunpan/appmanage/carsdk/u;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 541
    .line 542
    .line 543
    goto/16 :goto_41

    .line 544
    .line 545
    :catch_4
    move-exception v0

    .line 546
    iget-object v2, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 547
    .line 548
    check-cast v2, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 549
    .line 550
    iput-object v10, v2, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 551
    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    .line 553
    .line 554
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .line 556
    .line 557
    invoke-static {v0, v3, v9}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    iput-object v0, v2, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 562
    .line 563
    goto/16 :goto_41

    .line 564
    .line 565
    :cond_e
    const/4 v10, 0x3

    .line 566
    if-ne v7, v10, :cond_33

    .line 567
    .line 568
    iget-object v7, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 569
    .line 570
    check-cast v7, Lcom/yunpan/appmanage/carsdk/u;

    .line 571
    .line 572
    iget-boolean v6, v6, Lx9/n5;->u:Z

    .line 573
    .line 574
    const-string v10, "\u4e0a\u4f20\u5b8c\u6210"

    .line 575
    .line 576
    const-string v12, "\u4e3b\u52a8\u505c\u6b62\u4efb\u52a1"

    .line 577
    .line 578
    const-string v13, "%"

    .line 579
    .line 580
    const-string v5, "\u4e0a\u4f20\u4e2d\uff1a"

    .line 581
    .line 582
    const/high16 v4, 0x40000

    .line 583
    .line 584
    move-object/from16 v18, v12

    .line 585
    .line 586
    if-eqz v6, :cond_1e

    .line 587
    .line 588
    :try_start_5
    new-instance v6, Ljava/io/FileInputStream;

    .line 589
    .line 590
    iget-object v11, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 591
    .line 592
    iget-object v11, v11, Lx9/w3;->b:Ljava/lang/String;

    .line 593
    .line 594
    invoke-direct {v6, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_13
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 595
    .line 596
    .line 597
    :try_start_6
    new-instance v11, Lce/v0;

    .line 598
    .line 599
    new-instance v12, Ljava/lang/StringBuilder;

    .line 600
    .line 601
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    .line 603
    .line 604
    iget-object v0, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 605
    .line 606
    invoke-virtual {v0}, Lx9/n5;->b()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    iget-object v0, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpPathInfo:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 614
    .line 615
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 616
    .line 617
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    iget-object v0, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 621
    .line 622
    iget-object v0, v0, Lx9/w3;->a:Ljava/lang/String;

    .line 623
    .line 624
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    new-instance v12, Lce/t0;

    .line 632
    .line 633
    invoke-direct {v12, v0}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    const/16 v0, 0x52

    .line 637
    .line 638
    invoke-direct {v11, v12, v0}, Lce/v0;-><init>(Lce/t0;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 639
    .line 640
    .line 641
    :try_start_7
    new-instance v12, Ljava/io/BufferedInputStream;

    .line 642
    .line 643
    invoke-direct {v12, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 644
    .line 645
    .line 646
    :try_start_8
    new-instance v14, Ljava/io/BufferedOutputStream;

    .line 647
    .line 648
    invoke-direct {v14, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 649
    .line 650
    .line 651
    :try_start_9
    new-array v0, v4, [B

    .line 652
    .line 653
    iget-object v4, v3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 654
    .line 655
    move-object/from16 v23, v3

    .line 656
    .line 657
    :try_start_a
    iget-wide v2, v4, Lx9/w3;->d:J

    .line 658
    .line 659
    const/4 v4, 0x0

    .line 660
    const-wide/16 v19, 0x0

    .line 661
    .line 662
    :goto_4
    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    .line 663
    .line 664
    .line 665
    move-result v15
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 666
    if-eq v15, v8, :cond_11

    .line 667
    .line 668
    const/4 v8, 0x0

    .line 669
    :try_start_b
    invoke-virtual {v14, v0, v8, v15}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 673
    .line 674
    .line 675
    move-object/from16 v24, v9

    .line 676
    .line 677
    int-to-long v8, v15

    .line 678
    add-long v8, v19, v8

    .line 679
    .line 680
    :try_start_c
    new-instance v15, Ljava/lang/StringBuilder;

    .line 681
    .line 682
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 686
    .line 687
    .line 688
    :try_start_d
    sget-object v19, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 689
    .line 690
    sget-object v19, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 691
    .line 692
    move-object/from16 v26, v0

    .line 693
    .line 694
    :try_start_e
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 695
    .line 696
    move-object/from16 v27, v5

    .line 697
    .line 698
    move-object/from16 v28, v6

    .line 699
    .line 700
    long-to-double v5, v8

    .line 701
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 702
    .line 703
    .line 704
    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    .line 705
    .line 706
    mul-double v5, v5, v19

    .line 707
    .line 708
    move-wide/from16 v19, v8

    .line 709
    .line 710
    long-to-double v8, v2

    .line 711
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 712
    .line 713
    .line 714
    div-double/2addr v5, v8

    .line 715
    :try_start_f
    invoke-virtual {v0, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 729
    move-object/from16 v5, v23

    .line 730
    .line 731
    :try_start_10
    iput-object v0, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 732
    .line 733
    const/4 v0, 0x1

    .line 734
    add-int/2addr v4, v0

    .line 735
    const/4 v0, 0x4

    .line 736
    if-le v4, v0, :cond_f

    .line 737
    .line 738
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    const/16 v4, 0xa

    .line 743
    .line 744
    iput v4, v0, Landroid/os/Message;->what:I

    .line 745
    .line 746
    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 747
    .line 748
    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 749
    .line 750
    .line 751
    const/4 v4, 0x0

    .line 752
    goto :goto_7

    .line 753
    :catchall_0
    move-exception v0

    .line 754
    :goto_5
    move-object v5, v12

    .line 755
    goto/16 :goto_16

    .line 756
    .line 757
    :catch_5
    move-exception v0

    .line 758
    :goto_6
    move-object/from16 v2, v24

    .line 759
    .line 760
    goto/16 :goto_11

    .line 761
    .line 762
    :cond_f
    :goto_7
    iget-boolean v0, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->isTask_stop:Z

    .line 763
    .line 764
    if-eqz v0, :cond_10

    .line 765
    .line 766
    goto :goto_9

    .line 767
    :cond_10
    move-object/from16 v23, v5

    .line 768
    .line 769
    move-object/from16 v9, v24

    .line 770
    .line 771
    move-object/from16 v0, v26

    .line 772
    .line 773
    move-object/from16 v5, v27

    .line 774
    .line 775
    move-object/from16 v6, v28

    .line 776
    .line 777
    const/4 v8, -0x1

    .line 778
    goto :goto_4

    .line 779
    :catch_6
    move-exception v0

    .line 780
    :goto_8
    move-object/from16 v5, v23

    .line 781
    .line 782
    goto :goto_6

    .line 783
    :catchall_1
    move-exception v0

    .line 784
    move-object/from16 v28, v6

    .line 785
    .line 786
    goto :goto_5

    .line 787
    :catch_7
    move-exception v0

    .line 788
    move-object/from16 v28, v6

    .line 789
    .line 790
    goto :goto_8

    .line 791
    :catch_8
    move-exception v0

    .line 792
    move-object/from16 v28, v6

    .line 793
    .line 794
    goto :goto_8

    .line 795
    :catch_9
    move-exception v0

    .line 796
    move-object/from16 v28, v6

    .line 797
    .line 798
    move-object/from16 v24, v9

    .line 799
    .line 800
    goto :goto_8

    .line 801
    :cond_11
    move-object/from16 v28, v6

    .line 802
    .line 803
    move-object/from16 v24, v9

    .line 804
    .line 805
    move-object/from16 v5, v23

    .line 806
    .line 807
    :goto_9
    iget-boolean v0, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->isTask_stop:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 808
    .line 809
    if-eqz v0, :cond_12

    .line 810
    .line 811
    move-object/from16 v2, v24

    .line 812
    .line 813
    :try_start_11
    iput-object v2, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 814
    .line 815
    move-object/from16 v0, v18

    .line 816
    .line 817
    iput-object v0, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 818
    .line 819
    goto :goto_a

    .line 820
    :catch_a
    move-exception v0

    .line 821
    goto/16 :goto_11

    .line 822
    .line 823
    :cond_12
    move-object/from16 v2, v24

    .line 824
    .line 825
    iput-object v2, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 826
    .line 827
    iput-object v10, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 828
    .line 829
    :goto_a
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 830
    .line 831
    .line 832
    :try_start_12
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 833
    .line 834
    .line 835
    :try_start_13
    invoke-virtual {v11}, Lce/v0;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 836
    .line 837
    .line 838
    :try_start_14
    invoke-virtual/range {v28 .. v28}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 839
    .line 840
    .line 841
    goto/16 :goto_36

    .line 842
    .line 843
    :catchall_2
    move-exception v0

    .line 844
    :goto_b
    const/4 v5, 0x0

    .line 845
    const/4 v11, 0x0

    .line 846
    :goto_c
    const/4 v14, 0x0

    .line 847
    goto/16 :goto_16

    .line 848
    .line 849
    :catch_b
    move-exception v0

    .line 850
    :goto_d
    const/4 v11, 0x0

    .line 851
    :goto_e
    const/4 v12, 0x0

    .line 852
    :goto_f
    const/4 v14, 0x0

    .line 853
    goto/16 :goto_11

    .line 854
    .line 855
    :catchall_3
    move-exception v0

    .line 856
    :goto_10
    const/4 v5, 0x0

    .line 857
    goto :goto_c

    .line 858
    :catch_c
    move-exception v0

    .line 859
    goto :goto_e

    .line 860
    :catchall_4
    move-exception v0

    .line 861
    const/4 v5, 0x0

    .line 862
    goto/16 :goto_16

    .line 863
    .line 864
    :catch_d
    move-exception v0

    .line 865
    const/4 v12, 0x0

    .line 866
    goto :goto_11

    .line 867
    :catch_e
    move-exception v0

    .line 868
    move-object/from16 v28, v6

    .line 869
    .line 870
    move-object v2, v9

    .line 871
    move-object/from16 v5, v23

    .line 872
    .line 873
    goto :goto_11

    .line 874
    :catch_f
    move-exception v0

    .line 875
    move-object v5, v3

    .line 876
    move-object/from16 v28, v6

    .line 877
    .line 878
    move-object v2, v9

    .line 879
    goto :goto_11

    .line 880
    :catchall_5
    move-exception v0

    .line 881
    move-object/from16 v28, v6

    .line 882
    .line 883
    move-object v5, v12

    .line 884
    goto :goto_c

    .line 885
    :catch_10
    move-exception v0

    .line 886
    move-object v5, v3

    .line 887
    move-object/from16 v28, v6

    .line 888
    .line 889
    move-object v2, v9

    .line 890
    goto :goto_f

    .line 891
    :catchall_6
    move-exception v0

    .line 892
    move-object/from16 v28, v6

    .line 893
    .line 894
    goto :goto_10

    .line 895
    :catch_11
    move-exception v0

    .line 896
    move-object v5, v3

    .line 897
    move-object/from16 v28, v6

    .line 898
    .line 899
    move-object v2, v9

    .line 900
    goto :goto_e

    .line 901
    :catchall_7
    move-exception v0

    .line 902
    move-object/from16 v28, v6

    .line 903
    .line 904
    goto :goto_b

    .line 905
    :catch_12
    move-exception v0

    .line 906
    move-object v5, v3

    .line 907
    move-object/from16 v28, v6

    .line 908
    .line 909
    move-object v2, v9

    .line 910
    goto :goto_d

    .line 911
    :catchall_8
    move-exception v0

    .line 912
    const/4 v5, 0x0

    .line 913
    const/4 v11, 0x0

    .line 914
    const/4 v14, 0x0

    .line 915
    const/16 v28, 0x0

    .line 916
    .line 917
    goto :goto_16

    .line 918
    :catch_13
    move-exception v0

    .line 919
    move-object v5, v3

    .line 920
    move-object v2, v9

    .line 921
    const/4 v11, 0x0

    .line 922
    const/4 v12, 0x0

    .line 923
    const/4 v14, 0x0

    .line 924
    const/16 v28, 0x0

    .line 925
    .line 926
    :goto_11
    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 927
    .line 928
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v0

    .line 935
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    const-string v3, "system cannot find the file"

    .line 946
    .line 947
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 948
    .line 949
    .line 950
    move-result v3

    .line 951
    if-eqz v3, :cond_13

    .line 952
    .line 953
    const-string v0, "\u65e0\u6743\u9650\u67e5\u770b\u6b64\u76ee\u5f55"

    .line 954
    .line 955
    goto :goto_12

    .line 956
    :cond_13
    const-string v3, "The parameter is incorrect"

    .line 957
    .line 958
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 959
    .line 960
    .line 961
    move-result v3

    .line 962
    if-eqz v3, :cond_14

    .line 963
    .line 964
    const-string v0, "\u5df2\u5b58\u5728\u76f8\u540c\u540d\u79f0"

    .line 965
    .line 966
    goto :goto_12

    .line 967
    :cond_14
    const-string v3, "STATUS_ACCESS_DENIED"

    .line 968
    .line 969
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 970
    .line 971
    .line 972
    move-result v3

    .line 973
    if-eqz v3, :cond_15

    .line 974
    .line 975
    const-string v0, "\u65e0\u6743\u9650"

    .line 976
    .line 977
    :cond_15
    :goto_12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 978
    .line 979
    .line 980
    move-result v3

    .line 981
    if-eqz v3, :cond_16

    .line 982
    .line 983
    const-string v0, "\u8fde\u63a5\u5931\u8d25"

    .line 984
    .line 985
    :cond_16
    iput-object v2, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 986
    .line 987
    iput-object v0, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 988
    .line 989
    if-eqz v12, :cond_17

    .line 990
    .line 991
    :try_start_16
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_14

    .line 992
    .line 993
    .line 994
    goto :goto_13

    .line 995
    :catch_14
    nop

    .line 996
    :cond_17
    :goto_13
    if-eqz v14, :cond_18

    .line 997
    .line 998
    :try_start_17
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_15

    .line 999
    .line 1000
    .line 1001
    goto :goto_14

    .line 1002
    :catch_15
    nop

    .line 1003
    :cond_18
    :goto_14
    if-eqz v11, :cond_19

    .line 1004
    .line 1005
    :try_start_18
    invoke-virtual {v11}, Lce/v0;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_16

    .line 1006
    .line 1007
    .line 1008
    goto :goto_15

    .line 1009
    :catch_16
    nop

    .line 1010
    :cond_19
    :goto_15
    if-eqz v28, :cond_2b

    .line 1011
    .line 1012
    :try_start_19
    invoke-virtual/range {v28 .. v28}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_34

    .line 1013
    .line 1014
    .line 1015
    goto/16 :goto_36

    .line 1016
    .line 1017
    :goto_16
    if-eqz v5, :cond_1a

    .line 1018
    .line 1019
    :try_start_1a
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_17

    .line 1020
    .line 1021
    .line 1022
    goto :goto_17

    .line 1023
    :catch_17
    nop

    .line 1024
    :cond_1a
    :goto_17
    if-eqz v14, :cond_1b

    .line 1025
    .line 1026
    :try_start_1b
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_18

    .line 1027
    .line 1028
    .line 1029
    goto :goto_18

    .line 1030
    :catch_18
    nop

    .line 1031
    :cond_1b
    :goto_18
    if-eqz v11, :cond_1c

    .line 1032
    .line 1033
    :try_start_1c
    invoke-virtual {v11}, Lce/v0;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_19

    .line 1034
    .line 1035
    .line 1036
    goto :goto_19

    .line 1037
    :catch_19
    nop

    .line 1038
    :cond_1c
    :goto_19
    if-eqz v28, :cond_1d

    .line 1039
    .line 1040
    :try_start_1d
    invoke-virtual/range {v28 .. v28}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1a

    .line 1041
    .line 1042
    .line 1043
    :catch_1a
    :cond_1d
    throw v0

    .line 1044
    :cond_1e
    move-object/from16 v27, v5

    .line 1045
    .line 1046
    move-object v2, v9

    .line 1047
    move-object/from16 v0, v18

    .line 1048
    .line 1049
    move-object v5, v3

    .line 1050
    invoke-static {}, Lcom/hierynomus/smbj/SmbConfig;->builder()Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v3

    .line 1054
    const/4 v6, 0x1

    .line 1055
    invoke-virtual {v3, v6}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withMultiProtocolNegotiate(Z)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v3

    .line 1059
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1060
    .line 1061
    const-wide/16 v8, 0x12c

    .line 1062
    .line 1063
    invoke-virtual {v3, v8, v9, v6}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v3

    .line 1067
    const-wide/16 v8, 0x0

    .line 1068
    .line 1069
    invoke-virtual {v3, v8, v9, v6}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withSoTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v3

    .line 1073
    const/4 v6, 0x0

    .line 1074
    invoke-virtual {v3, v6}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withEncryptData(Z)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v3

    .line 1078
    new-instance v6, Lcom/hierynomus/smbj/transport/tcp/async/AsyncDirectTcpTransportFactory;

    .line 1079
    .line 1080
    invoke-direct {v6}, Lcom/hierynomus/smbj/transport/tcp/async/AsyncDirectTcpTransportFactory;-><init>()V

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v3, v6}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTransportLayerFactory(Lcom/hierynomus/smbj/transport/TransportLayerFactory;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v3

    .line 1087
    invoke-virtual {v3}, Lcom/hierynomus/smbj/SmbConfig$Builder;->build()Lcom/hierynomus/smbj/SmbConfig;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v3

    .line 1091
    new-instance v6, Lcom/hierynomus/smbj/SMBClient;

    .line 1092
    .line 1093
    invoke-direct {v6, v3}, Lcom/hierynomus/smbj/SMBClient;-><init>(Lcom/hierynomus/smbj/SmbConfig;)V

    .line 1094
    .line 1095
    .line 1096
    :try_start_1e
    iget-object v3, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 1097
    .line 1098
    iget-object v11, v3, Lx9/n5;->c:Ljava/lang/String;

    .line 1099
    .line 1100
    iget v3, v3, Lx9/n5;->d:I

    .line 1101
    .line 1102
    invoke-virtual {v6, v11, v3}, Lcom/hierynomus/smbj/SMBClient;->connect(Ljava/lang/String;I)Lcom/hierynomus/smbj/connection/Connection;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_2d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_18

    .line 1106
    :try_start_1f
    iget-object v11, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 1107
    .line 1108
    iget-object v11, v11, Lx9/n5;->e:Ljava/lang/String;

    .line 1109
    .line 1110
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1111
    .line 1112
    .line 1113
    move-result v11

    .line 1114
    if-eqz v11, :cond_1f

    .line 1115
    .line 1116
    invoke-static {}, Lcom/hierynomus/smbj/auth/AuthenticationContext;->guest()Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v11

    .line 1120
    goto :goto_20

    .line 1121
    :catchall_9
    move-exception v0

    .line 1122
    move-object/from16 v25, v3

    .line 1123
    .line 1124
    move-object/from16 v23, v6

    .line 1125
    .line 1126
    const/4 v5, 0x0

    .line 1127
    const/16 v16, 0x0

    .line 1128
    .line 1129
    const/16 v17, 0x0

    .line 1130
    .line 1131
    :goto_1a
    const/16 v18, 0x0

    .line 1132
    .line 1133
    :goto_1b
    const/16 v19, 0x0

    .line 1134
    .line 1135
    :goto_1c
    const/16 v20, 0x0

    .line 1136
    .line 1137
    goto/16 :goto_37

    .line 1138
    .line 1139
    :catch_1b
    move-exception v0

    .line 1140
    move-object/from16 v25, v3

    .line 1141
    .line 1142
    move-object/from16 v23, v6

    .line 1143
    .line 1144
    const/4 v15, 0x0

    .line 1145
    const/16 v16, 0x0

    .line 1146
    .line 1147
    const/16 v17, 0x0

    .line 1148
    .line 1149
    :goto_1d
    const/16 v18, 0x0

    .line 1150
    .line 1151
    :goto_1e
    const/16 v19, 0x0

    .line 1152
    .line 1153
    :goto_1f
    const/16 v20, 0x0

    .line 1154
    .line 1155
    goto/16 :goto_2f

    .line 1156
    .line 1157
    :cond_1f
    new-instance v11, Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 1158
    .line 1159
    iget-object v12, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 1160
    .line 1161
    iget-object v14, v12, Lx9/n5;->e:Ljava/lang/String;

    .line 1162
    .line 1163
    iget-object v12, v12, Lx9/n5;->f:Ljava/lang/String;

    .line 1164
    .line 1165
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    .line 1166
    .line 1167
    .line 1168
    move-result-object v12

    .line 1169
    iget-object v8, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 1170
    .line 1171
    iget-object v8, v8, Lx9/n5;->v:Ljava/lang/String;

    .line 1172
    .line 1173
    invoke-direct {v11, v14, v12, v8}, Lcom/hierynomus/smbj/auth/AuthenticationContext;-><init>(Ljava/lang/String;[CLjava/lang/String;)V

    .line 1174
    .line 1175
    .line 1176
    :goto_20
    invoke-virtual {v3, v11}, Lcom/hierynomus/smbj/connection/Connection;->authenticate(Lcom/hierynomus/smbj/auth/AuthenticationContext;)Lcom/hierynomus/smbj/session/Session;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v8
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1b
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    .line 1180
    :try_start_20
    iget-object v9, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpPathInfo:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1181
    .line 1182
    iget-object v9, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1183
    .line 1184
    const-string v11, "/"

    .line 1185
    .line 1186
    const/4 v12, 0x1

    .line 1187
    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 1188
    .line 1189
    .line 1190
    move-result v9

    .line 1191
    iget-object v11, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpPathInfo:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1192
    .line 1193
    iget-object v11, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1194
    .line 1195
    invoke-virtual {v11, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v11

    .line 1199
    iget-object v14, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpPathInfo:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1200
    .line 1201
    iget-object v14, v14, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1202
    .line 1203
    add-int/2addr v9, v12

    .line 1204
    invoke-virtual {v14, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v9

    .line 1208
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1209
    .line 1210
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    .line 1216
    iget-object v9, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 1217
    .line 1218
    iget-object v9, v9, Lx9/w3;->a:Ljava/lang/String;

    .line 1219
    .line 1220
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v29

    .line 1227
    invoke-virtual {v8, v11}, Lcom/hierynomus/smbj/session/Session;->connectShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/Share;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v9

    .line 1231
    check-cast v9, Lcom/hierynomus/smbj/share/DiskShare;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_2c
    .catchall {:try_start_20 .. :try_end_20} :catchall_17

    .line 1232
    .line 1233
    :try_start_21
    new-instance v11, Ljava/util/HashSet;

    .line 1234
    .line 1235
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1236
    .line 1237
    .line 1238
    sget-object v12, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_ALL:Lcom/hierynomus/msdtyp/AccessMask;

    .line 1239
    .line 1240
    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1241
    .line 1242
    .line 1243
    new-instance v12, Ljava/util/HashSet;

    .line 1244
    .line 1245
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1246
    .line 1247
    .line 1248
    sget-object v14, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_RANDOM_ACCESS:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 1249
    .line 1250
    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1251
    .line 1252
    .line 1253
    sget-object v32, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->ALL:Ljava/util/Set;

    .line 1254
    .line 1255
    sget-object v33, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OVERWRITE_IF:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 1256
    .line 1257
    const/16 v31, 0x0

    .line 1258
    .line 1259
    move-object/from16 v28, v9

    .line 1260
    .line 1261
    move-object/from16 v30, v11

    .line 1262
    .line 1263
    move-object/from16 v34, v12

    .line 1264
    .line 1265
    invoke-virtual/range {v28 .. v34}, Lcom/hierynomus/smbj/share/DiskShare;->openFile(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/File;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v11

    .line 1269
    invoke-virtual {v11}, Lcom/hierynomus/smbj/share/File;->getOutputStream()Ljava/io/OutputStream;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v11
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_2b
    .catchall {:try_start_21 .. :try_end_21} :catchall_16

    .line 1273
    :try_start_22
    new-instance v12, Ljava/io/FileInputStream;

    .line 1274
    .line 1275
    iget-object v14, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 1276
    .line 1277
    iget-object v14, v14, Lx9/w3;->b:Ljava/lang/String;

    .line 1278
    .line 1279
    invoke-direct {v12, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_2a
    .catchall {:try_start_22 .. :try_end_22} :catchall_15

    .line 1280
    .line 1281
    .line 1282
    :try_start_23
    new-instance v14, Ljava/io/BufferedInputStream;

    .line 1283
    .line 1284
    invoke-direct {v14, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_29
    .catchall {:try_start_23 .. :try_end_23} :catchall_14

    .line 1285
    .line 1286
    .line 1287
    :try_start_24
    new-instance v15, Ljava/io/BufferedOutputStream;

    .line 1288
    .line 1289
    invoke-direct {v15, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_28
    .catchall {:try_start_24 .. :try_end_24} :catchall_13

    .line 1290
    .line 1291
    .line 1292
    :try_start_25
    new-array v4, v4, [B

    .line 1293
    .line 1294
    iget-object v1, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_27
    .catchall {:try_start_25 .. :try_end_25} :catchall_12

    .line 1295
    .line 1296
    move-object/from16 v17, v8

    .line 1297
    .line 1298
    move-object/from16 v18, v9

    .line 1299
    .line 1300
    :try_start_26
    iget-wide v8, v1, Lx9/w3;->d:J
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_11

    .line 1301
    .line 1302
    move-object/from16 v23, v6

    .line 1303
    .line 1304
    const/4 v1, 0x0

    .line 1305
    const-wide/16 v19, 0x0

    .line 1306
    .line 1307
    :goto_21
    :try_start_27
    invoke-virtual {v14, v4}, Ljava/io/InputStream;->read([B)I

    .line 1308
    .line 1309
    .line 1310
    move-result v6
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_25
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    .line 1311
    move-object/from16 v25, v3

    .line 1312
    .line 1313
    const/4 v3, -0x1

    .line 1314
    if-eq v6, v3, :cond_22

    .line 1315
    .line 1316
    const/4 v3, 0x0

    .line 1317
    :try_start_28
    invoke-virtual {v15, v4, v3, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1321
    .line 1322
    .line 1323
    move-object/from16 v24, v4

    .line 1324
    .line 1325
    int-to-long v3, v6

    .line 1326
    add-long v3, v19, v3

    .line 1327
    .line 1328
    const/4 v6, 0x1

    .line 1329
    add-int/2addr v1, v6

    .line 1330
    const/16 v6, 0x1e

    .line 1331
    .line 1332
    if-le v1, v6, :cond_20

    .line 1333
    .line 1334
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1335
    .line 1336
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1337
    .line 1338
    .line 1339
    move-object/from16 v6, v27

    .line 1340
    .line 1341
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_1d
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    .line 1342
    .line 1343
    .line 1344
    :try_start_29
    sget-object v19, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1345
    .line 1346
    sget-object v19, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_1e
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    .line 1347
    .line 1348
    move-object/from16 v27, v6

    .line 1349
    .line 1350
    :try_start_2a
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_1d
    .catchall {:try_start_2a .. :try_end_2a} :catchall_b

    .line 1351
    .line 1352
    move-object/from16 v19, v11

    .line 1353
    .line 1354
    move-object/from16 v20, v12

    .line 1355
    .line 1356
    long-to-double v11, v3

    .line 1357
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    .line 1358
    .line 1359
    .line 1360
    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    .line 1361
    .line 1362
    mul-double v11, v11, v21

    .line 1363
    .line 1364
    move-wide/from16 v28, v3

    .line 1365
    .line 1366
    long-to-double v3, v8

    .line 1367
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 1368
    .line 1369
    .line 1370
    div-double/2addr v11, v3

    .line 1371
    :try_start_2b
    invoke-virtual {v6, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v3

    .line 1375
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v1

    .line 1385
    iput-object v1, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 1386
    .line 1387
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v1

    .line 1391
    const/16 v3, 0xa

    .line 1392
    .line 1393
    iput v3, v1, Landroid/os/Message;->what:I

    .line 1394
    .line 1395
    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1396
    .line 1397
    invoke-virtual {v7, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1398
    .line 1399
    .line 1400
    const/4 v1, 0x0

    .line 1401
    goto :goto_27

    .line 1402
    :catchall_a
    move-exception v0

    .line 1403
    :goto_22
    move-object v5, v14

    .line 1404
    :goto_23
    move-object/from16 v16, v15

    .line 1405
    .line 1406
    goto/16 :goto_37

    .line 1407
    .line 1408
    :catch_1c
    move-exception v0

    .line 1409
    :goto_24
    move-object/from16 v16, v14

    .line 1410
    .line 1411
    goto/16 :goto_2f

    .line 1412
    .line 1413
    :catchall_b
    move-exception v0

    .line 1414
    :goto_25
    move-object/from16 v19, v11

    .line 1415
    .line 1416
    move-object/from16 v20, v12

    .line 1417
    .line 1418
    goto :goto_22

    .line 1419
    :catch_1d
    move-exception v0

    .line 1420
    :goto_26
    move-object/from16 v19, v11

    .line 1421
    .line 1422
    move-object/from16 v20, v12

    .line 1423
    .line 1424
    goto :goto_24

    .line 1425
    :catchall_c
    move-exception v0

    .line 1426
    goto :goto_25

    .line 1427
    :catch_1e
    move-exception v0

    .line 1428
    goto :goto_26

    .line 1429
    :cond_20
    move-wide/from16 v28, v3

    .line 1430
    .line 1431
    move-object/from16 v19, v11

    .line 1432
    .line 1433
    move-object/from16 v20, v12

    .line 1434
    .line 1435
    const/16 v3, 0xa

    .line 1436
    .line 1437
    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    .line 1438
    .line 1439
    :goto_27
    iget-boolean v4, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->isTask_stop:Z

    .line 1440
    .line 1441
    if-eqz v4, :cond_21

    .line 1442
    .line 1443
    goto :goto_28

    .line 1444
    :cond_21
    move-object/from16 v11, v19

    .line 1445
    .line 1446
    move-object/from16 v12, v20

    .line 1447
    .line 1448
    move-object/from16 v4, v24

    .line 1449
    .line 1450
    move-object/from16 v3, v25

    .line 1451
    .line 1452
    move-wide/from16 v19, v28

    .line 1453
    .line 1454
    goto/16 :goto_21

    .line 1455
    .line 1456
    :cond_22
    move-object/from16 v19, v11

    .line 1457
    .line 1458
    move-object/from16 v20, v12

    .line 1459
    .line 1460
    :goto_28
    iget-boolean v1, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->isTask_stop:Z

    .line 1461
    .line 1462
    if-eqz v1, :cond_23

    .line 1463
    .line 1464
    iput-object v2, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 1465
    .line 1466
    iput-object v0, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 1467
    .line 1468
    goto :goto_29

    .line 1469
    :cond_23
    iput-object v2, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 1470
    .line 1471
    iput-object v10, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 1472
    .line 1473
    :goto_29
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_1c
    .catchall {:try_start_2b .. :try_end_2b} :catchall_a

    .line 1474
    .line 1475
    .line 1476
    :try_start_2c
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_24
    .catchall {:try_start_2c .. :try_end_2c} :catchall_f

    .line 1477
    .line 1478
    .line 1479
    :try_start_2d
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_23
    .catchall {:try_start_2d .. :try_end_2d} :catchall_e

    .line 1480
    .line 1481
    .line 1482
    :try_start_2e
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_22
    .catchall {:try_start_2e .. :try_end_2e} :catchall_d

    .line 1483
    .line 1484
    .line 1485
    :try_start_2f
    invoke-virtual/range {v18 .. v18}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_1f

    .line 1486
    .line 1487
    .line 1488
    :catch_1f
    :try_start_30
    invoke-virtual/range {v17 .. v17}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_20

    .line 1489
    .line 1490
    .line 1491
    :catch_20
    :goto_2a
    :try_start_31
    invoke-virtual/range {v25 .. v25}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_21

    .line 1492
    .line 1493
    .line 1494
    :catch_21
    :cond_24
    :try_start_32
    invoke-virtual/range {v23 .. v23}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_34

    .line 1495
    .line 1496
    .line 1497
    goto/16 :goto_36

    .line 1498
    .line 1499
    :catchall_d
    move-exception v0

    .line 1500
    const/4 v5, 0x0

    .line 1501
    const/16 v16, 0x0

    .line 1502
    .line 1503
    const/16 v19, 0x0

    .line 1504
    .line 1505
    goto/16 :goto_37

    .line 1506
    .line 1507
    :catch_22
    move-exception v0

    .line 1508
    const/4 v15, 0x0

    .line 1509
    const/16 v16, 0x0

    .line 1510
    .line 1511
    const/16 v19, 0x0

    .line 1512
    .line 1513
    goto/16 :goto_2f

    .line 1514
    .line 1515
    :catchall_e
    move-exception v0

    .line 1516
    :goto_2b
    const/4 v5, 0x0

    .line 1517
    :goto_2c
    const/16 v16, 0x0

    .line 1518
    .line 1519
    goto/16 :goto_37

    .line 1520
    .line 1521
    :catch_23
    move-exception v0

    .line 1522
    :goto_2d
    const/4 v15, 0x0

    .line 1523
    :goto_2e
    const/16 v16, 0x0

    .line 1524
    .line 1525
    goto/16 :goto_2f

    .line 1526
    .line 1527
    :catchall_f
    move-exception v0

    .line 1528
    move-object/from16 v16, v15

    .line 1529
    .line 1530
    const/4 v5, 0x0

    .line 1531
    goto/16 :goto_37

    .line 1532
    .line 1533
    :catch_24
    move-exception v0

    .line 1534
    goto :goto_2e

    .line 1535
    :catchall_10
    move-exception v0

    .line 1536
    move-object/from16 v25, v3

    .line 1537
    .line 1538
    goto :goto_25

    .line 1539
    :catch_25
    move-exception v0

    .line 1540
    move-object/from16 v25, v3

    .line 1541
    .line 1542
    goto :goto_26

    .line 1543
    :catchall_11
    move-exception v0

    .line 1544
    move-object/from16 v25, v3

    .line 1545
    .line 1546
    move-object/from16 v23, v6

    .line 1547
    .line 1548
    goto/16 :goto_25

    .line 1549
    .line 1550
    :catch_26
    move-exception v0

    .line 1551
    move-object/from16 v25, v3

    .line 1552
    .line 1553
    move-object/from16 v23, v6

    .line 1554
    .line 1555
    goto/16 :goto_26

    .line 1556
    .line 1557
    :catchall_12
    move-exception v0

    .line 1558
    move-object/from16 v25, v3

    .line 1559
    .line 1560
    move-object/from16 v23, v6

    .line 1561
    .line 1562
    move-object/from16 v17, v8

    .line 1563
    .line 1564
    move-object/from16 v18, v9

    .line 1565
    .line 1566
    goto/16 :goto_25

    .line 1567
    .line 1568
    :catch_27
    move-exception v0

    .line 1569
    move-object/from16 v25, v3

    .line 1570
    .line 1571
    move-object/from16 v23, v6

    .line 1572
    .line 1573
    move-object/from16 v17, v8

    .line 1574
    .line 1575
    move-object/from16 v18, v9

    .line 1576
    .line 1577
    goto/16 :goto_26

    .line 1578
    .line 1579
    :catchall_13
    move-exception v0

    .line 1580
    move-object/from16 v25, v3

    .line 1581
    .line 1582
    move-object/from16 v23, v6

    .line 1583
    .line 1584
    move-object/from16 v17, v8

    .line 1585
    .line 1586
    move-object/from16 v18, v9

    .line 1587
    .line 1588
    move-object/from16 v19, v11

    .line 1589
    .line 1590
    move-object/from16 v20, v12

    .line 1591
    .line 1592
    move-object v5, v14

    .line 1593
    goto :goto_2c

    .line 1594
    :catch_28
    move-exception v0

    .line 1595
    move-object/from16 v25, v3

    .line 1596
    .line 1597
    move-object/from16 v23, v6

    .line 1598
    .line 1599
    move-object/from16 v17, v8

    .line 1600
    .line 1601
    move-object/from16 v18, v9

    .line 1602
    .line 1603
    move-object/from16 v19, v11

    .line 1604
    .line 1605
    move-object/from16 v20, v12

    .line 1606
    .line 1607
    move-object/from16 v16, v14

    .line 1608
    .line 1609
    const/4 v15, 0x0

    .line 1610
    goto/16 :goto_2f

    .line 1611
    .line 1612
    :catchall_14
    move-exception v0

    .line 1613
    move-object/from16 v25, v3

    .line 1614
    .line 1615
    move-object/from16 v23, v6

    .line 1616
    .line 1617
    move-object/from16 v17, v8

    .line 1618
    .line 1619
    move-object/from16 v18, v9

    .line 1620
    .line 1621
    move-object/from16 v19, v11

    .line 1622
    .line 1623
    move-object/from16 v20, v12

    .line 1624
    .line 1625
    goto :goto_2b

    .line 1626
    :catch_29
    move-exception v0

    .line 1627
    move-object/from16 v25, v3

    .line 1628
    .line 1629
    move-object/from16 v23, v6

    .line 1630
    .line 1631
    move-object/from16 v17, v8

    .line 1632
    .line 1633
    move-object/from16 v18, v9

    .line 1634
    .line 1635
    move-object/from16 v19, v11

    .line 1636
    .line 1637
    move-object/from16 v20, v12

    .line 1638
    .line 1639
    goto :goto_2d

    .line 1640
    :catchall_15
    move-exception v0

    .line 1641
    move-object/from16 v25, v3

    .line 1642
    .line 1643
    move-object/from16 v23, v6

    .line 1644
    .line 1645
    move-object/from16 v17, v8

    .line 1646
    .line 1647
    move-object/from16 v18, v9

    .line 1648
    .line 1649
    move-object/from16 v19, v11

    .line 1650
    .line 1651
    const/4 v5, 0x0

    .line 1652
    const/16 v16, 0x0

    .line 1653
    .line 1654
    goto/16 :goto_1c

    .line 1655
    .line 1656
    :catch_2a
    move-exception v0

    .line 1657
    move-object/from16 v25, v3

    .line 1658
    .line 1659
    move-object/from16 v23, v6

    .line 1660
    .line 1661
    move-object/from16 v17, v8

    .line 1662
    .line 1663
    move-object/from16 v18, v9

    .line 1664
    .line 1665
    move-object/from16 v19, v11

    .line 1666
    .line 1667
    const/4 v15, 0x0

    .line 1668
    const/16 v16, 0x0

    .line 1669
    .line 1670
    goto/16 :goto_1f

    .line 1671
    .line 1672
    :catchall_16
    move-exception v0

    .line 1673
    move-object/from16 v25, v3

    .line 1674
    .line 1675
    move-object/from16 v23, v6

    .line 1676
    .line 1677
    move-object/from16 v17, v8

    .line 1678
    .line 1679
    move-object/from16 v18, v9

    .line 1680
    .line 1681
    const/4 v5, 0x0

    .line 1682
    const/16 v16, 0x0

    .line 1683
    .line 1684
    goto/16 :goto_1b

    .line 1685
    .line 1686
    :catch_2b
    move-exception v0

    .line 1687
    move-object/from16 v25, v3

    .line 1688
    .line 1689
    move-object/from16 v23, v6

    .line 1690
    .line 1691
    move-object/from16 v17, v8

    .line 1692
    .line 1693
    move-object/from16 v18, v9

    .line 1694
    .line 1695
    const/4 v15, 0x0

    .line 1696
    const/16 v16, 0x0

    .line 1697
    .line 1698
    goto/16 :goto_1e

    .line 1699
    .line 1700
    :catchall_17
    move-exception v0

    .line 1701
    move-object/from16 v25, v3

    .line 1702
    .line 1703
    move-object/from16 v23, v6

    .line 1704
    .line 1705
    move-object/from16 v17, v8

    .line 1706
    .line 1707
    const/4 v5, 0x0

    .line 1708
    const/16 v16, 0x0

    .line 1709
    .line 1710
    goto/16 :goto_1a

    .line 1711
    .line 1712
    :catch_2c
    move-exception v0

    .line 1713
    move-object/from16 v25, v3

    .line 1714
    .line 1715
    move-object/from16 v23, v6

    .line 1716
    .line 1717
    move-object/from16 v17, v8

    .line 1718
    .line 1719
    const/4 v15, 0x0

    .line 1720
    const/16 v16, 0x0

    .line 1721
    .line 1722
    goto/16 :goto_1d

    .line 1723
    .line 1724
    :catchall_18
    move-exception v0

    .line 1725
    move-object/from16 v23, v6

    .line 1726
    .line 1727
    const/4 v5, 0x0

    .line 1728
    const/16 v16, 0x0

    .line 1729
    .line 1730
    const/16 v17, 0x0

    .line 1731
    .line 1732
    const/16 v18, 0x0

    .line 1733
    .line 1734
    const/16 v19, 0x0

    .line 1735
    .line 1736
    const/16 v20, 0x0

    .line 1737
    .line 1738
    const/16 v25, 0x0

    .line 1739
    .line 1740
    goto :goto_37

    .line 1741
    :catch_2d
    move-exception v0

    .line 1742
    move-object/from16 v23, v6

    .line 1743
    .line 1744
    const/4 v15, 0x0

    .line 1745
    const/16 v16, 0x0

    .line 1746
    .line 1747
    const/16 v17, 0x0

    .line 1748
    .line 1749
    const/16 v18, 0x0

    .line 1750
    .line 1751
    const/16 v19, 0x0

    .line 1752
    .line 1753
    const/16 v20, 0x0

    .line 1754
    .line 1755
    const/16 v25, 0x0

    .line 1756
    .line 1757
    :goto_2f
    :try_start_33
    invoke-static {v0}, Lqa/f;->i(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v0

    .line 1761
    iput-object v2, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 1762
    .line 1763
    iput-object v0, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_19

    .line 1764
    .line 1765
    if-eqz v16, :cond_25

    .line 1766
    .line 1767
    :try_start_34
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_2e

    .line 1768
    .line 1769
    .line 1770
    goto :goto_30

    .line 1771
    :catch_2e
    nop

    .line 1772
    :cond_25
    :goto_30
    if-eqz v15, :cond_26

    .line 1773
    .line 1774
    :try_start_35
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_2f

    .line 1775
    .line 1776
    .line 1777
    goto :goto_31

    .line 1778
    :catch_2f
    nop

    .line 1779
    :cond_26
    :goto_31
    if-eqz v19, :cond_27

    .line 1780
    .line 1781
    :try_start_36
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_30

    .line 1782
    .line 1783
    .line 1784
    goto :goto_32

    .line 1785
    :catch_30
    nop

    .line 1786
    :cond_27
    :goto_32
    if-eqz v20, :cond_28

    .line 1787
    .line 1788
    :try_start_37
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_31

    .line 1789
    .line 1790
    .line 1791
    goto :goto_33

    .line 1792
    :catch_31
    nop

    .line 1793
    :cond_28
    :goto_33
    if-eqz v18, :cond_29

    .line 1794
    .line 1795
    :try_start_38
    invoke-virtual/range {v18 .. v18}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_32

    .line 1796
    .line 1797
    .line 1798
    goto :goto_34

    .line 1799
    :catch_32
    nop

    .line 1800
    :cond_29
    :goto_34
    if-eqz v17, :cond_2a

    .line 1801
    .line 1802
    :try_start_39
    invoke-virtual/range {v17 .. v17}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_33

    .line 1803
    .line 1804
    .line 1805
    goto :goto_35

    .line 1806
    :catch_33
    nop

    .line 1807
    :cond_2a
    :goto_35
    if-eqz v25, :cond_24

    .line 1808
    .line 1809
    goto/16 :goto_2a

    .line 1810
    .line 1811
    :catch_34
    :cond_2b
    :goto_36
    move-object/from16 v1, p0

    .line 1812
    .line 1813
    goto/16 :goto_41

    .line 1814
    .line 1815
    :catchall_19
    move-exception v0

    .line 1816
    move-object/from16 v5, v16

    .line 1817
    .line 1818
    goto/16 :goto_23

    .line 1819
    .line 1820
    :goto_37
    if-eqz v5, :cond_2c

    .line 1821
    .line 1822
    :try_start_3a
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_35

    .line 1823
    .line 1824
    .line 1825
    goto :goto_38

    .line 1826
    :catch_35
    nop

    .line 1827
    :cond_2c
    :goto_38
    if-eqz v16, :cond_2d

    .line 1828
    .line 1829
    :try_start_3b
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_36

    .line 1830
    .line 1831
    .line 1832
    goto :goto_39

    .line 1833
    :catch_36
    nop

    .line 1834
    :cond_2d
    :goto_39
    if-eqz v19, :cond_2e

    .line 1835
    .line 1836
    :try_start_3c
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_37

    .line 1837
    .line 1838
    .line 1839
    goto :goto_3a

    .line 1840
    :catch_37
    nop

    .line 1841
    :cond_2e
    :goto_3a
    if-eqz v20, :cond_2f

    .line 1842
    .line 1843
    :try_start_3d
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_38

    .line 1844
    .line 1845
    .line 1846
    goto :goto_3b

    .line 1847
    :catch_38
    nop

    .line 1848
    :cond_2f
    :goto_3b
    if-eqz v18, :cond_30

    .line 1849
    .line 1850
    :try_start_3e
    invoke-virtual/range {v18 .. v18}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_39

    .line 1851
    .line 1852
    .line 1853
    goto :goto_3c

    .line 1854
    :catch_39
    nop

    .line 1855
    :cond_30
    :goto_3c
    if-eqz v17, :cond_31

    .line 1856
    .line 1857
    :try_start_3f
    invoke-virtual/range {v17 .. v17}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_3a

    .line 1858
    .line 1859
    .line 1860
    goto :goto_3d

    .line 1861
    :catch_3a
    nop

    .line 1862
    :cond_31
    :goto_3d
    if-eqz v25, :cond_32

    .line 1863
    .line 1864
    :try_start_40
    invoke-virtual/range {v25 .. v25}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_3b

    .line 1865
    .line 1866
    .line 1867
    :catch_3b
    :cond_32
    :try_start_41
    invoke-virtual/range {v23 .. v23}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_3c

    .line 1868
    .line 1869
    .line 1870
    :catch_3c
    throw v0

    .line 1871
    :cond_33
    move-object v5, v3

    .line 1872
    move-object v2, v9

    .line 1873
    const/4 v0, 0x4

    .line 1874
    if-ne v7, v0, :cond_34

    .line 1875
    .line 1876
    move-object/from16 v1, p0

    .line 1877
    .line 1878
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1879
    .line 1880
    check-cast v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 1881
    .line 1882
    invoke-static {v5, v0}, Lcom/bumptech/glide/c;->m0(Lcom/yunpan/appmanage/bean/WpTaskBean;Lcom/yunpan/appmanage/carsdk/u;)V

    .line 1883
    .line 1884
    .line 1885
    goto :goto_41

    .line 1886
    :cond_34
    move-object/from16 v1, p0

    .line 1887
    .line 1888
    const/4 v0, 0x5

    .line 1889
    if-ne v7, v0, :cond_35

    .line 1890
    .line 1891
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1892
    .line 1893
    check-cast v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 1894
    .line 1895
    invoke-static {v5, v0}, Lcom/bumptech/glide/d;->i0(Lcom/yunpan/appmanage/bean/WpTaskBean;Lcom/yunpan/appmanage/carsdk/u;)V

    .line 1896
    .line 1897
    .line 1898
    goto :goto_41

    .line 1899
    :cond_35
    const/4 v0, 0x6

    .line 1900
    if-eq v7, v0, :cond_36

    .line 1901
    .line 1902
    const/4 v0, 0x7

    .line 1903
    if-ne v7, v0, :cond_37

    .line 1904
    .line 1905
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1906
    .line 1907
    check-cast v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 1908
    .line 1909
    invoke-static {v5, v0}, Lqa/g;->g(Lcom/yunpan/appmanage/bean/WpTaskBean;Lcom/yunpan/appmanage/carsdk/u;)V

    .line 1910
    .line 1911
    .line 1912
    goto :goto_41

    .line 1913
    :cond_36
    :try_start_42
    new-instance v3, Ljava/io/FileInputStream;

    .line 1914
    .line 1915
    iget-object v0, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 1916
    .line 1917
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 1918
    .line 1919
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_3f
    .catchall {:try_start_42 .. :try_end_42} :catchall_1c

    .line 1920
    .line 1921
    .line 1922
    :try_start_43
    iget-object v0, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 1923
    .line 1924
    invoke-static {v0}, Lif/a;->S(Lx9/n5;)La9/f0;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v4
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_3e
    .catchall {:try_start_43 .. :try_end_43} :catchall_1b

    .line 1928
    :try_start_44
    invoke-virtual {v4}, La9/f0;->b()V

    .line 1929
    .line 1930
    .line 1931
    const/4 v6, 0x0

    .line 1932
    throw v6
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_3d
    .catchall {:try_start_44 .. :try_end_44} :catchall_1a

    .line 1933
    :catchall_1a
    move-exception v0

    .line 1934
    move-object v5, v3

    .line 1935
    :goto_3e
    move-object v6, v4

    .line 1936
    goto :goto_42

    .line 1937
    :catch_3d
    :goto_3f
    move-object v6, v3

    .line 1938
    goto :goto_40

    .line 1939
    :catchall_1b
    move-exception v0

    .line 1940
    const/4 v6, 0x0

    .line 1941
    move-object v5, v3

    .line 1942
    goto :goto_42

    .line 1943
    :catch_3e
    const/4 v6, 0x0

    .line 1944
    move-object v4, v6

    .line 1945
    goto :goto_3f

    .line 1946
    :catchall_1c
    move-exception v0

    .line 1947
    const/4 v6, 0x0

    .line 1948
    move-object v5, v6

    .line 1949
    goto :goto_42

    .line 1950
    :catch_3f
    const/4 v6, 0x0

    .line 1951
    move-object v4, v6

    .line 1952
    :goto_40
    :try_start_45
    iput-object v2, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 1953
    .line 1954
    const-string v0, "\u4e0a\u4f20\u5931\u8d25"

    .line 1955
    .line 1956
    iput-object v0, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_1d

    .line 1957
    .line 1958
    invoke-static {v6}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 1959
    .line 1960
    .line 1961
    if-eqz v4, :cond_37

    .line 1962
    .line 1963
    iget-boolean v0, v4, La9/f0;->h:Z

    .line 1964
    .line 1965
    if-eqz v0, :cond_37

    .line 1966
    .line 1967
    invoke-virtual {v4}, La9/f0;->c()V

    .line 1968
    .line 1969
    .line 1970
    :cond_37
    :goto_41
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 1971
    .line 1972
    .line 1973
    move-result-object v0

    .line 1974
    const/16 v2, 0xb

    .line 1975
    .line 1976
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1977
    .line 1978
    iget-object v2, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 1979
    .line 1980
    check-cast v2, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 1981
    .line 1982
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1983
    .line 1984
    iget-object v2, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1985
    .line 1986
    check-cast v2, Lcom/yunpan/appmanage/carsdk/u;

    .line 1987
    .line 1988
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1989
    .line 1990
    .line 1991
    goto :goto_43

    .line 1992
    :catchall_1d
    move-exception v0

    .line 1993
    move-object v5, v6

    .line 1994
    goto :goto_3e

    .line 1995
    :goto_42
    invoke-static {v5}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 1996
    .line 1997
    .line 1998
    if-eqz v6, :cond_38

    .line 1999
    .line 2000
    iget-boolean v2, v6, La9/f0;->h:Z

    .line 2001
    .line 2002
    if-eqz v2, :cond_38

    .line 2003
    .line 2004
    invoke-virtual {v6}, La9/f0;->c()V

    .line 2005
    .line 2006
    .line 2007
    :cond_38
    throw v0

    .line 2008
    :cond_39
    :goto_43
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;ZLjava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\\"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Ly7/b;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lcom/yunpan/appmanage/util/z;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/yunpan/appmanage/util/z;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v10, Lcom/yunpan/appmanage/db/FileInfo;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->p(Ljava/io/File;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 47
    .line 48
    .line 49
    move-result-wide v7

    .line 50
    move-object v0, v10

    .line 51
    move-object v6, p3

    .line 52
    move v9, p2

    .line 53
    invoke-direct/range {v0 .. v9}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Ly7/b;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lcom/yunpan/appmanage/util/z;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/yunpan/appmanage/util/z;->a:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter p1

    .line 63
    :try_start_0
    iget-object p2, p0, Ly7/b;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p2, Lcom/yunpan/appmanage/util/z;

    .line 66
    .line 67
    iget-object p2, p2, Lcom/yunpan/appmanage/util/z;->b:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Ly7/b;->c:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p2, Lcom/yunpan/appmanage/util/z;

    .line 75
    .line 76
    iget-object p2, p2, Lcom/yunpan/appmanage/util/z;->b:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    const/16 p3, 0x190

    .line 83
    .line 84
    if-lt p2, p3, :cond_2

    .line 85
    .line 86
    new-instance p2, Ljava/util/ArrayList;

    .line 87
    .line 88
    iget-object p3, p0, Ly7/b;->c:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p3, Lcom/yunpan/appmanage/util/z;

    .line 91
    .line 92
    iget-object p3, p3, Lcom/yunpan/appmanage/util/z;->b:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 95
    .line 96
    .line 97
    iget-object p3, p0, Ly7/b;->c:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p3, Lcom/yunpan/appmanage/util/z;

    .line 100
    .line 101
    iget-object p3, p3, Lcom/yunpan/appmanage/util/z;->b:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception p2

    .line 108
    goto :goto_2

    .line 109
    :cond_2
    const/4 p2, 0x0

    .line 110
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-eqz p2, :cond_3

    .line 112
    .line 113
    iget-object p1, p0, Ly7/b;->c:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p1, Lcom/yunpan/appmanage/util/z;

    .line 116
    .line 117
    iget-object p1, p1, Lcom/yunpan/appmanage/util/z;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Ly7/b;->c:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p1, Lcom/yunpan/appmanage/util/z;

    .line 125
    .line 126
    iget-object p3, p1, Lcom/yunpan/appmanage/util/z;->e:Ljava/util/concurrent/ExecutorService;

    .line 127
    .line 128
    new-instance v0, Ly7/b;

    .line 129
    .line 130
    const/4 v1, 0x4

    .line 131
    const/4 v2, 0x0

    .line 132
    invoke-direct {v0, v1, p1, p2, v2}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 133
    .line 134
    .line 135
    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    iget-object p1, p0, Ly7/b;->c:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p1, Lcom/yunpan/appmanage/util/z;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/yunpan/appmanage/util/z;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    throw p2
.end method

.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    const/16 v3, 0xc

    .line 6
    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x2

    .line 10
    const/4 v7, 0x1

    .line 11
    iget v8, v1, Ly7/b;->a:I

    .line 12
    .line 13
    packed-switch v8, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    iget-object v8, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v8, Lz9/a;

    .line 19
    .line 20
    iget-object v8, v8, Lz9/a;->c:Ljava/lang/Thread;

    .line 21
    .line 22
    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    if-nez v8, :cond_a

    .line 27
    .line 28
    :try_start_0
    iget-object v8, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v8, Lz9/a;

    .line 31
    .line 32
    iget-object v8, v8, Lz9/a;->a:Lz9/e;

    .line 33
    .line 34
    const/16 v9, 0x18

    .line 35
    .line 36
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 41
    .line 42
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    invoke-virtual {v8, v9, v11}, Lz9/e;->r(I[B)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-eqz v9, :cond_1

    .line 58
    .line 59
    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    new-array v9, v9, [B

    .line 64
    .line 65
    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    invoke-virtual {v8, v11, v9}, Lz9/e;->r(I[B)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move-object v9, v0

    .line 74
    :goto_1
    sget-object v8, Lz9/c;->a:[B

    .line 75
    .line 76
    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    const/16 v11, 0x14

    .line 81
    .line 82
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    xor-int/lit8 v11, v11, -0x1

    .line 87
    .line 88
    if-eq v8, v11, :cond_2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-eqz v8, :cond_3

    .line 96
    .line 97
    invoke-static {v9}, Lua/i8;->m([B)I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    const/16 v11, 0x10

    .line 102
    .line 103
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    if-eq v8, v11, :cond_3

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    const/16 v11, 0x8

    .line 115
    .line 116
    sparse-switch v8, :sswitch_data_0

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :sswitch_0
    iget-object v8, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v8, Lz9/a;

    .line 123
    .line 124
    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :try_start_1
    iget-object v9, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v9, Lz9/a;

    .line 128
    .line 129
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    iput v10, v9, Lz9/a;->f:I

    .line 134
    .line 135
    iget-object v9, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v9, Lz9/a;

    .line 138
    .line 139
    iput-boolean v7, v9, Lz9/a;->e:Z

    .line 140
    .line 141
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 142
    .line 143
    .line 144
    monitor-exit v8

    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :catchall_0
    move-exception v0

    .line 148
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :try_start_2
    throw v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    goto/16 :goto_5

    .line 152
    .line 153
    :sswitch_1
    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    if-ne v8, v7, :cond_0

    .line 158
    .line 159
    iget-object v8, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v8, Lz9/a;

    .line 162
    .line 163
    iget-boolean v10, v8, Lz9/a;->h:Z

    .line 164
    .line 165
    const v11, 0x48545541

    .line 166
    .line 167
    .line 168
    if-eqz v10, :cond_4

    .line 169
    .line 170
    iget-object v8, v8, Lz9/a;->g:Lz9/b;

    .line 171
    .line 172
    invoke-virtual {v8}, Lz9/b;->a()[B

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    new-instance v9, Lua/i8;

    .line 177
    .line 178
    invoke-direct {v9, v11, v2, v5, v8}, Lua/i8;-><init>(III[B)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_4
    iget-object v8, v8, Lz9/a;->g:Lz9/b;

    .line 183
    .line 184
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    const-string v10, "RSA/ECB/NoPadding"

    .line 188
    .line 189
    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    iget-object v8, v8, Lz9/b;->a:Ljava/security/KeyPair;

    .line 194
    .line 195
    invoke-virtual {v8}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    invoke-virtual {v10, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 200
    .line 201
    .line 202
    sget-object v8, Lz9/b;->d:[B

    .line 203
    .line 204
    invoke-virtual {v10, v8}, Ljavax/crypto/Cipher;->update([B)[B

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    new-instance v9, Lua/i8;

    .line 212
    .line 213
    invoke-direct {v9, v11, v6, v5, v8}, Lua/i8;-><init>(III[B)V

    .line 214
    .line 215
    .line 216
    iget-object v8, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v8, Lz9/a;

    .line 219
    .line 220
    iput-boolean v7, v8, Lz9/a;->h:Z

    .line 221
    .line 222
    :goto_2
    iget-object v8, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v8, Lz9/a;

    .line 225
    .line 226
    iget-object v8, v8, Lz9/a;->a:Lz9/e;

    .line 227
    .line 228
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    iget-object v10, v9, Lua/i8;->b:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v10, Ljava/nio/ByteBuffer;

    .line 234
    .line 235
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    invoke-virtual {v8, v10}, Lz9/e;->J([B)V

    .line 240
    .line 241
    .line 242
    iget-object v9, v9, Lua/i8;->c:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v9, [B

    .line 245
    .line 246
    if-eqz v9, :cond_0

    .line 247
    .line 248
    invoke-virtual {v8, v9}, Lz9/e;->J([B)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :sswitch_2
    iget-object v8, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v8, Lz9/a;

    .line 256
    .line 257
    iget-boolean v8, v8, Lz9/a;->e:Z

    .line 258
    .line 259
    if-nez v8, :cond_5

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_5
    iget-object v8, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v8, Lz9/a;

    .line 266
    .line 267
    iget-object v8, v8, Lz9/a;->i:Ljava/util/HashMap;

    .line 268
    .line 269
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 270
    .line 271
    .line 272
    move-result v12

    .line 273
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v12

    .line 277
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    check-cast v8, Lz9/d;

    .line 282
    .line 283
    if-nez v8, :cond_6

    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :cond_6
    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 288
    :try_start_3
    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 289
    .line 290
    .line 291
    move-result v12

    .line 292
    const v13, 0x59414b4f

    .line 293
    .line 294
    .line 295
    if-ne v12, v13, :cond_7

    .line 296
    .line 297
    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    iput v9, v8, Lz9/d;->c:I

    .line 302
    .line 303
    iget-object v9, v8, Lz9/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 304
    .line 305
    invoke-virtual {v9, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 309
    .line 310
    .line 311
    goto :goto_3

    .line 312
    :catchall_1
    move-exception v0

    .line 313
    goto :goto_4

    .line 314
    :cond_7
    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 315
    .line 316
    .line 317
    move-result v12

    .line 318
    const v13, 0x45545257

    .line 319
    .line 320
    .line 321
    if-ne v12, v13, :cond_8

    .line 322
    .line 323
    invoke-virtual {v8, v9}, Lz9/d;->r([B)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v8}, Lz9/d;->L()V

    .line 327
    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_8
    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 331
    .line 332
    .line 333
    move-result v9

    .line 334
    const v12, 0x45534c43

    .line 335
    .line 336
    .line 337
    if-ne v9, v12, :cond_9

    .line 338
    .line 339
    iget-object v9, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v9, Lz9/a;

    .line 342
    .line 343
    iget-object v9, v9, Lz9/a;->i:Ljava/util/HashMap;

    .line 344
    .line 345
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 346
    .line 347
    .line 348
    move-result v10

    .line 349
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v8}, Lz9/d;->A()V

    .line 357
    .line 358
    .line 359
    :cond_9
    :goto_3
    monitor-exit v8

    .line 360
    goto/16 :goto_0

    .line 361
    .line 362
    :goto_4
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 363
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 364
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 365
    .line 366
    .line 367
    :cond_a
    iget-object v0, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 368
    .line 369
    move-object v3, v0

    .line 370
    check-cast v3, Lz9/a;

    .line 371
    .line 372
    monitor-enter v3

    .line 373
    :try_start_5
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v0, Lz9/a;

    .line 376
    .line 377
    iget-object v0, v0, Lz9/a;->i:Ljava/util/HashMap;

    .line 378
    .line 379
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    :catch_1
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    if-eqz v4, :cond_b

    .line 392
    .line 393
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    check-cast v4, Lz9/d;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 398
    .line 399
    :try_start_6
    invoke-virtual {v4}, Lz9/d;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 400
    .line 401
    .line 402
    goto :goto_6

    .line 403
    :cond_b
    :try_start_7
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 404
    .line 405
    .line 406
    iget-object v0, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast v0, Lz9/a;

    .line 409
    .line 410
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 411
    .line 412
    .line 413
    iget-object v0, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast v0, Lz9/a;

    .line 416
    .line 417
    iput-boolean v5, v0, Lz9/a;->d:Z

    .line 418
    .line 419
    monitor-exit v3

    .line 420
    return-void

    .line 421
    :catchall_2
    move-exception v0

    .line 422
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 423
    throw v0

    .line 424
    :pswitch_0
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 425
    .line 426
    move-object v3, v0

    .line 427
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 428
    .line 429
    iget-boolean v0, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->h0:Z

    .line 430
    .line 431
    iget-object v4, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v4, Lx9/u5;

    .line 434
    .line 435
    if-nez v0, :cond_1d

    .line 436
    .line 437
    iget-boolean v0, v4, Lx9/u5;->i:Z

    .line 438
    .line 439
    if-eqz v0, :cond_c

    .line 440
    .line 441
    goto/16 :goto_d

    .line 442
    .line 443
    :cond_c
    iget-object v0, v4, Lx9/u5;->f:Ljava/lang/String;

    .line 444
    .line 445
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    const-string v5, ".apk"

    .line 450
    .line 451
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    if-eqz v0, :cond_d

    .line 456
    .line 457
    :try_start_8
    iget-object v0, v4, Lx9/u5;->f:Ljava/lang/String;

    .line 458
    .line 459
    invoke-static {v0}, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    iput-object v0, v4, Lx9/u5;->f:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 464
    .line 465
    goto :goto_7

    .line 466
    :catch_2
    nop

    .line 467
    :cond_d
    :goto_7
    iget-object v0, v4, Lx9/u5;->f:Ljava/lang/String;

    .line 468
    .line 469
    const-string v5, ".gj"

    .line 470
    .line 471
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    const-string v5, ""

    .line 476
    .line 477
    const-string v7, "\u5b89\u88c5\u6210\u529f"

    .line 478
    .line 479
    const-string v8, "\u5b89\u88c5\u5931\u8d25"

    .line 480
    .line 481
    if-eqz v0, :cond_f

    .line 482
    .line 483
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 484
    .line 485
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 486
    .line 487
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 488
    .line 489
    if-nez v0, :cond_e

    .line 490
    .line 491
    iput-object v8, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 492
    .line 493
    const-string v0, "\u5b89\u88c5\u6b64\u7c7b\u6587\u4ef6\u9700\u8981\u7cfb\u7edf\u5199\u5165\u6743\uff0c\u5426\u5219\u65e0\u6743\u5b89\u88c5"

    .line 494
    .line 495
    iput-object v0, v4, Lx9/u5;->h:Ljava/lang/String;

    .line 496
    .line 497
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_e

    .line 501
    .line 502
    :cond_e
    :try_start_9
    new-instance v0, Ljava/io/File;

    .line 503
    .line 504
    iget-object v2, v4, Lx9/u5;->f:Ljava/lang/String;

    .line 505
    .line 506
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    invoke-static {v0}, La9/o;->R(Ljava/io/File;)V

    .line 510
    .line 511
    .line 512
    iput-object v7, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 513
    .line 514
    iput-object v5, v4, Lx9/u5;->h:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 515
    .line 516
    goto :goto_8

    .line 517
    :catch_3
    move-exception v0

    .line 518
    iput-object v8, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 519
    .line 520
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    iput-object v0, v4, Lx9/u5;->h:Ljava/lang/String;

    .line 529
    .line 530
    :goto_8
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_e

    .line 534
    .line 535
    :cond_f
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 536
    .line 537
    iget v9, v0, Lcom/yunpan/appmanage/util/w;->T:I

    .line 538
    .line 539
    const-string v10, "\u5b89\u88c5\u4e2d"

    .line 540
    .line 541
    if-eq v9, v6, :cond_1b

    .line 542
    .line 543
    if-ne v9, v2, :cond_10

    .line 544
    .line 545
    goto/16 :goto_b

    .line 546
    .line 547
    :cond_10
    iget-boolean v2, v0, Lcom/yunpan/appmanage/util/w;->y:Z

    .line 548
    .line 549
    const-string v6, "\u8c03\u7528\u5b89\u88c5\u5668"

    .line 550
    .line 551
    if-nez v2, :cond_18

    .line 552
    .line 553
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 554
    .line 555
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    invoke-static {}, La2/w0;->Q()Z

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    if-eqz v2, :cond_18

    .line 563
    .line 564
    iput-object v10, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 565
    .line 566
    sget-object v2, Lfa/g0;->a:Lfa/h0;

    .line 567
    .line 568
    invoke-virtual {v2}, Lfa/h0;->f()Z

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    if-eqz v2, :cond_11

    .line 573
    .line 574
    const-string v2, "root"

    .line 575
    .line 576
    goto :goto_9

    .line 577
    :cond_11
    const-string v2, "adb"

    .line 578
    .line 579
    :goto_9
    invoke-static {}, La2/w0;->P()Z

    .line 580
    .line 581
    .line 582
    move-result v9

    .line 583
    if-nez v9, :cond_12

    .line 584
    .line 585
    const-string v2, "pm"

    .line 586
    .line 587
    :cond_12
    const-string v9, "\u91c7\u7528\u3010"

    .line 588
    .line 589
    const-string v10, "\u3011\u547d\u4ee4\u8fdb\u884c\u5b89\u88c5"

    .line 590
    .line 591
    invoke-static {v9, v2, v10}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v9

    .line 595
    iput-object v9, v4, Lx9/u5;->h:Ljava/lang/String;

    .line 596
    .line 597
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 598
    .line 599
    .line 600
    iget-object v9, v4, Lx9/u5;->f:Ljava/lang/String;

    .line 601
    .line 602
    sget-object v10, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 603
    .line 604
    sget-object v10, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 605
    .line 606
    iget v10, v10, Lcom/yunpan/appmanage/util/k;->n:I

    .line 607
    .line 608
    invoke-static {v10, v9}, La2/w0;->Y(ILjava/lang/String;)Lfa/x;

    .line 609
    .line 610
    .line 611
    move-result-object v9

    .line 612
    iget-boolean v10, v9, Lfa/x;->a:Z

    .line 613
    .line 614
    if-eqz v10, :cond_14

    .line 615
    .line 616
    iput-object v7, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 617
    .line 618
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->J:Z

    .line 619
    .line 620
    if-eqz v0, :cond_13

    .line 621
    .line 622
    const-string v0, "\u5b89\u88c5\u6210\u529f,\u8bf7\u91cd\u542f\u8f66\u673a"

    .line 623
    .line 624
    iput-object v0, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 625
    .line 626
    :cond_13
    iput-object v5, v4, Lx9/u5;->h:Ljava/lang/String;

    .line 627
    .line 628
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 629
    .line 630
    .line 631
    goto/16 :goto_e

    .line 632
    .line 633
    :cond_14
    iget v10, v9, Lfa/x;->b:I

    .line 634
    .line 635
    const/16 v11, -0x6f

    .line 636
    .line 637
    if-ne v10, v11, :cond_15

    .line 638
    .line 639
    iput-object v8, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 640
    .line 641
    iget-object v0, v9, Lfa/x;->c:Ljava/lang/String;

    .line 642
    .line 643
    iput-object v0, v4, Lx9/u5;->h:Ljava/lang/String;

    .line 644
    .line 645
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 646
    .line 647
    .line 648
    goto/16 :goto_e

    .line 649
    .line 650
    :cond_15
    iput-object v6, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 651
    .line 652
    const-string v6, "\u5b89\u88c5\u5931\u8d25,\u5f00\u59cb\u8c03\u7528\u5b89\u88c5\u5668\uff01\u5931\u8d25\u539f\u56e0\uff1a"

    .line 653
    .line 654
    invoke-static {v2, v6}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    iget-object v6, v9, Lfa/x;->c:Ljava/lang/String;

    .line 659
    .line 660
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    iput-object v2, v4, Lx9/u5;->h:Ljava/lang/String;

    .line 668
    .line 669
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 670
    .line 671
    .line 672
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 673
    .line 674
    if-nez v0, :cond_17

    .line 675
    .line 676
    sget-object v0, Lma/h;->a:Lma/i;

    .line 677
    .line 678
    iget-object v2, v4, Lx9/u5;->f:Ljava/lang/String;

    .line 679
    .line 680
    invoke-virtual {v0, v2}, Lma/i;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 685
    .line 686
    .line 687
    move-result v2

    .line 688
    if-eqz v2, :cond_16

    .line 689
    .line 690
    iput-object v7, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 691
    .line 692
    iput-object v5, v4, Lx9/u5;->h:Ljava/lang/String;

    .line 693
    .line 694
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 695
    .line 696
    .line 697
    goto/16 :goto_e

    .line 698
    .line 699
    :cond_16
    iput-object v8, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 700
    .line 701
    iput-object v0, v4, Lx9/u5;->h:Ljava/lang/String;

    .line 702
    .line 703
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 704
    .line 705
    .line 706
    goto/16 :goto_e

    .line 707
    .line 708
    :cond_17
    iget-object v0, v3, Lda/g;->A:Lda/g;

    .line 709
    .line 710
    iget-object v2, v4, Lx9/u5;->f:Ljava/lang/String;

    .line 711
    .line 712
    invoke-static {v0, v2}, Lcom/bumptech/glide/c;->I(Landroid/content/Context;Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    goto :goto_e

    .line 716
    :cond_18
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 717
    .line 718
    if-nez v0, :cond_1a

    .line 719
    .line 720
    iput-object v10, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 721
    .line 722
    const-string v0, "\u91c7\u7528[\u7ba1\u5bb6\u5b89\u88c5\u5668]\u8fdb\u884c\u5b89\u88c5"

    .line 723
    .line 724
    iput-object v0, v4, Lx9/u5;->h:Ljava/lang/String;

    .line 725
    .line 726
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 727
    .line 728
    .line 729
    sget-object v0, Lma/h;->a:Lma/i;

    .line 730
    .line 731
    iget-object v2, v4, Lx9/u5;->f:Ljava/lang/String;

    .line 732
    .line 733
    invoke-virtual {v0, v2}, Lma/i;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 738
    .line 739
    .line 740
    move-result v2

    .line 741
    if-eqz v2, :cond_19

    .line 742
    .line 743
    iput-object v7, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 744
    .line 745
    iput-object v5, v4, Lx9/u5;->h:Ljava/lang/String;

    .line 746
    .line 747
    goto :goto_a

    .line 748
    :cond_19
    iput-object v8, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 749
    .line 750
    iput-object v0, v4, Lx9/u5;->h:Ljava/lang/String;

    .line 751
    .line 752
    :goto_a
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 753
    .line 754
    .line 755
    goto :goto_e

    .line 756
    :cond_1a
    iput-object v6, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 757
    .line 758
    const-string v0, "\u8c03\u7528\u7cfb\u7edf\u5b89\u88c5\u5668\uff1a\u8bf7\u624b\u52a8\u786e\u8ba4\u5b89\u88c5\u5e94\u7528"

    .line 759
    .line 760
    iput-object v0, v4, Lx9/u5;->h:Ljava/lang/String;

    .line 761
    .line 762
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 763
    .line 764
    .line 765
    iget-object v0, v3, Lda/g;->A:Lda/g;

    .line 766
    .line 767
    iget-object v2, v4, Lx9/u5;->f:Ljava/lang/String;

    .line 768
    .line 769
    invoke-static {v0, v2}, Lcom/bumptech/glide/c;->I(Landroid/content/Context;Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    goto :goto_e

    .line 773
    :cond_1b
    :goto_b
    iput-object v10, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 774
    .line 775
    const-string v0, "\u91c7\u7528[\u591a\u5c4f\u4e92\u52a8]\u8fdb\u884c\u5b89\u88c5"

    .line 776
    .line 777
    iput-object v0, v4, Lx9/u5;->h:Ljava/lang/String;

    .line 778
    .line 779
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 780
    .line 781
    .line 782
    iget-object v0, v4, Lx9/u5;->f:Ljava/lang/String;

    .line 783
    .line 784
    new-instance v2, Lua/i1;

    .line 785
    .line 786
    invoke-direct {v2, v6, v1}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 787
    .line 788
    .line 789
    invoke-static {v0, v2}, Lcom/bumptech/glide/d;->G(Ljava/lang/String;Lma/k;)Lma/l;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    invoke-virtual {v0}, Lma/l;->a()Z

    .line 794
    .line 795
    .line 796
    move-result v2

    .line 797
    if-eqz v2, :cond_1c

    .line 798
    .line 799
    iput-object v7, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 800
    .line 801
    iput-object v5, v4, Lx9/u5;->h:Ljava/lang/String;

    .line 802
    .line 803
    goto :goto_c

    .line 804
    :cond_1c
    iput-object v8, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 805
    .line 806
    iget-object v0, v0, Lma/l;->c:Ljava/lang/String;

    .line 807
    .line 808
    iput-object v0, v4, Lx9/u5;->h:Ljava/lang/String;

    .line 809
    .line 810
    :goto_c
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 811
    .line 812
    .line 813
    goto :goto_e

    .line 814
    :cond_1d
    :goto_d
    const-string v0, "\u5df2\u53d6\u6d88"

    .line 815
    .line 816
    iput-object v0, v4, Lx9/u5;->c:Ljava/lang/String;

    .line 817
    .line 818
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 819
    .line 820
    .line 821
    :goto_e
    return-void

    .line 822
    :pswitch_1
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 823
    .line 824
    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 825
    .line 826
    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lf1/d;

    .line 827
    .line 828
    if-eqz v0, :cond_1e

    .line 829
    .line 830
    invoke-virtual {v0}, Lf1/d;->f()Z

    .line 831
    .line 832
    .line 833
    move-result v0

    .line 834
    if-eqz v0, :cond_1e

    .line 835
    .line 836
    sget-object v0, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 837
    .line 838
    iget-object v0, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 839
    .line 840
    check-cast v0, Landroid/view/View;

    .line 841
    .line 842
    invoke-static {v0, v1}, Lx0/j0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 843
    .line 844
    .line 845
    :cond_1e
    return-void

    .line 846
    :pswitch_2
    iget-object v0, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 847
    .line 848
    check-cast v0, Lu0/d;

    .line 849
    .line 850
    iget-object v2, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 851
    .line 852
    invoke-virtual {v0, v2}, Lu0/d;->accept(Ljava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    return-void

    .line 856
    :pswitch_3
    iget-object v0, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 857
    .line 858
    check-cast v0, Ll5/y;

    .line 859
    .line 860
    iget-object v0, v0, Ll5/y;->b:Ljava/lang/Object;

    .line 861
    .line 862
    check-cast v0, Lo0/b;

    .line 863
    .line 864
    if-eqz v0, :cond_1f

    .line 865
    .line 866
    iget-object v2, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 867
    .line 868
    check-cast v2, Landroid/graphics/Typeface;

    .line 869
    .line 870
    invoke-virtual {v0, v2}, Lo0/b;->i(Landroid/graphics/Typeface;)V

    .line 871
    .line 872
    .line 873
    :cond_1f
    return-void

    .line 874
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Ly7/b;->c()V

    .line 875
    .line 876
    .line 877
    return-void

    .line 878
    :pswitch_5
    iget-object v0, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 879
    .line 880
    check-cast v0, Loc/u;

    .line 881
    .line 882
    iput-boolean v7, v0, Loc/u;->d:Z

    .line 883
    .line 884
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 885
    .line 886
    check-cast v0, Loc/v;

    .line 887
    .line 888
    iget-object v0, v0, Loc/v;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 889
    .line 890
    iget-object v2, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 891
    .line 892
    check-cast v2, Loc/u;

    .line 893
    .line 894
    invoke-virtual {v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 895
    .line 896
    .line 897
    return-void

    .line 898
    :pswitch_6
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 899
    .line 900
    check-cast v0, Lmc/p;

    .line 901
    .line 902
    iget-object v0, v0, Lmc/a;->a:Lec/b;

    .line 903
    .line 904
    iget-object v2, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 905
    .line 906
    check-cast v2, Lmc/o;

    .line 907
    .line 908
    invoke-virtual {v0, v2}, Lec/b;->b(Lec/e;)V

    .line 909
    .line 910
    .line 911
    return-void

    .line 912
    :pswitch_7
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 913
    .line 914
    check-cast v0, Lm9/d;

    .line 915
    .line 916
    iget-object v0, v0, Lm9/d;->b:Lnh/b;

    .line 917
    .line 918
    if-eqz v0, :cond_20

    .line 919
    .line 920
    iget-object v2, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 921
    .line 922
    check-cast v2, Lk9/d;

    .line 923
    .line 924
    invoke-virtual {v0, v2}, Lnh/b;->r0(Lk9/d;)V

    .line 925
    .line 926
    .line 927
    :cond_20
    return-void

    .line 928
    :pswitch_8
    :try_start_a
    sget-object v0, Lm0/g;->d:Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 929
    .line 930
    iget-object v3, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 931
    .line 932
    iget-object v4, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 933
    .line 934
    if-eqz v0, :cond_21

    .line 935
    .line 936
    :try_start_b
    new-array v2, v2, [Ljava/lang/Object;

    .line 937
    .line 938
    aput-object v3, v2, v5

    .line 939
    .line 940
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 941
    .line 942
    aput-object v3, v2, v7

    .line 943
    .line 944
    const-string v3, "AppCompat recreation"

    .line 945
    .line 946
    aput-object v3, v2, v6

    .line 947
    .line 948
    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    goto :goto_10

    .line 952
    :catch_4
    move-exception v0

    .line 953
    goto :goto_f

    .line 954
    :cond_21
    sget-object v0, Lm0/g;->e:Ljava/lang/reflect/Method;

    .line 955
    .line 956
    new-array v2, v6, [Ljava/lang/Object;

    .line 957
    .line 958
    aput-object v3, v2, v5

    .line 959
    .line 960
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 961
    .line 962
    aput-object v3, v2, v7

    .line 963
    .line 964
    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 965
    .line 966
    .line 967
    goto :goto_10

    .line 968
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 969
    .line 970
    .line 971
    move-result-object v2

    .line 972
    const-class v3, Ljava/lang/RuntimeException;

    .line 973
    .line 974
    if-ne v2, v3, :cond_23

    .line 975
    .line 976
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    if-eqz v2, :cond_23

    .line 981
    .line 982
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v2

    .line 986
    const-string v3, "Unable to stop"

    .line 987
    .line 988
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 989
    .line 990
    .line 991
    move-result v2

    .line 992
    if-nez v2, :cond_22

    .line 993
    .line 994
    goto :goto_10

    .line 995
    :cond_22
    throw v0

    .line 996
    :catchall_3
    :cond_23
    :goto_10
    return-void

    .line 997
    :pswitch_9
    iget-object v0, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 998
    .line 999
    check-cast v0, Landroid/app/Application;

    .line 1000
    .line 1001
    iget-object v2, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1002
    .line 1003
    check-cast v2, Lm0/f;

    .line 1004
    .line 1005
    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1006
    .line 1007
    .line 1008
    return-void

    .line 1009
    :pswitch_a
    iget-object v0, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 1010
    .line 1011
    check-cast v0, Lm0/f;

    .line 1012
    .line 1013
    iget-object v2, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1014
    .line 1015
    iput-object v2, v0, Lm0/f;->a:Ljava/lang/Object;

    .line 1016
    .line 1017
    return-void

    .line 1018
    :pswitch_b
    iget-object v0, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 1019
    .line 1020
    check-cast v0, Lkf/d;

    .line 1021
    .line 1022
    invoke-virtual {v0}, Lkf/d;->L()Lkh/i;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v0

    .line 1026
    if-eqz v0, :cond_24

    .line 1027
    .line 1028
    iget-object v2, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1029
    .line 1030
    check-cast v2, Lkh/e;

    .line 1031
    .line 1032
    invoke-virtual {v2, v0}, Lkh/e;->d(Lkh/i;)V

    .line 1033
    .line 1034
    .line 1035
    return-void

    .line 1036
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1037
    .line 1038
    const-string v2, "No pending post available"

    .line 1039
    .line 1040
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1041
    .line 1042
    .line 1043
    throw v0

    .line 1044
    :pswitch_c
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1045
    .line 1046
    check-cast v0, Lk5/b;

    .line 1047
    .line 1048
    iget-boolean v2, v0, Lk5/b;->d:Z

    .line 1049
    .line 1050
    if-eqz v2, :cond_25

    .line 1051
    .line 1052
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1053
    .line 1054
    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v2

    .line 1061
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v2

    .line 1065
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v2

    .line 1069
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1070
    .line 1071
    .line 1072
    :cond_25
    :try_start_c
    iget-object v2, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 1073
    .line 1074
    check-cast v2, Ljava/lang/Runnable;

    .line 1075
    .line 1076
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1077
    .line 1078
    .line 1079
    goto :goto_11

    .line 1080
    :catchall_4
    iget-object v0, v0, Lk5/b;->c:Lk5/c;

    .line 1081
    .line 1082
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1083
    .line 1084
    .line 1085
    :goto_11
    return-void

    .line 1086
    :pswitch_d
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1087
    .line 1088
    check-cast v0, Ldg/a;

    .line 1089
    .line 1090
    iget-object v2, v0, Ldg/a;->c:Ljava/lang/Object;

    .line 1091
    .line 1092
    check-cast v2, Ljava/util/concurrent/ExecutorService;

    .line 1093
    .line 1094
    :try_start_d
    iget-object v3, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 1095
    .line 1096
    check-cast v3, La2/g1;

    .line 1097
    .line 1098
    iget-object v4, v0, Ldg/a;->b:Ljava/lang/Object;

    .line 1099
    .line 1100
    check-cast v4, Lcg/a;

    .line 1101
    .line 1102
    invoke-virtual {v0, v3, v4}, Ldg/a;->d(La2/g1;Lcg/a;)V
    :try_end_d
    .catch Lwf/a; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1103
    .line 1104
    .line 1105
    :catch_5
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1106
    .line 1107
    .line 1108
    goto :goto_12

    .line 1109
    :catchall_5
    move-exception v0

    .line 1110
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1111
    .line 1112
    .line 1113
    throw v0

    .line 1114
    :goto_12
    return-void

    .line 1115
    :pswitch_e
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1116
    .line 1117
    check-cast v0, Ld9/b;

    .line 1118
    .line 1119
    iget-object v2, v0, Ld9/b;->e:Lnh/b;

    .line 1120
    .line 1121
    iget-object v3, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 1122
    .line 1123
    check-cast v3, Lv3/f;

    .line 1124
    .line 1125
    invoke-virtual {v2, v3}, Lnh/b;->g0(Lv3/f;)V

    .line 1126
    .line 1127
    .line 1128
    iget-object v0, v0, Ld9/b;->e:Lnh/b;

    .line 1129
    .line 1130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1131
    .line 1132
    .line 1133
    return-void

    .line 1134
    :pswitch_f
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1135
    .line 1136
    check-cast v0, Ld9/b;

    .line 1137
    .line 1138
    iget-object v2, v0, Ld9/b;->e:Lnh/b;

    .line 1139
    .line 1140
    iget-object v3, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 1141
    .line 1142
    check-cast v3, Lv3/f;

    .line 1143
    .line 1144
    invoke-virtual {v2, v3}, Lnh/b;->g0(Lv3/f;)V

    .line 1145
    .line 1146
    .line 1147
    iget-object v0, v0, Ld9/b;->e:Lnh/b;

    .line 1148
    .line 1149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1150
    .line 1151
    .line 1152
    return-void

    .line 1153
    :pswitch_10
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1154
    .line 1155
    check-cast v0, Ld9/b;

    .line 1156
    .line 1157
    iget-object v2, v0, Ld9/b;->e:Lnh/b;

    .line 1158
    .line 1159
    iget-object v3, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 1160
    .line 1161
    check-cast v3, Lv3/f;

    .line 1162
    .line 1163
    invoke-virtual {v2, v3}, Lnh/b;->g0(Lv3/f;)V

    .line 1164
    .line 1165
    .line 1166
    iget-object v0, v0, Ld9/b;->e:Lnh/b;

    .line 1167
    .line 1168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1169
    .line 1170
    .line 1171
    return-void

    .line 1172
    :pswitch_11
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1173
    .line 1174
    check-cast v0, Ld9/b;

    .line 1175
    .line 1176
    iget-object v2, v0, Ld9/b;->e:Lnh/b;

    .line 1177
    .line 1178
    iget-object v3, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 1179
    .line 1180
    check-cast v3, Lv3/f;

    .line 1181
    .line 1182
    invoke-virtual {v2, v3}, Lnh/b;->g0(Lv3/f;)V

    .line 1183
    .line 1184
    .line 1185
    iget-object v0, v0, Ld9/b;->e:Lnh/b;

    .line 1186
    .line 1187
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1188
    .line 1189
    .line 1190
    return-void

    .line 1191
    :pswitch_12
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1192
    .line 1193
    check-cast v0, Ld9/b;

    .line 1194
    .line 1195
    iget-object v2, v0, Ld9/b;->e:Lnh/b;

    .line 1196
    .line 1197
    iget-object v3, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 1198
    .line 1199
    check-cast v3, Lv3/f;

    .line 1200
    .line 1201
    invoke-virtual {v2, v3}, Lnh/b;->g0(Lv3/f;)V

    .line 1202
    .line 1203
    .line 1204
    iget-object v0, v0, Ld9/b;->e:Lnh/b;

    .line 1205
    .line 1206
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1207
    .line 1208
    .line 1209
    return-void

    .line 1210
    :pswitch_13
    invoke-direct/range {p0 .. p0}, Ly7/b;->b()V

    .line 1211
    .line 1212
    .line 1213
    return-void

    .line 1214
    :pswitch_14
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v0

    .line 1218
    iget-object v2, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 1219
    .line 1220
    check-cast v2, Ljava/util/ArrayList;

    .line 1221
    .line 1222
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/db/MyDb;->addList(Ljava/util/ArrayList;)V

    .line 1223
    .line 1224
    .line 1225
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1226
    .line 1227
    check-cast v0, Lcom/yunpan/appmanage/util/z;

    .line 1228
    .line 1229
    iget-object v0, v0, Lcom/yunpan/appmanage/util/z;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1230
    .line 1231
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1232
    .line 1233
    .line 1234
    return-void

    .line 1235
    :pswitch_15
    invoke-static {}, Lo5/v;->a()Lo5/v;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v0

    .line 1239
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1240
    .line 1241
    .line 1242
    invoke-static {}, La6/q;->a()V

    .line 1243
    .line 1244
    .line 1245
    iget-object v0, v0, Lo5/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1246
    .line 1247
    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1248
    .line 1249
    .line 1250
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1251
    .line 1252
    check-cast v0, Lcom/bumptech/glide/manager/d;

    .line 1253
    .line 1254
    iget-object v0, v0, Lcom/bumptech/glide/manager/d;->b:Lcom/bumptech/glide/manager/e;

    .line 1255
    .line 1256
    iput-boolean v7, v0, Lcom/bumptech/glide/manager/e;->b:Z

    .line 1257
    .line 1258
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1259
    .line 1260
    check-cast v0, Lcom/bumptech/glide/manager/d;

    .line 1261
    .line 1262
    iget-object v0, v0, Lcom/bumptech/glide/manager/d;->a:Landroid/view/View;

    .line 1263
    .line 1264
    iget-object v2, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 1265
    .line 1266
    check-cast v2, Lcom/bumptech/glide/manager/d;

    .line 1267
    .line 1268
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v0

    .line 1272
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 1273
    .line 1274
    .line 1275
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1276
    .line 1277
    check-cast v0, Lcom/bumptech/glide/manager/d;

    .line 1278
    .line 1279
    iget-object v0, v0, Lcom/bumptech/glide/manager/d;->b:Lcom/bumptech/glide/manager/e;

    .line 1280
    .line 1281
    iget-object v0, v0, Lcom/bumptech/glide/manager/e;->a:Ljava/util/Set;

    .line 1282
    .line 1283
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1284
    .line 1285
    .line 1286
    return-void

    .line 1287
    :pswitch_16
    iget-object v2, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 1288
    .line 1289
    check-cast v2, Ljava/util/ArrayList;

    .line 1290
    .line 1291
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v3

    .line 1295
    :cond_26
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1296
    .line 1297
    .line 1298
    move-result v4

    .line 1299
    iget-object v5, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1300
    .line 1301
    check-cast v5, Landroidx/recyclerview/widget/s;

    .line 1302
    .line 1303
    if-eqz v4, :cond_2a

    .line 1304
    .line 1305
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v4

    .line 1309
    check-cast v4, Landroidx/recyclerview/widget/q;

    .line 1310
    .line 1311
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1312
    .line 1313
    .line 1314
    iget-object v6, v4, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1315
    .line 1316
    if-nez v6, :cond_27

    .line 1317
    .line 1318
    move-object v6, v0

    .line 1319
    goto :goto_14

    .line 1320
    :cond_27
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1321
    .line 1322
    :goto_14
    iget-object v7, v4, Landroidx/recyclerview/widget/q;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1323
    .line 1324
    if-eqz v7, :cond_28

    .line 1325
    .line 1326
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1327
    .line 1328
    goto :goto_15

    .line 1329
    :cond_28
    move-object v7, v0

    .line 1330
    :goto_15
    iget-object v8, v5, Landroidx/recyclerview/widget/s;->r:Ljava/util/ArrayList;

    .line 1331
    .line 1332
    iget-wide v9, v5, Landroidx/recyclerview/widget/t1;->f:J

    .line 1333
    .line 1334
    const/4 v11, 0x0

    .line 1335
    if-eqz v6, :cond_29

    .line 1336
    .line 1337
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v12

    .line 1341
    invoke-virtual {v12, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v12

    .line 1345
    iget-object v13, v4, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1346
    .line 1347
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    .line 1349
    .line 1350
    iget v13, v4, Landroidx/recyclerview/widget/q;->e:I

    .line 1351
    .line 1352
    iget v14, v4, Landroidx/recyclerview/widget/q;->c:I

    .line 1353
    .line 1354
    sub-int/2addr v13, v14

    .line 1355
    int-to-float v13, v13

    .line 1356
    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 1357
    .line 1358
    .line 1359
    iget v13, v4, Landroidx/recyclerview/widget/q;->f:I

    .line 1360
    .line 1361
    iget v14, v4, Landroidx/recyclerview/widget/q;->d:I

    .line 1362
    .line 1363
    sub-int/2addr v13, v14

    .line 1364
    int-to-float v13, v13

    .line 1365
    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {v12, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v13

    .line 1372
    new-instance v14, Landroidx/recyclerview/widget/o;

    .line 1373
    .line 1374
    invoke-direct {v14, v5, v4, v12, v6}, Landroidx/recyclerview/widget/o;-><init>(Landroidx/recyclerview/widget/s;Landroidx/recyclerview/widget/q;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v6

    .line 1381
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1382
    .line 1383
    .line 1384
    :cond_29
    if-eqz v7, :cond_26

    .line 1385
    .line 1386
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v6

    .line 1390
    iget-object v12, v4, Landroidx/recyclerview/widget/q;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1391
    .line 1392
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v6, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v8

    .line 1399
    invoke-virtual {v8, v11}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v8

    .line 1403
    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v8

    .line 1407
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1408
    .line 1409
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v8

    .line 1413
    new-instance v9, Landroidx/recyclerview/widget/p;

    .line 1414
    .line 1415
    invoke-direct {v9, v5, v4, v6, v7}, Landroidx/recyclerview/widget/p;-><init>(Landroidx/recyclerview/widget/s;Landroidx/recyclerview/widget/q;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 1416
    .line 1417
    .line 1418
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v4

    .line 1422
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1423
    .line 1424
    .line 1425
    goto/16 :goto_13

    .line 1426
    .line 1427
    :cond_2a
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1428
    .line 1429
    .line 1430
    iget-object v0, v5, Landroidx/recyclerview/widget/s;->n:Ljava/util/ArrayList;

    .line 1431
    .line 1432
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1433
    .line 1434
    .line 1435
    return-void

    .line 1436
    :pswitch_17
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1437
    .line 1438
    check-cast v0, Landroidx/fragment/app/u1;

    .line 1439
    .line 1440
    iget-object v2, v0, Landroidx/fragment/app/u1;->f:Ljava/lang/Object;

    .line 1441
    .line 1442
    check-cast v2, Landroidx/recyclerview/widget/f;

    .line 1443
    .line 1444
    iget v8, v2, Landroidx/recyclerview/widget/f;->g:I

    .line 1445
    .line 1446
    iget v9, v0, Landroidx/fragment/app/u1;->b:I

    .line 1447
    .line 1448
    if-ne v8, v9, :cond_38

    .line 1449
    .line 1450
    iget-object v8, v2, Landroidx/recyclerview/widget/f;->f:Ljava/util/List;

    .line 1451
    .line 1452
    iget-object v9, v0, Landroidx/fragment/app/u1;->d:Ljava/util/List;

    .line 1453
    .line 1454
    iput-object v9, v2, Landroidx/recyclerview/widget/f;->e:Ljava/util/List;

    .line 1455
    .line 1456
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v9

    .line 1460
    iput-object v9, v2, Landroidx/recyclerview/widget/f;->f:Ljava/util/List;

    .line 1461
    .line 1462
    iget-object v9, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 1463
    .line 1464
    check-cast v9, Landroidx/recyclerview/widget/u;

    .line 1465
    .line 1466
    iget-object v10, v2, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/c;

    .line 1467
    .line 1468
    new-instance v11, Landroidx/recyclerview/widget/g;

    .line 1469
    .line 1470
    invoke-direct {v11, v10}, Landroidx/recyclerview/widget/g;-><init>(Landroidx/recyclerview/widget/c;)V

    .line 1471
    .line 1472
    .line 1473
    new-instance v10, Ljava/util/ArrayDeque;

    .line 1474
    .line 1475
    invoke-direct {v10}, Ljava/util/ArrayDeque;-><init>()V

    .line 1476
    .line 1477
    .line 1478
    iget-object v12, v9, Landroidx/recyclerview/widget/u;->e:Ljava/io/Serializable;

    .line 1479
    .line 1480
    check-cast v12, Ljava/util/ArrayList;

    .line 1481
    .line 1482
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 1483
    .line 1484
    .line 1485
    move-result v13

    .line 1486
    sub-int/2addr v13, v7

    .line 1487
    iget v14, v9, Landroidx/recyclerview/widget/u;->b:I

    .line 1488
    .line 1489
    iget v15, v9, Landroidx/recyclerview/widget/u;->d:I

    .line 1490
    .line 1491
    move/from16 v16, v15

    .line 1492
    .line 1493
    move v15, v14

    .line 1494
    :goto_16
    if-ltz v13, :cond_37

    .line 1495
    .line 1496
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v17

    .line 1500
    move-object/from16 v6, v17

    .line 1501
    .line 1502
    check-cast v6, Landroidx/recyclerview/widget/t;

    .line 1503
    .line 1504
    iget v7, v6, Landroidx/recyclerview/widget/t;->a:I

    .line 1505
    .line 1506
    iget v5, v6, Landroidx/recyclerview/widget/t;->c:I

    .line 1507
    .line 1508
    add-int/2addr v7, v5

    .line 1509
    iget v4, v6, Landroidx/recyclerview/widget/t;->b:I

    .line 1510
    .line 1511
    add-int v3, v4, v5

    .line 1512
    .line 1513
    move/from16 v20, v4

    .line 1514
    .line 1515
    :goto_17
    iget-object v4, v9, Landroidx/recyclerview/widget/u;->f:Ljava/lang/Object;

    .line 1516
    .line 1517
    check-cast v4, [I

    .line 1518
    .line 1519
    move-object/from16 v21, v12

    .line 1520
    .line 1521
    iget-object v12, v9, Landroidx/recyclerview/widget/u;->h:Ljava/lang/Object;

    .line 1522
    .line 1523
    check-cast v12, Landroidx/recyclerview/widget/c;

    .line 1524
    .line 1525
    if-le v15, v7, :cond_2f

    .line 1526
    .line 1527
    add-int/lit8 v15, v15, -0x1

    .line 1528
    .line 1529
    aget v4, v4, v15

    .line 1530
    .line 1531
    const/16 v19, 0xc

    .line 1532
    .line 1533
    and-int/lit8 v22, v4, 0xc

    .line 1534
    .line 1535
    if-eqz v22, :cond_2c

    .line 1536
    .line 1537
    move/from16 v22, v7

    .line 1538
    .line 1539
    const/16 v18, 0x4

    .line 1540
    .line 1541
    shr-int/lit8 v7, v4, 0x4

    .line 1542
    .line 1543
    move-object/from16 v23, v2

    .line 1544
    .line 1545
    const/4 v1, 0x0

    .line 1546
    invoke-static {v10, v7, v1}, Landroidx/recyclerview/widget/u;->a(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/v;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v2

    .line 1550
    if-eqz v2, :cond_2b

    .line 1551
    .line 1552
    iget v1, v2, Landroidx/recyclerview/widget/v;->b:I

    .line 1553
    .line 1554
    sub-int v1, v14, v1

    .line 1555
    .line 1556
    const/4 v2, 0x1

    .line 1557
    sub-int/2addr v1, v2

    .line 1558
    invoke-virtual {v11, v15, v1}, Landroidx/recyclerview/widget/g;->c(II)V

    .line 1559
    .line 1560
    .line 1561
    and-int/lit8 v4, v4, 0x4

    .line 1562
    .line 1563
    if-eqz v4, :cond_2e

    .line 1564
    .line 1565
    invoke-virtual {v12, v15, v7}, Landroidx/recyclerview/widget/c;->c(II)V

    .line 1566
    .line 1567
    .line 1568
    invoke-virtual {v11, v1, v2}, Landroidx/recyclerview/widget/g;->b(II)V

    .line 1569
    .line 1570
    .line 1571
    goto :goto_19

    .line 1572
    :cond_2b
    const/4 v2, 0x1

    .line 1573
    new-instance v1, Landroidx/recyclerview/widget/v;

    .line 1574
    .line 1575
    sub-int v4, v14, v15

    .line 1576
    .line 1577
    sub-int/2addr v4, v2

    .line 1578
    invoke-direct {v1, v15, v4, v2}, Landroidx/recyclerview/widget/v;-><init>(IIZ)V

    .line 1579
    .line 1580
    .line 1581
    invoke-virtual {v10, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1582
    .line 1583
    .line 1584
    goto :goto_19

    .line 1585
    :cond_2c
    move-object/from16 v23, v2

    .line 1586
    .line 1587
    move/from16 v22, v7

    .line 1588
    .line 1589
    const/4 v2, 0x1

    .line 1590
    iget v1, v11, Landroidx/recyclerview/widget/g;->b:I

    .line 1591
    .line 1592
    const/4 v4, 0x2

    .line 1593
    if-ne v1, v4, :cond_2d

    .line 1594
    .line 1595
    iget v1, v11, Landroidx/recyclerview/widget/g;->c:I

    .line 1596
    .line 1597
    if-lt v1, v15, :cond_2d

    .line 1598
    .line 1599
    add-int/lit8 v7, v15, 0x1

    .line 1600
    .line 1601
    if-gt v1, v7, :cond_2d

    .line 1602
    .line 1603
    iget v1, v11, Landroidx/recyclerview/widget/g;->d:I

    .line 1604
    .line 1605
    add-int/2addr v1, v2

    .line 1606
    iput v1, v11, Landroidx/recyclerview/widget/g;->d:I

    .line 1607
    .line 1608
    iput v15, v11, Landroidx/recyclerview/widget/g;->c:I

    .line 1609
    .line 1610
    goto :goto_18

    .line 1611
    :cond_2d
    invoke-virtual {v11}, Landroidx/recyclerview/widget/g;->a()V

    .line 1612
    .line 1613
    .line 1614
    iput v15, v11, Landroidx/recyclerview/widget/g;->c:I

    .line 1615
    .line 1616
    iput v2, v11, Landroidx/recyclerview/widget/g;->d:I

    .line 1617
    .line 1618
    const/4 v1, 0x2

    .line 1619
    iput v1, v11, Landroidx/recyclerview/widget/g;->b:I

    .line 1620
    .line 1621
    :goto_18
    add-int/lit8 v14, v14, -0x1

    .line 1622
    .line 1623
    :cond_2e
    :goto_19
    move-object/from16 v1, p0

    .line 1624
    .line 1625
    move-object/from16 v12, v21

    .line 1626
    .line 1627
    move/from16 v7, v22

    .line 1628
    .line 1629
    move-object/from16 v2, v23

    .line 1630
    .line 1631
    goto :goto_17

    .line 1632
    :cond_2f
    move-object/from16 v23, v2

    .line 1633
    .line 1634
    move/from16 v1, v16

    .line 1635
    .line 1636
    :goto_1a
    if-le v1, v3, :cond_34

    .line 1637
    .line 1638
    add-int/lit8 v1, v1, -0x1

    .line 1639
    .line 1640
    iget-object v2, v9, Landroidx/recyclerview/widget/u;->g:Ljava/lang/Object;

    .line 1641
    .line 1642
    check-cast v2, [I

    .line 1643
    .line 1644
    aget v2, v2, v1

    .line 1645
    .line 1646
    const/16 v7, 0xc

    .line 1647
    .line 1648
    and-int/lit8 v16, v2, 0xc

    .line 1649
    .line 1650
    if-eqz v16, :cond_31

    .line 1651
    .line 1652
    const/16 v16, 0x4

    .line 1653
    .line 1654
    shr-int/lit8 v7, v2, 0x4

    .line 1655
    .line 1656
    move/from16 v22, v3

    .line 1657
    .line 1658
    move-object/from16 v16, v9

    .line 1659
    .line 1660
    const/4 v3, 0x1

    .line 1661
    invoke-static {v10, v7, v3}, Landroidx/recyclerview/widget/u;->a(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/v;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v9

    .line 1665
    if-nez v9, :cond_30

    .line 1666
    .line 1667
    new-instance v2, Landroidx/recyclerview/widget/v;

    .line 1668
    .line 1669
    sub-int v7, v14, v15

    .line 1670
    .line 1671
    const/4 v9, 0x0

    .line 1672
    invoke-direct {v2, v1, v7, v9}, Landroidx/recyclerview/widget/v;-><init>(IIZ)V

    .line 1673
    .line 1674
    .line 1675
    invoke-virtual {v10, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1676
    .line 1677
    .line 1678
    const/4 v9, 0x4

    .line 1679
    goto :goto_1c

    .line 1680
    :cond_30
    iget v9, v9, Landroidx/recyclerview/widget/v;->b:I

    .line 1681
    .line 1682
    sub-int v9, v14, v9

    .line 1683
    .line 1684
    sub-int/2addr v9, v3

    .line 1685
    invoke-virtual {v11, v9, v15}, Landroidx/recyclerview/widget/g;->c(II)V

    .line 1686
    .line 1687
    .line 1688
    const/4 v9, 0x4

    .line 1689
    and-int/2addr v2, v9

    .line 1690
    if-eqz v2, :cond_33

    .line 1691
    .line 1692
    invoke-virtual {v12, v7, v1}, Landroidx/recyclerview/widget/c;->c(II)V

    .line 1693
    .line 1694
    .line 1695
    invoke-virtual {v11, v15, v3}, Landroidx/recyclerview/widget/g;->b(II)V

    .line 1696
    .line 1697
    .line 1698
    goto :goto_1c

    .line 1699
    :cond_31
    move/from16 v22, v3

    .line 1700
    .line 1701
    move-object/from16 v16, v9

    .line 1702
    .line 1703
    const/4 v3, 0x1

    .line 1704
    const/4 v9, 0x4

    .line 1705
    iget v2, v11, Landroidx/recyclerview/widget/g;->b:I

    .line 1706
    .line 1707
    if-ne v2, v3, :cond_32

    .line 1708
    .line 1709
    iget v2, v11, Landroidx/recyclerview/widget/g;->c:I

    .line 1710
    .line 1711
    if-lt v15, v2, :cond_32

    .line 1712
    .line 1713
    iget v7, v11, Landroidx/recyclerview/widget/g;->d:I

    .line 1714
    .line 1715
    add-int v9, v2, v7

    .line 1716
    .line 1717
    if-gt v15, v9, :cond_32

    .line 1718
    .line 1719
    add-int/2addr v7, v3

    .line 1720
    iput v7, v11, Landroidx/recyclerview/widget/g;->d:I

    .line 1721
    .line 1722
    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    .line 1723
    .line 1724
    .line 1725
    move-result v2

    .line 1726
    iput v2, v11, Landroidx/recyclerview/widget/g;->c:I

    .line 1727
    .line 1728
    goto :goto_1b

    .line 1729
    :cond_32
    invoke-virtual {v11}, Landroidx/recyclerview/widget/g;->a()V

    .line 1730
    .line 1731
    .line 1732
    iput v15, v11, Landroidx/recyclerview/widget/g;->c:I

    .line 1733
    .line 1734
    iput v3, v11, Landroidx/recyclerview/widget/g;->d:I

    .line 1735
    .line 1736
    iput v3, v11, Landroidx/recyclerview/widget/g;->b:I

    .line 1737
    .line 1738
    :goto_1b
    add-int/2addr v14, v3

    .line 1739
    :cond_33
    :goto_1c
    move-object/from16 v9, v16

    .line 1740
    .line 1741
    move/from16 v3, v22

    .line 1742
    .line 1743
    goto :goto_1a

    .line 1744
    :cond_34
    move-object/from16 v16, v9

    .line 1745
    .line 1746
    const/4 v3, 0x1

    .line 1747
    iget v15, v6, Landroidx/recyclerview/widget/t;->a:I

    .line 1748
    .line 1749
    move v2, v15

    .line 1750
    move/from16 v6, v20

    .line 1751
    .line 1752
    const/4 v1, 0x0

    .line 1753
    :goto_1d
    if-ge v1, v5, :cond_36

    .line 1754
    .line 1755
    aget v7, v4, v2

    .line 1756
    .line 1757
    and-int/lit8 v7, v7, 0xf

    .line 1758
    .line 1759
    const/4 v9, 0x2

    .line 1760
    if-ne v7, v9, :cond_35

    .line 1761
    .line 1762
    invoke-virtual {v12, v2, v6}, Landroidx/recyclerview/widget/c;->c(II)V

    .line 1763
    .line 1764
    .line 1765
    invoke-virtual {v11, v2, v3}, Landroidx/recyclerview/widget/g;->b(II)V

    .line 1766
    .line 1767
    .line 1768
    :cond_35
    add-int/2addr v2, v3

    .line 1769
    add-int/2addr v6, v3

    .line 1770
    add-int/2addr v1, v3

    .line 1771
    goto :goto_1d

    .line 1772
    :cond_36
    const/4 v9, 0x2

    .line 1773
    add-int/lit8 v13, v13, -0x1

    .line 1774
    .line 1775
    move-object/from16 v1, p0

    .line 1776
    .line 1777
    move-object/from16 v9, v16

    .line 1778
    .line 1779
    move/from16 v16, v20

    .line 1780
    .line 1781
    move-object/from16 v12, v21

    .line 1782
    .line 1783
    move-object/from16 v2, v23

    .line 1784
    .line 1785
    const/16 v3, 0xc

    .line 1786
    .line 1787
    const/4 v4, 0x4

    .line 1788
    const/4 v5, 0x0

    .line 1789
    const/4 v6, 0x2

    .line 1790
    const/4 v7, 0x1

    .line 1791
    goto/16 :goto_16

    .line 1792
    .line 1793
    :cond_37
    move-object/from16 v23, v2

    .line 1794
    .line 1795
    invoke-virtual {v11}, Landroidx/recyclerview/widget/g;->a()V

    .line 1796
    .line 1797
    .line 1798
    iget-object v0, v0, Landroidx/fragment/app/u1;->e:Ljava/lang/Object;

    .line 1799
    .line 1800
    check-cast v0, Ljava/lang/Runnable;

    .line 1801
    .line 1802
    move-object/from16 v2, v23

    .line 1803
    .line 1804
    invoke-virtual {v2, v8, v0}, Landroidx/recyclerview/widget/f;->a(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 1805
    .line 1806
    .line 1807
    :cond_38
    return-void

    .line 1808
    :pswitch_18
    iget-object v0, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 1809
    .line 1810
    move-object v2, v0

    .line 1811
    check-cast v2, Lv3/f;

    .line 1812
    .line 1813
    iget-object v0, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 1814
    .line 1815
    check-cast v0, Ly7/c;

    .line 1816
    .line 1817
    :try_start_e
    invoke-static {v0}, La9/o;->M(Ly7/c;)Ljava/lang/Object;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v0
    :try_end_e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 1821
    check-cast v0, Landroid/view/View;

    .line 1822
    .line 1823
    iget-object v3, v2, Lv3/f;->b:Ljava/lang/Object;

    .line 1824
    .line 1825
    check-cast v3, Landroid/view/View;

    .line 1826
    .line 1827
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v4

    .line 1831
    if-eqz v4, :cond_39

    .line 1832
    .line 1833
    const v5, 0x7f0b0121

    .line 1834
    .line 1835
    .line 1836
    invoke-virtual {v0, v5}, Landroid/view/View;->setId(I)V

    .line 1837
    .line 1838
    .line 1839
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1840
    .line 1841
    .line 1842
    iget-object v4, v2, Lv3/f;->c:Ljava/lang/Object;

    .line 1843
    .line 1844
    check-cast v4, Landroid/view/ViewGroup;

    .line 1845
    .line 1846
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 1847
    .line 1848
    .line 1849
    move-result v5

    .line 1850
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1851
    .line 1852
    .line 1853
    invoke-virtual {v4, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1854
    .line 1855
    .line 1856
    const/4 v3, 0x0

    .line 1857
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1858
    .line 1859
    .line 1860
    iget-object v2, v2, Lv3/f;->d:Ljava/lang/Object;

    .line 1861
    .line 1862
    check-cast v2, Lv3/t;

    .line 1863
    .line 1864
    iget-object v2, v2, Lv3/t;->a:Lv3/y;

    .line 1865
    .line 1866
    const/4 v3, 0x1

    .line 1867
    invoke-virtual {v2, v0, v3}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 1868
    .line 1869
    .line 1870
    goto :goto_1e

    .line 1871
    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1872
    .line 1873
    const-string v2, "The media route button placeholder missing layout params."

    .line 1874
    .line 1875
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1876
    .line 1877
    .line 1878
    throw v0

    .line 1879
    :catchall_6
    move-exception v0

    .line 1880
    move-object v3, v0

    .line 1881
    invoke-virtual {v2, v3}, Lv3/f;->F(Ljava/lang/Throwable;)V

    .line 1882
    .line 1883
    .line 1884
    goto :goto_1e

    .line 1885
    :catch_6
    move-exception v0

    .line 1886
    move-object v3, v0

    .line 1887
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v0

    .line 1891
    invoke-virtual {v2, v0}, Lv3/f;->F(Ljava/lang/Throwable;)V

    .line 1892
    .line 1893
    .line 1894
    :goto_1e
    return-void

    .line 1895
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    :sswitch_data_0
    .sparse-switch
        0x45534c43 -> :sswitch_2
        0x45545257 -> :sswitch_2
        0x48545541 -> :sswitch_1
        0x4e584e43 -> :sswitch_0
        0x59414b4f -> :sswitch_2
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Ly7/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ls4/a;

    .line 12
    .line 13
    const-class v1, Ly7/b;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ls4/a;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lkf/d;

    .line 23
    .line 24
    const/16 v2, 0x12

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-direct {v1, v2, v3}, Lkf/d;-><init>(IZ)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Ls4/a;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Lkf/d;

    .line 33
    .line 34
    iput-object v1, v2, Lkf/d;->c:Ljava/lang/Object;

    .line 35
    .line 36
    iput-object v1, v0, Ls4/a;->d:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v2, p0, Ly7/b;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Lv3/f;

    .line 41
    .line 42
    iput-object v2, v1, Lkf/d;->b:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {v0}, Ls4/a;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
