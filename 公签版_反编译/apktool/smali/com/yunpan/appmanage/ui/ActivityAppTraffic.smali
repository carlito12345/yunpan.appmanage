.class public Lcom/yunpan/appmanage/ui/ActivityAppTraffic;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic K:I


# instance fields
.field public C:Landroid/widget/TextView;

.field public D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public E:Lx9/z;

.field public F:Ljava/util/ArrayList;

.field public G:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public H:I

.field public I:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->F:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->H:I

    .line 13
    .line 14
    return-void
.end method

.method public static x(Lcom/yunpan/appmanage/ui/ActivityAppTraffic;Landroid/app/usage/NetworkStatsManager;Ljava/util/HashMap;Lmc/b;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->y()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    const-wide/32 v5, 0x6ddd00

    .line 15
    .line 16
    .line 17
    add-long/2addr v3, v5

    .line 18
    iget v5, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->H:I

    .line 19
    .line 20
    const/16 v6, 0xe

    .line 21
    .line 22
    const/16 v7, 0xd

    .line 23
    .line 24
    const/16 v8, 0xc

    .line 25
    .line 26
    const/16 v9, 0xb

    .line 27
    .line 28
    const/4 v10, 0x0

    .line 29
    const/4 v11, 0x1

    .line 30
    if-ne v5, v11, :cond_0

    .line 31
    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_0
    const/4 v12, 0x5

    .line 55
    const/4 v13, 0x2

    .line 56
    if-ne v5, v13, :cond_2

    .line 57
    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x7

    .line 63
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-ne v2, v11, :cond_1

    .line 68
    .line 69
    const/4 v2, -0x6

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    rsub-int/lit8 v2, v2, 0x2

    .line 72
    .line 73
    :goto_0
    invoke-virtual {v1, v12, v2}, Ljava/util/Calendar;->add(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v1

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    const/4 v13, 0x3

    .line 94
    if-ne v5, v13, :cond_3

    .line 95
    .line 96
    invoke-static {}, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->y()J

    .line 97
    .line 98
    .line 99
    move-result-wide v1

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    const/4 v13, 0x4

    .line 102
    const/4 v14, 0x6

    .line 103
    if-ne v5, v13, :cond_4

    .line 104
    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const/16 v2, -0x1e

    .line 110
    .line 111
    invoke-virtual {v1, v14, v2}, Ljava/util/Calendar;->add(II)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 127
    .line 128
    .line 129
    move-result-wide v1

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    if-ne v5, v12, :cond_5

    .line 132
    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const/4 v2, -0x1

    .line 138
    invoke-virtual {v1, v14, v2}, Ljava/util/Calendar;->add(II)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 154
    .line 155
    .line 156
    move-result-wide v1

    .line 157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v3, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 174
    .line 175
    .line 176
    move-result-wide v3

    .line 177
    const-wide/16 v5, 0x1

    .line 178
    .line 179
    sub-long/2addr v3, v5

    .line 180
    :cond_5
    :goto_1
    new-instance v5, Ljava/util/HashMap;

    .line 181
    .line 182
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 183
    .line 184
    .line 185
    const/4 v13, 0x1

    .line 186
    const/4 v14, 0x0

    .line 187
    move-object/from16 v12, p1

    .line 188
    .line 189
    move-wide v15, v1

    .line 190
    move-wide/from16 v17, v3

    .line 191
    .line 192
    invoke-virtual/range {v12 .. v18}, Landroid/app/usage/NetworkStatsManager;->queryDetails(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    if-nez v6, :cond_6

    .line 197
    .line 198
    const-string v0, "\u65e0\u670d\u52a1"

    .line 199
    .line 200
    move-object/from16 v7, p3

    .line 201
    .line 202
    invoke-static {v0, v7}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_b

    .line 206
    .line 207
    :cond_6
    move-object/from16 v7, p3

    .line 208
    .line 209
    new-instance v8, Landroid/app/usage/NetworkStats$Bucket;

    .line 210
    .line 211
    invoke-direct {v8}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 212
    .line 213
    .line 214
    :goto_2
    invoke-virtual {v6, v8}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    if-eqz v9, :cond_8

    .line 219
    .line 220
    invoke-virtual {v8}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    .line 221
    .line 222
    .line 223
    move-result-wide v12

    .line 224
    invoke-virtual {v8}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    .line 225
    .line 226
    .line 227
    move-result-wide v14

    .line 228
    add-long v24, v14, v12

    .line 229
    .line 230
    invoke-virtual {v8}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    check-cast v9, Lcom/yunpan/appmanage/bean/AppTrafficBean;

    .line 243
    .line 244
    if-nez v9, :cond_7

    .line 245
    .line 246
    new-instance v9, Lcom/yunpan/appmanage/bean/AppTrafficBean;

    .line 247
    .line 248
    invoke-virtual {v8}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    .line 249
    .line 250
    .line 251
    move-result v19

    .line 252
    const-string v18, ""

    .line 253
    .line 254
    const-wide/16 v20, 0x0

    .line 255
    .line 256
    const-string v17, ""

    .line 257
    .line 258
    move-object/from16 v16, v9

    .line 259
    .line 260
    move-wide/from16 v22, v24

    .line 261
    .line 262
    invoke-direct/range {v16 .. v25}, Lcom/yunpan/appmanage/bean/AppTrafficBean;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v8}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    .line 266
    .line 267
    .line 268
    move-result v12

    .line 269
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    invoke-virtual {v5, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_7
    iget-wide v12, v9, Lcom/yunpan/appmanage/bean/AppTrafficBean;->wifi:J

    .line 278
    .line 279
    add-long v12, v12, v24

    .line 280
    .line 281
    iput-wide v12, v9, Lcom/yunpan/appmanage/bean/AppTrafficBean;->wifi:J

    .line 282
    .line 283
    iget-wide v12, v9, Lcom/yunpan/appmanage/bean/AppTrafficBean;->count:J

    .line 284
    .line 285
    add-long v12, v12, v24

    .line 286
    .line 287
    iput-wide v12, v9, Lcom/yunpan/appmanage/bean/AppTrafficBean;->count:J

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_8
    invoke-virtual {v6}, Landroid/app/usage/NetworkStats;->close()V

    .line 291
    .line 292
    .line 293
    const/4 v13, 0x0

    .line 294
    const/4 v14, 0x0

    .line 295
    move-object/from16 v12, p1

    .line 296
    .line 297
    move-wide v15, v1

    .line 298
    move-wide/from16 v17, v3

    .line 299
    .line 300
    :try_start_0
    invoke-virtual/range {v12 .. v18}, Landroid/app/usage/NetworkStatsManager;->queryDetails(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    new-instance v8, Landroid/app/usage/NetworkStats$Bucket;

    .line 305
    .line 306
    invoke-direct {v8}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 307
    .line 308
    .line 309
    :goto_3
    invoke-virtual {v6, v8}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    if-eqz v9, :cond_a

    .line 314
    .line 315
    invoke-virtual {v8}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    .line 316
    .line 317
    .line 318
    move-result-wide v12

    .line 319
    invoke-virtual {v8}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    .line 320
    .line 321
    .line 322
    move-result-wide v14

    .line 323
    add-long v24, v12, v14

    .line 324
    .line 325
    invoke-virtual {v8}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v9

    .line 333
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v9

    .line 337
    check-cast v9, Lcom/yunpan/appmanage/bean/AppTrafficBean;

    .line 338
    .line 339
    if-nez v9, :cond_9

    .line 340
    .line 341
    new-instance v9, Lcom/yunpan/appmanage/bean/AppTrafficBean;

    .line 342
    .line 343
    const-string v17, ""

    .line 344
    .line 345
    const-string v18, ""

    .line 346
    .line 347
    invoke-virtual {v8}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    .line 348
    .line 349
    .line 350
    move-result v19

    .line 351
    const-wide/16 v22, 0x0

    .line 352
    .line 353
    move-object/from16 v16, v9

    .line 354
    .line 355
    move-wide/from16 v20, v24

    .line 356
    .line 357
    invoke-direct/range {v16 .. v25}, Lcom/yunpan/appmanage/bean/AppTrafficBean;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v8}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    .line 361
    .line 362
    .line 363
    move-result v12

    .line 364
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v12

    .line 368
    invoke-virtual {v5, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    goto :goto_3

    .line 372
    :cond_9
    iget-wide v12, v9, Lcom/yunpan/appmanage/bean/AppTrafficBean;->sim:J

    .line 373
    .line 374
    add-long v12, v12, v24

    .line 375
    .line 376
    iput-wide v12, v9, Lcom/yunpan/appmanage/bean/AppTrafficBean;->sim:J

    .line 377
    .line 378
    iget-wide v12, v9, Lcom/yunpan/appmanage/bean/AppTrafficBean;->count:J

    .line 379
    .line 380
    add-long v12, v12, v24

    .line 381
    .line 382
    iput-wide v12, v9, Lcom/yunpan/appmanage/bean/AppTrafficBean;->count:J

    .line 383
    .line 384
    goto :goto_3

    .line 385
    :cond_a
    invoke-virtual {v6}, Landroid/app/usage/NetworkStats;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .line 387
    .line 388
    goto/16 :goto_6

    .line 389
    .line 390
    :catch_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 399
    .line 400
    .line 401
    move-result v8

    .line 402
    if-eqz v8, :cond_d

    .line 403
    .line 404
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v8

    .line 408
    move-object v14, v8

    .line 409
    check-cast v14, Ljava/lang/String;

    .line 410
    .line 411
    const/4 v13, 0x0

    .line 412
    move-object/from16 v12, p1

    .line 413
    .line 414
    move-wide v15, v1

    .line 415
    move-wide/from16 v17, v3

    .line 416
    .line 417
    invoke-virtual/range {v12 .. v18}, Landroid/app/usage/NetworkStatsManager;->queryDetails(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;

    .line 418
    .line 419
    .line 420
    move-result-object v8

    .line 421
    new-instance v9, Landroid/app/usage/NetworkStats$Bucket;

    .line 422
    .line 423
    invoke-direct {v9}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 424
    .line 425
    .line 426
    :goto_5
    invoke-virtual {v8, v9}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 427
    .line 428
    .line 429
    move-result v12

    .line 430
    if-eqz v12, :cond_c

    .line 431
    .line 432
    invoke-virtual {v9}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    .line 433
    .line 434
    .line 435
    move-result-wide v12

    .line 436
    invoke-virtual {v9}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    .line 437
    .line 438
    .line 439
    move-result-wide v14

    .line 440
    add-long v24, v14, v12

    .line 441
    .line 442
    invoke-virtual {v9}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    .line 443
    .line 444
    .line 445
    move-result v12

    .line 446
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v12

    .line 450
    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v12

    .line 454
    check-cast v12, Lcom/yunpan/appmanage/bean/AppTrafficBean;

    .line 455
    .line 456
    if-nez v12, :cond_b

    .line 457
    .line 458
    new-instance v12, Lcom/yunpan/appmanage/bean/AppTrafficBean;

    .line 459
    .line 460
    invoke-virtual {v9}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    .line 461
    .line 462
    .line 463
    move-result v19

    .line 464
    const-string v18, ""

    .line 465
    .line 466
    const-wide/16 v22, 0x0

    .line 467
    .line 468
    const-string v17, ""

    .line 469
    .line 470
    move-object/from16 v16, v12

    .line 471
    .line 472
    move-wide/from16 v20, v24

    .line 473
    .line 474
    invoke-direct/range {v16 .. v25}, Lcom/yunpan/appmanage/bean/AppTrafficBean;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v9}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    .line 478
    .line 479
    .line 480
    move-result v13

    .line 481
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v13

    .line 485
    invoke-virtual {v5, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    goto :goto_5

    .line 489
    :cond_b
    iget-wide v13, v12, Lcom/yunpan/appmanage/bean/AppTrafficBean;->sim:J

    .line 490
    .line 491
    add-long v13, v13, v24

    .line 492
    .line 493
    iput-wide v13, v12, Lcom/yunpan/appmanage/bean/AppTrafficBean;->sim:J

    .line 494
    .line 495
    iget-wide v13, v12, Lcom/yunpan/appmanage/bean/AppTrafficBean;->count:J

    .line 496
    .line 497
    add-long v13, v13, v24

    .line 498
    .line 499
    iput-wide v13, v12, Lcom/yunpan/appmanage/bean/AppTrafficBean;->count:J

    .line 500
    .line 501
    goto :goto_5

    .line 502
    :cond_c
    invoke-virtual {v8}, Landroid/app/usage/NetworkStats;->close()V

    .line 503
    .line 504
    .line 505
    goto :goto_4

    .line 506
    :cond_d
    :goto_6
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    if-eqz v2, :cond_16

    .line 519
    .line 520
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    check-cast v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;

    .line 525
    .line 526
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-virtual {v3}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    iget v4, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->uid:I

    .line 535
    .line 536
    invoke-interface {v3, v4}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(I)Ljava/util/List;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    const-string v4, ")"

    .line 541
    .line 542
    if-eqz v3, :cond_11

    .line 543
    .line 544
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 545
    .line 546
    .line 547
    move-result v5

    .line 548
    if-eqz v5, :cond_e

    .line 549
    .line 550
    goto :goto_9

    .line 551
    :cond_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 552
    .line 553
    .line 554
    move-result v5

    .line 555
    if-ne v5, v11, :cond_f

    .line 556
    .line 557
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v4

    .line 561
    check-cast v4, Lcom/yunpan/appmanage/db/AppBean;

    .line 562
    .line 563
    iget-object v4, v4, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 564
    .line 565
    iput-object v4, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->name:Ljava/lang/String;

    .line 566
    .line 567
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    check-cast v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 572
    .line 573
    iget-object v3, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 574
    .line 575
    iput-object v3, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->packageName:Ljava/lang/String;

    .line 576
    .line 577
    iget-object v3, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->name:Ljava/lang/String;

    .line 578
    .line 579
    const-string v4, "Shell"

    .line 580
    .line 581
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    if-eqz v3, :cond_15

    .line 586
    .line 587
    const-string v3, "\u7cfb\u7edf\u8fdb\u7a0b(Shell)"

    .line 588
    .line 589
    iput-object v3, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->name:Ljava/lang/String;

    .line 590
    .line 591
    const-string v3, ""

    .line 592
    .line 593
    iput-object v3, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->packageName:Ljava/lang/String;

    .line 594
    .line 595
    goto :goto_7

    .line 596
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    const-string v6, "uid="

    .line 599
    .line 600
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    iget v6, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->uid:I

    .line 604
    .line 605
    const-string v8, "("

    .line 606
    .line 607
    invoke-static {v5, v6, v8}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v5

    .line 611
    iput-object v5, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->name:Ljava/lang/String;

    .line 612
    .line 613
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 618
    .line 619
    .line 620
    move-result v5

    .line 621
    if-eqz v5, :cond_10

    .line 622
    .line 623
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v5

    .line 627
    check-cast v5, Lcom/yunpan/appmanage/db/AppBean;

    .line 628
    .line 629
    new-instance v6, Ljava/lang/StringBuilder;

    .line 630
    .line 631
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    .line 633
    .line 634
    iget-object v8, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->name:Ljava/lang/String;

    .line 635
    .line 636
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    iget-object v5, v5, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 640
    .line 641
    const-string v8, ","

    .line 642
    .line 643
    invoke-static {v5, v8, v6}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v5

    .line 647
    iput-object v5, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->name:Ljava/lang/String;

    .line 648
    .line 649
    goto :goto_8

    .line 650
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 651
    .line 652
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    .line 654
    .line 655
    iget-object v5, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->name:Ljava/lang/String;

    .line 656
    .line 657
    invoke-static {v5, v4, v3}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v3

    .line 661
    iput-object v3, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->name:Ljava/lang/String;

    .line 662
    .line 663
    goto :goto_a

    .line 664
    :cond_11
    :goto_9
    iget v3, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->uid:I

    .line 665
    .line 666
    const/4 v5, -0x4

    .line 667
    if-ne v3, v5, :cond_12

    .line 668
    .line 669
    const-string v3, "\u5df2\u5378\u8f7d\u7684\u5e94\u7528(all)"

    .line 670
    .line 671
    iput-object v3, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->name:Ljava/lang/String;

    .line 672
    .line 673
    goto :goto_a

    .line 674
    :cond_12
    const v5, 0x186a0

    .line 675
    .line 676
    .line 677
    rem-int v5, v3, v5

    .line 678
    .line 679
    const/16 v6, 0x2710

    .line 680
    .line 681
    if-ge v5, v6, :cond_13

    .line 682
    .line 683
    new-instance v3, Ljava/lang/StringBuilder;

    .line 684
    .line 685
    const-string v5, "\u7cfb\u7edf\u8fdb\u7a0b(uid="

    .line 686
    .line 687
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    iget v5, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->uid:I

    .line 691
    .line 692
    invoke-static {v3, v5, v4}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v3

    .line 696
    iput-object v3, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->name:Ljava/lang/String;

    .line 697
    .line 698
    goto :goto_a

    .line 699
    :cond_13
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 700
    .line 701
    .line 702
    move-result v5

    .line 703
    if-ne v3, v5, :cond_14

    .line 704
    .line 705
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 706
    .line 707
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 708
    .line 709
    iget-object v4, v3, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 710
    .line 711
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 712
    .line 713
    .line 714
    move-result-object v4

    .line 715
    const v5, 0x7f13002f

    .line 716
    .line 717
    .line 718
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v4

    .line 722
    iput-object v4, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->name:Ljava/lang/String;

    .line 723
    .line 724
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 725
    .line 726
    iput-object v3, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->packageName:Ljava/lang/String;

    .line 727
    .line 728
    goto :goto_a

    .line 729
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 730
    .line 731
    const-string v5, "\u8fdb\u7a0b(uid="

    .line 732
    .line 733
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    iget v5, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->uid:I

    .line 737
    .line 738
    invoke-static {v3, v5, v4}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    iput-object v3, v2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->name:Ljava/lang/String;

    .line 743
    .line 744
    :cond_15
    :goto_a
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->F:Ljava/util/ArrayList;

    .line 745
    .line 746
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    goto/16 :goto_7

    .line 750
    .line 751
    :cond_16
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->F:Ljava/util/ArrayList;

    .line 752
    .line 753
    new-instance v1, Lqa/e;

    .line 754
    .line 755
    const/16 v2, 0x12

    .line 756
    .line 757
    invoke-direct {v1, v2}, Lqa/e;-><init>(I)V

    .line 758
    .line 759
    .line 760
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 761
    .line 762
    .line 763
    invoke-virtual/range {p3 .. p3}, Lmc/b;->b()V

    .line 764
    .line 765
    .line 766
    :goto_b
    return-void
.end method

.method public static y()J
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x5

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 8
    .line 9
    .line 10
    const/16 v1, 0xb

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 14
    .line 15
    .line 16
    const/16 v1, 0xc

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0xd

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 24
    .line 25
    .line 26
    const/16 v1, 0xe

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    return-wide v0
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->E:Lx9/z;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->E:Lx9/z;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->F:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 20
    .line 21
    .line 22
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0025

    return v0
.end method

.method public final u()V
    .locals 7

    .line 1
    const v0, 0x7f0b0517

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0b054a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->I:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    const v0, 0x7f0b05ba

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->C:Landroid/widget/TextView;

    .line 41
    .line 42
    const-string v1, "\u4eca\u65e5\u6d41\u91cf\u4f7f\u7528\u60c5\u51b5"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    const v0, 0x7f0b03ad

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lua/d0;

    .line 55
    .line 56
    const/4 v2, 0x3

    .line 57
    invoke-direct {v1, p0, v2}, Lua/d0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppTraffic;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const v0, 0x7f0b037d

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Lua/d0;

    .line 71
    .line 72
    const/4 v2, 0x4

    .line 73
    invoke-direct {v1, p0, v2}, Lua/d0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppTraffic;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    const v0, 0x7f0b0371

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/LinearLayout;

    .line 87
    .line 88
    new-instance v1, Lua/d0;

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-direct {v1, p0, v2}, Lua/d0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppTraffic;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    const v0, 0x7f0b03c9

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/widget/LinearLayout;

    .line 105
    .line 106
    new-instance v1, Lua/d0;

    .line 107
    .line 108
    const/4 v2, 0x1

    .line 109
    invoke-direct {v1, p0, v2}, Lua/d0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppTraffic;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    const v1, 0x7f0b03ee

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Landroid/widget/LinearLayout;

    .line 123
    .line 124
    new-instance v2, Lua/d0;

    .line 125
    .line 126
    const/4 v3, 0x2

    .line 127
    invoke-direct {v2, p0, v3}, Lua/d0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppTraffic;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    const v2, 0x7f0b03db

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Landroid/widget/TextView;

    .line 141
    .line 142
    new-instance v3, Landroid/widget/PopupMenu;

    .line 143
    .line 144
    iget-object v4, p0, Lda/g;->A:Lda/g;

    .line 145
    .line 146
    invoke-direct {v3, v4, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    const v5, 0x7f100005

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-virtual {v4, v5, v6}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 161
    .line 162
    .line 163
    new-instance v4, Lua/e0;

    .line 164
    .line 165
    invoke-direct {v4, p0, v0, v1}, Lua/e0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppTraffic;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 169
    .line 170
    .line 171
    new-instance v0, Lha/g9;

    .line 172
    .line 173
    const/16 v1, 0x1a

    .line 174
    .line 175
    invoke-direct {v0, v1, v3}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    .line 180
    .line 181
    const v0, 0x7f0b04f4

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 189
    .line 190
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 191
    .line 192
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 193
    .line 194
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 195
    .line 196
    const/4 v3, 0x1

    .line 197
    const/4 v4, 0x0

    .line 198
    invoke-direct {v1, v2, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 202
    .line 203
    .line 204
    new-instance v0, Lx9/z;

    .line 205
    .line 206
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 207
    .line 208
    iget v2, p0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->H:I

    .line 209
    .line 210
    invoke-direct {v0, v1, v2}, Lx9/z;-><init>(Lda/g;I)V

    .line 211
    .line 212
    .line 213
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->E:Lx9/z;

    .line 214
    .line 215
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 216
    .line 217
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 221
    .line 222
    new-instance v1, Lua/f0;

    .line 223
    .line 224
    invoke-direct {v1}, Lua/f0;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 231
    .line 232
    new-instance v1, Ltb/v;

    .line 233
    .line 234
    const/16 v2, 0x19

    .line 235
    .line 236
    invoke-direct {v1, v2}, Ltb/v;-><init>(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->z()V

    .line 243
    .line 244
    .line 245
    return-void
.end method

.method public final z()V
    .locals 12

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, ""

    .line 6
    .line 7
    const-string v4, "netstats"

    .line 8
    .line 9
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-static {v4}, Lr8/a;->d(Ljava/lang/Object;)Landroid/app/usage/NetworkStatsManager;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    new-instance v5, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v6, "phone"

    .line 23
    .line 24
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 29
    .line 30
    const-string v7, "telephony_subscription_service"

    .line 31
    .line 32
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-static {v7}, Ln0/e;->c(Ljava/lang/Object;)Landroid/telephony/SubscriptionManager;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    :try_start_0
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    if-eqz v8, :cond_0

    .line 45
    .line 46
    invoke-virtual {v5, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    :cond_0
    :try_start_1
    const-class v8, Landroid/telephony/TelephonyManager;

    .line 50
    .line 51
    const-string v9, "getSubscriberId"

    .line 52
    .line 53
    new-array v10, v1, [Ljava/lang/Class;

    .line 54
    .line 55
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 56
    .line 57
    aput-object v11, v10, v2

    .line 58
    .line 59
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    .line 61
    .line 62
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    goto :goto_0

    .line 64
    :catch_1
    const/4 v8, 0x0

    .line 65
    :goto_0
    invoke-static {v7}, Ln0/e;->e(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    if-eqz v7, :cond_3

    .line 70
    .line 71
    :try_start_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_3

    .line 80
    .line 81
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-static {v9}, Ln0/e;->b(Ljava/lang/Object;)Landroid/telephony/SubscriptionInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    .line 91
    const/16 v11, 0x18

    .line 92
    .line 93
    if-lt v10, v11, :cond_2

    .line 94
    .line 95
    invoke-static {v9}, Ln0/e;->a(Landroid/telephony/SubscriptionInfo;)I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    invoke-static {v6, v9}, Lq/t;->f(Landroid/telephony/TelephonyManager;I)Landroid/telephony/TelephonyManager;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    invoke-static {v9}, Ln0/e;->a(Landroid/telephony/SubscriptionInfo;)I

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    new-array v10, v1, [Ljava/lang/Object;

    .line 117
    .line 118
    aput-object v9, v10, v2

    .line 119
    .line 120
    invoke-virtual {v8, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    check-cast v9, Ljava/lang/String;

    .line 125
    .line 126
    :goto_2
    if-eqz v9, :cond_1

    .line 127
    .line 128
    invoke-virtual {v5, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catch_2
    :cond_3
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->F:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 135
    .line 136
    .line 137
    new-instance v1, Lcom/hjq/permissions/b;

    .line 138
    .line 139
    invoke-direct {v1, p0, v4, v5, v0}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 140
    .line 141
    .line 142
    new-instance v3, Lmc/c;

    .line 143
    .line 144
    invoke-direct {v3, v2, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 148
    .line 149
    invoke-virtual {v3, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    new-instance v2, Lka/c;

    .line 162
    .line 163
    invoke-direct {v2, v0, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method
