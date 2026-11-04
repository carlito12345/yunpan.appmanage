.class public final Ln2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/a;


# instance fields
.field public final a:Lu7/y0;

.field public final b:I


# direct methods
.method public constructor <init>(ILu7/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ln2/f;->b:I

    .line 5
    .line 6
    iput-object p2, p0, Ln2/f;->a:Lu7/y0;

    .line 7
    .line 8
    return-void
.end method

.method public static b(ILu1/q;)Ln2/f;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x4

    .line 5
    const-string v3, "initialCapacity"

    .line 6
    .line 7
    invoke-static {v2, v3}, Lu7/q;->c(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    iget v4, v0, Lu1/q;->c:I

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, -0x2

    .line 16
    const/4 v7, 0x0

    .line 17
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    const/16 v9, 0x8

    .line 22
    .line 23
    if-le v8, v9, :cond_10

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 30
    .line 31
    .line 32
    move-result v10

    .line 33
    iget v11, v0, Lu1/q;->b:I

    .line 34
    .line 35
    add-int/2addr v11, v10

    .line 36
    invoke-virtual {v0, v11}, Lu1/q;->N(I)V

    .line 37
    .line 38
    .line 39
    const v10, 0x5453494c

    .line 40
    .line 41
    .line 42
    if-ne v8, v10, :cond_0

    .line 43
    .line 44
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    invoke-static {v8, v0}, Ln2/f;->b(ILu1/q;)Ln2/f;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :cond_0
    const/16 v10, 0xc

    .line 55
    .line 56
    const/4 v12, 0x0

    .line 57
    sparse-switch v8, :sswitch_data_0

    .line 58
    .line 59
    .line 60
    :goto_1
    move-object v8, v12

    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :sswitch_0
    new-instance v8, Ln2/h;

    .line 64
    .line 65
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    sget-object v10, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    invoke-virtual {v0, v10, v9}, Lu1/q;->z(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    invoke-direct {v8, v9}, Ln2/h;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    invoke-virtual {v0, v10}, Lu1/q;->P(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 95
    .line 96
    .line 97
    move-result v15

    .line 98
    invoke-virtual {v0, v2}, Lu1/q;->P(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 102
    .line 103
    .line 104
    move-result v16

    .line 105
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 106
    .line 107
    .line 108
    move-result v17

    .line 109
    invoke-virtual {v0, v2}, Lu1/q;->P(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 113
    .line 114
    .line 115
    move-result v18

    .line 116
    new-instance v8, Ln2/d;

    .line 117
    .line 118
    move-object v12, v8

    .line 119
    invoke-direct/range {v12 .. v18}, Ln2/d;-><init>(IIIIII)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_5

    .line 123
    .line 124
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    invoke-virtual {v0, v9}, Lu1/q;->P(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    invoke-virtual {v0, v2}, Lu1/q;->P(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v10}, Lu1/q;->P(I)V

    .line 146
    .line 147
    .line 148
    new-instance v10, Ln2/c;

    .line 149
    .line 150
    invoke-direct {v10, v8, v9, v12}, Ln2/c;-><init>(III)V

    .line 151
    .line 152
    .line 153
    move-object v8, v10

    .line 154
    goto/16 :goto_5

    .line 155
    .line 156
    :sswitch_3
    const/4 v8, 0x2

    .line 157
    if-ne v6, v8, :cond_2

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Lu1/q;->P(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    invoke-virtual {v0, v2}, Lu1/q;->P(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    sparse-switch v10, :sswitch_data_1

    .line 178
    .line 179
    .line 180
    move-object v13, v12

    .line 181
    goto :goto_2

    .line 182
    :sswitch_4
    const-string v13, "video/mjpeg"

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :sswitch_5
    const-string v13, "video/mp43"

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :sswitch_6
    const-string v13, "video/mp42"

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :sswitch_7
    const-string v13, "video/avc"

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :sswitch_8
    const-string v13, "video/mp4v-es"

    .line 195
    .line 196
    :goto_2
    if-nez v13, :cond_1

    .line 197
    .line 198
    const-string v8, "Ignoring track with unsupported compression "

    .line 199
    .line 200
    invoke-static {v10, v8}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :cond_1
    new-instance v10, Lr1/o;

    .line 206
    .line 207
    invoke-direct {v10}, Lr1/o;-><init>()V

    .line 208
    .line 209
    .line 210
    iput v8, v10, Lr1/o;->u:I

    .line 211
    .line 212
    iput v9, v10, Lr1/o;->v:I

    .line 213
    .line 214
    invoke-virtual {v10, v13}, Lr1/o;->c(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    new-instance v12, Ln2/g;

    .line 218
    .line 219
    new-instance v8, Lr1/p;

    .line 220
    .line 221
    invoke-direct {v8, v10}, Lr1/p;-><init>(Lr1/o;)V

    .line 222
    .line 223
    .line 224
    invoke-direct {v12, v8}, Ln2/g;-><init>(Lr1/p;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :cond_2
    if-ne v6, v1, :cond_c

    .line 230
    .line 231
    invoke-virtual/range {p1 .. p1}, Lu1/q;->u()I

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    const-string v9, "audio/raw"

    .line 236
    .line 237
    const-string v10, "audio/mp4a-latm"

    .line 238
    .line 239
    if-eq v8, v1, :cond_7

    .line 240
    .line 241
    const/16 v13, 0x55

    .line 242
    .line 243
    if-eq v8, v13, :cond_6

    .line 244
    .line 245
    const/16 v13, 0xff

    .line 246
    .line 247
    if-eq v8, v13, :cond_5

    .line 248
    .line 249
    const/16 v13, 0x2000

    .line 250
    .line 251
    if-eq v8, v13, :cond_4

    .line 252
    .line 253
    const/16 v13, 0x2001

    .line 254
    .line 255
    if-eq v8, v13, :cond_3

    .line 256
    .line 257
    move-object v13, v12

    .line 258
    goto :goto_3

    .line 259
    :cond_3
    const-string v13, "audio/vnd.dts"

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_4
    const-string v13, "audio/ac3"

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_5
    move-object v13, v10

    .line 266
    goto :goto_3

    .line 267
    :cond_6
    const-string v13, "audio/mpeg"

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_7
    move-object v13, v9

    .line 271
    :goto_3
    if-nez v13, :cond_8

    .line 272
    .line 273
    const-string v9, "Ignoring track with unsupported format tag "

    .line 274
    .line 275
    invoke-static {v8, v9}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_1

    .line 279
    .line 280
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lu1/q;->u()I

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 285
    .line 286
    .line 287
    move-result v12

    .line 288
    const/4 v14, 0x6

    .line 289
    invoke-virtual {v0, v14}, Lu1/q;->P(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual/range {p1 .. p1}, Lu1/q;->u()I

    .line 293
    .line 294
    .line 295
    move-result v14

    .line 296
    sget-object v15, Lu1/f0;->a:Ljava/lang/String;

    .line 297
    .line 298
    sget-object v15, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 299
    .line 300
    invoke-static {v14, v15}, Lu1/f0;->t(ILjava/nio/ByteOrder;)I

    .line 301
    .line 302
    .line 303
    move-result v14

    .line 304
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 305
    .line 306
    .line 307
    move-result v15

    .line 308
    if-lez v15, :cond_9

    .line 309
    .line 310
    invoke-virtual/range {p1 .. p1}, Lu1/q;->u()I

    .line 311
    .line 312
    .line 313
    move-result v15

    .line 314
    goto :goto_4

    .line 315
    :cond_9
    const/4 v15, 0x0

    .line 316
    :goto_4
    new-instance v2, Lr1/o;

    .line 317
    .line 318
    invoke-direct {v2}, Lr1/o;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-static {v13}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    iput-object v1, v2, Lr1/o;->n:Ljava/lang/String;

    .line 326
    .line 327
    iput v8, v2, Lr1/o;->F:I

    .line 328
    .line 329
    iput v12, v2, Lr1/o;->G:I

    .line 330
    .line 331
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    if-eqz v1, :cond_a

    .line 336
    .line 337
    if-eqz v14, :cond_a

    .line 338
    .line 339
    iput v14, v2, Lr1/o;->H:I

    .line 340
    .line 341
    :cond_a
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_b

    .line 346
    .line 347
    if-lez v15, :cond_b

    .line 348
    .line 349
    new-array v1, v15, [B

    .line 350
    .line 351
    invoke-virtual {v0, v5, v15, v1}, Lu1/q;->l(II[B)V

    .line 352
    .line 353
    .line 354
    invoke-static {v1}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    iput-object v1, v2, Lr1/o;->q:Ljava/util/List;

    .line 359
    .line 360
    :cond_b
    new-instance v12, Ln2/g;

    .line 361
    .line 362
    new-instance v1, Lr1/p;

    .line 363
    .line 364
    invoke-direct {v1, v2}, Lr1/p;-><init>(Lr1/o;)V

    .line 365
    .line 366
    .line 367
    invoke-direct {v12, v1}, Ln2/g;-><init>(Lr1/p;)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_1

    .line 371
    .line 372
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v2, "Ignoring strf box for unsupported track type: "

    .line 375
    .line 376
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-static {v6}, Lu1/f0;->x(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-static {v1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_1

    .line 394
    .line 395
    :goto_5
    if-eqz v8, :cond_f

    .line 396
    .line 397
    invoke-interface {v8}, Ln2/a;->getType()I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    const v2, 0x68727473

    .line 402
    .line 403
    .line 404
    if-ne v1, v2, :cond_d

    .line 405
    .line 406
    move-object v1, v8

    .line 407
    check-cast v1, Ln2/d;

    .line 408
    .line 409
    invoke-virtual {v1}, Ln2/d;->a()I

    .line 410
    .line 411
    .line 412
    move-result v6

    .line 413
    :cond_d
    array-length v1, v3

    .line 414
    const/4 v2, 0x1

    .line 415
    add-int/lit8 v9, v7, 0x1

    .line 416
    .line 417
    invoke-static {v1, v9}, Lu7/a0;->f(II)I

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    array-length v10, v3

    .line 422
    if-gt v1, v10, :cond_e

    .line 423
    .line 424
    goto :goto_6

    .line 425
    :cond_e
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    :goto_6
    aput-object v8, v3, v7

    .line 430
    .line 431
    move v7, v9

    .line 432
    goto :goto_7

    .line 433
    :cond_f
    const/4 v2, 0x1

    .line 434
    :goto_7
    invoke-virtual {v0, v11}, Lu1/q;->O(I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v4}, Lu1/q;->N(I)V

    .line 438
    .line 439
    .line 440
    const/4 v1, 0x1

    .line 441
    const/4 v2, 0x4

    .line 442
    goto/16 :goto_0

    .line 443
    .line 444
    :cond_10
    new-instance v0, Ln2/f;

    .line 445
    .line 446
    invoke-static {v7, v3}, Lu7/g0;->i(I[Ljava/lang/Object;)Lu7/y0;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    move/from16 v2, p0

    .line 451
    .line 452
    invoke-direct {v0, v2, v1}, Ln2/f;-><init>(ILu7/y0;)V

    .line 453
    .line 454
    .line 455
    return-object v0

    .line 456
    nop

    .line 457
    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch

    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :sswitch_data_1
    .sparse-switch
        0x30355844 -> :sswitch_8
        0x31435641 -> :sswitch_7
        0x31637661 -> :sswitch_7
        0x3234504d -> :sswitch_6
        0x3334504d -> :sswitch_5
        0x34363248 -> :sswitch_7
        0x34504d46 -> :sswitch_8
        0x44495633 -> :sswitch_8
        0x44495658 -> :sswitch_8
        0x47504a4d -> :sswitch_4
        0x58564944 -> :sswitch_8
        0x64697678 -> :sswitch_8
        0x67706a6d -> :sswitch_4
        0x78766964 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ln2/a;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ln2/f;->a:Lu7/y0;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lu7/g0;->o(I)Lu7/e0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lu7/e0;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lu7/e0;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ln2/a;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-ne v2, p1, :cond_0

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Ln2/f;->b:I

    .line 2
    .line 3
    return v0
.end method
