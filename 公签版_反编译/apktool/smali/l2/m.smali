.class public final Ll2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/r;


# static fields
.field public static final g:[I

.field public static final h:Lkf/d;

.field public static final i:Lkf/d;


# instance fields
.field public a:Lu7/y0;

.field public b:Z

.field public c:Lha/l2;

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    .line 10
    sput-object v0, Ll2/m;->g:[I

    .line 11
    .line 12
    new-instance v0, Lkf/d;

    .line 13
    .line 14
    new-instance v2, Lha/jd;

    .line 15
    .line 16
    const/16 v3, 0xd

    .line 17
    .line 18
    invoke-direct {v2, v3}, Lha/jd;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v2}, Lkf/d;-><init>(Lha/jd;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Ll2/m;->h:Lkf/d;

    .line 25
    .line 26
    new-instance v0, Lkf/d;

    .line 27
    .line 28
    new-instance v2, Lha/jd;

    .line 29
    .line 30
    invoke-direct {v2, v1}, Lha/jd;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v2}, Lkf/d;-><init>(Lha/jd;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Ll2/m;->i:Lkf/d;

    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lha/l2;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lha/l2;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ll2/m;->c:Lha/l2;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Ll2/m;->b:Z

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    iput v0, p0, Ll2/m;->d:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/net/Uri;Ljava/util/Map;)[Ll2/o;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/16 v7, 0xe

    .line 4
    .line 5
    const/16 v8, 0xd

    .line 6
    .line 7
    const/16 v9, 0xc

    .line 8
    .line 9
    const/16 v10, 0xb

    .line 10
    .line 11
    const/16 v11, 0xa

    .line 12
    .line 13
    const/16 v12, 0x9

    .line 14
    .line 15
    const/16 v13, 0x8

    .line 16
    .line 17
    const/4 v14, 0x7

    .line 18
    const/4 v15, 0x6

    .line 19
    const/16 v16, 0x5

    .line 20
    .line 21
    const/16 v17, 0x4

    .line 22
    .line 23
    const/16 v18, 0x3

    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/16 v3, 0x15

    .line 28
    .line 29
    const/16 v19, 0x1

    .line 30
    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 33
    .line 34
    sget-object v20, Ll2/m;->g:[I

    .line 35
    .line 36
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const-string v5, "Content-Type"

    .line 40
    .line 41
    move-object/from16 v6, p2

    .line 42
    .line 43
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Ljava/util/List;

    .line 48
    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Ljava/lang/String;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    const/4 v5, 0x0

    .line 66
    :goto_1
    if-nez v5, :cond_2

    .line 67
    .line 68
    :goto_2
    const/4 v7, -0x1

    .line 69
    goto/16 :goto_5

    .line 70
    .line 71
    :cond_2
    invoke-static {v5}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    sparse-switch v6, :sswitch_data_0

    .line 83
    .line 84
    .line 85
    :goto_3
    const/4 v5, -0x1

    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :sswitch_0
    const-string v6, "video/x-matroska"

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-nez v5, :cond_3

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    const/16 v5, 0x1f

    .line 98
    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :sswitch_1
    const-string v6, "audio/webm"

    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-nez v5, :cond_4

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    const/16 v5, 0x1e

    .line 111
    .line 112
    goto/16 :goto_4

    .line 113
    .line 114
    :sswitch_2
    const-string v6, "audio/mpeg"

    .line 115
    .line 116
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-nez v5, :cond_5

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_5
    const/16 v5, 0x1d

    .line 124
    .line 125
    goto/16 :goto_4

    .line 126
    .line 127
    :sswitch_3
    const-string v6, "audio/midi"

    .line 128
    .line 129
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-nez v5, :cond_6

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    const/16 v5, 0x1c

    .line 137
    .line 138
    goto/16 :goto_4

    .line 139
    .line 140
    :sswitch_4
    const-string v6, "audio/flac"

    .line 141
    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-nez v5, :cond_7

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    const/16 v5, 0x1b

    .line 150
    .line 151
    goto/16 :goto_4

    .line 152
    .line 153
    :sswitch_5
    const-string v6, "audio/eac3"

    .line 154
    .line 155
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-nez v5, :cond_8

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_8
    const/16 v5, 0x1a

    .line 163
    .line 164
    goto/16 :goto_4

    .line 165
    .line 166
    :sswitch_6
    const-string v6, "audio/3gpp"

    .line 167
    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-nez v5, :cond_9

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_9
    const/16 v5, 0x19

    .line 176
    .line 177
    goto/16 :goto_4

    .line 178
    .line 179
    :sswitch_7
    const-string v6, "video/mp4"

    .line 180
    .line 181
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-nez v5, :cond_a

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_a
    const/16 v5, 0x18

    .line 189
    .line 190
    goto/16 :goto_4

    .line 191
    .line 192
    :sswitch_8
    const-string v6, "audio/wav"

    .line 193
    .line 194
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-nez v5, :cond_b

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_b
    const/16 v5, 0x17

    .line 202
    .line 203
    goto/16 :goto_4

    .line 204
    .line 205
    :sswitch_9
    const-string v6, "audio/ogg"

    .line 206
    .line 207
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    if-nez v5, :cond_c

    .line 212
    .line 213
    goto/16 :goto_3

    .line 214
    .line 215
    :cond_c
    const/16 v5, 0x16

    .line 216
    .line 217
    goto/16 :goto_4

    .line 218
    .line 219
    :sswitch_a
    const-string v6, "audio/mp4"

    .line 220
    .line 221
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    if-nez v5, :cond_d

    .line 226
    .line 227
    goto/16 :goto_3

    .line 228
    .line 229
    :cond_d
    const/16 v5, 0x15

    .line 230
    .line 231
    goto/16 :goto_4

    .line 232
    .line 233
    :sswitch_b
    const-string v6, "audio/amr"

    .line 234
    .line 235
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-nez v5, :cond_e

    .line 240
    .line 241
    goto/16 :goto_3

    .line 242
    .line 243
    :cond_e
    const/16 v5, 0x14

    .line 244
    .line 245
    goto/16 :goto_4

    .line 246
    .line 247
    :sswitch_c
    const-string v6, "audio/ac4"

    .line 248
    .line 249
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    if-nez v5, :cond_f

    .line 254
    .line 255
    goto/16 :goto_3

    .line 256
    .line 257
    :cond_f
    const/16 v5, 0x13

    .line 258
    .line 259
    goto/16 :goto_4

    .line 260
    .line 261
    :sswitch_d
    const-string v6, "audio/ac3"

    .line 262
    .line 263
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    if-nez v5, :cond_10

    .line 268
    .line 269
    goto/16 :goto_3

    .line 270
    .line 271
    :cond_10
    const/16 v5, 0x12

    .line 272
    .line 273
    goto/16 :goto_4

    .line 274
    .line 275
    :sswitch_e
    const-string v6, "video/x-flv"

    .line 276
    .line 277
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    if-nez v5, :cond_11

    .line 282
    .line 283
    goto/16 :goto_3

    .line 284
    .line 285
    :cond_11
    const/16 v5, 0x11

    .line 286
    .line 287
    goto/16 :goto_4

    .line 288
    .line 289
    :sswitch_f
    const-string v6, "application/webm"

    .line 290
    .line 291
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    if-nez v5, :cond_12

    .line 296
    .line 297
    goto/16 :goto_3

    .line 298
    .line 299
    :cond_12
    const/16 v5, 0x10

    .line 300
    .line 301
    goto/16 :goto_4

    .line 302
    .line 303
    :sswitch_10
    const-string v6, "audio/x-matroska"

    .line 304
    .line 305
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    if-nez v5, :cond_13

    .line 310
    .line 311
    goto/16 :goto_3

    .line 312
    .line 313
    :cond_13
    const/16 v5, 0xf

    .line 314
    .line 315
    goto/16 :goto_4

    .line 316
    .line 317
    :sswitch_11
    const-string v6, "image/png"

    .line 318
    .line 319
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    if-nez v5, :cond_14

    .line 324
    .line 325
    goto/16 :goto_3

    .line 326
    .line 327
    :cond_14
    const/16 v5, 0xe

    .line 328
    .line 329
    goto/16 :goto_4

    .line 330
    .line 331
    :sswitch_12
    const-string v6, "image/bmp"

    .line 332
    .line 333
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    if-nez v5, :cond_15

    .line 338
    .line 339
    goto/16 :goto_3

    .line 340
    .line 341
    :cond_15
    const/16 v5, 0xd

    .line 342
    .line 343
    goto/16 :goto_4

    .line 344
    .line 345
    :sswitch_13
    const-string v6, "text/vtt"

    .line 346
    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    if-nez v5, :cond_16

    .line 352
    .line 353
    goto/16 :goto_3

    .line 354
    .line 355
    :cond_16
    const/16 v5, 0xc

    .line 356
    .line 357
    goto/16 :goto_4

    .line 358
    .line 359
    :sswitch_14
    const-string v6, "video/x-msvideo"

    .line 360
    .line 361
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    if-nez v5, :cond_17

    .line 366
    .line 367
    goto/16 :goto_3

    .line 368
    .line 369
    :cond_17
    const/16 v5, 0xb

    .line 370
    .line 371
    goto/16 :goto_4

    .line 372
    .line 373
    :sswitch_15
    const-string v6, "application/mp4"

    .line 374
    .line 375
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    if-nez v5, :cond_18

    .line 380
    .line 381
    goto/16 :goto_3

    .line 382
    .line 383
    :cond_18
    const/16 v5, 0xa

    .line 384
    .line 385
    goto/16 :goto_4

    .line 386
    .line 387
    :sswitch_16
    const-string v6, "image/webp"

    .line 388
    .line 389
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v5

    .line 393
    if-nez v5, :cond_19

    .line 394
    .line 395
    goto/16 :goto_3

    .line 396
    .line 397
    :cond_19
    const/16 v5, 0x9

    .line 398
    .line 399
    goto/16 :goto_4

    .line 400
    .line 401
    :sswitch_17
    const-string v6, "image/jpeg"

    .line 402
    .line 403
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    if-nez v5, :cond_1a

    .line 408
    .line 409
    goto/16 :goto_3

    .line 410
    .line 411
    :cond_1a
    const/16 v5, 0x8

    .line 412
    .line 413
    goto/16 :goto_4

    .line 414
    .line 415
    :sswitch_18
    const-string v6, "image/heif"

    .line 416
    .line 417
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    if-nez v5, :cond_1b

    .line 422
    .line 423
    goto/16 :goto_3

    .line 424
    .line 425
    :cond_1b
    const/4 v5, 0x7

    .line 426
    goto :goto_4

    .line 427
    :sswitch_19
    const-string v6, "image/heic"

    .line 428
    .line 429
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v5

    .line 433
    if-nez v5, :cond_1c

    .line 434
    .line 435
    goto/16 :goto_3

    .line 436
    .line 437
    :cond_1c
    const/4 v5, 0x6

    .line 438
    goto :goto_4

    .line 439
    :sswitch_1a
    const-string v6, "image/avif"

    .line 440
    .line 441
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    if-nez v5, :cond_1d

    .line 446
    .line 447
    goto/16 :goto_3

    .line 448
    .line 449
    :cond_1d
    const/4 v5, 0x5

    .line 450
    goto :goto_4

    .line 451
    :sswitch_1b
    const-string v6, "audio/amr-wb"

    .line 452
    .line 453
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v5

    .line 457
    if-nez v5, :cond_1e

    .line 458
    .line 459
    goto/16 :goto_3

    .line 460
    .line 461
    :cond_1e
    const/4 v5, 0x4

    .line 462
    goto :goto_4

    .line 463
    :sswitch_1c
    const-string v6, "video/webm"

    .line 464
    .line 465
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v5

    .line 469
    if-nez v5, :cond_1f

    .line 470
    .line 471
    goto/16 :goto_3

    .line 472
    .line 473
    :cond_1f
    const/4 v5, 0x3

    .line 474
    goto :goto_4

    .line 475
    :sswitch_1d
    const-string v6, "video/mp2t"

    .line 476
    .line 477
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v5

    .line 481
    if-nez v5, :cond_20

    .line 482
    .line 483
    goto/16 :goto_3

    .line 484
    .line 485
    :cond_20
    const/4 v5, 0x2

    .line 486
    goto :goto_4

    .line 487
    :sswitch_1e
    const-string v6, "video/mp2p"

    .line 488
    .line 489
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v5

    .line 493
    if-nez v5, :cond_21

    .line 494
    .line 495
    goto/16 :goto_3

    .line 496
    .line 497
    :cond_21
    const/4 v5, 0x1

    .line 498
    goto :goto_4

    .line 499
    :sswitch_1f
    const-string v6, "audio/eac3-joc"

    .line 500
    .line 501
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v5

    .line 505
    if-nez v5, :cond_22

    .line 506
    .line 507
    goto/16 :goto_3

    .line 508
    .line 509
    :cond_22
    const/4 v5, 0x0

    .line 510
    :goto_4
    packed-switch v5, :pswitch_data_0

    .line 511
    .line 512
    .line 513
    goto/16 :goto_2

    .line 514
    .line 515
    :pswitch_0
    const/4 v7, 0x7

    .line 516
    goto :goto_5

    .line 517
    :pswitch_1
    const/16 v7, 0xf

    .line 518
    .line 519
    goto :goto_5

    .line 520
    :pswitch_2
    const/4 v7, 0x4

    .line 521
    goto :goto_5

    .line 522
    :pswitch_3
    const/16 v7, 0xc

    .line 523
    .line 524
    goto :goto_5

    .line 525
    :pswitch_4
    const/16 v7, 0x9

    .line 526
    .line 527
    goto :goto_5

    .line 528
    :pswitch_5
    const/4 v7, 0x1

    .line 529
    goto :goto_5

    .line 530
    :pswitch_6
    const/4 v7, 0x5

    .line 531
    goto :goto_5

    .line 532
    :pswitch_7
    const/16 v7, 0x11

    .line 533
    .line 534
    goto :goto_5

    .line 535
    :pswitch_8
    const/16 v7, 0x13

    .line 536
    .line 537
    goto :goto_5

    .line 538
    :pswitch_9
    const/16 v7, 0xd

    .line 539
    .line 540
    goto :goto_5

    .line 541
    :pswitch_a
    const/16 v7, 0x10

    .line 542
    .line 543
    goto :goto_5

    .line 544
    :pswitch_b
    const/16 v7, 0x8

    .line 545
    .line 546
    goto :goto_5

    .line 547
    :pswitch_c
    const/16 v7, 0x12

    .line 548
    .line 549
    goto :goto_5

    .line 550
    :pswitch_d
    const/16 v7, 0x14

    .line 551
    .line 552
    goto :goto_5

    .line 553
    :pswitch_e
    const/16 v7, 0x15

    .line 554
    .line 555
    goto :goto_5

    .line 556
    :pswitch_f
    const/4 v7, 0x3

    .line 557
    goto :goto_5

    .line 558
    :pswitch_10
    const/4 v7, 0x6

    .line 559
    goto :goto_5

    .line 560
    :pswitch_11
    const/16 v7, 0xb

    .line 561
    .line 562
    goto :goto_5

    .line 563
    :pswitch_12
    const/16 v7, 0xa

    .line 564
    .line 565
    goto :goto_5

    .line 566
    :pswitch_13
    const/4 v7, 0x0

    .line 567
    :goto_5
    :pswitch_14
    if-eq v7, v0, :cond_23

    .line 568
    .line 569
    :try_start_1
    invoke-virtual {v1, v7, v4}, Ll2/m;->b(ILjava/util/ArrayList;)V

    .line 570
    .line 571
    .line 572
    :cond_23
    invoke-static/range {p1 .. p1}, Ld/b;->N(Landroid/net/Uri;)I

    .line 573
    .line 574
    .line 575
    move-result v5

    .line 576
    if-eq v5, v0, :cond_24

    .line 577
    .line 578
    if-eq v5, v7, :cond_24

    .line 579
    .line 580
    invoke-virtual {v1, v5, v4}, Ll2/m;->b(ILjava/util/ArrayList;)V

    .line 581
    .line 582
    .line 583
    :cond_24
    const/4 v0, 0x0

    .line 584
    :goto_6
    if-ge v0, v3, :cond_26

    .line 585
    .line 586
    aget v6, v20, v0

    .line 587
    .line 588
    if-eq v6, v7, :cond_25

    .line 589
    .line 590
    if-eq v6, v5, :cond_25

    .line 591
    .line 592
    invoke-virtual {v1, v6, v4}, Ll2/m;->b(ILjava/util/ArrayList;)V

    .line 593
    .line 594
    .line 595
    :cond_25
    add-int/lit8 v0, v0, 0x1

    .line 596
    .line 597
    goto :goto_6

    .line 598
    :catchall_0
    move-exception v0

    .line 599
    goto :goto_7

    .line 600
    :cond_26
    new-array v0, v2, [Ll2/o;

    .line 601
    .line 602
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    check-cast v0, [Ll2/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    .line 608
    monitor-exit p0

    .line 609
    return-object v0

    .line 610
    :goto_7
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 611
    goto :goto_9

    .line 612
    :goto_8
    throw v0

    .line 613
    :goto_9
    goto :goto_8

    .line 614
    nop

    .line 615
    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_1f
        -0x6315f78b -> :sswitch_1e
        -0x6315f787 -> :sswitch_1d
        -0x63118f53 -> :sswitch_1c
        -0x5fc6f775 -> :sswitch_1b
        -0x58abd7ba -> :sswitch_1a
        -0x58a8e8f5 -> :sswitch_19
        -0x58a8e8f2 -> :sswitch_18
        -0x58a7d764 -> :sswitch_17
        -0x58a21830 -> :sswitch_16
        -0x4a681e4e -> :sswitch_15
        -0x405dba54 -> :sswitch_14
        -0x3be2f26c -> :sswitch_13
        -0x3468a12f -> :sswitch_12
        -0x34686c8b -> :sswitch_11
        -0x17118226 -> :sswitch_10
        -0x2974308 -> :sswitch_f
        0xd45707 -> :sswitch_e
        0xb269698 -> :sswitch_d
        0xb269699 -> :sswitch_c
        0xb26980d -> :sswitch_b
        0xb26c538 -> :sswitch_a
        0xb26cbd6 -> :sswitch_9
        0xb26e933 -> :sswitch_8
        0x4f62635d -> :sswitch_7
        0x59976a2d -> :sswitch_6
        0x59ae0c65 -> :sswitch_5
        0x59aeaa01 -> :sswitch_4
        0x59b1cdba -> :sswitch_3
        0x59b1e81e -> :sswitch_2
        0x59b64a32 -> :sswitch_1
        0x79909c15 -> :sswitch_0
    .end sparse-switch

    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_14
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_10
        :pswitch_10
        :pswitch_6
        :pswitch_13
        :pswitch_5
        :pswitch_f
        :pswitch_b
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public final b(ILjava/util/ArrayList;)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    :pswitch_0
    goto/16 :goto_4

    .line 8
    .line 9
    :pswitch_1
    new-instance p1, Lo2/a;

    .line 10
    .line 11
    invoke-direct {p1, v2}, Lo2/a;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :pswitch_2
    new-instance p1, Ls2/b;

    .line 20
    .line 21
    iget v0, p0, Ll2/m;->f:I

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ls2/b;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :pswitch_3
    new-instance p1, Lh3/a;

    .line 32
    .line 33
    invoke-direct {p1, v2, v1}, Lh3/a;-><init>(BI)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :pswitch_4
    new-instance p1, Lo2/a;

    .line 42
    .line 43
    invoke-direct {p1, v1}, Lo2/a;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :pswitch_5
    new-instance p1, Lh3/a;

    .line 52
    .line 53
    invoke-direct {p1, v2, v2}, Lh3/a;-><init>(BI)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :pswitch_6
    new-instance p1, Ln2/b;

    .line 62
    .line 63
    iget-boolean v0, p0, Ll2/m;->b:Z

    .line 64
    .line 65
    xor-int/2addr v0, v1

    .line 66
    iget-object v1, p0, Ll2/m;->c:Lha/l2;

    .line 67
    .line 68
    invoke-direct {p1, v0, v1}, Ln2/b;-><init>(ILha/l2;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :pswitch_7
    sget-object p1, Ll2/m;->i:Lkf/d;

    .line 77
    .line 78
    new-array v0, v2, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lkf/d;->y([Ljava/lang/Object;)Ll2/o;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_9

    .line 85
    .line 86
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :pswitch_8
    new-instance p1, Lh3/a;

    .line 92
    .line 93
    iget v0, p0, Ll2/m;->e:I

    .line 94
    .line 95
    invoke-direct {p1, v0}, Lh3/a;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto/16 :goto_4

    .line 102
    .line 103
    :pswitch_9
    new-instance p1, Lt3/d;

    .line 104
    .line 105
    invoke-direct {p1}, Lt3/d;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto/16 :goto_4

    .line 112
    .line 113
    :pswitch_a
    iget-object p1, p0, Ll2/m;->a:Lu7/y0;

    .line 114
    .line 115
    if-nez p1, :cond_0

    .line 116
    .line 117
    sget-object p1, Lu7/g0;->b:Lu7/e0;

    .line 118
    .line 119
    sget-object p1, Lu7/y0;->e:Lu7/y0;

    .line 120
    .line 121
    iput-object p1, p0, Ll2/m;->a:Lu7/y0;

    .line 122
    .line 123
    :cond_0
    new-instance p1, Ls3/b0;

    .line 124
    .line 125
    iget-boolean v0, p0, Ll2/m;->b:Z

    .line 126
    .line 127
    xor-int/2addr v0, v1

    .line 128
    iget-object v1, p0, Ll2/m;->c:Lha/l2;

    .line 129
    .line 130
    new-instance v2, Lu1/d0;

    .line 131
    .line 132
    const-wide/16 v3, 0x0

    .line 133
    .line 134
    invoke-direct {v2, v3, v4}, Lu1/d0;-><init>(J)V

    .line 135
    .line 136
    .line 137
    new-instance v3, Ll5/y;

    .line 138
    .line 139
    iget-object v4, p0, Ll2/m;->a:Lu7/y0;

    .line 140
    .line 141
    const/16 v5, 0xf

    .line 142
    .line 143
    invoke-direct {v3, v5, v4}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-direct {p1, v0, v1, v2, v3}, Ls3/b0;-><init>(ILi3/h;Lu1/d0;Ll5/y;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto/16 :goto_4

    .line 153
    .line 154
    :pswitch_b
    new-instance p1, Ls3/x;

    .line 155
    .line 156
    invoke-direct {p1}, Ls3/x;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto/16 :goto_4

    .line 163
    .line 164
    :pswitch_c
    new-instance p1, Lg3/d;

    .line 165
    .line 166
    invoke-direct {p1, v2}, Lg3/d;-><init>(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto/16 :goto_4

    .line 173
    .line 174
    :pswitch_d
    new-instance p1, Lf3/j;

    .line 175
    .line 176
    iget-object v3, p0, Ll2/m;->c:Lha/l2;

    .line 177
    .line 178
    iget v4, p0, Ll2/m;->d:I

    .line 179
    .line 180
    and-int/lit8 v5, v4, 0x1

    .line 181
    .line 182
    if-eqz v5, :cond_1

    .line 183
    .line 184
    const/16 v5, 0x40

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_1
    const/4 v5, 0x0

    .line 188
    :goto_0
    and-int/2addr v4, v0

    .line 189
    if-eqz v4, :cond_2

    .line 190
    .line 191
    or-int/lit16 v5, v5, 0x80

    .line 192
    .line 193
    :cond_2
    iget-boolean v4, p0, Ll2/m;->b:Z

    .line 194
    .line 195
    const/16 v6, 0x20

    .line 196
    .line 197
    if-eqz v4, :cond_3

    .line 198
    .line 199
    const/4 v4, 0x0

    .line 200
    goto :goto_1

    .line 201
    :cond_3
    const/16 v4, 0x20

    .line 202
    .line 203
    :goto_1
    or-int/2addr v4, v5

    .line 204
    invoke-direct {p1, v3, v4}, Lf3/j;-><init>(Li3/h;I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    new-instance p1, Lf3/n;

    .line 211
    .line 212
    iget-object v3, p0, Ll2/m;->c:Lha/l2;

    .line 213
    .line 214
    iget v4, p0, Ll2/m;->d:I

    .line 215
    .line 216
    and-int/2addr v1, v4

    .line 217
    if-eqz v1, :cond_4

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_4
    const/4 v6, 0x0

    .line 221
    :goto_2
    and-int/2addr v0, v4

    .line 222
    if-eqz v0, :cond_5

    .line 223
    .line 224
    or-int/lit16 v6, v6, 0x80

    .line 225
    .line 226
    :cond_5
    iget-boolean v0, p0, Ll2/m;->b:Z

    .line 227
    .line 228
    if-eqz v0, :cond_6

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_6
    const/16 v2, 0x10

    .line 232
    .line 233
    :goto_3
    or-int v0, v6, v2

    .line 234
    .line 235
    invoke-direct {p1, v3, v0}, Lf3/n;-><init>(Li3/h;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :pswitch_e
    new-instance p1, Le3/e;

    .line 243
    .line 244
    invoke-direct {p1}, Le3/e;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :pswitch_f
    new-instance p1, Ld3/f;

    .line 252
    .line 253
    iget-object v1, p0, Ll2/m;->c:Lha/l2;

    .line 254
    .line 255
    iget-boolean v3, p0, Ll2/m;->b:Z

    .line 256
    .line 257
    if-eqz v3, :cond_7

    .line 258
    .line 259
    const/4 v0, 0x0

    .line 260
    :cond_7
    invoke-direct {p1, v1, v0}, Ld3/f;-><init>(Li3/h;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    goto :goto_4

    .line 267
    :pswitch_10
    new-instance p1, Lr2/b;

    .line 268
    .line 269
    invoke-direct {p1}, Lr2/b;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :pswitch_11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    new-array v0, v1, [Ljava/lang/Object;

    .line 281
    .line 282
    aput-object p1, v0, v2

    .line 283
    .line 284
    sget-object p1, Ll2/m;->h:Lkf/d;

    .line 285
    .line 286
    invoke-virtual {p1, v0}, Lkf/d;->y([Ljava/lang/Object;)Ll2/o;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    if-eqz p1, :cond_8

    .line 291
    .line 292
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_8
    new-instance p1, Lq2/b;

    .line 297
    .line 298
    invoke-direct {p1}, Lq2/b;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    goto :goto_4

    .line 305
    :pswitch_12
    new-instance p1, Lm2/a;

    .line 306
    .line 307
    invoke-direct {p1}, Lm2/a;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :pswitch_13
    new-instance p1, Ls3/b;

    .line 315
    .line 316
    invoke-direct {p1}, Ls3/b;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    goto :goto_4

    .line 323
    :pswitch_14
    new-instance p1, Lg3/d;

    .line 324
    .line 325
    invoke-direct {p1, v0}, Lg3/d;-><init>(I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    goto :goto_4

    .line 332
    :pswitch_15
    new-instance p1, Lg3/d;

    .line 333
    .line 334
    invoke-direct {p1, v1}, Lg3/d;-><init>(I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    :cond_9
    :goto_4
    return-void

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
