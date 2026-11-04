.class public final Lx4/q;
.super Lx4/p;
.source "SourceFile"


# instance fields
.field public final c:Ly4/a;

.field public d:Ly4/a;


# direct methods
.method public constructor <init>(Lx4/u;Lx4/r;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lx4/p;-><init>(Lx4/u;Lx4/r;)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p2, Lx4/r;->b:Lx4/t;

    .line 6
    .line 7
    sget-object v2, Lx4/u;->e:Lx4/u;

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Lx4/u;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object p2, p2, Lx4/r;->a:Lx4/t;

    .line 14
    .line 15
    iget-object v1, v1, Lx4/t;->a:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object p1, p2, Lx4/t;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string p2, "invoke"

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_20

    .line 31
    .line 32
    const-string p2, "invokeExact"

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_20

    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_0
    sget-object v2, Lx4/u;->f:Lx4/u;

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Lx4/u;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_21

    .line 49
    .line 50
    iget-object p1, p2, Lx4/t;->a:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    const/4 p2, -0x1

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    sparse-switch v2, :sswitch_data_0

    .line 61
    .line 62
    .line 63
    :goto_0
    const/4 v0, -0x1

    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :sswitch_0
    const-string v0, "weakCompareAndSetRelease"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/16 v0, 0x1e

    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :sswitch_1
    const-string v0, "getAndSetAcquire"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const/16 v0, 0x1d

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :sswitch_2
    const-string v0, "compareAndExchange"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_3

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    const/16 v0, 0x1c

    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :sswitch_3
    const-string v0, "getAndBitwiseOr"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_4

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    const/16 v0, 0x1b

    .line 115
    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :sswitch_4
    const-string v0, "getAndBitwiseXorAcquire"

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_5

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    const/16 v0, 0x1a

    .line 128
    .line 129
    goto/16 :goto_1

    .line 130
    .line 131
    :sswitch_5
    const-string v0, "getAndAddAcquire"

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_6

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    const/16 v0, 0x19

    .line 141
    .line 142
    goto/16 :goto_1

    .line 143
    .line 144
    :sswitch_6
    const-string v0, "compareAndExchangeAcquire"

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_7

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_7
    const/16 v0, 0x18

    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :sswitch_7
    const-string v0, "getOpaque"

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-nez p1, :cond_8

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_8
    const/16 v0, 0x17

    .line 167
    .line 168
    goto/16 :goto_1

    .line 169
    .line 170
    :sswitch_8
    const-string v0, "setOpaque"

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-nez p1, :cond_9

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_9
    const/16 v0, 0x16

    .line 180
    .line 181
    goto/16 :goto_1

    .line 182
    .line 183
    :sswitch_9
    const-string v0, "getAndBitwiseAndAcquire"

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-nez p1, :cond_a

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_a
    const/16 v0, 0x15

    .line 194
    .line 195
    goto/16 :goto_1

    .line 196
    .line 197
    :sswitch_a
    const-string v0, "getAndSet"

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-nez p1, :cond_b

    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_b
    const/16 v0, 0x14

    .line 208
    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :sswitch_b
    const-string v0, "getAndAdd"

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-nez p1, :cond_c

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_c
    const/16 v0, 0x13

    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :sswitch_c
    const-string v0, "getVolatile"

    .line 226
    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-nez p1, :cond_d

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_d
    const/16 v0, 0x12

    .line 236
    .line 237
    goto/16 :goto_1

    .line 238
    .line 239
    :sswitch_d
    const-string v0, "setVolatile"

    .line 240
    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-nez p1, :cond_e

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_e
    const/16 v0, 0x11

    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :sswitch_e
    const-string v0, "getAndBitwiseOrAcquire"

    .line 254
    .line 255
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-nez p1, :cond_f

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_f
    const/16 v0, 0x10

    .line 264
    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :sswitch_f
    const-string v0, "set"

    .line 268
    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-nez p1, :cond_10

    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_10
    const/16 v0, 0xf

    .line 278
    .line 279
    goto/16 :goto_1

    .line 280
    .line 281
    :sswitch_10
    const-string v0, "get"

    .line 282
    .line 283
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    if-nez p1, :cond_11

    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_11
    const/16 v0, 0xe

    .line 292
    .line 293
    goto/16 :goto_1

    .line 294
    .line 295
    :sswitch_11
    const-string v0, "getAndSetRelease"

    .line 296
    .line 297
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    if-nez p1, :cond_12

    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_12
    const/16 v0, 0xd

    .line 306
    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :sswitch_12
    const-string v0, "getAcquire"

    .line 310
    .line 311
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    if-nez p1, :cond_13

    .line 316
    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    :cond_13
    const/16 v0, 0xc

    .line 320
    .line 321
    goto/16 :goto_1

    .line 322
    .line 323
    :sswitch_13
    const-string v0, "setRelease"

    .line 324
    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    if-nez p1, :cond_14

    .line 330
    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :cond_14
    const/16 v0, 0xb

    .line 334
    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :sswitch_14
    const-string v0, "weakCompareAndSetAcquire"

    .line 338
    .line 339
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    if-nez p1, :cond_15

    .line 344
    .line 345
    goto/16 :goto_0

    .line 346
    .line 347
    :cond_15
    const/16 v0, 0xa

    .line 348
    .line 349
    goto/16 :goto_1

    .line 350
    .line 351
    :sswitch_15
    const-string v0, "weakCompareAndSetPlain"

    .line 352
    .line 353
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    if-nez p1, :cond_16

    .line 358
    .line 359
    goto/16 :goto_0

    .line 360
    .line 361
    :cond_16
    const/16 v0, 0x9

    .line 362
    .line 363
    goto/16 :goto_1

    .line 364
    .line 365
    :sswitch_16
    const-string v0, "getAndBitwiseXorRelease"

    .line 366
    .line 367
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    if-nez p1, :cond_17

    .line 372
    .line 373
    goto/16 :goto_0

    .line 374
    .line 375
    :cond_17
    const/16 v0, 0x8

    .line 376
    .line 377
    goto :goto_1

    .line 378
    :sswitch_17
    const-string v0, "getAndBitwiseXor"

    .line 379
    .line 380
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result p1

    .line 384
    if-nez p1, :cond_18

    .line 385
    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :cond_18
    const/4 v0, 0x7

    .line 389
    goto :goto_1

    .line 390
    :sswitch_18
    const-string v0, "getAndBitwiseAnd"

    .line 391
    .line 392
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    if-nez p1, :cond_19

    .line 397
    .line 398
    goto/16 :goto_0

    .line 399
    .line 400
    :cond_19
    const/4 v0, 0x6

    .line 401
    goto :goto_1

    .line 402
    :sswitch_19
    const-string v0, "getAndAddRelease"

    .line 403
    .line 404
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    if-nez p1, :cond_1a

    .line 409
    .line 410
    goto/16 :goto_0

    .line 411
    .line 412
    :cond_1a
    const/4 v0, 0x5

    .line 413
    goto :goto_1

    .line 414
    :sswitch_1a
    const-string v0, "weakCompareAndSet"

    .line 415
    .line 416
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result p1

    .line 420
    if-nez p1, :cond_1b

    .line 421
    .line 422
    goto/16 :goto_0

    .line 423
    .line 424
    :cond_1b
    const/4 v0, 0x4

    .line 425
    goto :goto_1

    .line 426
    :sswitch_1b
    const-string v0, "compareAndExchangeRelease"

    .line 427
    .line 428
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result p1

    .line 432
    if-nez p1, :cond_1c

    .line 433
    .line 434
    goto/16 :goto_0

    .line 435
    .line 436
    :cond_1c
    const/4 v0, 0x3

    .line 437
    goto :goto_1

    .line 438
    :sswitch_1c
    const-string v0, "compareAndSet"

    .line 439
    .line 440
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result p1

    .line 444
    if-nez p1, :cond_1d

    .line 445
    .line 446
    goto/16 :goto_0

    .line 447
    .line 448
    :cond_1d
    const/4 v0, 0x2

    .line 449
    goto :goto_1

    .line 450
    :sswitch_1d
    const-string v0, "getAndBitwiseAndRelease"

    .line 451
    .line 452
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    if-nez p1, :cond_1e

    .line 457
    .line 458
    goto/16 :goto_0

    .line 459
    .line 460
    :cond_1e
    const/4 v0, 0x1

    .line 461
    goto :goto_1

    .line 462
    :sswitch_1e
    const-string v2, "getAndBitwiseOrRelease"

    .line 463
    .line 464
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result p1

    .line 468
    if-nez p1, :cond_1f

    .line 469
    .line 470
    goto/16 :goto_0

    .line 471
    .line 472
    :cond_1f
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 473
    .line 474
    .line 475
    goto :goto_2

    .line 476
    :cond_20
    :pswitch_0
    invoke-static {v1}, Ly4/a;->b(Ljava/lang/String;)Ly4/a;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    iput-object p1, p0, Lx4/q;->c:Ly4/a;

    .line 481
    .line 482
    goto :goto_4

    .line 483
    :cond_21
    :goto_2
    if-eqz v1, :cond_24

    .line 484
    .line 485
    sget-object p1, Ly4/a;->e:Lj$/util/concurrent/ConcurrentHashMap;

    .line 486
    .line 487
    invoke-virtual {p1, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object p2

    .line 491
    check-cast p2, Ly4/a;

    .line 492
    .line 493
    if-eqz p2, :cond_22

    .line 494
    .line 495
    goto :goto_3

    .line 496
    :cond_22
    invoke-static {v1}, Ly4/a;->b(Ljava/lang/String;)Ly4/a;

    .line 497
    .line 498
    .line 499
    move-result-object p2

    .line 500
    iget-object v0, p2, Ly4/a;->a:Ljava/lang/String;

    .line 501
    .line 502
    invoke-virtual {p1, v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    check-cast p1, Ly4/a;

    .line 507
    .line 508
    if-eqz p1, :cond_23

    .line 509
    .line 510
    move-object p2, p1

    .line 511
    :cond_23
    :goto_3
    iput-object p2, p0, Lx4/q;->c:Ly4/a;

    .line 512
    .line 513
    :goto_4
    const/4 p1, 0x0

    .line 514
    iput-object p1, p0, Lx4/q;->d:Ly4/a;

    .line 515
    .line 516
    return-void

    .line 517
    :cond_24
    sget-object p1, Ly4/a;->e:Lj$/util/concurrent/ConcurrentHashMap;

    .line 518
    .line 519
    new-instance p1, Ljava/lang/NullPointerException;

    .line 520
    .line 521
    const-string p2, "descriptor == null"

    .line 522
    .line 523
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    goto :goto_6

    .line 527
    :goto_5
    throw p1

    .line 528
    :goto_6
    goto :goto_5

    .line 529
    :sswitch_data_0
    .sparse-switch
        -0x74054ecc -> :sswitch_1e
        -0x64896c60 -> :sswitch_1d
        -0x639aefb0 -> :sswitch_1c
        -0x4d038cae -> :sswitch_1b
        -0x42a27c48 -> :sswitch_1a
        -0x41bf8e59 -> :sswitch_19
        -0x3d910599 -> :sswitch_18
        -0x3d90af15 -> :sswitch_17
        -0x2f5b5f64 -> :sswitch_16
        -0x21ce070e -> :sswitch_15
        -0xe5aaa02 -> :sswitch_14
        -0xdc04ebb -> :sswitch_13
        -0x7976360 -> :sswitch_12
        -0x23e5d3a -> :sswitch_11
        0x18f56 -> :sswitch_10
        0x1bc62 -> :sswitch_f
        0x594ea03 -> :sswitch_e
        0x6099c1e -> :sswitch_d
        0xb513b12 -> :sswitch_c
        0x10d9c640 -> :sswitch_b
        0x10da0a01 -> :sswitch_a
        0x1510cc6f -> :sswitch_9
        0x1c0e5b23 -> :sswitch_8
        0x28d92717 -> :sswitch_7
        0x2c96ac21 -> :sswitch_6
        0x37daaa76 -> :sswitch_5
        0x4a3ed96b -> :sswitch_4
        0x50983b53 -> :sswitch_3
        0x58737ef5 -> :sswitch_2
        0x775bdb95 -> :sswitch_1
        0x780b1d2f -> :sswitch_0
    .end sparse-switch

    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final c(Lx4/a;)I
    .locals 3

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lx4/p;

    .line 3
    .line 4
    iget-object v1, v0, Lx4/p;->a:Lx4/u;

    .line 5
    .line 6
    iget-object v2, p0, Lx4/p;->a:Lx4/u;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Lx4/a;->b(Lx4/a;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lx4/p;->b:Lx4/r;

    .line 16
    .line 17
    iget-object v1, v1, Lx4/r;->a:Lx4/t;

    .line 18
    .line 19
    iget-object v0, v0, Lx4/p;->b:Lx4/r;

    .line 20
    .line 21
    iget-object v0, v0, Lx4/r;->a:Lx4/t;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lx4/a;->b(Lx4/a;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :goto_0
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    check-cast p1, Lx4/q;

    .line 31
    .line 32
    iget-object v0, p0, Lx4/q;->c:Ly4/a;

    .line 33
    .line 34
    iget-object p1, p1, Lx4/q;->c:Ly4/a;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ly4/a;->a(Ly4/a;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "method"

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(Z)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lx4/q;->c:Ly4/a;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Lx4/q;->d:Ly4/a;

    .line 8
    .line 9
    if-nez p1, :cond_3

    .line 10
    .line 11
    iget-object p1, p0, Lx4/p;->a:Lx4/u;

    .line 12
    .line 13
    iget-object p1, p1, Lx4/u;->a:Ly4/c;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "("

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p1, Ly4/c;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v3, v1, Ly4/a;->a:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-static {v3, v4, v2}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, v1, Ly4/a;->c:Ly4/b;

    .line 38
    .line 39
    iget-object v3, v3, Lb5/c;->b:[Ljava/lang/Object;

    .line 40
    .line 41
    array-length v4, v3

    .line 42
    new-instance v5, Ly4/b;

    .line 43
    .line 44
    add-int/lit8 v6, v4, 0x1

    .line 45
    .line 46
    invoke-direct {v5, v6}, Ly4/b;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v0, p1}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    :goto_0
    if-ge p1, v4, :cond_1

    .line 54
    .line 55
    add-int/lit8 v6, p1, 0x1

    .line 56
    .line 57
    aget-object p1, v3, p1

    .line 58
    .line 59
    invoke-virtual {v5, v6, p1}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move p1, v6

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iput-boolean v0, v5, Lb5/f;->a:Z

    .line 65
    .line 66
    new-instance p1, Ly4/a;

    .line 67
    .line 68
    iget-object v1, v1, Ly4/a;->b:Ly4/c;

    .line 69
    .line 70
    invoke-direct {p1, v2, v1, v5}, Ly4/a;-><init>(Ljava/lang/String;Ly4/c;Ly4/b;)V

    .line 71
    .line 72
    .line 73
    sget-object v1, Ly4/a;->e:Lj$/util/concurrent/ConcurrentHashMap;

    .line 74
    .line 75
    invoke-virtual {v1, v2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ly4/a;

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    move-object p1, v1

    .line 84
    :cond_2
    iput-object p1, p0, Lx4/q;->d:Ly4/a;

    .line 85
    .line 86
    :cond_3
    iget-object v1, p0, Lx4/q;->d:Ly4/a;

    .line 87
    .line 88
    :goto_1
    iget-object p1, v1, Ly4/a;->c:Ly4/b;

    .line 89
    .line 90
    iget-object v1, p1, Lb5/c;->b:[Ljava/lang/Object;

    .line 91
    .line 92
    array-length v1, v1

    .line 93
    const/4 v2, 0x0

    .line 94
    :goto_2
    if-ge v0, v1, :cond_4

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Ly4/c;

    .line 101
    .line 102
    invoke-virtual {v3}, Ly4/c;->c()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    add-int/2addr v2, v3

    .line 107
    add-int/lit8 v0, v0, 0x1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    return v2
.end method
