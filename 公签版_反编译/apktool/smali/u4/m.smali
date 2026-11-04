.class public final Lu4/m;
.super Lu4/o;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu4/o;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lu4/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Lu4/q;
    .locals 1

    .line 1
    sget-object v0, Lu4/q;->d:Lu4/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    const/16 v0, 0x70

    .line 2
    .line 3
    return v0
.end method

.method public final d(Lu4/f;Lb5/b;)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p1, Lu4/f;->c:Lu4/w;

    .line 4
    .line 5
    invoke-virtual {v2}, Lu4/a0;->b()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p1, Lu4/f;->a:Lu4/w;

    .line 10
    .line 11
    invoke-virtual {v3}, Lu4/a0;->b()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iget-object v4, p1, Lu4/f;->c:Lu4/w;

    .line 16
    .line 17
    invoke-virtual {v4}, Lu4/a0;->b()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-virtual {v4}, Lu4/a0;->f()V

    .line 22
    .line 23
    .line 24
    iget v4, v4, Lu4/w;->i:I

    .line 25
    .line 26
    add-int/2addr v5, v4

    .line 27
    sub-int/2addr v5, v3

    .line 28
    const-string v4, "dex\n"

    .line 29
    .line 30
    const-string v6, "035"

    .line 31
    .line 32
    const-string v7, "\u0000"

    .line 33
    .line 34
    invoke-static {v4, v6, v7}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {p2}, Lb5/b;->d()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const-string v7, "file size not yet known"

    .line 43
    .line 44
    const v8, 0x12345678

    .line 45
    .line 46
    .line 47
    const/16 v9, 0x70

    .line 48
    .line 49
    const/16 v10, 0x8

    .line 50
    .line 51
    const/4 v11, 0x4

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v12, "magic: "

    .line 57
    .line 58
    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v12, Lx4/t;

    .line 62
    .line 63
    invoke-direct {v12, v4}, Lx4/t;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v12}, Lx4/t;->e()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {p2, v10, v6}, Lb5/b;->b(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v6, "checksum"

    .line 81
    .line 82
    invoke-virtual {p2, v11, v6}, Lb5/b;->b(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/16 v6, 0x14

    .line 86
    .line 87
    const-string v12, "signature"

    .line 88
    .line 89
    invoke-virtual {p2, v6, v12}, Lb5/b;->b(ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget v6, p1, Lu4/f;->o:I

    .line 93
    .line 94
    if-ltz v6, :cond_0

    .line 95
    .line 96
    invoke-static {v6}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    const-string v12, "file_size:       "

    .line 101
    .line 102
    invoke-virtual {v12, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {p2, v11, v6}, Lb5/b;->b(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v9}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    const-string v12, "header_size:     "

    .line 114
    .line 115
    invoke-virtual {v12, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {p2, v11, v6}, Lb5/b;->b(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v8}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    const-string v12, "endian_tag:      "

    .line 127
    .line 128
    invoke-virtual {v12, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {p2, v11, v6}, Lb5/b;->b(ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string v6, "link_size:       0"

    .line 136
    .line 137
    invoke-virtual {p2, v11, v6}, Lb5/b;->b(ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v6, "link_off:        0"

    .line 141
    .line 142
    invoke-virtual {p2, v11, v6}, Lb5/b;->b(ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v2}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    const-string v12, "map_off:         "

    .line 150
    .line 151
    invoke-virtual {v12, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-virtual {p2, v11, v6}, Lb5/b;->b(ILjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 160
    .line 161
    invoke-direct {p1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :cond_1
    :goto_0
    const/4 v6, 0x0

    .line 166
    :goto_1
    if-ge v6, v10, :cond_2

    .line 167
    .line 168
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    .line 169
    .line 170
    .line 171
    move-result v12

    .line 172
    invoke-virtual {p2, v12}, Lb5/b;->i(I)V

    .line 173
    .line 174
    .line 175
    add-int/2addr v6, v0

    .line 176
    goto :goto_1

    .line 177
    :cond_2
    const/16 v4, 0x18

    .line 178
    .line 179
    invoke-virtual {p2, v4}, Lb5/b;->n(I)V

    .line 180
    .line 181
    .line 182
    iget v4, p1, Lu4/f;->o:I

    .line 183
    .line 184
    if-ltz v4, :cond_12

    .line 185
    .line 186
    invoke-virtual {p2, v4}, Lb5/b;->j(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2, v9}, Lb5/b;->j(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, v8}, Lb5/b;->j(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2, v10}, Lb5/b;->n(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, v2}, Lb5/b;->j(I)V

    .line 199
    .line 200
    .line 201
    iget-object v2, p1, Lu4/f;->e:Lu4/z;

    .line 202
    .line 203
    invoke-virtual {v2}, Lu4/a0;->f()V

    .line 204
    .line 205
    .line 206
    iget-object v4, v2, Lu4/z;->g:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v4, Ljava/util/TreeMap;

    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-nez v4, :cond_3

    .line 215
    .line 216
    const/4 v2, 0x0

    .line 217
    goto :goto_2

    .line 218
    :cond_3
    invoke-virtual {v2}, Lu4/a0;->b()I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    :goto_2
    invoke-virtual {p2}, Lb5/b;->d()Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    if-eqz v6, :cond_4

    .line 227
    .line 228
    invoke-static {v4}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    const-string v7, "string_ids_size: "

    .line 233
    .line 234
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {p2, v11, v6}, Lb5/b;->b(ILjava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v2}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    const-string v7, "string_ids_off:  "

    .line 246
    .line 247
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    invoke-virtual {p2, v11, v6}, Lb5/b;->b(ILjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    :cond_4
    invoke-virtual {p2, v4}, Lb5/b;->j(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2, v2}, Lb5/b;->j(I)V

    .line 258
    .line 259
    .line 260
    iget-object v2, p1, Lu4/f;->f:Lu4/z;

    .line 261
    .line 262
    invoke-virtual {v2}, Lu4/a0;->f()V

    .line 263
    .line 264
    .line 265
    iget-object v4, v2, Lu4/z;->g:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v4, Ljava/util/TreeMap;

    .line 268
    .line 269
    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    if-nez v6, :cond_5

    .line 274
    .line 275
    const/4 v2, 0x0

    .line 276
    goto :goto_3

    .line 277
    :cond_5
    invoke-virtual {v2}, Lu4/a0;->b()I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    :goto_3
    const/high16 v7, 0x10000

    .line 282
    .line 283
    if-gt v6, v7, :cond_11

    .line 284
    .line 285
    invoke-virtual {p2}, Lb5/b;->d()Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-eqz v0, :cond_6

    .line 290
    .line 291
    invoke-static {v6}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    const-string v4, "type_ids_size:   "

    .line 296
    .line 297
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {p2, v11, v0}, Lb5/b;->b(ILjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-static {v2}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    const-string v4, "type_ids_off:    "

    .line 309
    .line 310
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {p2, v11, v0}, Lb5/b;->b(ILjava/lang/String;)V

    .line 315
    .line 316
    .line 317
    :cond_6
    invoke-virtual {p2, v6}, Lb5/b;->j(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p2, v2}, Lb5/b;->j(I)V

    .line 321
    .line 322
    .line 323
    iget-object v0, p1, Lu4/f;->g:Lu4/z;

    .line 324
    .line 325
    invoke-virtual {v0}, Lu4/a0;->f()V

    .line 326
    .line 327
    .line 328
    iget-object v2, v0, Lu4/z;->g:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v2, Ljava/util/TreeMap;

    .line 331
    .line 332
    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-nez v2, :cond_7

    .line 337
    .line 338
    const/4 v0, 0x0

    .line 339
    goto :goto_4

    .line 340
    :cond_7
    invoke-virtual {v0}, Lu4/a0;->b()I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    :goto_4
    if-gt v2, v7, :cond_10

    .line 345
    .line 346
    invoke-virtual {p2}, Lb5/b;->d()Z

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    if-eqz v4, :cond_8

    .line 351
    .line 352
    invoke-static {v2}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    const-string v6, "proto_ids_size:  "

    .line 357
    .line 358
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    invoke-virtual {p2, v11, v4}, Lb5/b;->b(ILjava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-static {v0}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    const-string v6, "proto_ids_off:   "

    .line 370
    .line 371
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    invoke-virtual {p2, v11, v4}, Lb5/b;->b(ILjava/lang/String;)V

    .line 376
    .line 377
    .line 378
    :cond_8
    invoke-virtual {p2, v2}, Lb5/b;->j(I)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p2, v0}, Lb5/b;->j(I)V

    .line 382
    .line 383
    .line 384
    iget-object v0, p1, Lu4/f;->h:Lu4/l;

    .line 385
    .line 386
    invoke-virtual {v0}, Lu4/a0;->f()V

    .line 387
    .line 388
    .line 389
    iget-object v2, v0, Lu4/l;->f:Ljava/util/TreeMap;

    .line 390
    .line 391
    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    if-nez v2, :cond_9

    .line 396
    .line 397
    const/4 v0, 0x0

    .line 398
    goto :goto_5

    .line 399
    :cond_9
    invoke-virtual {v0}, Lu4/a0;->b()I

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    :goto_5
    invoke-virtual {p2}, Lb5/b;->d()Z

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    if-eqz v4, :cond_a

    .line 408
    .line 409
    invoke-static {v2}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    const-string v6, "field_ids_size:  "

    .line 414
    .line 415
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    invoke-virtual {p2, v11, v4}, Lb5/b;->b(ILjava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-static {v0}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    const-string v6, "field_ids_off:   "

    .line 427
    .line 428
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    invoke-virtual {p2, v11, v4}, Lb5/b;->b(ILjava/lang/String;)V

    .line 433
    .line 434
    .line 435
    :cond_a
    invoke-virtual {p2, v2}, Lb5/b;->j(I)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p2, v0}, Lb5/b;->j(I)V

    .line 439
    .line 440
    .line 441
    iget-object v0, p1, Lu4/f;->i:Lu4/v;

    .line 442
    .line 443
    invoke-virtual {v0}, Lu4/a0;->f()V

    .line 444
    .line 445
    .line 446
    iget-object v2, v0, Lu4/v;->f:Ljava/util/TreeMap;

    .line 447
    .line 448
    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-nez v2, :cond_b

    .line 453
    .line 454
    const/4 v0, 0x0

    .line 455
    goto :goto_6

    .line 456
    :cond_b
    invoke-virtual {v0}, Lu4/a0;->b()I

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    :goto_6
    invoke-virtual {p2}, Lb5/b;->d()Z

    .line 461
    .line 462
    .line 463
    move-result v4

    .line 464
    if-eqz v4, :cond_c

    .line 465
    .line 466
    invoke-static {v2}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    const-string v6, "method_ids_size: "

    .line 471
    .line 472
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    invoke-virtual {p2, v11, v4}, Lb5/b;->b(ILjava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-static {v0}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    const-string v6, "method_ids_off:  "

    .line 484
    .line 485
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    invoke-virtual {p2, v11, v4}, Lb5/b;->b(ILjava/lang/String;)V

    .line 490
    .line 491
    .line 492
    :cond_c
    invoke-virtual {p2, v2}, Lb5/b;->j(I)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {p2, v0}, Lb5/b;->j(I)V

    .line 496
    .line 497
    .line 498
    iget-object p1, p1, Lu4/f;->j:Lu4/d;

    .line 499
    .line 500
    invoke-virtual {p1}, Lu4/a0;->f()V

    .line 501
    .line 502
    .line 503
    iget-object v0, p1, Lu4/d;->f:Ljava/util/TreeMap;

    .line 504
    .line 505
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    if-nez v0, :cond_d

    .line 510
    .line 511
    goto :goto_7

    .line 512
    :cond_d
    invoke-virtual {p1}, Lu4/a0;->b()I

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    :goto_7
    invoke-virtual {p2}, Lb5/b;->d()Z

    .line 517
    .line 518
    .line 519
    move-result p1

    .line 520
    if-eqz p1, :cond_e

    .line 521
    .line 522
    invoke-static {v0}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object p1

    .line 526
    const-string v2, "class_defs_size: "

    .line 527
    .line 528
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    invoke-virtual {p2, v11, p1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-static {v1}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    const-string v2, "class_defs_off:  "

    .line 540
    .line 541
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    invoke-virtual {p2, v11, p1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 546
    .line 547
    .line 548
    :cond_e
    invoke-virtual {p2, v0}, Lb5/b;->j(I)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {p2, v1}, Lb5/b;->j(I)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {p2}, Lb5/b;->d()Z

    .line 555
    .line 556
    .line 557
    move-result p1

    .line 558
    if-eqz p1, :cond_f

    .line 559
    .line 560
    invoke-static {v5}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object p1

    .line 564
    const-string v0, "data_size:       "

    .line 565
    .line 566
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    invoke-virtual {p2, v11, p1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-static {v3}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object p1

    .line 577
    const-string v0, "data_off:        "

    .line 578
    .line 579
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object p1

    .line 583
    invoke-virtual {p2, v11, p1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 584
    .line 585
    .line 586
    :cond_f
    invoke-virtual {p2, v5}, Lb5/b;->j(I)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {p2, v3}, Lb5/b;->j(I)V

    .line 590
    .line 591
    .line 592
    return-void

    .line 593
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 594
    .line 595
    const-string p2, "too many proto ids"

    .line 596
    .line 597
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    throw p1

    .line 601
    :cond_11
    new-instance p1, Lo4/a;

    .line 602
    .line 603
    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 604
    .line 605
    .line 606
    move-result-object p2

    .line 607
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 608
    .line 609
    .line 610
    move-result p2

    .line 611
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 612
    .line 613
    .line 614
    move-result-object p2

    .line 615
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    const/4 v3, 0x2

    .line 620
    new-array v3, v3, [Ljava/lang/Object;

    .line 621
    .line 622
    aput-object p2, v3, v1

    .line 623
    .line 624
    aput-object v2, v3, v0

    .line 625
    .line 626
    const-string p2, "Too many type identifiers to fit in one dex file: %1$d; max is %2$d.%nYou may try using multi-dex. If multi-dex is enabled then the list of classes for the main dex list is too large."

    .line 627
    .line 628
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object p2

    .line 632
    invoke-direct {p1, p2}, Lo4/a;-><init>(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    throw p1

    .line 636
    :cond_12
    new-instance p1, Ljava/lang/RuntimeException;

    .line 637
    .line 638
    invoke-direct {p1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    goto :goto_9

    .line 642
    :goto_8
    throw p1

    .line 643
    :goto_9
    goto :goto_8
.end method
