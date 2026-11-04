.class public abstract Lwa/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/yunpan/appmanage/service/AccService;Lz7/s;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    :try_start_0
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-virtual {v4, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->init(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->isServiceConnnected()Z

    .line 20
    .line 21
    .line 22
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/desay_svautomotive/p023a/C0526b;->m218a()Lcom/desay_svautomotive/p023a/C0526b;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4, v0}, Lcom/desay_svautomotive/p023a/C0526b;->m230a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    nop

    .line 35
    :goto_0
    const/16 v4, 0x1388

    .line 36
    .line 37
    const-string v5, ""

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    const-string v7, "type"

    .line 41
    .line 42
    const/4 v8, 0x2

    .line 43
    const/4 v9, 0x0

    .line 44
    if-ne v2, v4, :cond_4

    .line 45
    .line 46
    invoke-virtual {v1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const-string v2, "uimode"

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroid/app/UiModeManager;

    .line 61
    .line 62
    const-string v4, "com.desay.setting.theme_auto_switch"

    .line 63
    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getNightMode()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-ne v1, v8, :cond_1

    .line 71
    .line 72
    const/4 v8, 0x1

    .line 73
    :cond_1
    move v1, v8

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    if-ne v1, v6, :cond_3

    .line 76
    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    .line 83
    .line 84
    goto/16 :goto_20

    .line 85
    .line 86
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0, v4, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v9}, Landroid/app/UiModeManager;->enableCarMode(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const/16 v2, 0x92

    .line 104
    .line 105
    sub-int/2addr v1, v3

    .line 106
    invoke-virtual {v0, v2, v1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendCarSettingValue(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    .line 108
    .line 109
    goto/16 :goto_20

    .line 110
    .line 111
    :catchall_1
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_20

    .line 132
    .line 133
    :cond_4
    const/16 v4, 0x1389

    .line 134
    .line 135
    const/16 v10, 0x1c

    .line 136
    .line 137
    if-ne v2, v4, :cond_e

    .line 138
    .line 139
    invoke-virtual {v1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    const/16 v1, 0x275b

    .line 148
    .line 149
    invoke-static {v1}, Lk/a;->a(I)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_5

    .line 154
    .line 155
    const-string v0, "\u60a8\u7684\u7231\u8f66\u6682\u4e0d\u652f\u6301\u7528\u7535\u4fdd\u6301\u6a21\u5f0f"

    .line 156
    .line 157
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_20

    .line 161
    .line 162
    :cond_5
    invoke-static {}, Lcom/desay_svautomotive/p023a/C0526b;->m218a()Lcom/desay_svautomotive/p023a/C0526b;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    const/16 v2, 0xa7

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Lcom/desay_svautomotive/p023a/C0526b;->m225a(I)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_6

    .line 173
    .line 174
    const-string v0, "\u5f53\u524d\u8f66\u673a\u672a\u51c6\u5907\u597d"

    .line 175
    .line 176
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_20

    .line 180
    .line 181
    :cond_6
    invoke-static {}, Lcom/desay_svautomotive/p023a/C0526b;->m218a()Lcom/desay_svautomotive/p023a/C0526b;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1, v3, v10}, Lcom/desay_svautomotive/p023a/C0526b;->m237b(II)[I

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-eqz v1, :cond_8

    .line 190
    .line 191
    array-length v2, v1

    .line 192
    if-ge v2, v8, :cond_7

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_7
    aget v2, v1, v9

    .line 196
    .line 197
    mul-int/lit16 v2, v2, 0x100

    .line 198
    .line 199
    aget v1, v1, v3

    .line 200
    .line 201
    add-int/2addr v2, v1

    .line 202
    int-to-float v1, v2

    .line 203
    const v2, 0x3dcccccd    # 0.1f

    .line 204
    .line 205
    .line 206
    mul-float v1, v1, v2

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_8
    :goto_2
    const/high16 v1, 0x42c80000    # 100.0f

    .line 210
    .line 211
    :goto_3
    const/high16 v2, 0x41a00000    # 20.0f

    .line 212
    .line 213
    cmpg-float v1, v1, v2

    .line 214
    .line 215
    if-gez v1, :cond_9

    .line 216
    .line 217
    const-string v0, "\u7535\u91cf\u8fc7\u4f4e\uff0c\u7981\u6b62\u7528\u7535\u4fdd\u6301"

    .line 218
    .line 219
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_20

    .line 223
    .line 224
    :cond_9
    :try_start_3
    invoke-static {}, Lcom/desay_svautomotive/p023a/C0526b;->m218a()Lcom/desay_svautomotive/p023a/C0526b;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    const/16 v2, 0xa8

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Lcom/desay_svautomotive/p023a/C0526b;->m225a(I)I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-ne v1, v3, :cond_a

    .line 235
    .line 236
    const/4 v9, 0x1

    .line 237
    :cond_a
    if-nez v0, :cond_c

    .line 238
    .line 239
    if-eqz v9, :cond_b

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_b
    const/4 v3, 0x2

    .line 243
    :goto_4
    move v0, v3

    .line 244
    :cond_c
    invoke-static {}, Lcom/desay_svautomotive/p023a/C0526b;->m218a()Lcom/desay_svautomotive/p023a/C0526b;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    const/16 v2, 0x7e

    .line 249
    .line 250
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/p023a/C0526b;->m238c(II)V

    .line 251
    .line 252
    .line 253
    if-ne v0, v8, :cond_d

    .line 254
    .line 255
    const-string v0, "\u7528\u7535\u4fdd\u6301\uff1a\u5f00"

    .line 256
    .line 257
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_20

    .line 261
    .line 262
    :catch_0
    move-exception v0

    .line 263
    goto :goto_5

    .line 264
    :cond_d
    const-string v0, "\u7528\u7535\u4fdd\u6301\uff1a\u5173"

    .line 265
    .line 266
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 267
    .line 268
    .line 269
    goto/16 :goto_20

    .line 270
    .line 271
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-static {v0, v1}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_20

    .line 280
    .line 281
    :cond_e
    const/16 v4, 0x138a

    .line 282
    .line 283
    const/16 v11, 0x16

    .line 284
    .line 285
    const/4 v12, -0x4

    .line 286
    const/16 v13, 0xa

    .line 287
    .line 288
    const/4 v15, -0x1

    .line 289
    const/4 v14, 0x5

    .line 290
    const/4 v5, 0x4

    .line 291
    if-ne v2, v4, :cond_5f

    .line 292
    .line 293
    const-string v0, "type1"

    .line 294
    .line 295
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    const-string v2, "type2"

    .line 304
    .line 305
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    const/16 v2, 0xc

    .line 314
    .line 315
    const/16 v4, 0x10

    .line 316
    .line 317
    if-nez v0, :cond_12

    .line 318
    .line 319
    if-ne v1, v15, :cond_10

    .line 320
    .line 321
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v0, v4, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-nez v0, :cond_f

    .line 330
    .line 331
    const/4 v3, 0x2

    .line 332
    :cond_f
    move v1, v3

    .line 333
    :cond_10
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v0, v6, v9, v1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 338
    .line 339
    .line 340
    if-ne v1, v8, :cond_11

    .line 341
    .line 342
    const-string v0, "\u7a7a\u8c03\uff1a\u5f00"

    .line 343
    .line 344
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_20

    .line 348
    .line 349
    :cond_11
    const-string v0, "\u7a7a\u8c03\uff1a\u5173"

    .line 350
    .line 351
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    goto/16 :goto_20

    .line 355
    .line 356
    :cond_12
    const-string v7, "\u8bf7\u5148\u6253\u5f00\u7a7a\u8c03"

    .line 357
    .line 358
    if-ne v0, v3, :cond_18

    .line 359
    .line 360
    invoke-static {}, Lwa/d;->b()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-nez v0, :cond_13

    .line 365
    .line 366
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_20

    .line 370
    .line 371
    :cond_13
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {v0, v4, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-ne v1, v15, :cond_14

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_14
    if-ne v1, v3, :cond_15

    .line 383
    .line 384
    if-eq v0, v3, :cond_16

    .line 385
    .line 386
    goto/16 :goto_20

    .line 387
    .line 388
    :cond_15
    if-ne v1, v8, :cond_16

    .line 389
    .line 390
    if-ne v0, v3, :cond_16

    .line 391
    .line 392
    goto/16 :goto_20

    .line 393
    .line 394
    :cond_16
    :goto_6
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v1, v4, v13, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 399
    .line 400
    .line 401
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-virtual {v1, v4, v13, v9}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 406
    .line 407
    .line 408
    if-ne v0, v3, :cond_17

    .line 409
    .line 410
    const-string v0, "AC\u5236\u51b7\uff1a\u5173"

    .line 411
    .line 412
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_20

    .line 416
    .line 417
    :cond_17
    const-string v0, "AC\u5236\u51b7\uff1a\u5f00"

    .line 418
    .line 419
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    goto/16 :goto_20

    .line 423
    .line 424
    :cond_18
    if-ne v0, v8, :cond_1e

    .line 425
    .line 426
    invoke-static {}, Lwa/d;->b()Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-nez v0, :cond_19

    .line 431
    .line 432
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 433
    .line 434
    .line 435
    goto/16 :goto_20

    .line 436
    .line 437
    :cond_19
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v0, v4, v6}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    if-ne v1, v15, :cond_1a

    .line 446
    .line 447
    goto :goto_7

    .line 448
    :cond_1a
    if-ne v1, v3, :cond_1b

    .line 449
    .line 450
    if-eq v0, v3, :cond_1c

    .line 451
    .line 452
    goto/16 :goto_20

    .line 453
    .line 454
    :cond_1b
    if-ne v1, v8, :cond_1c

    .line 455
    .line 456
    if-ne v0, v3, :cond_1c

    .line 457
    .line 458
    goto/16 :goto_20

    .line 459
    .line 460
    :cond_1c
    :goto_7
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    const/16 v2, 0x1e

    .line 465
    .line 466
    invoke-virtual {v1, v4, v2, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 467
    .line 468
    .line 469
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-virtual {v1, v4, v2, v9}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 474
    .line 475
    .line 476
    if-ne v0, v3, :cond_1d

    .line 477
    .line 478
    const-string v0, "\u4e3b\u526f\u540c\u6b65\uff1a\u5173"

    .line 479
    .line 480
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    goto/16 :goto_20

    .line 484
    .line 485
    :cond_1d
    const-string v0, "\u4e3b\u526f\u540c\u6b65\uff1a\u5f00"

    .line 486
    .line 487
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    goto/16 :goto_20

    .line 491
    .line 492
    :cond_1e
    const/4 v9, 0x7

    .line 493
    if-ne v0, v6, :cond_23

    .line 494
    .line 495
    invoke-static {}, Lwa/d;->b()Z

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    if-nez v0, :cond_1f

    .line 500
    .line 501
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 502
    .line 503
    .line 504
    goto/16 :goto_20

    .line 505
    .line 506
    :cond_1f
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {v0, v4, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    const/16 v2, 0x18

    .line 515
    .line 516
    if-ne v1, v3, :cond_21

    .line 517
    .line 518
    if-lt v0, v9, :cond_20

    .line 519
    .line 520
    const-string v0, "\u5df2\u7ecf\u662f\u6700\u5927\u98ce\u901f\u4e86"

    .line 521
    .line 522
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 523
    .line 524
    .line 525
    goto/16 :goto_20

    .line 526
    .line 527
    :cond_20
    add-int/2addr v0, v3

    .line 528
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    invoke-virtual {v1, v4, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 533
    .line 534
    .line 535
    goto :goto_8

    .line 536
    :cond_21
    if-gt v0, v3, :cond_22

    .line 537
    .line 538
    const-string v0, "\u5df2\u7ecf\u662f\u6700\u4f4e\u98ce\u901f\u4e86"

    .line 539
    .line 540
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 541
    .line 542
    .line 543
    goto/16 :goto_20

    .line 544
    .line 545
    :cond_22
    add-int/2addr v0, v15

    .line 546
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    invoke-virtual {v1, v4, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 551
    .line 552
    .line 553
    :goto_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    iput v12, v1, Landroid/os/Message;->what:I

    .line 558
    .line 559
    const v2, 0x7f080261

    .line 560
    .line 561
    .line 562
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 563
    .line 564
    const-string v2, "\u98ce\u901f\uff1a"

    .line 565
    .line 566
    const-string v3, " \u6863"

    .line 567
    .line 568
    invoke-static {v2, v0, v3}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 573
    .line 574
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    iget-object v0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 579
    .line 580
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 581
    .line 582
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 583
    .line 584
    .line 585
    goto/16 :goto_20

    .line 586
    .line 587
    :cond_23
    if-ne v0, v5, :cond_28

    .line 588
    .line 589
    invoke-static {}, Lwa/d;->b()Z

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    if-nez v0, :cond_24

    .line 594
    .line 595
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_20

    .line 599
    .line 600
    :cond_24
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    invoke-virtual {v0, v4, v13}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    const/16 v2, 0x17

    .line 609
    .line 610
    if-ne v1, v3, :cond_26

    .line 611
    .line 612
    if-lt v0, v10, :cond_25

    .line 613
    .line 614
    const-string v0, "\u5df2\u7ecf\u662f\u6700\u9ad8\u6e29\u5ea6\u4e86"

    .line 615
    .line 616
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 617
    .line 618
    .line 619
    goto/16 :goto_20

    .line 620
    .line 621
    :cond_25
    add-int/2addr v0, v3

    .line 622
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    invoke-virtual {v1, v4, v11, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 627
    .line 628
    .line 629
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    invoke-virtual {v1, v4, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 634
    .line 635
    .line 636
    goto :goto_9

    .line 637
    :cond_26
    if-gtz v0, :cond_27

    .line 638
    .line 639
    const-string v0, "\u5df2\u7ecf\u662f\u6700\u4f4e\u6e29\u5ea6\u4e86"

    .line 640
    .line 641
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 642
    .line 643
    .line 644
    goto/16 :goto_20

    .line 645
    .line 646
    :cond_27
    add-int/2addr v0, v15

    .line 647
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    invoke-virtual {v1, v4, v11, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 652
    .line 653
    .line 654
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    invoke-virtual {v1, v4, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 659
    .line 660
    .line 661
    :goto_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    iput v12, v1, Landroid/os/Message;->what:I

    .line 666
    .line 667
    const v2, 0x7f0802e6

    .line 668
    .line 669
    .line 670
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 671
    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    .line 673
    .line 674
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 675
    .line 676
    .line 677
    int-to-float v0, v0

    .line 678
    const/high16 v3, 0x3f000000    # 0.5f

    .line 679
    .line 680
    mul-float v0, v0, v3

    .line 681
    .line 682
    const/high16 v3, 0x41900000    # 18.0f

    .line 683
    .line 684
    add-float/2addr v0, v3

    .line 685
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    const-string v0, "\u00b0c"

    .line 689
    .line 690
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 698
    .line 699
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    iget-object v0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 704
    .line 705
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 706
    .line 707
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 708
    .line 709
    .line 710
    goto/16 :goto_20

    .line 711
    .line 712
    :cond_28
    if-ne v0, v14, :cond_2e

    .line 713
    .line 714
    invoke-static {}, Lwa/d;->b()Z

    .line 715
    .line 716
    .line 717
    move-result v0

    .line 718
    if-nez v0, :cond_29

    .line 719
    .line 720
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 721
    .line 722
    .line 723
    goto/16 :goto_20

    .line 724
    .line 725
    :cond_29
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    const/16 v2, 0x8

    .line 730
    .line 731
    invoke-virtual {v0, v4, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 732
    .line 733
    .line 734
    move-result v0

    .line 735
    if-ne v1, v15, :cond_2b

    .line 736
    .line 737
    if-ne v0, v3, :cond_2a

    .line 738
    .line 739
    goto :goto_a

    .line 740
    :cond_2a
    const/4 v8, 0x1

    .line 741
    :goto_a
    move v1, v8

    .line 742
    goto :goto_b

    .line 743
    :cond_2b
    if-ne v1, v0, :cond_2c

    .line 744
    .line 745
    goto/16 :goto_20

    .line 746
    .line 747
    :cond_2c
    :goto_b
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    invoke-virtual {v2, v6, v6, v1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 752
    .line 753
    .line 754
    if-ne v0, v3, :cond_2d

    .line 755
    .line 756
    const-string v0, "\u5916\u5faa\u73af"

    .line 757
    .line 758
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    goto/16 :goto_20

    .line 762
    .line 763
    :cond_2d
    const-string v0, "\u5185\u5faa\u73af"

    .line 764
    .line 765
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    goto/16 :goto_20

    .line 769
    .line 770
    :cond_2e
    const/4 v7, 0x6

    .line 771
    if-ne v0, v7, :cond_3c

    .line 772
    .line 773
    invoke-static {}, Lwa/d;->b()Z

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    if-nez v0, :cond_2f

    .line 778
    .line 779
    const-string v0, "\u7a7a\u8c03\u672a\u5f00\u542f"

    .line 780
    .line 781
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 782
    .line 783
    .line 784
    goto/16 :goto_20

    .line 785
    .line 786
    :cond_2f
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    invoke-virtual {v0, v4, v7}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 791
    .line 792
    .line 793
    move-result v0

    .line 794
    const/16 v2, 0x1a

    .line 795
    .line 796
    const/16 v7, 0x19

    .line 797
    .line 798
    const/16 v9, 0x1d

    .line 799
    .line 800
    const/16 v11, 0x1b

    .line 801
    .line 802
    if-ne v1, v15, :cond_35

    .line 803
    .line 804
    if-ne v0, v3, :cond_31

    .line 805
    .line 806
    :cond_30
    const/16 v1, 0x1b

    .line 807
    .line 808
    goto :goto_c

    .line 809
    :cond_31
    if-ne v0, v8, :cond_32

    .line 810
    .line 811
    const/16 v1, 0x1c

    .line 812
    .line 813
    goto :goto_c

    .line 814
    :cond_32
    if-ne v0, v6, :cond_33

    .line 815
    .line 816
    const/16 v1, 0x1d

    .line 817
    .line 818
    goto :goto_c

    .line 819
    :cond_33
    if-ne v0, v5, :cond_34

    .line 820
    .line 821
    const/16 v1, 0x19

    .line 822
    .line 823
    goto :goto_c

    .line 824
    :cond_34
    if-ne v0, v14, :cond_30

    .line 825
    .line 826
    const/16 v1, 0x1a

    .line 827
    .line 828
    :cond_35
    :goto_c
    if-ne v0, v1, :cond_36

    .line 829
    .line 830
    goto/16 :goto_20

    .line 831
    .line 832
    :cond_36
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    invoke-virtual {v0, v4, v1, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 837
    .line 838
    .line 839
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    const/4 v3, 0x0

    .line 844
    invoke-virtual {v0, v4, v1, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 845
    .line 846
    .line 847
    if-ne v1, v11, :cond_37

    .line 848
    .line 849
    const-string v0, "\u51fa\u98ce\u6a21\u5f0f\uff1a\u5439\u8138"

    .line 850
    .line 851
    goto :goto_d

    .line 852
    :cond_37
    if-ne v1, v10, :cond_38

    .line 853
    .line 854
    const-string v0, "\u51fa\u98ce\u6a21\u5f0f\uff1a\u5439\u8138\u3001\u5439\u811a"

    .line 855
    .line 856
    goto :goto_d

    .line 857
    :cond_38
    if-ne v1, v9, :cond_39

    .line 858
    .line 859
    const-string v0, "\u51fa\u98ce\u6a21\u5f0f\uff1a\u5439\u811a"

    .line 860
    .line 861
    goto :goto_d

    .line 862
    :cond_39
    if-ne v1, v7, :cond_3a

    .line 863
    .line 864
    const-string v0, "\u51fa\u98ce\u6a21\u5f0f\uff1a\u5439\u811a\u3001\u9664\u971c"

    .line 865
    .line 866
    goto :goto_d

    .line 867
    :cond_3a
    if-ne v1, v2, :cond_3b

    .line 868
    .line 869
    const-string v0, "\u51fa\u98ce\u6a21\u5f0f\uff1a\u9664\u971c"

    .line 870
    .line 871
    goto :goto_d

    .line 872
    :cond_3b
    const-string v0, "\u5207\u6362\u51fa\u98ce\u6a21\u5f0f"

    .line 873
    .line 874
    :goto_d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 875
    .line 876
    .line 877
    move-result-object v1

    .line 878
    iput v12, v1, Landroid/os/Message;->what:I

    .line 879
    .line 880
    const v2, 0x7f0802ac

    .line 881
    .line 882
    .line 883
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 884
    .line 885
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 886
    .line 887
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    iget-object v0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 892
    .line 893
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 894
    .line 895
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 896
    .line 897
    .line 898
    goto/16 :goto_20

    .line 899
    .line 900
    :cond_3c
    if-ne v0, v9, :cond_41

    .line 901
    .line 902
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 903
    .line 904
    .line 905
    move-result-object v0

    .line 906
    const/4 v2, 0x0

    .line 907
    invoke-virtual {v0, v4, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 908
    .line 909
    .line 910
    move-result v0

    .line 911
    if-ne v1, v15, :cond_3d

    .line 912
    .line 913
    goto :goto_e

    .line 914
    :cond_3d
    if-ne v1, v3, :cond_3e

    .line 915
    .line 916
    if-eq v0, v3, :cond_3f

    .line 917
    .line 918
    goto/16 :goto_20

    .line 919
    .line 920
    :cond_3e
    if-ne v1, v8, :cond_3f

    .line 921
    .line 922
    if-ne v0, v3, :cond_3f

    .line 923
    .line 924
    goto/16 :goto_20

    .line 925
    .line 926
    :cond_3f
    :goto_e
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 927
    .line 928
    .line 929
    move-result-object v1

    .line 930
    invoke-virtual {v1, v4, v5, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 931
    .line 932
    .line 933
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 934
    .line 935
    .line 936
    move-result-object v1

    .line 937
    const/4 v2, 0x0

    .line 938
    invoke-virtual {v1, v4, v5, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 939
    .line 940
    .line 941
    if-ne v0, v3, :cond_40

    .line 942
    .line 943
    const-string v0, "\u540e\u89c6\u955c\u52a0\u70ed\uff1a\u5173"

    .line 944
    .line 945
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    goto/16 :goto_20

    .line 949
    .line 950
    :cond_40
    const-string v0, "\u540e\u89c6\u955c\u52a0\u70ed\uff1a\u5f00"

    .line 951
    .line 952
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    goto/16 :goto_20

    .line 956
    .line 957
    :cond_41
    const-string v4, "\uff1a"

    .line 958
    .line 959
    const-string v5, "\uff1a\u5173\u95ed"

    .line 960
    .line 961
    const/16 v7, 0x9

    .line 962
    .line 963
    const-string v10, "\u52a0\u70ed"

    .line 964
    .line 965
    const-string v11, "\u901a\u98ce"

    .line 966
    .line 967
    const/16 v12, 0x8

    .line 968
    .line 969
    if-eq v0, v12, :cond_51

    .line 970
    .line 971
    if-ne v0, v7, :cond_42

    .line 972
    .line 973
    goto/16 :goto_12

    .line 974
    .line 975
    :cond_42
    const/16 v7, 0xb

    .line 976
    .line 977
    if-eq v0, v13, :cond_43

    .line 978
    .line 979
    if-ne v0, v7, :cond_98

    .line 980
    .line 981
    :cond_43
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 982
    .line 983
    .line 984
    move-result-object v9

    .line 985
    if-ne v0, v13, :cond_44

    .line 986
    .line 987
    const/16 v12, 0xa

    .line 988
    .line 989
    goto :goto_f

    .line 990
    :cond_44
    const/16 v12, 0xb

    .line 991
    .line 992
    :goto_f
    invoke-virtual {v9, v12}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getCarSettingValue(I)I

    .line 993
    .line 994
    .line 995
    move-result v9

    .line 996
    if-ne v1, v15, :cond_49

    .line 997
    .line 998
    if-nez v9, :cond_45

    .line 999
    .line 1000
    goto :goto_10

    .line 1001
    :cond_45
    if-ne v9, v3, :cond_46

    .line 1002
    .line 1003
    const/4 v3, 0x2

    .line 1004
    goto :goto_10

    .line 1005
    :cond_46
    if-ne v9, v8, :cond_48

    .line 1006
    .line 1007
    :cond_47
    const/4 v3, 0x3

    .line 1008
    goto :goto_10

    .line 1009
    :cond_48
    const/4 v3, 0x0

    .line 1010
    goto :goto_10

    .line 1011
    :cond_49
    if-ne v1, v3, :cond_4a

    .line 1012
    .line 1013
    if-eqz v9, :cond_48

    .line 1014
    .line 1015
    goto/16 :goto_20

    .line 1016
    .line 1017
    :cond_4a
    if-ne v1, v8, :cond_4b

    .line 1018
    .line 1019
    if-ne v9, v6, :cond_47

    .line 1020
    .line 1021
    goto/16 :goto_20

    .line 1022
    .line 1023
    :cond_4b
    move v3, v1

    .line 1024
    :goto_10
    if-ne v0, v7, :cond_4c

    .line 1025
    .line 1026
    if-nez v3, :cond_4c

    .line 1027
    .line 1028
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v1

    .line 1032
    invoke-virtual {v1, v2, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendCarSettingValue(II)V

    .line 1033
    .line 1034
    .line 1035
    goto :goto_11

    .line 1036
    :cond_4c
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v1

    .line 1040
    if-ne v0, v13, :cond_4d

    .line 1041
    .line 1042
    const/16 v7, 0xa

    .line 1043
    .line 1044
    :cond_4d
    invoke-virtual {v1, v7, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendCarSettingValue(II)V

    .line 1045
    .line 1046
    .line 1047
    :goto_11
    const-string v1, "\u526f\u9a7e"

    .line 1048
    .line 1049
    if-nez v3, :cond_4f

    .line 1050
    .line 1051
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1054
    .line 1055
    .line 1056
    if-ne v0, v13, :cond_4e

    .line 1057
    .line 1058
    move-object v10, v11

    .line 1059
    :cond_4e
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    goto/16 :goto_20

    .line 1073
    .line 1074
    :cond_4f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    if-ne v0, v13, :cond_50

    .line 1080
    .line 1081
    move-object v10, v11

    .line 1082
    :cond_50
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v0

    .line 1095
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1096
    .line 1097
    .line 1098
    goto/16 :goto_20

    .line 1099
    .line 1100
    :cond_51
    :goto_12
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v2

    .line 1104
    const/16 v12, 0x8

    .line 1105
    .line 1106
    if-ne v0, v12, :cond_52

    .line 1107
    .line 1108
    const/4 v12, 0x7

    .line 1109
    goto :goto_13

    .line 1110
    :cond_52
    const/16 v12, 0x8

    .line 1111
    .line 1112
    :goto_13
    invoke-virtual {v2, v12}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getCarSettingValue(I)I

    .line 1113
    .line 1114
    .line 1115
    move-result v2

    .line 1116
    if-ne v1, v15, :cond_57

    .line 1117
    .line 1118
    if-nez v2, :cond_53

    .line 1119
    .line 1120
    goto :goto_14

    .line 1121
    :cond_53
    if-ne v2, v3, :cond_54

    .line 1122
    .line 1123
    const/4 v3, 0x2

    .line 1124
    goto :goto_14

    .line 1125
    :cond_54
    if-ne v2, v8, :cond_56

    .line 1126
    .line 1127
    :cond_55
    const/4 v3, 0x3

    .line 1128
    goto :goto_14

    .line 1129
    :cond_56
    const/4 v3, 0x0

    .line 1130
    goto :goto_14

    .line 1131
    :cond_57
    if-ne v1, v3, :cond_58

    .line 1132
    .line 1133
    if-eqz v2, :cond_56

    .line 1134
    .line 1135
    goto/16 :goto_20

    .line 1136
    .line 1137
    :cond_58
    if-ne v1, v8, :cond_59

    .line 1138
    .line 1139
    if-ne v2, v6, :cond_55

    .line 1140
    .line 1141
    goto/16 :goto_20

    .line 1142
    .line 1143
    :cond_59
    move v3, v1

    .line 1144
    :goto_14
    if-ne v0, v7, :cond_5a

    .line 1145
    .line 1146
    if-nez v3, :cond_5a

    .line 1147
    .line 1148
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v1

    .line 1152
    invoke-virtual {v1, v7, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendCarSettingValue(II)V

    .line 1153
    .line 1154
    .line 1155
    const/16 v2, 0x8

    .line 1156
    .line 1157
    goto :goto_16

    .line 1158
    :cond_5a
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v1

    .line 1162
    const/16 v2, 0x8

    .line 1163
    .line 1164
    if-ne v0, v2, :cond_5b

    .line 1165
    .line 1166
    goto :goto_15

    .line 1167
    :cond_5b
    const/16 v9, 0x8

    .line 1168
    .line 1169
    :goto_15
    invoke-virtual {v1, v9, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendCarSettingValue(II)V

    .line 1170
    .line 1171
    .line 1172
    :goto_16
    const-string v1, "\u4e3b\u9a7e"

    .line 1173
    .line 1174
    if-nez v3, :cond_5d

    .line 1175
    .line 1176
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    if-ne v0, v2, :cond_5c

    .line 1182
    .line 1183
    move-object v10, v11

    .line 1184
    :cond_5c
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v0

    .line 1194
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1195
    .line 1196
    .line 1197
    goto/16 :goto_20

    .line 1198
    .line 1199
    :cond_5d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1202
    .line 1203
    .line 1204
    if-ne v0, v2, :cond_5e

    .line 1205
    .line 1206
    move-object v10, v11

    .line 1207
    :cond_5e
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v0

    .line 1220
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1221
    .line 1222
    .line 1223
    goto/16 :goto_20

    .line 1224
    .line 1225
    :cond_5f
    const/16 v4, 0x138c

    .line 1226
    .line 1227
    const/16 v9, 0xf

    .line 1228
    .line 1229
    if-ne v2, v4, :cond_68

    .line 1230
    .line 1231
    invoke-virtual {v1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v0

    .line 1235
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 1236
    .line 1237
    .line 1238
    move-result v7

    .line 1239
    if-ne v7, v15, :cond_63

    .line 1240
    .line 1241
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v0

    .line 1245
    invoke-virtual {v0, v3, v11}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 1246
    .line 1247
    .line 1248
    move-result v0

    .line 1249
    if-ne v0, v8, :cond_60

    .line 1250
    .line 1251
    const/4 v7, 0x3

    .line 1252
    goto :goto_17

    .line 1253
    :cond_60
    if-ne v0, v6, :cond_61

    .line 1254
    .line 1255
    const/4 v7, 0x5

    .line 1256
    goto :goto_17

    .line 1257
    :cond_61
    if-ne v0, v14, :cond_62

    .line 1258
    .line 1259
    const/4 v7, 0x6

    .line 1260
    goto :goto_17

    .line 1261
    :cond_62
    const/4 v7, 0x2

    .line 1262
    :cond_63
    :goto_17
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v0

    .line 1266
    invoke-virtual {v0, v9, v7}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendNewEnergyValue(II)V

    .line 1267
    .line 1268
    .line 1269
    if-ne v7, v8, :cond_64

    .line 1270
    .line 1271
    const-string v0, "ECO \u6a21\u5f0f"

    .line 1272
    .line 1273
    goto :goto_18

    .line 1274
    :cond_64
    if-ne v7, v6, :cond_65

    .line 1275
    .line 1276
    const-string v0, "NORMAL \u6a21\u5f0f"

    .line 1277
    .line 1278
    goto :goto_18

    .line 1279
    :cond_65
    if-ne v7, v14, :cond_66

    .line 1280
    .line 1281
    const-string v0, "SPORT \u6a21\u5f0f"

    .line 1282
    .line 1283
    goto :goto_18

    .line 1284
    :cond_66
    const/4 v0, 0x6

    .line 1285
    if-ne v7, v0, :cond_67

    .line 1286
    .line 1287
    const-string v0, "I-PEDAL \u6a21\u5f0f"

    .line 1288
    .line 1289
    goto :goto_18

    .line 1290
    :cond_67
    const-string v0, "\u672a\u77e5\u6a21\u5f0f"

    .line 1291
    .line 1292
    :goto_18
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v1

    .line 1296
    iput v12, v1, Landroid/os/Message;->what:I

    .line 1297
    .line 1298
    const v2, 0x7f0802ab

    .line 1299
    .line 1300
    .line 1301
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1302
    .line 1303
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1304
    .line 1305
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v0

    .line 1309
    iget-object v0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 1310
    .line 1311
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 1312
    .line 1313
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1314
    .line 1315
    .line 1316
    goto/16 :goto_20

    .line 1317
    .line 1318
    :cond_68
    const/16 v4, 0x138d

    .line 1319
    .line 1320
    const/16 v10, 0x20

    .line 1321
    .line 1322
    if-ne v2, v4, :cond_6a

    .line 1323
    .line 1324
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v1

    .line 1328
    invoke-virtual {v1, v5, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 1329
    .line 1330
    .line 1331
    move-result v1

    .line 1332
    const-string v2, "EXTRA_DAY_NIGHT_MODE"

    .line 1333
    .line 1334
    const/16 v4, 0x2740

    .line 1335
    .line 1336
    const-string v5, "KEY_TYPE"

    .line 1337
    .line 1338
    const-string v6, "AUTONAVI_STANDARD_BROADCAST_RECV"

    .line 1339
    .line 1340
    if-ne v1, v3, :cond_69

    .line 1341
    .line 1342
    new-instance v1, Landroid/content/Intent;

    .line 1343
    .line 1344
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1354
    .line 1355
    .line 1356
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1360
    .line 1361
    .line 1362
    goto/16 :goto_20

    .line 1363
    .line 1364
    :cond_69
    new-instance v1, Landroid/content/Intent;

    .line 1365
    .line 1366
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1373
    .line 1374
    .line 1375
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1382
    .line 1383
    .line 1384
    goto/16 :goto_20

    .line 1385
    .line 1386
    :cond_6a
    const/16 v4, 0x138e

    .line 1387
    .line 1388
    const/16 v11, 0x14

    .line 1389
    .line 1390
    if-ne v2, v4, :cond_73

    .line 1391
    .line 1392
    invoke-virtual {v1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v0

    .line 1396
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 1397
    .line 1398
    .line 1399
    move-result v0

    .line 1400
    const-string v1, "\u5c3e\u95e8\uff1a\u5173"

    .line 1401
    .line 1402
    const-string v2, "\u5c3e\u95e8\uff1a\u5f00"

    .line 1403
    .line 1404
    const/16 v4, 0xf7

    .line 1405
    .line 1406
    if-nez v0, :cond_71

    .line 1407
    .line 1408
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v0

    .line 1412
    const/16 v7, 0xfe

    .line 1413
    .line 1414
    invoke-virtual {v0, v7}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getCarSettingValue(I)I

    .line 1415
    .line 1416
    .line 1417
    move-result v0

    .line 1418
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v7

    .line 1422
    const/16 v9, 0xfd

    .line 1423
    .line 1424
    invoke-virtual {v7, v9}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getCarSettingValue(I)I

    .line 1425
    .line 1426
    .line 1427
    move-result v7

    .line 1428
    if-nez v7, :cond_6b

    .line 1429
    .line 1430
    const-string v0, "\u5c3e\u95e8\u6682\u4e0d\u53ef\u63a7\u5236"

    .line 1431
    .line 1432
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1433
    .line 1434
    .line 1435
    goto/16 :goto_20

    .line 1436
    .line 1437
    :cond_6b
    if-ne v7, v8, :cond_6c

    .line 1438
    .line 1439
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v0

    .line 1443
    const/4 v1, 0x0

    .line 1444
    invoke-virtual {v0, v1, v4, v8}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 1445
    .line 1446
    .line 1447
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1448
    .line 1449
    .line 1450
    goto/16 :goto_20

    .line 1451
    .line 1452
    :cond_6c
    if-eq v7, v14, :cond_6d

    .line 1453
    .line 1454
    if-ne v7, v3, :cond_6e

    .line 1455
    .line 1456
    :cond_6d
    const/4 v5, 0x0

    .line 1457
    goto :goto_19

    .line 1458
    :cond_6e
    if-eq v7, v6, :cond_6f

    .line 1459
    .line 1460
    if-ne v7, v5, :cond_98

    .line 1461
    .line 1462
    :cond_6f
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v0

    .line 1466
    const/4 v5, 0x0

    .line 1467
    invoke-virtual {v0, v5, v4, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 1468
    .line 1469
    .line 1470
    const-string v0, "\u5c3e\u95e8\uff1a\u505c\u6b62"

    .line 1471
    .line 1472
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1473
    .line 1474
    .line 1475
    goto/16 :goto_20

    .line 1476
    .line 1477
    :goto_19
    if-ge v0, v11, :cond_70

    .line 1478
    .line 1479
    const-string v0, "\u5c3e\u95e8\u5f00\u5ea6\u5927\u4e8e20%\uff0c\u65b9\u53ef\u5173\u95ed\u5c3e\u95e8"

    .line 1480
    .line 1481
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1482
    .line 1483
    .line 1484
    goto/16 :goto_20

    .line 1485
    .line 1486
    :cond_70
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v0

    .line 1490
    invoke-virtual {v0, v5, v4, v6}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 1491
    .line 1492
    .line 1493
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1494
    .line 1495
    .line 1496
    goto/16 :goto_20

    .line 1497
    .line 1498
    :cond_71
    const/4 v5, 0x0

    .line 1499
    if-ne v0, v8, :cond_72

    .line 1500
    .line 1501
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v0

    .line 1505
    invoke-virtual {v0, v5, v4, v8}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 1506
    .line 1507
    .line 1508
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1509
    .line 1510
    .line 1511
    goto/16 :goto_20

    .line 1512
    .line 1513
    :cond_72
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v0

    .line 1517
    invoke-virtual {v0, v5, v4, v6}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 1518
    .line 1519
    .line 1520
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1521
    .line 1522
    .line 1523
    goto/16 :goto_20

    .line 1524
    .line 1525
    :cond_73
    const/16 v4, 0x138f

    .line 1526
    .line 1527
    const-string v12, "value"

    .line 1528
    .line 1529
    if-ne v2, v4, :cond_79

    .line 1530
    .line 1531
    invoke-virtual {v1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v0

    .line 1535
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 1536
    .line 1537
    .line 1538
    move-result v0

    .line 1539
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v2

    .line 1543
    invoke-virtual {v2, v11}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getClusterValue(I)I

    .line 1544
    .line 1545
    .line 1546
    move-result v2

    .line 1547
    add-int/lit8 v4, v2, 0x1

    .line 1548
    .line 1549
    if-nez v0, :cond_75

    .line 1550
    .line 1551
    invoke-virtual {v1, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v0

    .line 1555
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 1556
    .line 1557
    .line 1558
    move-result v0

    .line 1559
    if-ne v4, v0, :cond_74

    .line 1560
    .line 1561
    goto/16 :goto_20

    .line 1562
    .line 1563
    :cond_74
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v1

    .line 1567
    invoke-virtual {v1, v6, v10, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 1568
    .line 1569
    .line 1570
    goto/16 :goto_20

    .line 1571
    .line 1572
    :cond_75
    if-ne v0, v3, :cond_77

    .line 1573
    .line 1574
    const/16 v1, 0x8

    .line 1575
    .line 1576
    if-ne v4, v1, :cond_76

    .line 1577
    .line 1578
    const-string v0, "\u5df2\u662f\u6700\u5927\u4eae\u5ea6"

    .line 1579
    .line 1580
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1581
    .line 1582
    .line 1583
    goto/16 :goto_20

    .line 1584
    .line 1585
    :cond_76
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v0

    .line 1589
    add-int/2addr v2, v8

    .line 1590
    invoke-virtual {v0, v6, v10, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 1591
    .line 1592
    .line 1593
    goto/16 :goto_20

    .line 1594
    .line 1595
    :cond_77
    if-ne v0, v8, :cond_98

    .line 1596
    .line 1597
    if-ne v4, v3, :cond_78

    .line 1598
    .line 1599
    const-string v0, "\u5df2\u662f\u6700\u4f4e\u4eae\u5ea6"

    .line 1600
    .line 1601
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1602
    .line 1603
    .line 1604
    goto/16 :goto_20

    .line 1605
    .line 1606
    :cond_78
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v0

    .line 1610
    invoke-virtual {v0, v6, v10, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 1611
    .line 1612
    .line 1613
    goto/16 :goto_20

    .line 1614
    .line 1615
    :cond_79
    const/16 v4, 0x1392

    .line 1616
    .line 1617
    if-ne v2, v4, :cond_7b

    .line 1618
    .line 1619
    invoke-static {}, Lcom/desay_svautomotive/p023a/C0526b;->m218a()Lcom/desay_svautomotive/p023a/C0526b;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v0

    .line 1623
    const/16 v1, 0xa6

    .line 1624
    .line 1625
    invoke-virtual {v0, v1}, Lcom/desay_svautomotive/p023a/C0526b;->m225a(I)I

    .line 1626
    .line 1627
    .line 1628
    move-result v0

    .line 1629
    if-eq v0, v3, :cond_7a

    .line 1630
    .line 1631
    const-string v0, "\u5f53\u524d\u4e0d\u53ef\u5173\u95ed\u6574\u8f66\u7535\u6e90"

    .line 1632
    .line 1633
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1634
    .line 1635
    .line 1636
    goto/16 :goto_20

    .line 1637
    .line 1638
    :cond_7a
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v0

    .line 1642
    const/16 v1, 0x7d

    .line 1643
    .line 1644
    const/4 v2, 0x0

    .line 1645
    invoke-virtual {v0, v2, v1, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 1646
    .line 1647
    .line 1648
    goto/16 :goto_20

    .line 1649
    .line 1650
    :cond_7b
    const/16 v4, 0x1391

    .line 1651
    .line 1652
    if-ne v2, v4, :cond_7f

    .line 1653
    .line 1654
    const-string v0, "dsv_car_power"

    .line 1655
    .line 1656
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v0

    .line 1660
    sget v1, Lbb/b;->e:I

    .line 1661
    .line 1662
    const-string v1, "dsv.platformadapter.app.ICarStateManager"

    .line 1663
    .line 1664
    if-nez v0, :cond_7c

    .line 1665
    .line 1666
    const/4 v0, 0x0

    .line 1667
    goto :goto_1c

    .line 1668
    :cond_7c
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v2

    .line 1672
    if-eqz v2, :cond_7e

    .line 1673
    .line 1674
    instance-of v4, v2, Lbb/c;

    .line 1675
    .line 1676
    if-nez v4, :cond_7d

    .line 1677
    .line 1678
    goto :goto_1b

    .line 1679
    :cond_7d
    check-cast v2, Lbb/c;

    .line 1680
    .line 1681
    :goto_1a
    move-object v0, v2

    .line 1682
    goto :goto_1c

    .line 1683
    :cond_7e
    :goto_1b
    new-instance v2, Lbb/a;

    .line 1684
    .line 1685
    invoke-direct {v2, v0}, Lbb/a;-><init>(Landroid/os/IBinder;)V

    .line 1686
    .line 1687
    .line 1688
    goto :goto_1a

    .line 1689
    :goto_1c
    check-cast v0, Lbb/a;

    .line 1690
    .line 1691
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1692
    .line 1693
    .line 1694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v2

    .line 1698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v4

    .line 1702
    :try_start_4
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1703
    .line 1704
    .line 1705
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1706
    .line 1707
    .line 1708
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1709
    .line 1710
    .line 1711
    iget-object v0, v0, Lbb/a;->e:Landroid/os/IBinder;

    .line 1712
    .line 1713
    const/4 v1, 0x0

    .line 1714
    invoke-interface {v0, v11, v2, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1715
    .line 1716
    .line 1717
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1718
    .line 1719
    .line 1720
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1721
    .line 1722
    .line 1723
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1724
    .line 1725
    .line 1726
    goto/16 :goto_20

    .line 1727
    .line 1728
    :catchall_2
    move-exception v0

    .line 1729
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1730
    .line 1731
    .line 1732
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1733
    .line 1734
    .line 1735
    throw v0

    .line 1736
    :cond_7f
    const/16 v4, 0x1393

    .line 1737
    .line 1738
    if-ne v2, v4, :cond_80

    .line 1739
    .line 1740
    new-instance v1, Landroid/content/Intent;

    .line 1741
    .line 1742
    const-string v2, "com.desay_svautomotive.action.SET_SCREENSAVER_STATUS"

    .line 1743
    .line 1744
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1745
    .line 1746
    .line 1747
    const/4 v2, 0x0

    .line 1748
    invoke-virtual {v1, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1749
    .line 1750
    .line 1751
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1752
    .line 1753
    .line 1754
    goto/16 :goto_20

    .line 1755
    .line 1756
    :cond_80
    const/16 v0, 0x1390

    .line 1757
    .line 1758
    const/16 v4, 0xe

    .line 1759
    .line 1760
    if-ne v2, v0, :cond_88

    .line 1761
    .line 1762
    invoke-static {}, Lcom/desay_svautomotive/p023a/C0526b;->m218a()Lcom/desay_svautomotive/p023a/C0526b;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v0

    .line 1766
    invoke-virtual {v0, v5, v4}, Lcom/desay_svautomotive/p023a/C0526b;->m226a(II)I

    .line 1767
    .line 1768
    .line 1769
    move-result v0

    .line 1770
    if-eq v0, v8, :cond_81

    .line 1771
    .line 1772
    const-string v0, "\u8bf7\u542f\u52a8\u8f66\u8f86\u540e\u65b9\u53ef\u8fdb\u5165\u4f11\u606f\u6a21\u5f0f"

    .line 1773
    .line 1774
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1775
    .line 1776
    .line 1777
    goto/16 :goto_20

    .line 1778
    .line 1779
    :cond_81
    invoke-static {}, Lcom/desay_svautomotive/p023a/C0526b;->m218a()Lcom/desay_svautomotive/p023a/C0526b;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v0

    .line 1783
    const/16 v2, 0xb3

    .line 1784
    .line 1785
    invoke-virtual {v0, v2}, Lcom/desay_svautomotive/p023a/C0526b;->m225a(I)I

    .line 1786
    .line 1787
    .line 1788
    move-result v0

    .line 1789
    invoke-virtual {v1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v1

    .line 1793
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 1794
    .line 1795
    .line 1796
    move-result v1

    .line 1797
    if-nez v1, :cond_82

    .line 1798
    .line 1799
    if-ne v0, v8, :cond_84

    .line 1800
    .line 1801
    goto :goto_1d

    .line 1802
    :cond_82
    if-ne v1, v3, :cond_83

    .line 1803
    .line 1804
    if-eq v0, v8, :cond_86

    .line 1805
    .line 1806
    goto/16 :goto_20

    .line 1807
    .line 1808
    :cond_83
    if-ne v1, v8, :cond_85

    .line 1809
    .line 1810
    if-ne v0, v8, :cond_84

    .line 1811
    .line 1812
    goto/16 :goto_20

    .line 1813
    .line 1814
    :cond_84
    const/4 v3, 0x3

    .line 1815
    goto :goto_1d

    .line 1816
    :cond_85
    move v3, v1

    .line 1817
    :cond_86
    :goto_1d
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v0

    .line 1821
    const/16 v1, 0x4d

    .line 1822
    .line 1823
    const/4 v2, 0x0

    .line 1824
    invoke-virtual {v0, v2, v1, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 1825
    .line 1826
    .line 1827
    if-ne v3, v6, :cond_87

    .line 1828
    .line 1829
    const-string v0, "\u5f00\u542f\u4f11\u606f\u6a21\u5f0f"

    .line 1830
    .line 1831
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1832
    .line 1833
    .line 1834
    goto/16 :goto_20

    .line 1835
    .line 1836
    :cond_87
    const-string v0, "\u5173\u95ed\u4f11\u606f\u6a21\u5f0f"

    .line 1837
    .line 1838
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1839
    .line 1840
    .line 1841
    goto/16 :goto_20

    .line 1842
    .line 1843
    :cond_88
    const/16 v0, 0x1394

    .line 1844
    .line 1845
    if-ne v2, v0, :cond_8c

    .line 1846
    .line 1847
    const-string v0, "sys.vehicle.gac.system_status3"

    .line 1848
    .line 1849
    const/4 v1, 0x0

    .line 1850
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 1851
    .line 1852
    .line 1853
    move-result v0

    .line 1854
    if-eq v0, v3, :cond_89

    .line 1855
    .line 1856
    const-string v0, "sys.vehicle.gac.system_status5"

    .line 1857
    .line 1858
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 1859
    .line 1860
    .line 1861
    move-result v0

    .line 1862
    if-ne v0, v3, :cond_89

    .line 1863
    .line 1864
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v0

    .line 1868
    filled-new-array {v9}, [I

    .line 1869
    .line 1870
    .line 1871
    move-result-object v2

    .line 1872
    invoke-virtual {v0, v13, v1, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValues(II[I)Z

    .line 1873
    .line 1874
    .line 1875
    goto/16 :goto_20

    .line 1876
    .line 1877
    :cond_89
    :try_start_5
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v0

    .line 1881
    invoke-virtual {v0, v5, v4}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 1882
    .line 1883
    .line 1884
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1885
    if-eq v0, v8, :cond_8a

    .line 1886
    .line 1887
    if-ne v0, v6, :cond_8b

    .line 1888
    .line 1889
    :cond_8a
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1890
    .line 1891
    .line 1892
    move-result-object v0

    .line 1893
    const/16 v1, 0x56

    .line 1894
    .line 1895
    invoke-virtual {v0, v1, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendCarSettingValue(II)V

    .line 1896
    .line 1897
    .line 1898
    goto/16 :goto_20

    .line 1899
    .line 1900
    :catch_1
    :cond_8b
    const-string v0, "\u8bf7\u542f\u52a8\u8f66\u8f86\u540e\u64cd\u4f5c"

    .line 1901
    .line 1902
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1903
    .line 1904
    .line 1905
    goto/16 :goto_20

    .line 1906
    .line 1907
    :cond_8c
    const/16 v0, 0x1395

    .line 1908
    .line 1909
    if-ne v2, v0, :cond_94

    .line 1910
    .line 1911
    const/16 v0, 0x6a

    .line 1912
    .line 1913
    invoke-static {v0}, Lk/a;->a(I)I

    .line 1914
    .line 1915
    .line 1916
    move-result v0

    .line 1917
    if-nez v0, :cond_8d

    .line 1918
    .line 1919
    const-string v0, "\u6b64\u8f66\u673a\u4e0d\u5b58\u5728\u6b64\u529f\u80fd"

    .line 1920
    .line 1921
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1922
    .line 1923
    .line 1924
    goto/16 :goto_20

    .line 1925
    .line 1926
    :cond_8d
    invoke-virtual {v1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v0

    .line 1930
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 1931
    .line 1932
    .line 1933
    move-result v0

    .line 1934
    const/16 v1, 0x35

    .line 1935
    .line 1936
    if-ne v0, v15, :cond_90

    .line 1937
    .line 1938
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v0

    .line 1942
    const/4 v2, 0x0

    .line 1943
    invoke-virtual {v0, v2, v1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 1944
    .line 1945
    .line 1946
    move-result v0

    .line 1947
    if-ne v0, v3, :cond_8e

    .line 1948
    .line 1949
    goto :goto_1e

    .line 1950
    :cond_8e
    if-ne v0, v8, :cond_8f

    .line 1951
    .line 1952
    const/4 v6, 0x1

    .line 1953
    goto :goto_1e

    .line 1954
    :cond_8f
    const/4 v6, 0x2

    .line 1955
    goto :goto_1e

    .line 1956
    :cond_90
    const/4 v2, 0x0

    .line 1957
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1958
    .line 1959
    .line 1960
    move-result-object v4

    .line 1961
    invoke-virtual {v4, v2, v1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 1962
    .line 1963
    .line 1964
    move-result v1

    .line 1965
    if-ne v0, v1, :cond_91

    .line 1966
    .line 1967
    goto :goto_20

    .line 1968
    :cond_91
    move v6, v0

    .line 1969
    :goto_1e
    if-ne v6, v8, :cond_92

    .line 1970
    .line 1971
    const-string v0, "\u8f7b\u76c8\u6a21\u5f0f"

    .line 1972
    .line 1973
    goto :goto_1f

    .line 1974
    :cond_92
    if-ne v6, v3, :cond_93

    .line 1975
    .line 1976
    const-string v0, "\u8212\u9002\u6a21\u5f0f"

    .line 1977
    .line 1978
    goto :goto_1f

    .line 1979
    :cond_93
    const-string v0, "\u8fd0\u52a8\u6a21\u5f0f"

    .line 1980
    .line 1981
    :goto_1f
    const-string v1, "\u5207\u6362\u4e3a\uff1a"

    .line 1982
    .line 1983
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v0

    .line 1987
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1988
    .line 1989
    .line 1990
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1991
    .line 1992
    .line 1993
    move-result-object v0

    .line 1994
    const/16 v1, 0x38

    .line 1995
    .line 1996
    invoke-virtual {v0, v1, v6}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendCarSettingValue(II)V

    .line 1997
    .line 1998
    .line 1999
    goto :goto_20

    .line 2000
    :cond_94
    const/16 v0, 0x1396

    .line 2001
    .line 2002
    if-ne v2, v0, :cond_98

    .line 2003
    .line 2004
    invoke-virtual {v1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 2005
    .line 2006
    .line 2007
    move-result-object v0

    .line 2008
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 2009
    .line 2010
    .line 2011
    move-result v0

    .line 2012
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 2013
    .line 2014
    .line 2015
    move-result-object v1

    .line 2016
    const/16 v2, 0x8f

    .line 2017
    .line 2018
    const/4 v4, 0x0

    .line 2019
    invoke-virtual {v1, v4, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 2020
    .line 2021
    .line 2022
    move-result v1

    .line 2023
    if-ne v0, v8, :cond_96

    .line 2024
    .line 2025
    if-ne v1, v3, :cond_95

    .line 2026
    .line 2027
    goto :goto_20

    .line 2028
    :cond_95
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 2029
    .line 2030
    .line 2031
    move-result-object v1

    .line 2032
    iget v1, v1, Lcom/yunpan/appmanage/carsdk/e;->e:I

    .line 2033
    .line 2034
    if-lez v1, :cond_97

    .line 2035
    .line 2036
    goto :goto_20

    .line 2037
    :cond_96
    if-nez v1, :cond_97

    .line 2038
    .line 2039
    goto :goto_20

    .line 2040
    :cond_97
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 2041
    .line 2042
    .line 2043
    move-result-object v1

    .line 2044
    const/16 v2, 0x6f

    .line 2045
    .line 2046
    const/4 v3, 0x0

    .line 2047
    invoke-virtual {v1, v3, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 2048
    .line 2049
    .line 2050
    :catchall_3
    :cond_98
    :goto_20
    return-void
.end method

.method public static b()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    const/16 v2, 0xc

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method
