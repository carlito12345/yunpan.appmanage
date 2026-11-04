.class public final synthetic Lua/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityClean;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityClean;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/y0;->a:I

    iput-object p1, p0, Lua/y0;->b:Lcom/yunpan/appmanage/ui/ActivityClean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lmc/b;)V
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    sget v1, Lcom/yunpan/appmanage/ui/ActivityClean;->M:I

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v2, v1, Lua/y0;->b:Lcom/yunpan/appmanage/ui/ActivityClean;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 13
    .line 14
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 15
    .line 16
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x1

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    sget-object v3, Lfa/g0;->a:Lfa/h0;

    .line 23
    .line 24
    invoke-virtual {v3}, Lfa/h0;->f()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_4

    .line 29
    .line 30
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, La2/w0;->P()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_4

    .line 40
    .line 41
    :cond_0
    new-instance v3, Lx9/z0;

    .line 42
    .line 43
    const-string v6, "adb\u4e34\u65f6\u76ee\u5f55\u6b8b\u7559(/data/local/tmp)"

    .line 44
    .line 45
    invoke-direct {v3, v6, v5, v5}, Lx9/z0;-><init>(Ljava/lang/String;IZ)V

    .line 46
    .line 47
    .line 48
    sget-object v6, Lfa/b0;->a:La2/w0;

    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string v6, "du -sh /data/local/tmp"

    .line 54
    .line 55
    invoke-static {v6}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    iget v7, v6, Lfa/a0;->a:I

    .line 60
    .line 61
    const-string v8, "\u63a8\u8350\u6e05\u7406"

    .line 62
    .line 63
    if-nez v7, :cond_3

    .line 64
    .line 65
    invoke-virtual {v6}, Lfa/a0;->a()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    const-string v7, "/data/"

    .line 74
    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    const/4 v9, -0x1

    .line 80
    if-eq v7, v9, :cond_2

    .line 81
    .line 82
    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const-string v7, "\n"

    .line 91
    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eq v7, v9, :cond_1

    .line 97
    .line 98
    add-int/2addr v7, v5

    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v8, "\u63a8\u8350\u6e05\u7406\uff0c\u5360\u7528\uff1a"

    .line 106
    .line 107
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    iput-object v6, v3, Lx9/z0;->d:Ljava/lang/String;

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    iput-object v8, v3, Lx9/z0;->d:Ljava/lang/String;

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_3
    iput-object v8, v3, Lx9/z0;->d:Ljava/lang/String;

    .line 128
    .line 129
    :goto_0
    invoke-virtual {v0, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    sget-object v3, Lfa/g0;->a:Lfa/h0;

    .line 133
    .line 134
    invoke-virtual {v3}, Lfa/h0;->d()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    const-string v7, "\u4e2a\uff0c\u5171\u5360\u7528\uff1a"

    .line 143
    .line 144
    const-string v8, "\u5b89\u88c5\u6b8b\u7559(\u5b89\u88c5\u8fc7\u7684apk\u6587\u4ef6)"

    .line 145
    .line 146
    const-string v9, "\u6587\u4ef6\u5927\u5c0f\uff1a"

    .line 147
    .line 148
    const-string v12, ")"

    .line 149
    .line 150
    const-string v13, " and ("

    .line 151
    .line 152
    const-string v14, " OR LOWER(name) LIKE \'%."

    .line 153
    .line 154
    const-string v15, "LOWER(name) LIKE \'%."

    .line 155
    .line 156
    const-string v16, ""

    .line 157
    .line 158
    const-string v11, "/%\' and isDir=0"

    .line 159
    .line 160
    const-string v10, "SELECT * FROM fileList WHERE path LIKE \'"

    .line 161
    .line 162
    const-wide/16 v18, 0x0

    .line 163
    .line 164
    const-string v5, "\'"

    .line 165
    .line 166
    if-nez v6, :cond_c

    .line 167
    .line 168
    new-instance v6, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v3, v4, v11}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->l0:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    move-object/from16 v4, v16

    .line 189
    .line 190
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v20

    .line 194
    if-eqz v20, :cond_7

    .line 195
    .line 196
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v20

    .line 200
    move-object/from16 v1, v20

    .line 201
    .line 202
    check-cast v1, Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result v20

    .line 208
    if-eqz v20, :cond_5

    .line 209
    .line 210
    move-object/from16 v1, p0

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v20

    .line 217
    if-eqz v20, :cond_6

    .line 218
    .line 219
    invoke-static {v15, v1, v5}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    move-object v4, v1

    .line 224
    move-object/from16 v20, v2

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_6
    move-object/from16 v20, v2

    .line 228
    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    move-object v4, v1

    .line 251
    :goto_2
    move-object/from16 v1, p0

    .line 252
    .line 253
    move-object/from16 v2, v20

    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_7
    invoke-static {v13, v4, v12}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-static {v3, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    const/4 v2, 0x0

    .line 265
    new-array v3, v2, [Ljava/lang/Object;

    .line 266
    .line 267
    new-instance v2, La2/g1;

    .line 268
    .line 269
    invoke-direct {v2, v1, v3}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :try_start_0
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-interface {v1, v2}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_3

    .line 285
    :catch_0
    nop

    .line 286
    const/4 v1, 0x0

    .line 287
    :goto_3
    if-eqz v1, :cond_b

    .line 288
    .line 289
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-nez v2, :cond_b

    .line 294
    .line 295
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    move-wide/from16 v2, v18

    .line 300
    .line 301
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    if-eqz v4, :cond_a

    .line 306
    .line 307
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    check-cast v4, Lcom/yunpan/appmanage/db/FileInfo;

    .line 312
    .line 313
    move-object/from16 v20, v1

    .line 314
    .line 315
    :try_start_1
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 316
    .line 317
    move-object/from16 v21, v12

    .line 318
    .line 319
    :try_start_2
    iget-object v12, v1, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 320
    .line 321
    move-object/from16 v22, v13

    .line 322
    .line 323
    :try_start_3
    iget-object v13, v4, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 324
    .line 325
    move-object/from16 v23, v14

    .line 326
    .line 327
    const/4 v14, 0x1

    .line 328
    :try_start_4
    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 329
    .line 330
    .line 331
    move-result-object v12

    .line 332
    if-eqz v12, :cond_9

    .line 333
    .line 334
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 335
    .line 336
    .line 337
    move-result-object v13

    .line 338
    invoke-virtual {v13}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 339
    .line 340
    .line 341
    move-result-object v13

    .line 342
    iget-object v14, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 343
    .line 344
    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 345
    .line 346
    invoke-interface {v13, v14}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 347
    .line 348
    .line 349
    move-result-object v13

    .line 350
    if-nez v13, :cond_8

    .line 351
    .line 352
    iget-object v12, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 353
    .line 354
    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 355
    .line 356
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 357
    .line 358
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_9

    .line 363
    .line 364
    goto :goto_6

    .line 365
    :catch_1
    :goto_5
    nop

    .line 366
    goto :goto_9

    .line 367
    :cond_8
    :goto_6
    iget-wide v12, v4, Lcom/yunpan/appmanage/db/FileInfo;->size:J

    .line 368
    .line 369
    add-long/2addr v2, v12

    .line 370
    new-instance v1, Lx9/z0;

    .line 371
    .line 372
    iget-object v12, v4, Lcom/yunpan/appmanage/db/FileInfo;->name:Ljava/lang/String;

    .line 373
    .line 374
    const/4 v13, 0x0

    .line 375
    const/4 v14, 0x2

    .line 376
    invoke-direct {v1, v12, v14, v13}, Lx9/z0;-><init>(Ljava/lang/String;IZ)V

    .line 377
    .line 378
    .line 379
    iget-object v12, v4, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    .line 380
    .line 381
    iput-object v12, v1, Lx9/z0;->f:Ljava/lang/String;

    .line 382
    .line 383
    new-instance v12, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    iget-wide v13, v4, Lcom/yunpan/appmanage/db/FileInfo;->size:J

    .line 392
    .line 393
    long-to-double v13, v13

    .line 394
    invoke-static {v13, v14}, Lif/a;->D0(D)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    iput-object v4, v1, Lx9/z0;->d:Ljava/lang/String;

    .line 406
    .line 407
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 408
    .line 409
    .line 410
    goto :goto_9

    .line 411
    :catch_2
    :goto_7
    move-object/from16 v23, v14

    .line 412
    .line 413
    goto :goto_5

    .line 414
    :catch_3
    :goto_8
    move-object/from16 v22, v13

    .line 415
    .line 416
    goto :goto_7

    .line 417
    :catch_4
    move-object/from16 v21, v12

    .line 418
    .line 419
    goto :goto_8

    .line 420
    :cond_9
    :goto_9
    move-object/from16 v1, v20

    .line 421
    .line 422
    move-object/from16 v12, v21

    .line 423
    .line 424
    move-object/from16 v13, v22

    .line 425
    .line 426
    move-object/from16 v14, v23

    .line 427
    .line 428
    goto :goto_4

    .line 429
    :cond_a
    move-object/from16 v21, v12

    .line 430
    .line 431
    move-object/from16 v22, v13

    .line 432
    .line 433
    move-object/from16 v23, v14

    .line 434
    .line 435
    goto :goto_a

    .line 436
    :cond_b
    move-object/from16 v21, v12

    .line 437
    .line 438
    move-object/from16 v22, v13

    .line 439
    .line 440
    move-object/from16 v23, v14

    .line 441
    .line 442
    move-wide/from16 v2, v18

    .line 443
    .line 444
    :goto_a
    new-instance v1, Lx9/z0;

    .line 445
    .line 446
    const/4 v4, 0x0

    .line 447
    const/4 v12, 0x1

    .line 448
    invoke-direct {v1, v8, v12, v4}, Lx9/z0;-><init>(Ljava/lang/String;IZ)V

    .line 449
    .line 450
    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    const-string v12, "\u5185\u90e8\u5b58\u50a8   \u627e\u5230"

    .line 454
    .line 455
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 459
    .line 460
    .line 461
    move-result v12

    .line 462
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    long-to-double v2, v2

    .line 469
    invoke-static {v2, v3}, Lif/a;->D0(D)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    iput-object v2, v1, Lx9/z0;->d:Ljava/lang/String;

    .line 481
    .line 482
    const/4 v2, 0x0

    .line 483
    invoke-virtual {v6, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0, v6}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    goto :goto_b

    .line 490
    :cond_c
    move-object/from16 v21, v12

    .line 491
    .line 492
    move-object/from16 v22, v13

    .line 493
    .line 494
    move-object/from16 v23, v14

    .line 495
    .line 496
    :goto_b
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 497
    .line 498
    iget-object v2, v1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 499
    .line 500
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    if-nez v2, :cond_13

    .line 505
    .line 506
    new-instance v2, Ljava/util/ArrayList;

    .line 507
    .line 508
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .line 510
    .line 511
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 512
    .line 513
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    move-wide/from16 v3, v18

    .line 518
    .line 519
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 520
    .line 521
    .line 522
    move-result v6

    .line 523
    if-eqz v6, :cond_12

    .line 524
    .line 525
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v6

    .line 529
    check-cast v6, Ljava/lang/String;

    .line 530
    .line 531
    invoke-static {v10, v6, v11}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v6

    .line 535
    sget-object v12, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 536
    .line 537
    iget-object v12, v12, Lcom/yunpan/appmanage/util/k;->l0:Ljava/util/ArrayList;

    .line 538
    .line 539
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 540
    .line 541
    .line 542
    move-result-object v12

    .line 543
    move-object/from16 v13, v16

    .line 544
    .line 545
    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 546
    .line 547
    .line 548
    move-result v14

    .line 549
    if-eqz v14, :cond_f

    .line 550
    .line 551
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v14

    .line 555
    check-cast v14, Ljava/lang/String;

    .line 556
    .line 557
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 558
    .line 559
    .line 560
    move-result v20

    .line 561
    if-eqz v20, :cond_d

    .line 562
    .line 563
    goto :goto_d

    .line 564
    :cond_d
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 565
    .line 566
    .line 567
    move-result v20

    .line 568
    if-eqz v20, :cond_e

    .line 569
    .line 570
    invoke-static {v15, v14, v5}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v13

    .line 574
    move-object/from16 v20, v1

    .line 575
    .line 576
    move-object v1, v13

    .line 577
    move-object/from16 v13, v23

    .line 578
    .line 579
    goto :goto_e

    .line 580
    :cond_e
    move-object/from16 v20, v1

    .line 581
    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    move-object/from16 v13, v23

    .line 591
    .line 592
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    :goto_e
    move-object/from16 v23, v13

    .line 606
    .line 607
    move-object v13, v1

    .line 608
    move-object/from16 v1, v20

    .line 609
    .line 610
    goto :goto_d

    .line 611
    :cond_f
    move-object/from16 v20, v1

    .line 612
    .line 613
    move-object/from16 v1, v21

    .line 614
    .line 615
    move-object/from16 v14, v22

    .line 616
    .line 617
    move-object/from16 v21, v23

    .line 618
    .line 619
    invoke-static {v14, v13, v1}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v12

    .line 623
    invoke-static {v6, v12}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v6

    .line 627
    const/4 v12, 0x0

    .line 628
    new-array v13, v12, [Ljava/lang/Object;

    .line 629
    .line 630
    new-instance v12, La2/g1;

    .line 631
    .line 632
    invoke-direct {v12, v6, v13}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    .line 634
    .line 635
    :try_start_5
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 636
    .line 637
    .line 638
    move-result-object v6

    .line 639
    invoke-virtual {v6}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 640
    .line 641
    .line 642
    move-result-object v6

    .line 643
    invoke-interface {v6, v12}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 644
    .line 645
    .line 646
    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 647
    goto :goto_f

    .line 648
    :catch_5
    nop

    .line 649
    const/4 v6, 0x0

    .line 650
    :goto_f
    if-eqz v6, :cond_11

    .line 651
    .line 652
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 653
    .line 654
    .line 655
    move-result v12

    .line 656
    if-nez v12, :cond_11

    .line 657
    .line 658
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 659
    .line 660
    .line 661
    move-result-object v6

    .line 662
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 663
    .line 664
    .line 665
    move-result v12

    .line 666
    if-eqz v12, :cond_11

    .line 667
    .line 668
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v12

    .line 672
    check-cast v12, Lcom/yunpan/appmanage/db/FileInfo;

    .line 673
    .line 674
    :try_start_6
    sget-object v13, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 675
    .line 676
    iget-object v13, v13, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    .line 677
    .line 678
    move-object/from16 v22, v1

    .line 679
    .line 680
    :try_start_7
    iget-object v1, v12, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 681
    .line 682
    move-object/from16 v23, v5

    .line 683
    .line 684
    const/4 v5, 0x1

    .line 685
    :try_start_8
    invoke-virtual {v13, v1, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    if-eqz v1, :cond_10

    .line 690
    .line 691
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 692
    .line 693
    .line 694
    move-result-object v5

    .line 695
    invoke-virtual {v5}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 696
    .line 697
    .line 698
    move-result-object v5

    .line 699
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 700
    .line 701
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 702
    .line 703
    invoke-interface {v5, v1}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 704
    .line 705
    .line 706
    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 707
    if-eqz v1, :cond_10

    .line 708
    .line 709
    move-object v1, v6

    .line 710
    :try_start_9
    iget-wide v5, v12, Lcom/yunpan/appmanage/db/FileInfo;->size:J

    .line 711
    .line 712
    add-long/2addr v3, v5

    .line 713
    new-instance v5, Lx9/z0;

    .line 714
    .line 715
    iget-object v6, v12, Lcom/yunpan/appmanage/db/FileInfo;->name:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 716
    .line 717
    move-object/from16 v17, v1

    .line 718
    .line 719
    const/4 v1, 0x2

    .line 720
    const/4 v13, 0x1

    .line 721
    :try_start_a
    invoke-direct {v5, v6, v1, v13}, Lx9/z0;-><init>(Ljava/lang/String;IZ)V

    .line 722
    .line 723
    .line 724
    iget-object v6, v12, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    .line 725
    .line 726
    iput-object v6, v5, Lx9/z0;->f:Ljava/lang/String;

    .line 727
    .line 728
    new-instance v6, Ljava/lang/StringBuilder;

    .line 729
    .line 730
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    iget-wide v12, v12, Lcom/yunpan/appmanage/db/FileInfo;->size:J

    .line 737
    .line 738
    long-to-double v12, v12

    .line 739
    invoke-static {v12, v13}, Lif/a;->D0(D)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v12

    .line 743
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v6

    .line 750
    iput-object v6, v5, Lx9/z0;->d:Ljava/lang/String;

    .line 751
    .line 752
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 753
    .line 754
    .line 755
    goto :goto_15

    .line 756
    :catch_6
    :goto_11
    nop

    .line 757
    goto :goto_15

    .line 758
    :catch_7
    move-object/from16 v17, v1

    .line 759
    .line 760
    :goto_12
    const/4 v1, 0x2

    .line 761
    goto :goto_11

    .line 762
    :cond_10
    move-object/from16 v17, v6

    .line 763
    .line 764
    const/4 v1, 0x2

    .line 765
    goto :goto_15

    .line 766
    :catch_8
    :goto_13
    move-object/from16 v17, v6

    .line 767
    .line 768
    goto :goto_12

    .line 769
    :catch_9
    :goto_14
    move-object/from16 v23, v5

    .line 770
    .line 771
    goto :goto_13

    .line 772
    :catch_a
    move-object/from16 v22, v1

    .line 773
    .line 774
    goto :goto_14

    .line 775
    :goto_15
    move-object/from16 v6, v17

    .line 776
    .line 777
    move-object/from16 v1, v22

    .line 778
    .line 779
    move-object/from16 v5, v23

    .line 780
    .line 781
    goto :goto_10

    .line 782
    :cond_11
    move-object/from16 v22, v1

    .line 783
    .line 784
    move-object/from16 v23, v5

    .line 785
    .line 786
    const/4 v1, 0x2

    .line 787
    move-object/from16 v1, v20

    .line 788
    .line 789
    move-object/from16 v5, v23

    .line 790
    .line 791
    move-object/from16 v23, v21

    .line 792
    .line 793
    move-object/from16 v21, v22

    .line 794
    .line 795
    move-object/from16 v22, v14

    .line 796
    .line 797
    goto/16 :goto_c

    .line 798
    .line 799
    :cond_12
    new-instance v1, Lx9/z0;

    .line 800
    .line 801
    const/4 v5, 0x1

    .line 802
    invoke-direct {v1, v8, v5, v5}, Lx9/z0;-><init>(Ljava/lang/String;IZ)V

    .line 803
    .line 804
    .line 805
    new-instance v5, Ljava/lang/StringBuilder;

    .line 806
    .line 807
    const-string v6, "U\u76d8   \u627e\u5230"

    .line 808
    .line 809
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 813
    .line 814
    .line 815
    move-result v6

    .line 816
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    long-to-double v3, v3

    .line 823
    invoke-static {v3, v4}, Lif/a;->D0(D)Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v3

    .line 827
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v3

    .line 834
    iput-object v3, v1, Lx9/z0;->d:Ljava/lang/String;

    .line 835
    .line 836
    const/4 v3, 0x0

    .line 837
    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v0, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 841
    .line 842
    .line 843
    :cond_13
    new-instance v1, Lx9/z0;

    .line 844
    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    .line 846
    .line 847
    const-string v3, "\u5378\u8f7d\u6b8b\u7559(/"

    .line 848
    .line 849
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 853
    .line 854
    iget-object v4, v3, Lcom/yunpan/appmanage/util/k;->P:Ljava/lang/String;

    .line 855
    .line 856
    const-string v5, "/data)"

    .line 857
    .line 858
    invoke-static {v4, v5, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v2

    .line 862
    const/4 v4, 0x1

    .line 863
    invoke-direct {v1, v2, v4, v4}, Lx9/z0;-><init>(Ljava/lang/String;IZ)V

    .line 864
    .line 865
    .line 866
    const-string v2, "\u968f\u4fbf"

    .line 867
    .line 868
    iput-object v2, v1, Lx9/z0;->d:Ljava/lang/String;

    .line 869
    .line 870
    invoke-virtual {v0, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 871
    .line 872
    .line 873
    new-instance v1, Lx9/z0;

    .line 874
    .line 875
    new-instance v6, Ljava/lang/StringBuilder;

    .line 876
    .line 877
    const-string v7, "\u5e94\u7528\u7f13\u5b58(/"

    .line 878
    .line 879
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    iget-object v7, v3, Lcom/yunpan/appmanage/util/k;->P:Ljava/lang/String;

    .line 883
    .line 884
    invoke-static {v7, v5, v6}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v5

    .line 888
    invoke-direct {v1, v5, v4, v4}, Lx9/z0;-><init>(Ljava/lang/String;IZ)V

    .line 889
    .line 890
    .line 891
    iput-object v2, v1, Lx9/z0;->d:Ljava/lang/String;

    .line 892
    .line 893
    invoke-virtual {v0, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 894
    .line 895
    .line 896
    iget-boolean v1, v3, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 897
    .line 898
    if-eqz v1, :cond_14

    .line 899
    .line 900
    new-instance v1, Lx9/z0;

    .line 901
    .line 902
    const-string v2, "\u5378\u8f7d\u6b8b\u7559(/data/data)"

    .line 903
    .line 904
    const/4 v3, 0x0

    .line 905
    invoke-direct {v1, v2, v4, v3}, Lx9/z0;-><init>(Ljava/lang/String;IZ)V

    .line 906
    .line 907
    .line 908
    const-string v2, "\u901f\u5ea6\u6162"

    .line 909
    .line 910
    iput-object v2, v1, Lx9/z0;->d:Ljava/lang/String;

    .line 911
    .line 912
    invoke-virtual {v0, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 913
    .line 914
    .line 915
    new-instance v1, Lx9/z0;

    .line 916
    .line 917
    const-string v5, "\u5e94\u7528\u7f13\u5b58(/data/data)"

    .line 918
    .line 919
    invoke-direct {v1, v5, v4, v3}, Lx9/z0;-><init>(Ljava/lang/String;IZ)V

    .line 920
    .line 921
    .line 922
    iput-object v2, v1, Lx9/z0;->d:Ljava/lang/String;

    .line 923
    .line 924
    invoke-virtual {v0, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 925
    .line 926
    .line 927
    :cond_14
    new-instance v1, Lx9/z0;

    .line 928
    .line 929
    const-string v2, "\u5197\u4f59\u6587\u4ef6(tmp,temp,log,cache,xlog)"

    .line 930
    .line 931
    invoke-direct {v1, v2, v4, v4}, Lx9/z0;-><init>(Ljava/lang/String;IZ)V

    .line 932
    .line 933
    .line 934
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 935
    .line 936
    .line 937
    move-result-object v2

    .line 938
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 939
    .line 940
    .line 941
    move-result-object v2

    .line 942
    invoke-interface {v2}, Lcom/yunpan/appmanage/db/FileInfoDao;->getAllLogFiles()Ljava/util/List;

    .line 943
    .line 944
    .line 945
    move-result-object v2

    .line 946
    if-nez v2, :cond_15

    .line 947
    .line 948
    new-instance v2, Ljava/util/ArrayList;

    .line 949
    .line 950
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .line 952
    .line 953
    :cond_15
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 954
    .line 955
    .line 956
    move-result-object v3

    .line 957
    move-wide/from16 v4, v18

    .line 958
    .line 959
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 960
    .line 961
    .line 962
    move-result v6

    .line 963
    if-eqz v6, :cond_16

    .line 964
    .line 965
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v6

    .line 969
    check-cast v6, Lcom/yunpan/appmanage/db/FileInfo;

    .line 970
    .line 971
    iget-wide v6, v6, Lcom/yunpan/appmanage/db/FileInfo;->size:J

    .line 972
    .line 973
    add-long/2addr v4, v6

    .line 974
    goto :goto_16

    .line 975
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 976
    .line 977
    const-string v6, "\u53d1\u73b0"

    .line 978
    .line 979
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 983
    .line 984
    .line 985
    move-result v7

    .line 986
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    const-string v7, "\u4e2a\u6587\u4ef6\uff0c\u603b\u5927\u5c0f\uff1a"

    .line 990
    .line 991
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    long-to-double v8, v4

    .line 995
    invoke-static {v8, v9}, Lif/a;->D0(D)Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v8

    .line 999
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v3

    .line 1006
    iput-object v3, v1, Lx9/z0;->d:Ljava/lang/String;

    .line 1007
    .line 1008
    invoke-virtual {v0, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1009
    .line 1010
    .line 1011
    new-instance v1, Lx9/z0;

    .line 1012
    .line 1013
    const-string v3, "\u7f13\u5b58\u3001\u65e5\u5fd7\u6316\u6398\u8005"

    .line 1014
    .line 1015
    const/4 v8, 0x0

    .line 1016
    const/4 v9, 0x1

    .line 1017
    invoke-direct {v1, v3, v9, v8}, Lx9/z0;-><init>(Ljava/lang/String;IZ)V

    .line 1018
    .line 1019
    .line 1020
    const-string v3, "\u614e\u7528\uff0c\u5c06\u6587\u4ef6\u540d\u5e26\u6709log\u3001cache\u3001tmp\u7b49\u5173\u952e\u5b57\u7684\u901a\u901a\u5220\u9664"

    .line 1021
    .line 1022
    iput-object v3, v1, Lx9/z0;->d:Ljava/lang/String;

    .line 1023
    .line 1024
    invoke-virtual {v0, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1025
    .line 1026
    .line 1027
    new-instance v1, Lx9/z0;

    .line 1028
    .line 1029
    const-string v3, "\u6e05\u9664\u7a7a\u76ee\u5f55(\u5185\u90e8\u5b58\u50a8)"

    .line 1030
    .line 1031
    invoke-direct {v1, v3, v9, v9}, Lx9/z0;-><init>(Ljava/lang/String;IZ)V

    .line 1032
    .line 1033
    .line 1034
    const-string v3, "\u653e\u5fc3\u6e05\u7406"

    .line 1035
    .line 1036
    iput-object v3, v1, Lx9/z0;->d:Ljava/lang/String;

    .line 1037
    .line 1038
    invoke-virtual {v0, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1039
    .line 1040
    .line 1041
    new-instance v1, Lx9/z0;

    .line 1042
    .line 1043
    const-string v8, "\u6e05\u9664\u7a7a\u76ee\u5f55(USB\u8bbe\u5907)"

    .line 1044
    .line 1045
    invoke-direct {v1, v8, v9, v9}, Lx9/z0;-><init>(Ljava/lang/String;IZ)V

    .line 1046
    .line 1047
    .line 1048
    iput-object v3, v1, Lx9/z0;->d:Ljava/lang/String;

    .line 1049
    .line 1050
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v8

    .line 1054
    invoke-virtual {v8}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v8

    .line 1058
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    const-string v10, "/storage/emulated/"

    .line 1061
    .line 1062
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    sget-object v10, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1066
    .line 1067
    iget v10, v10, Lcom/yunpan/appmanage/util/k;->n:I

    .line 1068
    .line 1069
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    .line 1072
    const-string v10, "/Pictures/.Gallery2/"

    .line 1073
    .line 1074
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v9

    .line 1081
    invoke-interface {v8, v9}, Lcom/yunpan/appmanage/db/FileInfoDao;->getDirFiles(Ljava/lang/String;)Ljava/util/List;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v8

    .line 1085
    if-eqz v8, :cond_18

    .line 1086
    .line 1087
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 1088
    .line 1089
    .line 1090
    move-result v8

    .line 1091
    if-nez v8, :cond_18

    .line 1092
    .line 1093
    new-instance v1, Lx9/z0;

    .line 1094
    .line 1095
    const-string v8, "\u6e05\u9664\u76f8\u518c\u7f13\u5b58/\u7f29\u7565\u56fe/\u5907\u4efd"

    .line 1096
    .line 1097
    const/4 v9, 0x0

    .line 1098
    const/4 v10, 0x1

    .line 1099
    invoke-direct {v1, v8, v10, v9}, Lx9/z0;-><init>(Ljava/lang/String;IZ)V

    .line 1100
    .line 1101
    .line 1102
    iput-object v3, v1, Lx9/z0;->d:Ljava/lang/String;

    .line 1103
    .line 1104
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v3

    .line 1108
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1109
    .line 1110
    .line 1111
    move-result v8

    .line 1112
    if-eqz v8, :cond_17

    .line 1113
    .line 1114
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v8

    .line 1118
    check-cast v8, Lcom/yunpan/appmanage/db/FileInfo;

    .line 1119
    .line 1120
    iget-wide v8, v8, Lcom/yunpan/appmanage/db/FileInfo;->size:J

    .line 1121
    .line 1122
    add-long/2addr v4, v8

    .line 1123
    goto :goto_17

    .line 1124
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1125
    .line 1126
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1127
    .line 1128
    .line 1129
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1130
    .line 1131
    .line 1132
    move-result v2

    .line 1133
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    .line 1139
    long-to-double v4, v4

    .line 1140
    invoke-static {v4, v5}, Lif/a;->D0(D)Ljava/lang/String;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v2

    .line 1144
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v2

    .line 1151
    iput-object v2, v1, Lx9/z0;->d:Ljava/lang/String;

    .line 1152
    .line 1153
    :cond_18
    invoke-virtual {v0, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1157
    .line 1158
    .line 1159
    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    iget v0, v1, Lua/y0;->a:I

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget v0, Lcom/yunpan/appmanage/ui/ActivityClean;->M:I

    .line 12
    .line 13
    iget-object v6, v1, Lua/y0;->b:Lcom/yunpan/appmanage/ui/ActivityClean;

    .line 14
    .line 15
    iget-object v0, v6, Lda/g;->A:Lda/g;

    .line 16
    .line 17
    invoke-static {v0}, Lqf/c;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    const/4 v8, 0x0

    .line 22
    :goto_0
    iget-object v0, v6, Lcom/yunpan/appmanage/ui/ActivityClean;->E:Lx9/t0;

    .line 23
    .line 24
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    if-ge v8, v9, :cond_32

    .line 29
    .line 30
    invoke-virtual {v0, v8}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v9, v0

    .line 35
    check-cast v9, Lx9/z0;

    .line 36
    .line 37
    iget-boolean v0, v9, Lx9/z0;->b:Z

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    :cond_0
    :goto_1
    const/4 v1, 0x0

    .line 42
    :goto_2
    const/4 v4, 0x1

    .line 43
    goto/16 :goto_1d

    .line 44
    .line 45
    :cond_1
    iget v0, v9, Lx9/z0;->a:I

    .line 46
    .line 47
    if-ne v0, v3, :cond_3

    .line 48
    .line 49
    new-instance v0, Ljava/io/File;

    .line 50
    .line 51
    iget-object v10, v9, Lx9/z0;->f:Ljava/lang/String;

    .line 52
    .line 53
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    const-string v0, "\u5220\u9664\u5931\u8d25"

    .line 66
    .line 67
    iput-object v0, v9, Lx9/z0;->e:Ljava/lang/String;

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_2
    const-string v0, "\u5df2\u5220\u9664"

    .line 71
    .line 72
    iput-object v0, v9, Lx9/z0;->e:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v9, v9, Lx9/z0;->f:Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {v0, v9}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    iget-object v0, v9, Lx9/z0;->c:Ljava/lang/String;

    .line 96
    .line 97
    const-string v10, "adb\u4e34\u65f6\u76ee\u5f55\u6b8b\u7559"

    .line 98
    .line 99
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    const-string v11, "\u6e05\u7406\u5b8c\u6210"

    .line 104
    .line 105
    if-eqz v10, :cond_5

    .line 106
    .line 107
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    const-string v0, "rm -rf \'/data/local/tmp/.studio\'"

    .line 113
    .line 114
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 115
    .line 116
    .line 117
    const-string v0, "rm -rf /data/local/tmp/*"

    .line 118
    .line 119
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget v0, v0, Lfa/a0;->a:I

    .line 124
    .line 125
    if-nez v0, :cond_4

    .line 126
    .line 127
    iput-object v11, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_4
    const-string v0, "\u6e05\u7406\u5931\u8d25"

    .line 131
    .line 132
    iput-object v0, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 133
    .line 134
    :goto_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    const-string v10, "\u6e05\u9664\u76f8\u518c\u7f13\u5b58"

    .line 143
    .line 144
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    if-eqz v10, :cond_7

    .line 149
    .line 150
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 151
    .line 152
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 153
    .line 154
    iget v10, v0, Lcom/yunpan/appmanage/util/k;->n:I

    .line 155
    .line 156
    const-string v12, "rm -rf /storage/emulated/"

    .line 157
    .line 158
    const-string v13, "/Pictures/.Gallery2/"

    .line 159
    .line 160
    if-lez v10, :cond_6

    .line 161
    .line 162
    sget-object v10, Lfa/b0;->a:La2/w0;

    .line 163
    .line 164
    new-instance v14, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget v0, v0, Lcom/yunpan/appmanage/util/k;->n:I

    .line 170
    .line 171
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-static {v0}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_6
    sget-object v10, Lfa/b0;->a:La2/w0;

    .line 189
    .line 190
    new-instance v14, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget v0, v0, Lcom/yunpan/appmanage/util/k;->n:I

    .line 196
    .line 197
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 211
    .line 212
    .line 213
    :goto_5
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    new-instance v10, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    sget-object v12, Lfa/g0;->a:Lfa/h0;

    .line 227
    .line 228
    invoke-virtual {v12}, Lfa/h0;->d()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    invoke-interface {v0, v10}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iput-object v11, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_1

    .line 255
    .line 256
    :cond_7
    const-string v10, "\u5378\u8f7d\u6b8b\u7559(/data/data)"

    .line 257
    .line 258
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 259
    .line 260
    .line 261
    move-result v10

    .line 262
    const-string v12, " "

    .line 263
    .line 264
    const-string v13, ":"

    .line 265
    .line 266
    const-string v14, "/\'"

    .line 267
    .line 268
    const-string v15, "\u6e05\u7406\u4e2d..."

    .line 269
    .line 270
    const-string v3, "/"

    .line 271
    .line 272
    if-eqz v10, :cond_e

    .line 273
    .line 274
    iput-object v15, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 275
    .line 276
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 284
    .line 285
    new-instance v10, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v15, "ls \'/data/user/"

    .line 288
    .line 289
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    sget-object v15, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 293
    .line 294
    sget-object v15, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 295
    .line 296
    iget v15, v15, Lcom/yunpan/appmanage/util/k;->n:I

    .line 297
    .line 298
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    invoke-static {v10}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    iget-object v0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 316
    .line 317
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 322
    .line 323
    .line 324
    move-result v10

    .line 325
    if-eqz v10, :cond_d

    .line 326
    .line 327
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v10

    .line 331
    check-cast v10, Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v14

    .line 337
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 338
    .line 339
    .line 340
    move-result v14

    .line 341
    if-nez v14, :cond_c

    .line 342
    .line 343
    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 344
    .line 345
    .line 346
    move-result v14

    .line 347
    if-nez v14, :cond_c

    .line 348
    .line 349
    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 350
    .line 351
    .line 352
    move-result v14

    .line 353
    if-eqz v14, :cond_8

    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_8
    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v10

    .line 360
    array-length v14, v10

    .line 361
    const/4 v15, 0x0

    .line 362
    :goto_7
    if-ge v15, v14, :cond_c

    .line 363
    .line 364
    aget-object v4, v10, v15

    .line 365
    .line 366
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v16

    .line 370
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    .line 371
    .line 372
    .line 373
    move-result v16

    .line 374
    if-eqz v16, :cond_a

    .line 375
    .line 376
    move-object/from16 v17, v0

    .line 377
    .line 378
    :cond_9
    :goto_8
    move-object/from16 v18, v10

    .line 379
    .line 380
    move/from16 v19, v14

    .line 381
    .line 382
    :goto_9
    const/4 v1, 0x1

    .line 383
    goto :goto_a

    .line 384
    :cond_a
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 385
    .line 386
    move-object/from16 v17, v0

    .line 387
    .line 388
    iget-object v0, v5, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-eqz v0, :cond_b

    .line 395
    .line 396
    goto :goto_8

    .line 397
    :cond_b
    invoke-static {v4}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    if-nez v0, :cond_9

    .line 402
    .line 403
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 404
    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    move-object/from16 v18, v10

    .line 408
    .line 409
    const-string v10, "/data/user/"

    .line 410
    .line 411
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    move/from16 v19, v14

    .line 415
    .line 416
    iget v14, v5, Lcom/yunpan/appmanage/util/k;->n:I

    .line 417
    .line 418
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    invoke-static {v1}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    iget v5, v5, Lcom/yunpan/appmanage/util/k;->n:I

    .line 451
    .line 452
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    goto :goto_9

    .line 469
    :goto_a
    add-int/2addr v15, v1

    .line 470
    move-object/from16 v1, p0

    .line 471
    .line 472
    move-object/from16 v0, v17

    .line 473
    .line 474
    move-object/from16 v10, v18

    .line 475
    .line 476
    move/from16 v14, v19

    .line 477
    .line 478
    goto :goto_7

    .line 479
    :cond_c
    move-object/from16 v1, p0

    .line 480
    .line 481
    goto/16 :goto_6

    .line 482
    .line 483
    :cond_d
    iput-object v11, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 484
    .line 485
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    :goto_b
    const/4 v1, 0x0

    .line 493
    const/4 v3, 0x2

    .line 494
    goto/16 :goto_2

    .line 495
    .line 496
    :cond_e
    const-string v1, "\u5378\u8f7d\u6b8b\u7559"

    .line 497
    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    if-eqz v1, :cond_1b

    .line 503
    .line 504
    iput-object v15, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 505
    .line 506
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 514
    .line 515
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 516
    .line 517
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 518
    .line 519
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    if-nez v1, :cond_1a

    .line 524
    .line 525
    new-instance v1, Ljava/io/File;

    .line 526
    .line 527
    iget-object v4, v0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 528
    .line 529
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    iget v0, v0, Lcom/yunpan/appmanage/util/k;->n:I

    .line 545
    .line 546
    if-lez v0, :cond_12

    .line 547
    .line 548
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 549
    .line 550
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    array-length v4, v0

    .line 558
    const/4 v5, 0x0

    .line 559
    :goto_c
    if-ge v5, v4, :cond_1a

    .line 560
    .line 561
    aget-object v10, v0, v5

    .line 562
    .line 563
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v12

    .line 567
    sget-object v13, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 568
    .line 569
    iget-object v14, v13, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 570
    .line 571
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v12

    .line 575
    if-eqz v12, :cond_f

    .line 576
    .line 577
    goto/16 :goto_d

    .line 578
    .line 579
    :cond_f
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 580
    .line 581
    .line 582
    move-result-object v12

    .line 583
    invoke-virtual {v12}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 584
    .line 585
    .line 586
    move-result-object v12

    .line 587
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v14

    .line 591
    invoke-interface {v12, v14}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 592
    .line 593
    .line 594
    move-result-object v12

    .line 595
    if-nez v12, :cond_11

    .line 596
    .line 597
    iget-object v12, v13, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 598
    .line 599
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 600
    .line 601
    .line 602
    move-result v12

    .line 603
    if-nez v12, :cond_10

    .line 604
    .line 605
    iget-object v12, v13, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 606
    .line 607
    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 608
    .line 609
    .line 610
    move-result v12

    .line 611
    if-eqz v12, :cond_10

    .line 612
    .line 613
    new-instance v12, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .line 617
    .line 618
    iget-object v14, v13, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 619
    .line 620
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    iget-object v13, v13, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 624
    .line 625
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 626
    .line 627
    .line 628
    move-result v13

    .line 629
    invoke-virtual {v1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    :cond_10
    sget-object v12, Lfa/b0;->a:La2/w0;

    .line 641
    .line 642
    new-instance v13, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v14

    .line 657
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v13

    .line 664
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 665
    .line 666
    .line 667
    invoke-static {v13}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 671
    .line 672
    .line 673
    move-result-object v12

    .line 674
    invoke-virtual {v12}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 675
    .line 676
    .line 677
    move-result-object v12

    .line 678
    new-instance v13, Ljava/lang/StringBuilder;

    .line 679
    .line 680
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v10

    .line 693
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v10

    .line 700
    invoke-interface {v12, v10}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    .line 702
    .line 703
    :cond_11
    :goto_d
    const/4 v10, 0x1

    .line 704
    add-int/2addr v5, v10

    .line 705
    goto/16 :goto_c

    .line 706
    .line 707
    :cond_12
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 708
    .line 709
    new-instance v4, Ljava/lang/StringBuilder;

    .line 710
    .line 711
    const-string v5, "ls \'"

    .line 712
    .line 713
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v4

    .line 726
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 727
    .line 728
    .line 729
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    iget-object v0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 734
    .line 735
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    :cond_13
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 740
    .line 741
    .line 742
    move-result v4

    .line 743
    if-eqz v4, :cond_1a

    .line 744
    .line 745
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v4

    .line 749
    check-cast v4, Ljava/lang/String;

    .line 750
    .line 751
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v5

    .line 755
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 756
    .line 757
    .line 758
    move-result v5

    .line 759
    if-nez v5, :cond_14

    .line 760
    .line 761
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 762
    .line 763
    .line 764
    move-result v5

    .line 765
    if-nez v5, :cond_14

    .line 766
    .line 767
    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 768
    .line 769
    .line 770
    move-result v5

    .line 771
    if-eqz v5, :cond_15

    .line 772
    .line 773
    :cond_14
    move-object/from16 v17, v0

    .line 774
    .line 775
    goto/16 :goto_13

    .line 776
    .line 777
    :cond_15
    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v4

    .line 781
    array-length v5, v4

    .line 782
    const/4 v10, 0x0

    .line 783
    :goto_f
    if-ge v10, v5, :cond_13

    .line 784
    .line 785
    aget-object v14, v4, v10

    .line 786
    .line 787
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v15

    .line 791
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 792
    .line 793
    .line 794
    move-result v15

    .line 795
    if-eqz v15, :cond_17

    .line 796
    .line 797
    move-object/from16 v17, v0

    .line 798
    .line 799
    :cond_16
    :goto_10
    move-object/from16 v18, v4

    .line 800
    .line 801
    goto :goto_12

    .line 802
    :cond_17
    sget-object v15, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 803
    .line 804
    move-object/from16 v17, v0

    .line 805
    .line 806
    iget-object v0, v15, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 807
    .line 808
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    move-result v0

    .line 812
    if-eqz v0, :cond_18

    .line 813
    .line 814
    goto :goto_10

    .line 815
    :cond_18
    invoke-static {v14}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    if-nez v0, :cond_16

    .line 820
    .line 821
    iget-object v0, v15, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 822
    .line 823
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 824
    .line 825
    .line 826
    move-result v0

    .line 827
    if-nez v0, :cond_19

    .line 828
    .line 829
    iget-object v0, v15, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 830
    .line 831
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 832
    .line 833
    .line 834
    move-result v0

    .line 835
    if-eqz v0, :cond_19

    .line 836
    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    .line 838
    .line 839
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    .line 841
    .line 842
    move-object/from16 v18, v4

    .line 843
    .line 844
    iget-object v4, v15, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 845
    .line 846
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    iget-object v4, v15, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 850
    .line 851
    invoke-static {v4, v1, v0}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    goto :goto_11

    .line 856
    :cond_19
    move-object/from16 v18, v4

    .line 857
    .line 858
    :goto_11
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 859
    .line 860
    new-instance v4, Ljava/lang/StringBuilder;

    .line 861
    .line 862
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    .line 873
    .line 874
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v4

    .line 878
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 879
    .line 880
    .line 881
    invoke-static {v4}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    new-instance v4, Ljava/lang/StringBuilder;

    .line 893
    .line 894
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    .line 902
    .line 903
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v4

    .line 910
    invoke-interface {v0, v4}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    :goto_12
    const/4 v4, 0x1

    .line 914
    add-int/2addr v10, v4

    .line 915
    move-object/from16 v0, v17

    .line 916
    .line 917
    move-object/from16 v4, v18

    .line 918
    .line 919
    goto/16 :goto_f

    .line 920
    .line 921
    :goto_13
    move-object/from16 v0, v17

    .line 922
    .line 923
    goto/16 :goto_e

    .line 924
    .line 925
    :catch_0
    :cond_1a
    iput-object v11, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 926
    .line 927
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 932
    .line 933
    .line 934
    goto/16 :goto_b

    .line 935
    .line 936
    :cond_1b
    const-string v1, "\u5e94\u7528\u7f13\u5b58(/data/data)"

    .line 937
    .line 938
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 939
    .line 940
    .line 941
    move-result v1

    .line 942
    const-string v4, "/cache\'"

    .line 943
    .line 944
    if-eqz v1, :cond_1f

    .line 945
    .line 946
    iput-object v15, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 947
    .line 948
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 953
    .line 954
    .line 955
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 956
    .line 957
    .line 958
    move-result-object v0

    .line 959
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_canStart()Ljava/util/List;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 972
    .line 973
    .line 974
    move-result v1

    .line 975
    if-eqz v1, :cond_1e

    .line 976
    .line 977
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v1

    .line 981
    check-cast v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 982
    .line 983
    iget-object v3, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 984
    .line 985
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 986
    .line 987
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 988
    .line 989
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 990
    .line 991
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 992
    .line 993
    .line 994
    move-result v3

    .line 995
    if-eqz v3, :cond_1c

    .line 996
    .line 997
    goto :goto_14

    .line 998
    :cond_1c
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 999
    .line 1000
    .line 1001
    move-result v3

    .line 1002
    if-nez v3, :cond_1d

    .line 1003
    .line 1004
    iget-object v3, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1005
    .line 1006
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1007
    .line 1008
    .line 1009
    move-result v3

    .line 1010
    if-eqz v3, :cond_1d

    .line 1011
    .line 1012
    goto :goto_14

    .line 1013
    :cond_1d
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 1014
    .line 1015
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    const-string v10, "rm -rf \'/data/data/"

    .line 1018
    .line 1019
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    iget-object v12, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1023
    .line 1024
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v5

    .line 1034
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1035
    .line 1036
    .line 1037
    invoke-static {v5}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1038
    .line 1039
    .line 1040
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1046
    .line 1047
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    .line 1050
    const-string v1, "/code_cache\'"

    .line 1051
    .line 1052
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v1

    .line 1059
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1060
    .line 1061
    .line 1062
    goto :goto_14

    .line 1063
    :cond_1e
    iput-object v11, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 1064
    .line 1065
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1070
    .line 1071
    .line 1072
    goto/16 :goto_b

    .line 1073
    .line 1074
    :cond_1f
    const-string v1, "\u5e94\u7528\u7f13\u5b58"

    .line 1075
    .line 1076
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1077
    .line 1078
    .line 1079
    move-result v1

    .line 1080
    const-string v5, "\'"

    .line 1081
    .line 1082
    const-string v10, "rm -rf \'"

    .line 1083
    .line 1084
    if-eqz v1, :cond_26

    .line 1085
    .line 1086
    iput-object v15, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 1087
    .line 1088
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v0

    .line 1092
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1093
    .line 1094
    .line 1095
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1096
    .line 1097
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1098
    .line 1099
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 1100
    .line 1101
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 1102
    .line 1103
    .line 1104
    move-result v1

    .line 1105
    if-nez v1, :cond_25

    .line 1106
    .line 1107
    :try_start_1
    new-instance v1, Ljava/io/File;

    .line 1108
    .line 1109
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 1110
    .line 1111
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v0

    .line 1118
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 1123
    .line 1124
    .line 1125
    move-result v1

    .line 1126
    if-eqz v1, :cond_21

    .line 1127
    .line 1128
    new-instance v1, Ljava/io/File;

    .line 1129
    .line 1130
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v1

    .line 1137
    array-length v3, v1

    .line 1138
    const/4 v4, 0x0

    .line 1139
    :goto_15
    if-ge v4, v3, :cond_25

    .line 1140
    .line 1141
    aget-object v0, v1, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1142
    .line 1143
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 1144
    .line 1145
    .line 1146
    move-result v12

    .line 1147
    if-eqz v12, :cond_20

    .line 1148
    .line 1149
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1150
    .line 1151
    .line 1152
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v12

    .line 1156
    invoke-virtual {v12}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v12

    .line 1160
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v0

    .line 1164
    invoke-interface {v12, v0}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 1165
    .line 1166
    .line 1167
    :goto_16
    const/4 v12, 0x1

    .line 1168
    goto :goto_18

    .line 1169
    :catch_1
    move-exception v0

    .line 1170
    goto :goto_17

    .line 1171
    :cond_20
    new-instance v12, Ljava/io/File;

    .line 1172
    .line 1173
    const-string v13, "cache"

    .line 1174
    .line 1175
    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1176
    .line 1177
    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1179
    .line 1180
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v13

    .line 1190
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v0

    .line 1200
    const/4 v13, 0x1

    .line 1201
    new-array v14, v13, [Ljava/lang/String;

    .line 1202
    .line 1203
    const/4 v13, 0x0

    .line 1204
    aput-object v0, v14, v13

    .line 1205
    .line 1206
    invoke-static {v14}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v0

    .line 1210
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 1211
    .line 1212
    .line 1213
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v0

    .line 1217
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v0

    .line 1221
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v13

    .line 1225
    invoke-interface {v0, v13}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1229
    .line 1230
    .line 1231
    goto :goto_16

    .line 1232
    :goto_17
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1233
    .line 1234
    .line 1235
    goto :goto_16

    .line 1236
    :goto_18
    add-int/2addr v4, v12

    .line 1237
    goto :goto_15

    .line 1238
    :cond_21
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v1

    .line 1242
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v1

    .line 1246
    invoke-interface {v1}, Lcom/yunpan/appmanage/db/AppDao;->get_app_canStart()Ljava/util/List;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v1

    .line 1250
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v1

    .line 1254
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1255
    .line 1256
    .line 1257
    move-result v5

    .line 1258
    if-eqz v5, :cond_25

    .line 1259
    .line 1260
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v5

    .line 1264
    check-cast v5, Lcom/yunpan/appmanage/db/AppBean;

    .line 1265
    .line 1266
    iget-object v12, v5, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1267
    .line 1268
    sget-object v13, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1269
    .line 1270
    iget-object v14, v13, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 1271
    .line 1272
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1273
    .line 1274
    .line 1275
    move-result v12

    .line 1276
    if-eqz v12, :cond_22

    .line 1277
    .line 1278
    goto :goto_19

    .line 1279
    :cond_22
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 1280
    .line 1281
    .line 1282
    move-result v12

    .line 1283
    if-nez v12, :cond_23

    .line 1284
    .line 1285
    iget-object v12, v5, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1286
    .line 1287
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1288
    .line 1289
    .line 1290
    move-result v12

    .line 1291
    if-eqz v12, :cond_23

    .line 1292
    .line 1293
    goto :goto_19

    .line 1294
    :cond_23
    iget-object v12, v13, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 1295
    .line 1296
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 1297
    .line 1298
    .line 1299
    move-result v12

    .line 1300
    if-nez v12, :cond_24

    .line 1301
    .line 1302
    iget-object v12, v13, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 1303
    .line 1304
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1305
    .line 1306
    .line 1307
    move-result v12

    .line 1308
    if-eqz v12, :cond_24

    .line 1309
    .line 1310
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1313
    .line 1314
    .line 1315
    iget-object v14, v13, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 1316
    .line 1317
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    .line 1319
    .line 1320
    iget-object v13, v13, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 1321
    .line 1322
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 1323
    .line 1324
    .line 1325
    move-result v13

    .line 1326
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v0

    .line 1330
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v0

    .line 1337
    :cond_24
    sget-object v12, Lfa/b0;->a:La2/w0;

    .line 1338
    .line 1339
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1340
    .line 1341
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    .line 1352
    .line 1353
    iget-object v14, v5, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1354
    .line 1355
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v13

    .line 1365
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1366
    .line 1367
    .line 1368
    invoke-static {v13}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1369
    .line 1370
    .line 1371
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v12

    .line 1375
    invoke-virtual {v12}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v12

    .line 1379
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1380
    .line 1381
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    .line 1389
    .line 1390
    iget-object v5, v5, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1391
    .line 1392
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    .line 1394
    .line 1395
    const-string v5, "/cache"

    .line 1396
    .line 1397
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v5

    .line 1404
    invoke-interface {v12, v5}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1405
    .line 1406
    .line 1407
    goto/16 :goto_19

    .line 1408
    .line 1409
    :catch_2
    :cond_25
    iput-object v11, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 1410
    .line 1411
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v0

    .line 1415
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1416
    .line 1417
    .line 1418
    goto/16 :goto_b

    .line 1419
    .line 1420
    :cond_26
    const-string v1, "\u5197\u4f59\u6587\u4ef6"

    .line 1421
    .line 1422
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1423
    .line 1424
    .line 1425
    move-result v1

    .line 1426
    if-eqz v1, :cond_2a

    .line 1427
    .line 1428
    iput-object v15, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 1429
    .line 1430
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v0

    .line 1434
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1435
    .line 1436
    .line 1437
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v0

    .line 1441
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v0

    .line 1445
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/FileInfoDao;->getAllLogFiles()Ljava/util/List;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v0

    .line 1449
    if-nez v0, :cond_27

    .line 1450
    .line 1451
    new-instance v0, Ljava/util/ArrayList;

    .line 1452
    .line 1453
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1454
    .line 1455
    .line 1456
    :cond_27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v0

    .line 1460
    :cond_28
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1461
    .line 1462
    .line 1463
    move-result v1

    .line 1464
    if-eqz v1, :cond_29

    .line 1465
    .line 1466
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v1

    .line 1470
    check-cast v1, Lcom/yunpan/appmanage/db/FileInfo;

    .line 1471
    .line 1472
    new-instance v3, Ljava/io/File;

    .line 1473
    .line 1474
    iget-object v4, v1, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    .line 1475
    .line 1476
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1477
    .line 1478
    .line 1479
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1480
    .line 1481
    .line 1482
    iget-object v3, v1, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    .line 1483
    .line 1484
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 1485
    .line 1486
    .line 1487
    move-result v3

    .line 1488
    if-nez v3, :cond_28

    .line 1489
    .line 1490
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v3

    .line 1494
    invoke-virtual {v3}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v3

    .line 1498
    iget-object v1, v1, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    .line 1499
    .line 1500
    invoke-interface {v3, v1}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 1501
    .line 1502
    .line 1503
    goto :goto_1a

    .line 1504
    :cond_29
    iput-object v11, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 1505
    .line 1506
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v0

    .line 1510
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1511
    .line 1512
    .line 1513
    goto/16 :goto_b

    .line 1514
    .line 1515
    :cond_2a
    const-string v1, "\u6e05\u9664\u7a7a\u76ee\u5f55(\u5185\u90e8\u5b58\u50a8)"

    .line 1516
    .line 1517
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1518
    .line 1519
    .line 1520
    move-result v1

    .line 1521
    if-eqz v1, :cond_2b

    .line 1522
    .line 1523
    iput-object v15, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 1524
    .line 1525
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v0

    .line 1529
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1530
    .line 1531
    .line 1532
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 1533
    .line 1534
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v0

    .line 1538
    invoke-virtual {v6, v0}, Lcom/yunpan/appmanage/ui/ActivityClean;->x(Ljava/lang/String;)Z

    .line 1539
    .line 1540
    .line 1541
    iput-object v11, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 1542
    .line 1543
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v0

    .line 1547
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1548
    .line 1549
    .line 1550
    goto/16 :goto_b

    .line 1551
    .line 1552
    :cond_2b
    const-string v1, "\u6e05\u9664\u7a7a\u76ee\u5f55"

    .line 1553
    .line 1554
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1555
    .line 1556
    .line 1557
    move-result v1

    .line 1558
    if-eqz v1, :cond_2c

    .line 1559
    .line 1560
    iput-object v15, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 1561
    .line 1562
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v0

    .line 1566
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1567
    .line 1568
    .line 1569
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1570
    .line 1571
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1572
    .line 1573
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 1574
    .line 1575
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v0

    .line 1579
    new-instance v1, Lcom/yunpan/appmanage/db/b;

    .line 1580
    .line 1581
    const/4 v3, 0x2

    .line 1582
    invoke-direct {v1, v3, v6}, Lcom/yunpan/appmanage/db/b;-><init>(ILjava/lang/Object;)V

    .line 1583
    .line 1584
    .line 1585
    invoke-static {v0, v1}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 1586
    .line 1587
    .line 1588
    iput-object v11, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 1589
    .line 1590
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v0

    .line 1594
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1595
    .line 1596
    .line 1597
    goto/16 :goto_1

    .line 1598
    .line 1599
    :cond_2c
    const/4 v3, 0x2

    .line 1600
    const-string v1, "\u65e5\u5fd7\u6316\u6398\u8005"

    .line 1601
    .line 1602
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1603
    .line 1604
    .line 1605
    move-result v0

    .line 1606
    if-eqz v0, :cond_0

    .line 1607
    .line 1608
    iput-object v15, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 1609
    .line 1610
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v0

    .line 1614
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1615
    .line 1616
    .line 1617
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v0

    .line 1621
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v0

    .line 1625
    const/4 v1, 0x1

    .line 1626
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/FileInfoDao;->getAllKeyLogDirs(Z)Ljava/util/List;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v0

    .line 1630
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v0

    .line 1634
    :cond_2d
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1635
    .line 1636
    .line 1637
    move-result v1

    .line 1638
    if-eqz v1, :cond_2f

    .line 1639
    .line 1640
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v1

    .line 1644
    check-cast v1, Lcom/yunpan/appmanage/db/FileInfo;

    .line 1645
    .line 1646
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1647
    .line 1648
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1649
    .line 1650
    iget v4, v4, Lcom/yunpan/appmanage/util/k;->n:I

    .line 1651
    .line 1652
    if-lez v4, :cond_2e

    .line 1653
    .line 1654
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 1655
    .line 1656
    iget-object v12, v1, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    .line 1657
    .line 1658
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1659
    .line 1660
    .line 1661
    invoke-static {v12}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 1662
    .line 1663
    .line 1664
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v4

    .line 1668
    invoke-virtual {v4}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v4

    .line 1672
    iget-object v1, v1, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    .line 1673
    .line 1674
    invoke-interface {v4, v1}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 1675
    .line 1676
    .line 1677
    goto :goto_1b

    .line 1678
    :cond_2e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1679
    .line 1680
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1681
    .line 1682
    .line 1683
    iget-object v12, v1, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    .line 1684
    .line 1685
    invoke-static {v12, v5, v4}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v4

    .line 1689
    const/4 v12, 0x1

    .line 1690
    new-array v13, v12, [Ljava/lang/String;

    .line 1691
    .line 1692
    const/4 v12, 0x0

    .line 1693
    aput-object v4, v13, v12

    .line 1694
    .line 1695
    invoke-static {v13}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v4

    .line 1699
    invoke-virtual {v4}, Lv9/e;->l0()Landroidx/room/s;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v4

    .line 1703
    invoke-virtual {v4}, Landroidx/room/s;->q()Z

    .line 1704
    .line 1705
    .line 1706
    move-result v4

    .line 1707
    if-eqz v4, :cond_2d

    .line 1708
    .line 1709
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v4

    .line 1713
    invoke-virtual {v4}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v4

    .line 1717
    iget-object v1, v1, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    .line 1718
    .line 1719
    invoke-interface {v4, v1}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 1720
    .line 1721
    .line 1722
    goto :goto_1b

    .line 1723
    :cond_2f
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1724
    .line 1725
    .line 1726
    move-result-object v0

    .line 1727
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v0

    .line 1731
    const/4 v1, 0x0

    .line 1732
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/FileInfoDao;->getAllKeyLogDirs(Z)Ljava/util/List;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v0

    .line 1736
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v0

    .line 1740
    :cond_30
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1741
    .line 1742
    .line 1743
    move-result v4

    .line 1744
    if-eqz v4, :cond_31

    .line 1745
    .line 1746
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v4

    .line 1750
    check-cast v4, Lcom/yunpan/appmanage/db/FileInfo;

    .line 1751
    .line 1752
    new-instance v5, Ljava/io/File;

    .line 1753
    .line 1754
    iget-object v10, v4, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    .line 1755
    .line 1756
    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1757
    .line 1758
    .line 1759
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1760
    .line 1761
    .line 1762
    move-result v5

    .line 1763
    if-eqz v5, :cond_30

    .line 1764
    .line 1765
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1766
    .line 1767
    .line 1768
    move-result-object v5

    .line 1769
    invoke-virtual {v5}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v5

    .line 1773
    iget-object v4, v4, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    .line 1774
    .line 1775
    invoke-interface {v5, v4}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 1776
    .line 1777
    .line 1778
    goto :goto_1c

    .line 1779
    :cond_31
    iput-object v11, v9, Lx9/z0;->d:Ljava/lang/String;

    .line 1780
    .line 1781
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v0

    .line 1785
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1786
    .line 1787
    .line 1788
    goto/16 :goto_2

    .line 1789
    .line 1790
    :goto_1d
    add-int/2addr v8, v4

    .line 1791
    move-object/from16 v1, p0

    .line 1792
    .line 1793
    goto/16 :goto_0

    .line 1794
    .line 1795
    :cond_32
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1796
    .line 1797
    .line 1798
    return-void

    .line 1799
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lua/y0;->a(Lmc/b;)V

    .line 1800
    .line 1801
    .line 1802
    return-void

    .line 1803
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 4

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityClean;->M:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/y0;->b:Lcom/yunpan/appmanage/ui/ActivityClean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x21

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    const/16 p1, 0x12e

    .line 14
    .line 15
    invoke-static {p1, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v1, 0x82

    .line 20
    .line 21
    const/16 v3, 0x12d

    .line 22
    .line 23
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    invoke-static {v3, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/16 v1, 0x11

    .line 30
    .line 31
    if-ne p1, v1, :cond_2

    .line 32
    .line 33
    invoke-static {v3, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/16 p2, 0x42

    .line 38
    .line 39
    if-ne p1, p2, :cond_3

    .line 40
    .line 41
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityClean;->C:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const/4 v2, 0x0

    .line 48
    :goto_0
    return v2
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lua/y0;->b:Lcom/yunpan/appmanage/ui/ActivityClean;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->E:Lx9/t0;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lx9/z0;

    .line 10
    .line 11
    iget-boolean v0, p2, Lx9/z0;->b:Z

    .line 12
    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    iput-boolean v0, p2, Lx9/z0;->b:Z

    .line 16
    .line 17
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 18
    .line 19
    .line 20
    iget-object p3, p2, Lx9/z0;->c:Ljava/lang/String;

    .line 21
    .line 22
    const-string v0, "\u5b89\u88c5\u6b8b\u7559"

    .line 23
    .line 24
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-eqz p3, :cond_3

    .line 29
    .line 30
    iget-object p3, p2, Lx9/z0;->d:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "\u5185\u90e8\u5b58\u50a8"

    .line 33
    .line 34
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    :goto_0
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    if-ge v0, p3, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    check-cast p3, Lx9/z0;

    .line 52
    .line 53
    iget-object v1, p3, Lx9/z0;->f:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_0

    .line 60
    .line 61
    iget-object v1, p3, Lx9/z0;->f:Ljava/lang/String;

    .line 62
    .line 63
    sget-object v2, Lfa/g0;->a:Lfa/h0;

    .line 64
    .line 65
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    iget-boolean v1, p2, Lx9/z0;->b:Z

    .line 76
    .line 77
    iput-boolean v1, p3, Lx9/z0;->b:Z

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 80
    .line 81
    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-ge v0, p3, :cond_3

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    check-cast p3, Lx9/z0;

    .line 96
    .line 97
    iget-object v1, p3, Lx9/z0;->f:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_2

    .line 104
    .line 105
    iget-object v1, p3, Lx9/z0;->f:Ljava/lang/String;

    .line 106
    .line 107
    sget-object v2, Lfa/g0;->a:Lfa/h0;

    .line 108
    .line 109
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_2

    .line 118
    .line 119
    iget-boolean v1, p2, Lx9/z0;->b:Z

    .line 120
    .line 121
    iput-boolean v1, p3, Lx9/z0;->b:Z

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 124
    .line 125
    .line 126
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    return-void
.end method
