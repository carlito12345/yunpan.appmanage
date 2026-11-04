.class public abstract Lu0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lqa/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqa/e;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Lqa/e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lu0/b;->a:Lqa/e;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Landroid/content/Context;Lkf/b;)Ld3/g;
    .locals 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "result_code"

    .line 4
    .line 5
    const-string v2, "font_italic"

    .line 6
    .line 7
    const-string v3, "font_weight"

    .line 8
    .line 9
    const-string v4, "font_ttc_index"

    .line 10
    .line 11
    const-string v5, "file_id"

    .line 12
    .line 13
    const-string v6, "_id"

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x1

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v10

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v11

    .line 25
    iget-object v12, v0, Lkf/b;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v12, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v10, v12, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v13

    .line 33
    if-eqz v13, :cond_11

    .line 34
    .line 35
    iget-object v14, v13, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v15, v0, Lkf/b;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v15, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v14

    .line 45
    if-eqz v14, :cond_10

    .line 46
    .line 47
    iget-object v12, v13, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    const/16 v14, 0x40

    .line 50
    .line 51
    invoke-virtual {v10, v12, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    iget-object v10, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 56
    .line 57
    new-instance v12, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    array-length v14, v10

    .line 63
    const/4 v15, 0x0

    .line 64
    :goto_0
    if-ge v15, v14, :cond_0

    .line 65
    .line 66
    aget-object v16, v10, v15

    .line 67
    .line 68
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    add-int/2addr v15, v9

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    sget-object v7, Lu0/b;->a:Lqa/e;

    .line 78
    .line 79
    invoke-static {v12, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 80
    .line 81
    .line 82
    iget-object v10, v0, Lkf/b;->e:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v10, Ljava/util/List;

    .line 85
    .line 86
    if-eqz v10, :cond_1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    invoke-static {v11, v8}, Lo0/b;->k(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    :goto_1
    const/4 v11, 0x0

    .line 94
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    if-ge v11, v14, :cond_4

    .line 99
    .line 100
    new-instance v14, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v16

    .line 106
    move-object/from16 v8, v16

    .line 107
    .line 108
    check-cast v8, Ljava/util/Collection;

    .line 109
    .line 110
    invoke-direct {v14, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v14, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v15

    .line 124
    if-eq v8, v15, :cond_2

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_2
    const/4 v8, 0x0

    .line 128
    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v15

    .line 132
    if-ge v8, v15, :cond_5

    .line 133
    .line 134
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v15

    .line 138
    check-cast v15, [B

    .line 139
    .line 140
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v17

    .line 144
    move-object/from16 v9, v17

    .line 145
    .line 146
    check-cast v9, [B

    .line 147
    .line 148
    invoke-static {v15, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    if-nez v9, :cond_3

    .line 153
    .line 154
    const/4 v9, 0x1

    .line 155
    :goto_4
    add-int/2addr v11, v9

    .line 156
    const/4 v8, 0x0

    .line 157
    goto :goto_2

    .line 158
    :cond_3
    const/4 v9, 0x1

    .line 159
    add-int/2addr v8, v9

    .line 160
    goto :goto_3

    .line 161
    :cond_4
    const/4 v13, 0x0

    .line 162
    :cond_5
    if-nez v13, :cond_6

    .line 163
    .line 164
    new-instance v0, Ld3/g;

    .line 165
    .line 166
    const/4 v1, 0x6

    .line 167
    const/4 v7, 0x0

    .line 168
    invoke-direct {v0, v9, v1, v7}, Ld3/g;-><init>(II[Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    return-object v0

    .line 172
    :cond_6
    const/4 v7, 0x0

    .line 173
    iget-object v8, v13, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 174
    .line 175
    new-instance v9, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .line 179
    .line 180
    new-instance v10, Landroid/net/Uri$Builder;

    .line 181
    .line 182
    invoke-direct {v10}, Landroid/net/Uri$Builder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v11, "content"

    .line 186
    .line 187
    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    invoke-virtual {v10, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    new-instance v12, Landroid/net/Uri$Builder;

    .line 200
    .line 201
    invoke-direct {v12}, Landroid/net/Uri$Builder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v12, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-virtual {v11, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    const-string v11, "file"

    .line 213
    .line 214
    invoke-virtual {v8, v11}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    const/4 v11, 0x7

    .line 223
    :try_start_0
    new-array v11, v11, [Ljava/lang/String;

    .line 224
    .line 225
    const/4 v12, 0x0

    .line 226
    aput-object v6, v11, v12

    .line 227
    .line 228
    const/4 v12, 0x1

    .line 229
    aput-object v5, v11, v12

    .line 230
    .line 231
    const/4 v12, 0x2

    .line 232
    aput-object v4, v11, v12

    .line 233
    .line 234
    const-string v12, "font_variation_settings"

    .line 235
    .line 236
    const/4 v13, 0x3

    .line 237
    aput-object v12, v11, v13

    .line 238
    .line 239
    const/4 v12, 0x4

    .line 240
    aput-object v3, v11, v12

    .line 241
    .line 242
    const/4 v12, 0x5

    .line 243
    aput-object v2, v11, v12

    .line 244
    .line 245
    const/4 v12, 0x6

    .line 246
    aput-object v1, v11, v12

    .line 247
    .line 248
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 249
    .line 250
    .line 251
    move-result-object v18

    .line 252
    const-string v21, "query = ?"

    .line 253
    .line 254
    iget-object v0, v0, Lkf/b;->d:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v0, Ljava/lang/String;

    .line 257
    .line 258
    const/4 v12, 0x1

    .line 259
    new-array v13, v12, [Ljava/lang/String;

    .line 260
    .line 261
    const/4 v12, 0x0

    .line 262
    aput-object v0, v13, v12

    .line 263
    .line 264
    const/16 v23, 0x0

    .line 265
    .line 266
    const/16 v24, 0x0

    .line 267
    .line 268
    move-object/from16 v19, v10

    .line 269
    .line 270
    move-object/from16 v20, v11

    .line 271
    .line 272
    move-object/from16 v22, v13

    .line 273
    .line 274
    invoke-static/range {v18 .. v24}, Lu0/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    .line 275
    .line 276
    .line 277
    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 278
    if-eqz v15, :cond_d

    .line 279
    .line 280
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-lez v0, :cond_d

    .line 285
    .line 286
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    new-instance v9, Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    :goto_5
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 316
    .line 317
    .line 318
    move-result v6

    .line 319
    if-eqz v6, :cond_d

    .line 320
    .line 321
    const/4 v6, -0x1

    .line 322
    if-eq v0, v6, :cond_7

    .line 323
    .line 324
    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 325
    .line 326
    .line 327
    move-result v12

    .line 328
    move/from16 v23, v12

    .line 329
    .line 330
    goto :goto_6

    .line 331
    :catchall_0
    move-exception v0

    .line 332
    goto :goto_c

    .line 333
    :cond_7
    const/16 v23, 0x0

    .line 334
    .line 335
    :goto_6
    if-eq v4, v6, :cond_8

    .line 336
    .line 337
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 338
    .line 339
    .line 340
    move-result v12

    .line 341
    move/from16 v20, v12

    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_8
    const/16 v20, 0x0

    .line 345
    .line 346
    :goto_7
    if-ne v5, v6, :cond_9

    .line 347
    .line 348
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 349
    .line 350
    .line 351
    move-result-wide v11

    .line 352
    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    :goto_8
    move-object/from16 v19, v7

    .line 357
    .line 358
    goto :goto_9

    .line 359
    :cond_9
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 360
    .line 361
    .line 362
    move-result-wide v11

    .line 363
    invoke-static {v8, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    goto :goto_8

    .line 368
    :goto_9
    if-eq v3, v6, :cond_a

    .line 369
    .line 370
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 371
    .line 372
    .line 373
    move-result v7

    .line 374
    move/from16 v21, v7

    .line 375
    .line 376
    goto :goto_a

    .line 377
    :cond_a
    const/16 v7, 0x190

    .line 378
    .line 379
    const/16 v21, 0x190

    .line 380
    .line 381
    :goto_a
    if-eq v2, v6, :cond_b

    .line 382
    .line 383
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    const/4 v7, 0x1

    .line 388
    if-ne v6, v7, :cond_c

    .line 389
    .line 390
    const/16 v22, 0x1

    .line 391
    .line 392
    goto :goto_b

    .line 393
    :cond_b
    const/4 v7, 0x1

    .line 394
    :cond_c
    const/16 v22, 0x0

    .line 395
    .line 396
    :goto_b
    new-instance v6, Lu0/g;

    .line 397
    .line 398
    move-object/from16 v18, v6

    .line 399
    .line 400
    invoke-direct/range {v18 .. v23}, Lu0/g;-><init>(Landroid/net/Uri;IIZI)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    .line 405
    .line 406
    goto :goto_5

    .line 407
    :cond_d
    if-eqz v15, :cond_e

    .line 408
    .line 409
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 410
    .line 411
    .line 412
    :cond_e
    const/4 v0, 0x0

    .line 413
    new-array v1, v0, [Lu0/g;

    .line 414
    .line 415
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    check-cast v1, [Lu0/g;

    .line 420
    .line 421
    new-instance v2, Ld3/g;

    .line 422
    .line 423
    const/4 v3, 0x6

    .line 424
    invoke-direct {v2, v0, v3, v1}, Ld3/g;-><init>(II[Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    return-object v2

    .line 428
    :catchall_1
    move-exception v0

    .line 429
    move-object v15, v7

    .line 430
    :goto_c
    if-eqz v15, :cond_f

    .line 431
    .line 432
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 433
    .line 434
    .line 435
    :cond_f
    throw v0

    .line 436
    :cond_10
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 437
    .line 438
    const-string v1, "Found content provider "

    .line 439
    .line 440
    const-string v2, ", but package was not "

    .line 441
    .line 442
    invoke-static {v1, v12, v2, v15}, Lta/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw v0

    .line 450
    :cond_11
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 451
    .line 452
    const-string v1, "No package found for authority: "

    .line 453
    .line 454
    invoke-static {v1, v12}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    goto :goto_e

    .line 462
    :goto_d
    throw v0

    .line 463
    :goto_e
    goto :goto_d
.end method
