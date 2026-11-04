.class public final Lei/f;
.super Lei/b;
.source "SourceFile"


# instance fields
.field public final m:Ldi/c;

.field public final n:Lfi/a;

.field public final o:Lei/e;

.field public final p:Lei/c;

.field public final q:Lei/c;


# direct methods
.method public constructor <init>(Ldi/c;Lfi/a;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p5}, Lei/b;-><init>(I)V

    .line 2
    .line 3
    .line 4
    new-instance p5, Lei/c;

    .line 5
    .line 6
    invoke-direct {p5, p0}, Lei/c;-><init>(Lei/f;)V

    .line 7
    .line 8
    .line 9
    iput-object p5, p0, Lei/f;->p:Lei/c;

    .line 10
    .line 11
    new-instance p5, Lei/c;

    .line 12
    .line 13
    invoke-direct {p5, p0}, Lei/c;-><init>(Lei/f;)V

    .line 14
    .line 15
    .line 16
    iput-object p5, p0, Lei/f;->q:Lei/c;

    .line 17
    .line 18
    iput-object p1, p0, Lei/f;->m:Ldi/c;

    .line 19
    .line 20
    iput-object p2, p0, Lei/f;->n:Lfi/a;

    .line 21
    .line 22
    new-instance p1, Lei/e;

    .line 23
    .line 24
    invoke-direct {p1, p0, p3, p4}, Lei/e;-><init>(Lei/f;II)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lei/f;->o:Lei/e;

    .line 28
    .line 29
    invoke-virtual {p0}, Lei/f;->a()V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-super {p0}, Lei/b;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lei/f;->o:Lei/e;

    .line 6
    .line 7
    iget-object v1, v1, Lei/e;->c:[La/b;

    .line 8
    .line 9
    check-cast v1, [Lei/d;

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    if-ge v0, v2, :cond_0

    .line 13
    .line 14
    aget-object v1, v1, v0

    .line 15
    .line 16
    iget-object v1, v1, La/b;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, [S

    .line 19
    .line 20
    invoke-static {v1}, Lcom/bumptech/glide/c;->H([S)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lei/f;->p:Lei/c;

    .line 27
    .line 28
    invoke-virtual {v0}, Lei/a;->a()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lei/f;->q:Lei/c;

    .line 32
    .line 33
    invoke-virtual {v0}, Lei/a;->a()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final b()V
    .locals 13

    .line 1
    iget-object v0, p0, Lei/f;->m:Ldi/c;

    .line 2
    .line 3
    iget v1, v0, Ldi/c;->g:I

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    iget v2, v0, Ldi/c;->h:I

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Ldi/c;->a(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    iget v1, v0, Ldi/c;->d:I

    .line 13
    .line 14
    iget v2, v0, Ldi/c;->f:I

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-ge v1, v2, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 v2, 0x0

    .line 23
    :goto_1
    iget-object v5, p0, Lei/f;->n:Lfi/a;

    .line 24
    .line 25
    if-eqz v2, :cond_16

    .line 26
    .line 27
    iget v2, p0, Lei/b;->a:I

    .line 28
    .line 29
    and-int/2addr v1, v2

    .line 30
    iget-object v2, p0, Lei/b;->c:Landroidx/leanback/widget/i;

    .line 31
    .line 32
    iget v6, v2, Landroidx/leanback/widget/i;->b:I

    .line 33
    .line 34
    iget-object v7, p0, Lei/b;->d:[[S

    .line 35
    .line 36
    aget-object v6, v7, v6

    .line 37
    .line 38
    invoke-virtual {v5, v6, v1}, Lfi/a;->o0([SI)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x7

    .line 43
    if-nez v6, :cond_9

    .line 44
    .line 45
    iget-object v1, p0, Lei/f;->o:Lei/e;

    .line 46
    .line 47
    iget-object v2, v1, Lei/e;->d:Lei/b;

    .line 48
    .line 49
    check-cast v2, Lei/f;

    .line 50
    .line 51
    iget-object v2, v2, Lei/f;->m:Ldi/c;

    .line 52
    .line 53
    iget v5, v2, Ldi/c;->d:I

    .line 54
    .line 55
    add-int/lit8 v6, v5, -0x1

    .line 56
    .line 57
    if-gtz v5, :cond_2

    .line 58
    .line 59
    iget v8, v2, Ldi/c;->b:I

    .line 60
    .line 61
    add-int/2addr v6, v8

    .line 62
    :cond_2
    iget-object v2, v2, Ldi/c;->a:[B

    .line 63
    .line 64
    aget-byte v2, v2, v6

    .line 65
    .line 66
    and-int/lit16 v2, v2, 0xff

    .line 67
    .line 68
    invoke-virtual {v1, v2, v5}, Lei/e;->b(II)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iget-object v1, v1, Lei/e;->c:[La/b;

    .line 73
    .line 74
    check-cast v1, [Lei/d;

    .line 75
    .line 76
    aget-object v1, v1, v2

    .line 77
    .line 78
    iget-object v2, v1, Lei/d;->b:Lei/e;

    .line 79
    .line 80
    iget-object v2, v2, Lei/e;->d:Lei/b;

    .line 81
    .line 82
    move-object v6, v2

    .line 83
    check-cast v6, Lei/f;

    .line 84
    .line 85
    iget-object v2, v6, Lei/b;->c:Landroidx/leanback/widget/i;

    .line 86
    .line 87
    iget v2, v2, Landroidx/leanback/widget/i;->b:I

    .line 88
    .line 89
    if-ge v2, v7, :cond_3

    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    const/4 v2, 0x0

    .line 94
    :goto_2
    iget-object v1, v1, La/b;->a:Ljava/lang/Object;

    .line 95
    .line 96
    move-object v8, v1

    .line 97
    check-cast v8, [S

    .line 98
    .line 99
    const/16 v9, 0x100

    .line 100
    .line 101
    if-eqz v2, :cond_5

    .line 102
    .line 103
    :cond_4
    shl-int/lit8 v1, v4, 0x1

    .line 104
    .line 105
    iget-object v2, v6, Lei/f;->n:Lfi/a;

    .line 106
    .line 107
    invoke-virtual {v2, v8, v4}, Lfi/a;->o0([SI)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    or-int v4, v1, v2

    .line 112
    .line 113
    if-lt v4, v9, :cond_4

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    iget-object v1, v6, Lei/f;->m:Ldi/c;

    .line 117
    .line 118
    iget-object v2, v6, Lei/b;->b:[I

    .line 119
    .line 120
    aget v2, v2, v3

    .line 121
    .line 122
    iget v5, v1, Ldi/c;->d:I

    .line 123
    .line 124
    sub-int v7, v5, v2

    .line 125
    .line 126
    sub-int/2addr v7, v4

    .line 127
    if-lt v2, v5, :cond_6

    .line 128
    .line 129
    iget v2, v1, Ldi/c;->b:I

    .line 130
    .line 131
    add-int/2addr v7, v2

    .line 132
    :cond_6
    iget-object v1, v1, Ldi/c;->a:[B

    .line 133
    .line 134
    aget-byte v1, v1, v7

    .line 135
    .line 136
    and-int/lit16 v1, v1, 0xff

    .line 137
    .line 138
    const/16 v2, 0x100

    .line 139
    .line 140
    const/4 v5, 0x1

    .line 141
    :cond_7
    shl-int/2addr v1, v4

    .line 142
    and-int v7, v1, v2

    .line 143
    .line 144
    add-int v10, v2, v7

    .line 145
    .line 146
    add-int/2addr v10, v5

    .line 147
    iget-object v11, v6, Lei/f;->n:Lfi/a;

    .line 148
    .line 149
    invoke-virtual {v11, v8, v10}, Lfi/a;->o0([SI)I

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    shl-int/2addr v5, v4

    .line 154
    or-int/2addr v5, v10

    .line 155
    rsub-int/lit8 v10, v10, 0x0

    .line 156
    .line 157
    xor-int/lit8 v7, v7, -0x1

    .line 158
    .line 159
    xor-int/2addr v7, v10

    .line 160
    and-int/2addr v2, v7

    .line 161
    if-lt v5, v9, :cond_7

    .line 162
    .line 163
    move v4, v5

    .line 164
    :goto_3
    iget-object v1, v6, Lei/f;->m:Ldi/c;

    .line 165
    .line 166
    int-to-byte v2, v4

    .line 167
    iget v3, v1, Ldi/c;->d:I

    .line 168
    .line 169
    add-int/lit8 v4, v3, 0x1

    .line 170
    .line 171
    iput v4, v1, Ldi/c;->d:I

    .line 172
    .line 173
    iget-object v5, v1, Ldi/c;->a:[B

    .line 174
    .line 175
    aput-byte v2, v5, v3

    .line 176
    .line 177
    iget v2, v1, Ldi/c;->e:I

    .line 178
    .line 179
    if-ge v2, v4, :cond_8

    .line 180
    .line 181
    iput v4, v1, Ldi/c;->e:I

    .line 182
    .line 183
    :cond_8
    iget-object v1, v6, Lei/b;->c:Landroidx/leanback/widget/i;

    .line 184
    .line 185
    invoke-virtual {v1}, Landroidx/leanback/widget/i;->k()V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_9
    iget v6, v2, Landroidx/leanback/widget/i;->b:I

    .line 191
    .line 192
    iget-object v8, p0, Lei/b;->e:[S

    .line 193
    .line 194
    invoke-virtual {v5, v8, v6}, Lfi/a;->o0([SI)I

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    iget-object v8, p0, Lei/b;->b:[I

    .line 199
    .line 200
    const/4 v9, 0x2

    .line 201
    const/4 v10, 0x3

    .line 202
    if-nez v6, :cond_10

    .line 203
    .line 204
    invoke-virtual {v2}, Landroidx/leanback/widget/i;->m()V

    .line 205
    .line 206
    .line 207
    aget v2, v8, v9

    .line 208
    .line 209
    aput v2, v8, v10

    .line 210
    .line 211
    aget v2, v8, v4

    .line 212
    .line 213
    aput v2, v8, v9

    .line 214
    .line 215
    aget v2, v8, v3

    .line 216
    .line 217
    aput v2, v8, v4

    .line 218
    .line 219
    iget-object v2, p0, Lei/f;->p:Lei/c;

    .line 220
    .line 221
    invoke-virtual {v2, v1}, Lei/c;->b(I)I

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    const/4 v1, 0x6

    .line 226
    if-ge v6, v1, :cond_a

    .line 227
    .line 228
    add-int/lit8 v10, v6, -0x2

    .line 229
    .line 230
    :cond_a
    iget-object v1, p0, Lei/b;->j:[[S

    .line 231
    .line 232
    aget-object v1, v1, v10

    .line 233
    .line 234
    invoke-virtual {v5, v1}, Lfi/a;->p0([S)I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    const/4 v2, 0x4

    .line 239
    if-ge v1, v2, :cond_b

    .line 240
    .line 241
    aput v1, v8, v3

    .line 242
    .line 243
    goto/16 :goto_a

    .line 244
    .line 245
    :cond_b
    shr-int/lit8 v2, v1, 0x1

    .line 246
    .line 247
    add-int/lit8 v7, v2, -0x1

    .line 248
    .line 249
    and-int/lit8 v10, v1, 0x1

    .line 250
    .line 251
    or-int/2addr v9, v10

    .line 252
    shl-int v11, v9, v7

    .line 253
    .line 254
    aput v11, v8, v3

    .line 255
    .line 256
    const/16 v7, 0xe

    .line 257
    .line 258
    if-ge v1, v7, :cond_d

    .line 259
    .line 260
    add-int/lit8 v1, v1, -0x4

    .line 261
    .line 262
    iget-object v2, p0, Lei/b;->k:[[S

    .line 263
    .line 264
    aget-object v1, v2, v1

    .line 265
    .line 266
    const/4 v2, 0x1

    .line 267
    const/4 v7, 0x0

    .line 268
    const/4 v9, 0x0

    .line 269
    :goto_4
    invoke-virtual {v5, v1, v2}, Lfi/a;->o0([SI)I

    .line 270
    .line 271
    .line 272
    move-result v10

    .line 273
    shl-int/2addr v2, v4

    .line 274
    or-int/2addr v2, v10

    .line 275
    add-int/lit8 v12, v9, 0x1

    .line 276
    .line 277
    shl-int v9, v10, v9

    .line 278
    .line 279
    or-int/2addr v7, v9

    .line 280
    array-length v9, v1

    .line 281
    if-lt v2, v9, :cond_c

    .line 282
    .line 283
    or-int v1, v11, v7

    .line 284
    .line 285
    aput v1, v8, v3

    .line 286
    .line 287
    goto/16 :goto_a

    .line 288
    .line 289
    :cond_c
    move v9, v12

    .line 290
    goto :goto_4

    .line 291
    :cond_d
    add-int/lit8 v2, v2, -0x5

    .line 292
    .line 293
    const/4 v1, 0x0

    .line 294
    :cond_e
    invoke-virtual {v5}, Lfi/a;->q0()V

    .line 295
    .line 296
    .line 297
    iget v7, v5, Lfi/a;->l:I

    .line 298
    .line 299
    ushr-int/2addr v7, v4

    .line 300
    iput v7, v5, Lfi/a;->l:I

    .line 301
    .line 302
    iget v9, v5, Lfi/a;->m:I

    .line 303
    .line 304
    sub-int v10, v9, v7

    .line 305
    .line 306
    ushr-int/lit8 v10, v10, 0x1f

    .line 307
    .line 308
    add-int/lit8 v12, v10, -0x1

    .line 309
    .line 310
    and-int/2addr v7, v12

    .line 311
    sub-int/2addr v9, v7

    .line 312
    iput v9, v5, Lfi/a;->m:I

    .line 313
    .line 314
    shl-int/2addr v1, v4

    .line 315
    rsub-int/lit8 v7, v10, 0x1

    .line 316
    .line 317
    or-int/2addr v1, v7

    .line 318
    add-int/lit8 v2, v2, -0x1

    .line 319
    .line 320
    if-nez v2, :cond_e

    .line 321
    .line 322
    shl-int/lit8 v1, v1, 0x4

    .line 323
    .line 324
    or-int v7, v11, v1

    .line 325
    .line 326
    aput v7, v8, v3

    .line 327
    .line 328
    const/4 v1, 0x1

    .line 329
    const/4 v2, 0x0

    .line 330
    const/4 v9, 0x0

    .line 331
    :goto_5
    iget-object v10, p0, Lei/b;->l:[S

    .line 332
    .line 333
    invoke-virtual {v5, v10, v1}, Lfi/a;->o0([SI)I

    .line 334
    .line 335
    .line 336
    move-result v11

    .line 337
    shl-int/2addr v1, v4

    .line 338
    or-int/2addr v1, v11

    .line 339
    add-int/lit8 v12, v9, 0x1

    .line 340
    .line 341
    shl-int v9, v11, v9

    .line 342
    .line 343
    or-int/2addr v2, v9

    .line 344
    array-length v9, v10

    .line 345
    if-lt v1, v9, :cond_f

    .line 346
    .line 347
    or-int v1, v7, v2

    .line 348
    .line 349
    aput v1, v8, v3

    .line 350
    .line 351
    goto :goto_a

    .line 352
    :cond_f
    move v9, v12

    .line 353
    goto :goto_5

    .line 354
    :cond_10
    iget v6, v2, Landroidx/leanback/widget/i;->b:I

    .line 355
    .line 356
    iget-object v11, p0, Lei/b;->f:[S

    .line 357
    .line 358
    invoke-virtual {v5, v11, v6}, Lfi/a;->o0([SI)I

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    if-nez v6, :cond_12

    .line 363
    .line 364
    iget v6, v2, Landroidx/leanback/widget/i;->b:I

    .line 365
    .line 366
    iget-object v9, p0, Lei/b;->i:[[S

    .line 367
    .line 368
    aget-object v6, v9, v6

    .line 369
    .line 370
    invoke-virtual {v5, v6, v1}, Lfi/a;->o0([SI)I

    .line 371
    .line 372
    .line 373
    move-result v5

    .line 374
    if-nez v5, :cond_15

    .line 375
    .line 376
    iget v1, v2, Landroidx/leanback/widget/i;->b:I

    .line 377
    .line 378
    if-ge v1, v7, :cond_11

    .line 379
    .line 380
    const/16 v1, 0x9

    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_11
    const/16 v1, 0xb

    .line 384
    .line 385
    :goto_6
    iput v1, v2, Landroidx/leanback/widget/i;->b:I

    .line 386
    .line 387
    goto :goto_9

    .line 388
    :cond_12
    iget v6, v2, Landroidx/leanback/widget/i;->b:I

    .line 389
    .line 390
    iget-object v7, p0, Lei/b;->g:[S

    .line 391
    .line 392
    invoke-virtual {v5, v7, v6}, Lfi/a;->o0([SI)I

    .line 393
    .line 394
    .line 395
    move-result v6

    .line 396
    if-nez v6, :cond_13

    .line 397
    .line 398
    aget v5, v8, v4

    .line 399
    .line 400
    goto :goto_8

    .line 401
    :cond_13
    iget v6, v2, Landroidx/leanback/widget/i;->b:I

    .line 402
    .line 403
    iget-object v7, p0, Lei/b;->h:[S

    .line 404
    .line 405
    invoke-virtual {v5, v7, v6}, Lfi/a;->o0([SI)I

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    if-nez v5, :cond_14

    .line 410
    .line 411
    aget v5, v8, v9

    .line 412
    .line 413
    goto :goto_7

    .line 414
    :cond_14
    aget v5, v8, v10

    .line 415
    .line 416
    aget v6, v8, v9

    .line 417
    .line 418
    aput v6, v8, v10

    .line 419
    .line 420
    :goto_7
    aget v6, v8, v4

    .line 421
    .line 422
    aput v6, v8, v9

    .line 423
    .line 424
    :goto_8
    aget v6, v8, v3

    .line 425
    .line 426
    aput v6, v8, v4

    .line 427
    .line 428
    aput v5, v8, v3

    .line 429
    .line 430
    :cond_15
    invoke-virtual {v2}, Landroidx/leanback/widget/i;->l()V

    .line 431
    .line 432
    .line 433
    iget-object v2, p0, Lei/f;->q:Lei/c;

    .line 434
    .line 435
    invoke-virtual {v2, v1}, Lei/c;->b(I)I

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    :goto_9
    move v6, v4

    .line 440
    :goto_a
    aget v1, v8, v3

    .line 441
    .line 442
    invoke-virtual {v0, v1, v6}, Ldi/c;->a(II)V

    .line 443
    .line 444
    .line 445
    goto/16 :goto_0

    .line 446
    .line 447
    :cond_16
    invoke-virtual {v5}, Lfi/a;->q0()V

    .line 448
    .line 449
    .line 450
    return-void
.end method
