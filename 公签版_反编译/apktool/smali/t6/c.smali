.class public final Lt6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt6/b;

.field public final b:Lt6/b;

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lt6/b;

    .line 9
    .line 10
    invoke-direct {v2}, Lt6/b;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v1, Lt6/c;->b:Lt6/b;

    .line 14
    .line 15
    new-instance v8, Lt6/b;

    .line 16
    .line 17
    invoke-direct {v8}, Lt6/b;-><init>()V

    .line 18
    .line 19
    .line 20
    iget v2, v8, Lt6/b;->a:I

    .line 21
    .line 22
    const/4 v9, 0x2

    .line 23
    const/4 v10, 0x1

    .line 24
    const/4 v11, 0x0

    .line 25
    if-eqz v2, :cond_4

    .line 26
    .line 27
    const-string v3, "badge"

    .line 28
    .line 29
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eq v5, v9, :cond_1

    .line 42
    .line 43
    if-ne v5, v10, :cond_0

    .line 44
    .line 45
    :cond_1
    if-ne v5, v9, :cond_3

    .line 46
    .line 47
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 58
    .line 59
    .line 60
    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-interface {v2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    move-object v4, v2

    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 72
    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v5, "Must have a <"

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v3, "> start tag"

    .line 87
    .line 88
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v0

    .line 99
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 100
    .line 101
    const-string v3, "No start tag found"

    .line 102
    .line 103
    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    :goto_0
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    .line 108
    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v5, "Can\'t load badge resource ID #0x"

    .line 112
    .line 113
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v2, v4}, Lg/b;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-direct {v3, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 124
    .line 125
    .line 126
    throw v3

    .line 127
    :cond_4
    const/4 v2, 0x0

    .line 128
    move-object v4, v2

    .line 129
    const/4 v3, 0x0

    .line 130
    :goto_1
    if-nez v3, :cond_5

    .line 131
    .line 132
    const v2, 0x7f14048d

    .line 133
    .line 134
    .line 135
    const v6, 0x7f14048d

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_5
    move v6, v3

    .line 140
    :goto_2
    sget-object v5, Lq6/a;->a:[I

    .line 141
    .line 142
    new-array v7, v11, [I

    .line 143
    .line 144
    const v12, 0x7f040067

    .line 145
    .line 146
    .line 147
    move-object/from16 v2, p1

    .line 148
    .line 149
    move-object v3, v4

    .line 150
    move-object v4, v5

    .line 151
    move v5, v12

    .line 152
    invoke-static/range {v2 .. v7}, Lg7/l;->g(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    const/4 v4, 0x4

    .line 161
    const/4 v5, -0x1

    .line 162
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    int-to-float v6, v6

    .line 167
    iput v6, v1, Lt6/c;->c:F

    .line 168
    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    const v7, 0x7f0704ff

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    iput v6, v1, Lt6/c;->i:I

    .line 181
    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    const v7, 0x7f070502

    .line 187
    .line 188
    .line 189
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    iput v6, v1, Lt6/c;->j:I

    .line 194
    .line 195
    const/16 v6, 0xe

    .line 196
    .line 197
    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    int-to-float v7, v7

    .line 202
    iput v7, v1, Lt6/c;->d:F

    .line 203
    .line 204
    const v7, 0x7f07036f

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    const/16 v13, 0xc

    .line 212
    .line 213
    invoke-virtual {v2, v13, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    iput v12, v1, Lt6/c;->e:F

    .line 218
    .line 219
    const v12, 0x7f070373

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getDimension(I)F

    .line 223
    .line 224
    .line 225
    move-result v14

    .line 226
    const/16 v15, 0x11

    .line 227
    .line 228
    invoke-virtual {v2, v15, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 229
    .line 230
    .line 231
    move-result v14

    .line 232
    iput v14, v1, Lt6/c;->g:F

    .line 233
    .line 234
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 235
    .line 236
    .line 237
    move-result v7

    .line 238
    const/4 v14, 0x3

    .line 239
    invoke-virtual {v2, v14, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    iput v7, v1, Lt6/c;->f:F

    .line 244
    .line 245
    const/16 v7, 0xd

    .line 246
    .line 247
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getDimension(I)F

    .line 248
    .line 249
    .line 250
    move-result v12

    .line 251
    invoke-virtual {v2, v7, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    iput v7, v1, Lt6/c;->h:F

    .line 256
    .line 257
    const/16 v7, 0x18

    .line 258
    .line 259
    invoke-virtual {v2, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 260
    .line 261
    .line 262
    move-result v12

    .line 263
    iput v12, v1, Lt6/c;->k:I

    .line 264
    .line 265
    iget-object v12, v1, Lt6/c;->b:Lt6/b;

    .line 266
    .line 267
    iget v15, v8, Lt6/b;->i:I

    .line 268
    .line 269
    const/4 v7, -0x2

    .line 270
    if-ne v15, v7, :cond_6

    .line 271
    .line 272
    const/16 v15, 0xff

    .line 273
    .line 274
    :cond_6
    iput v15, v12, Lt6/b;->i:I

    .line 275
    .line 276
    iget v15, v8, Lt6/b;->k:I

    .line 277
    .line 278
    if-eq v15, v7, :cond_7

    .line 279
    .line 280
    iput v15, v12, Lt6/b;->k:I

    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_7
    const/16 v12, 0x17

    .line 284
    .line 285
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 286
    .line 287
    .line 288
    move-result v15

    .line 289
    if-eqz v15, :cond_8

    .line 290
    .line 291
    iget-object v5, v1, Lt6/c;->b:Lt6/b;

    .line 292
    .line 293
    invoke-virtual {v2, v12, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 294
    .line 295
    .line 296
    move-result v12

    .line 297
    iput v12, v5, Lt6/b;->k:I

    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_8
    iget-object v12, v1, Lt6/c;->b:Lt6/b;

    .line 301
    .line 302
    iput v5, v12, Lt6/b;->k:I

    .line 303
    .line 304
    :goto_3
    iget-object v5, v8, Lt6/b;->j:Ljava/lang/String;

    .line 305
    .line 306
    const/4 v12, 0x7

    .line 307
    if-eqz v5, :cond_9

    .line 308
    .line 309
    iget-object v15, v1, Lt6/c;->b:Lt6/b;

    .line 310
    .line 311
    iput-object v5, v15, Lt6/b;->j:Ljava/lang/String;

    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_9
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-eqz v5, :cond_a

    .line 319
    .line 320
    iget-object v5, v1, Lt6/c;->b:Lt6/b;

    .line 321
    .line 322
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v15

    .line 326
    iput-object v15, v5, Lt6/b;->j:Ljava/lang/String;

    .line 327
    .line 328
    :cond_a
    :goto_4
    iget-object v5, v1, Lt6/c;->b:Lt6/b;

    .line 329
    .line 330
    iget-object v15, v8, Lt6/b;->p:Ljava/lang/String;

    .line 331
    .line 332
    iput-object v15, v5, Lt6/b;->p:Ljava/lang/String;

    .line 333
    .line 334
    iget-object v15, v8, Lt6/b;->q:Ljava/lang/CharSequence;

    .line 335
    .line 336
    if-nez v15, :cond_b

    .line 337
    .line 338
    const v15, 0x7f13010f

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v15

    .line 345
    :cond_b
    iput-object v15, v5, Lt6/b;->q:Ljava/lang/CharSequence;

    .line 346
    .line 347
    iget-object v5, v1, Lt6/c;->b:Lt6/b;

    .line 348
    .line 349
    iget v15, v8, Lt6/b;->r:I

    .line 350
    .line 351
    if-nez v15, :cond_c

    .line 352
    .line 353
    const v15, 0x7f110002

    .line 354
    .line 355
    .line 356
    :cond_c
    iput v15, v5, Lt6/b;->r:I

    .line 357
    .line 358
    iget v15, v8, Lt6/b;->s:I

    .line 359
    .line 360
    if-nez v15, :cond_d

    .line 361
    .line 362
    const v15, 0x7f13011c

    .line 363
    .line 364
    .line 365
    :cond_d
    iput v15, v5, Lt6/b;->s:I

    .line 366
    .line 367
    iget-object v15, v8, Lt6/b;->v:Ljava/lang/Boolean;

    .line 368
    .line 369
    if-eqz v15, :cond_f

    .line 370
    .line 371
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 372
    .line 373
    .line 374
    move-result v15

    .line 375
    if-eqz v15, :cond_e

    .line 376
    .line 377
    goto :goto_5

    .line 378
    :cond_e
    const/4 v15, 0x0

    .line 379
    goto :goto_6

    .line 380
    :cond_f
    :goto_5
    const/4 v15, 0x1

    .line 381
    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 382
    .line 383
    .line 384
    move-result-object v15

    .line 385
    iput-object v15, v5, Lt6/b;->v:Ljava/lang/Boolean;

    .line 386
    .line 387
    iget-object v5, v1, Lt6/c;->b:Lt6/b;

    .line 388
    .line 389
    iget v15, v8, Lt6/b;->l:I

    .line 390
    .line 391
    const/16 v12, 0x15

    .line 392
    .line 393
    if-ne v15, v7, :cond_10

    .line 394
    .line 395
    invoke-virtual {v2, v12, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 396
    .line 397
    .line 398
    move-result v15

    .line 399
    :cond_10
    iput v15, v5, Lt6/b;->l:I

    .line 400
    .line 401
    iget-object v5, v1, Lt6/c;->b:Lt6/b;

    .line 402
    .line 403
    iget v15, v8, Lt6/b;->m:I

    .line 404
    .line 405
    if-ne v15, v7, :cond_11

    .line 406
    .line 407
    const/16 v15, 0x16

    .line 408
    .line 409
    invoke-virtual {v2, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 410
    .line 411
    .line 412
    move-result v15

    .line 413
    :cond_11
    iput v15, v5, Lt6/b;->m:I

    .line 414
    .line 415
    iget-object v5, v1, Lt6/c;->b:Lt6/b;

    .line 416
    .line 417
    iget-object v7, v8, Lt6/b;->e:Ljava/lang/Integer;

    .line 418
    .line 419
    const v15, 0x7f140196

    .line 420
    .line 421
    .line 422
    const/4 v12, 0x5

    .line 423
    if-nez v7, :cond_12

    .line 424
    .line 425
    invoke-virtual {v2, v12, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 426
    .line 427
    .line 428
    move-result v7

    .line 429
    goto :goto_7

    .line 430
    :cond_12
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 431
    .line 432
    .line 433
    move-result v7

    .line 434
    :goto_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    iput-object v7, v5, Lt6/b;->e:Ljava/lang/Integer;

    .line 439
    .line 440
    iget-object v5, v1, Lt6/c;->b:Lt6/b;

    .line 441
    .line 442
    iget-object v7, v8, Lt6/b;->f:Ljava/lang/Integer;

    .line 443
    .line 444
    const/4 v6, 0x6

    .line 445
    if-nez v7, :cond_13

    .line 446
    .line 447
    invoke-virtual {v2, v6, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 448
    .line 449
    .line 450
    move-result v7

    .line 451
    goto :goto_8

    .line 452
    :cond_13
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 453
    .line 454
    .line 455
    move-result v7

    .line 456
    :goto_8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v7

    .line 460
    iput-object v7, v5, Lt6/b;->f:Ljava/lang/Integer;

    .line 461
    .line 462
    iget-object v5, v1, Lt6/c;->b:Lt6/b;

    .line 463
    .line 464
    iget-object v7, v8, Lt6/b;->g:Ljava/lang/Integer;

    .line 465
    .line 466
    if-nez v7, :cond_14

    .line 467
    .line 468
    const/16 v7, 0xf

    .line 469
    .line 470
    invoke-virtual {v2, v7, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 471
    .line 472
    .line 473
    move-result v7

    .line 474
    goto :goto_9

    .line 475
    :cond_14
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 476
    .line 477
    .line 478
    move-result v7

    .line 479
    :goto_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 480
    .line 481
    .line 482
    move-result-object v7

    .line 483
    iput-object v7, v5, Lt6/b;->g:Ljava/lang/Integer;

    .line 484
    .line 485
    iget-object v5, v1, Lt6/c;->b:Lt6/b;

    .line 486
    .line 487
    iget-object v7, v8, Lt6/b;->h:Ljava/lang/Integer;

    .line 488
    .line 489
    if-nez v7, :cond_15

    .line 490
    .line 491
    const/16 v7, 0x10

    .line 492
    .line 493
    invoke-virtual {v2, v7, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 494
    .line 495
    .line 496
    move-result v7

    .line 497
    goto :goto_a

    .line 498
    :cond_15
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 499
    .line 500
    .line 501
    move-result v7

    .line 502
    :goto_a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 503
    .line 504
    .line 505
    move-result-object v7

    .line 506
    iput-object v7, v5, Lt6/b;->h:Ljava/lang/Integer;

    .line 507
    .line 508
    iget-object v5, v1, Lt6/c;->b:Lt6/b;

    .line 509
    .line 510
    iget-object v7, v8, Lt6/b;->b:Ljava/lang/Integer;

    .line 511
    .line 512
    if-nez v7, :cond_16

    .line 513
    .line 514
    invoke-static {v0, v2, v10}, Lcom/bumptech/glide/c;->w(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 515
    .line 516
    .line 517
    move-result-object v7

    .line 518
    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 519
    .line 520
    .line 521
    move-result v7

    .line 522
    goto :goto_b

    .line 523
    :cond_16
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 524
    .line 525
    .line 526
    move-result v7

    .line 527
    :goto_b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    .line 529
    .line 530
    move-result-object v7

    .line 531
    iput-object v7, v5, Lt6/b;->b:Ljava/lang/Integer;

    .line 532
    .line 533
    iget-object v5, v1, Lt6/c;->b:Lt6/b;

    .line 534
    .line 535
    iget-object v7, v8, Lt6/b;->d:Ljava/lang/Integer;

    .line 536
    .line 537
    const/16 v15, 0x8

    .line 538
    .line 539
    if-nez v7, :cond_17

    .line 540
    .line 541
    const v7, 0x7f140241

    .line 542
    .line 543
    .line 544
    invoke-virtual {v2, v15, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 545
    .line 546
    .line 547
    move-result v7

    .line 548
    goto :goto_c

    .line 549
    :cond_17
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 550
    .line 551
    .line 552
    move-result v7

    .line 553
    :goto_c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 554
    .line 555
    .line 556
    move-result-object v7

    .line 557
    iput-object v7, v5, Lt6/b;->d:Ljava/lang/Integer;

    .line 558
    .line 559
    iget-object v5, v8, Lt6/b;->c:Ljava/lang/Integer;

    .line 560
    .line 561
    if-eqz v5, :cond_18

    .line 562
    .line 563
    iget-object v0, v1, Lt6/c;->b:Lt6/b;

    .line 564
    .line 565
    iput-object v5, v0, Lt6/b;->c:Ljava/lang/Integer;

    .line 566
    .line 567
    goto/16 :goto_e

    .line 568
    .line 569
    :cond_18
    const/16 v5, 0x9

    .line 570
    .line 571
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 572
    .line 573
    .line 574
    move-result v16

    .line 575
    if-eqz v16, :cond_19

    .line 576
    .line 577
    iget-object v4, v1, Lt6/c;->b:Lt6/b;

    .line 578
    .line 579
    invoke-static {v0, v2, v5}, Lcom/bumptech/glide/c;->w(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 584
    .line 585
    .line 586
    move-result v0

    .line 587
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    iput-object v0, v4, Lt6/b;->c:Ljava/lang/Integer;

    .line 592
    .line 593
    goto :goto_e

    .line 594
    :cond_19
    iget-object v7, v1, Lt6/c;->b:Lt6/b;

    .line 595
    .line 596
    iget-object v7, v7, Lt6/b;->d:Ljava/lang/Integer;

    .line 597
    .line 598
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 599
    .line 600
    .line 601
    move-result v7

    .line 602
    sget-object v5, Lq6/a;->A:[I

    .line 603
    .line 604
    invoke-virtual {v0, v7, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 605
    .line 606
    .line 607
    move-result-object v5

    .line 608
    const/4 v15, 0x0

    .line 609
    invoke-virtual {v5, v11, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 610
    .line 611
    .line 612
    invoke-static {v0, v5, v14}, Lcom/bumptech/glide/c;->w(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 613
    .line 614
    .line 615
    move-result-object v14

    .line 616
    invoke-static {v0, v5, v4}, Lcom/bumptech/glide/c;->w(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 617
    .line 618
    .line 619
    invoke-static {v0, v5, v12}, Lcom/bumptech/glide/c;->w(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 623
    .line 624
    .line 625
    invoke-virtual {v5, v10, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 626
    .line 627
    .line 628
    invoke-virtual {v5, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 629
    .line 630
    .line 631
    move-result v4

    .line 632
    if-eqz v4, :cond_1a

    .line 633
    .line 634
    goto :goto_d

    .line 635
    :cond_1a
    const/16 v13, 0xa

    .line 636
    .line 637
    :goto_d
    invoke-virtual {v5, v13, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 638
    .line 639
    .line 640
    invoke-virtual {v5, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    const/16 v4, 0xe

    .line 644
    .line 645
    invoke-virtual {v5, v4, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 646
    .line 647
    .line 648
    invoke-static {v0, v5, v6}, Lcom/bumptech/glide/c;->w(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 649
    .line 650
    .line 651
    const/4 v4, 0x7

    .line 652
    invoke-virtual {v5, v4, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 653
    .line 654
    .line 655
    const/16 v4, 0x8

    .line 656
    .line 657
    invoke-virtual {v5, v4, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 658
    .line 659
    .line 660
    const/16 v4, 0x9

    .line 661
    .line 662
    invoke-virtual {v5, v4, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 663
    .line 664
    .line 665
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 666
    .line 667
    .line 668
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 669
    .line 670
    const/16 v5, 0x15

    .line 671
    .line 672
    if-lt v4, v5, :cond_1b

    .line 673
    .line 674
    sget-object v4, Lq6/a;->r:[I

    .line 675
    .line 676
    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 681
    .line 682
    .line 683
    invoke-virtual {v0, v11, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 684
    .line 685
    .line 686
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 687
    .line 688
    .line 689
    :cond_1b
    iget-object v0, v1, Lt6/c;->b:Lt6/b;

    .line 690
    .line 691
    invoke-virtual {v14}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 692
    .line 693
    .line 694
    move-result v4

    .line 695
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 696
    .line 697
    .line 698
    move-result-object v4

    .line 699
    iput-object v4, v0, Lt6/b;->c:Ljava/lang/Integer;

    .line 700
    .line 701
    :goto_e
    iget-object v0, v1, Lt6/c;->b:Lt6/b;

    .line 702
    .line 703
    iget-object v4, v8, Lt6/b;->t:Ljava/lang/Integer;

    .line 704
    .line 705
    if-nez v4, :cond_1c

    .line 706
    .line 707
    const v4, 0x800035

    .line 708
    .line 709
    .line 710
    invoke-virtual {v2, v9, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 711
    .line 712
    .line 713
    move-result v4

    .line 714
    goto :goto_f

    .line 715
    :cond_1c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 716
    .line 717
    .line 718
    move-result v4

    .line 719
    :goto_f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 720
    .line 721
    .line 722
    move-result-object v4

    .line 723
    iput-object v4, v0, Lt6/b;->t:Ljava/lang/Integer;

    .line 724
    .line 725
    iget-object v0, v1, Lt6/c;->b:Lt6/b;

    .line 726
    .line 727
    iget-object v4, v8, Lt6/b;->w:Ljava/lang/Integer;

    .line 728
    .line 729
    if-nez v4, :cond_1d

    .line 730
    .line 731
    const v4, 0x7f070500

    .line 732
    .line 733
    .line 734
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 735
    .line 736
    .line 737
    move-result v4

    .line 738
    const/16 v5, 0xb

    .line 739
    .line 740
    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 741
    .line 742
    .line 743
    move-result v4

    .line 744
    goto :goto_10

    .line 745
    :cond_1d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 746
    .line 747
    .line 748
    move-result v4

    .line 749
    :goto_10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 750
    .line 751
    .line 752
    move-result-object v4

    .line 753
    iput-object v4, v0, Lt6/b;->w:Ljava/lang/Integer;

    .line 754
    .line 755
    iget-object v0, v1, Lt6/c;->b:Lt6/b;

    .line 756
    .line 757
    iget-object v4, v8, Lt6/b;->x:Ljava/lang/Integer;

    .line 758
    .line 759
    if-nez v4, :cond_1e

    .line 760
    .line 761
    const v4, 0x7f070375

    .line 762
    .line 763
    .line 764
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 765
    .line 766
    .line 767
    move-result v3

    .line 768
    const/16 v4, 0xa

    .line 769
    .line 770
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 771
    .line 772
    .line 773
    move-result v3

    .line 774
    goto :goto_11

    .line 775
    :cond_1e
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 776
    .line 777
    .line 778
    move-result v3

    .line 779
    :goto_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 780
    .line 781
    .line 782
    move-result-object v3

    .line 783
    iput-object v3, v0, Lt6/b;->x:Ljava/lang/Integer;

    .line 784
    .line 785
    iget-object v0, v1, Lt6/c;->b:Lt6/b;

    .line 786
    .line 787
    iget-object v3, v8, Lt6/b;->y:Ljava/lang/Integer;

    .line 788
    .line 789
    if-nez v3, :cond_1f

    .line 790
    .line 791
    const/16 v3, 0x12

    .line 792
    .line 793
    invoke-virtual {v2, v3, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 794
    .line 795
    .line 796
    move-result v3

    .line 797
    goto :goto_12

    .line 798
    :cond_1f
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 799
    .line 800
    .line 801
    move-result v3

    .line 802
    :goto_12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 803
    .line 804
    .line 805
    move-result-object v3

    .line 806
    iput-object v3, v0, Lt6/b;->y:Ljava/lang/Integer;

    .line 807
    .line 808
    iget-object v0, v1, Lt6/c;->b:Lt6/b;

    .line 809
    .line 810
    iget-object v3, v8, Lt6/b;->z:Ljava/lang/Integer;

    .line 811
    .line 812
    if-nez v3, :cond_20

    .line 813
    .line 814
    const/16 v3, 0x19

    .line 815
    .line 816
    invoke-virtual {v2, v3, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 817
    .line 818
    .line 819
    move-result v3

    .line 820
    goto :goto_13

    .line 821
    :cond_20
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 822
    .line 823
    .line 824
    move-result v3

    .line 825
    :goto_13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 826
    .line 827
    .line 828
    move-result-object v3

    .line 829
    iput-object v3, v0, Lt6/b;->z:Ljava/lang/Integer;

    .line 830
    .line 831
    iget-object v0, v1, Lt6/c;->b:Lt6/b;

    .line 832
    .line 833
    iget-object v3, v8, Lt6/b;->A:Ljava/lang/Integer;

    .line 834
    .line 835
    if-nez v3, :cond_21

    .line 836
    .line 837
    iget-object v3, v0, Lt6/b;->y:Ljava/lang/Integer;

    .line 838
    .line 839
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 840
    .line 841
    .line 842
    move-result v3

    .line 843
    const/16 v4, 0x13

    .line 844
    .line 845
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 846
    .line 847
    .line 848
    move-result v3

    .line 849
    goto :goto_14

    .line 850
    :cond_21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 851
    .line 852
    .line 853
    move-result v3

    .line 854
    :goto_14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 855
    .line 856
    .line 857
    move-result-object v3

    .line 858
    iput-object v3, v0, Lt6/b;->A:Ljava/lang/Integer;

    .line 859
    .line 860
    iget-object v0, v1, Lt6/c;->b:Lt6/b;

    .line 861
    .line 862
    iget-object v3, v8, Lt6/b;->B:Ljava/lang/Integer;

    .line 863
    .line 864
    if-nez v3, :cond_22

    .line 865
    .line 866
    iget-object v3, v0, Lt6/b;->z:Ljava/lang/Integer;

    .line 867
    .line 868
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 869
    .line 870
    .line 871
    move-result v3

    .line 872
    const/16 v4, 0x1a

    .line 873
    .line 874
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 875
    .line 876
    .line 877
    move-result v3

    .line 878
    goto :goto_15

    .line 879
    :cond_22
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 880
    .line 881
    .line 882
    move-result v3

    .line 883
    :goto_15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 884
    .line 885
    .line 886
    move-result-object v3

    .line 887
    iput-object v3, v0, Lt6/b;->B:Ljava/lang/Integer;

    .line 888
    .line 889
    iget-object v0, v1, Lt6/c;->b:Lt6/b;

    .line 890
    .line 891
    iget-object v3, v8, Lt6/b;->E:Ljava/lang/Integer;

    .line 892
    .line 893
    if-nez v3, :cond_23

    .line 894
    .line 895
    const/16 v3, 0x14

    .line 896
    .line 897
    invoke-virtual {v2, v3, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 898
    .line 899
    .line 900
    move-result v3

    .line 901
    goto :goto_16

    .line 902
    :cond_23
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 903
    .line 904
    .line 905
    move-result v3

    .line 906
    :goto_16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 907
    .line 908
    .line 909
    move-result-object v3

    .line 910
    iput-object v3, v0, Lt6/b;->E:Ljava/lang/Integer;

    .line 911
    .line 912
    iget-object v0, v1, Lt6/c;->b:Lt6/b;

    .line 913
    .line 914
    iget-object v3, v8, Lt6/b;->C:Ljava/lang/Integer;

    .line 915
    .line 916
    if-nez v3, :cond_24

    .line 917
    .line 918
    const/4 v3, 0x0

    .line 919
    goto :goto_17

    .line 920
    :cond_24
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 921
    .line 922
    .line 923
    move-result v3

    .line 924
    :goto_17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 925
    .line 926
    .line 927
    move-result-object v3

    .line 928
    iput-object v3, v0, Lt6/b;->C:Ljava/lang/Integer;

    .line 929
    .line 930
    iget-object v0, v1, Lt6/c;->b:Lt6/b;

    .line 931
    .line 932
    iget-object v3, v8, Lt6/b;->D:Ljava/lang/Integer;

    .line 933
    .line 934
    if-nez v3, :cond_25

    .line 935
    .line 936
    const/4 v3, 0x0

    .line 937
    goto :goto_18

    .line 938
    :cond_25
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 939
    .line 940
    .line 941
    move-result v3

    .line 942
    :goto_18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 943
    .line 944
    .line 945
    move-result-object v3

    .line 946
    iput-object v3, v0, Lt6/b;->D:Ljava/lang/Integer;

    .line 947
    .line 948
    iget-object v0, v1, Lt6/c;->b:Lt6/b;

    .line 949
    .line 950
    iget-object v3, v8, Lt6/b;->F:Ljava/lang/Boolean;

    .line 951
    .line 952
    if-nez v3, :cond_26

    .line 953
    .line 954
    invoke-virtual {v2, v11, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 955
    .line 956
    .line 957
    move-result v3

    .line 958
    goto :goto_19

    .line 959
    :cond_26
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 960
    .line 961
    .line 962
    move-result v3

    .line 963
    :goto_19
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 964
    .line 965
    .line 966
    move-result-object v3

    .line 967
    iput-object v3, v0, Lt6/b;->F:Ljava/lang/Boolean;

    .line 968
    .line 969
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 970
    .line 971
    .line 972
    iget-object v0, v8, Lt6/b;->n:Ljava/util/Locale;

    .line 973
    .line 974
    if-nez v0, :cond_28

    .line 975
    .line 976
    iget-object v0, v1, Lt6/c;->b:Lt6/b;

    .line 977
    .line 978
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 979
    .line 980
    const/16 v3, 0x18

    .line 981
    .line 982
    if-lt v2, v3, :cond_27

    .line 983
    .line 984
    invoke-static {}, Lq/t;->k()Ljava/util/Locale$Category;

    .line 985
    .line 986
    .line 987
    move-result-object v2

    .line 988
    invoke-static {v2}, Lq/t;->m(Ljava/util/Locale$Category;)Ljava/util/Locale;

    .line 989
    .line 990
    .line 991
    move-result-object v2

    .line 992
    goto :goto_1a

    .line 993
    :cond_27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 994
    .line 995
    .line 996
    move-result-object v2

    .line 997
    :goto_1a
    iput-object v2, v0, Lt6/b;->n:Ljava/util/Locale;

    .line 998
    .line 999
    goto :goto_1b

    .line 1000
    :cond_28
    iget-object v2, v1, Lt6/c;->b:Lt6/b;

    .line 1001
    .line 1002
    iput-object v0, v2, Lt6/b;->n:Ljava/util/Locale;

    .line 1003
    .line 1004
    :goto_1b
    iput-object v8, v1, Lt6/c;->a:Lt6/b;

    .line 1005
    .line 1006
    return-void
.end method
