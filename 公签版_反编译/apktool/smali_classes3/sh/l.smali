.class public final Lsh/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public a:B

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-byte p1, p0, Lsh/l;->a:B

    .line 4
    iput-object p2, p0, Lsh/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(BLjava/io/ObjectInput;)Ljava/io/Serializable;
    .locals 4

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-eq p0, v0, :cond_d

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    packed-switch p0, :pswitch_data_1

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/io/StreamCorruptedException;

    .line 12
    .line 13
    const-string p1, "Unknown serialized type"

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0

    .line 19
    :pswitch_0
    sget p0, Lsh/j;->c:I

    .line 20
    .line 21
    sget-object p0, Lsh/e;->d:Lsh/e;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {p0, v0, v1}, Lsh/e;->v(III)Lsh/e;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p1}, Lsh/g;->v(Ljava/io/ObjectInput;)Lsh/g;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p0, v0}, Lsh/f;->q(Lsh/e;Lsh/g;)Lsh/f;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p1}, Lsh/p;->t(Ljava/io/ObjectInput;)Lsh/p;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v0, Lsh/j;

    .line 52
    .line 53
    invoke-direct {v0, p0, p1}, Lsh/j;-><init>(Lsh/f;Lsh/p;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :pswitch_1
    sget p0, Lsh/n;->c:I

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    sget-object v0, Lwh/a;->D:Lwh/a;

    .line 68
    .line 69
    int-to-long v1, p0

    .line 70
    invoke-virtual {v0, v1, v2}, Lwh/a;->h(J)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lwh/a;->A:Lwh/a;

    .line 74
    .line 75
    int-to-long v1, p1

    .line 76
    invoke-virtual {v0, v1, v2}, Lwh/a;->h(J)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lsh/n;

    .line 80
    .line 81
    invoke-direct {v0, p0, p1}, Lsh/n;-><init>(II)V

    .line 82
    .line 83
    .line 84
    return-object v0

    .line 85
    :pswitch_2
    sget p0, Lsh/m;->b:I

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    invoke-static {p0}, Lsh/m;->m(I)Lsh/m;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :pswitch_3
    sget p0, Lsh/k;->c:I

    .line 97
    .line 98
    invoke-static {p1}, Lsh/g;->v(Ljava/io/ObjectInput;)Lsh/g;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p1}, Lsh/p;->t(Ljava/io/ObjectInput;)Lsh/p;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance v0, Lsh/k;

    .line 107
    .line 108
    invoke-direct {v0, p0, p1}, Lsh/k;-><init>(Lsh/g;Lsh/p;)V

    .line 109
    .line 110
    .line 111
    return-object v0

    .line 112
    :pswitch_4
    invoke-static {p1}, Lsh/p;->t(Ljava/io/ObjectInput;)Lsh/p;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :pswitch_5
    sget-object p0, Lsh/q;->c:Ljava/util/regex/Pattern;

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    const-string p1, "Z"

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    const-string v0, "Invalid ID for region-based ZoneId, invalid format: "

    .line 130
    .line 131
    if-nez p1, :cond_a

    .line 132
    .line 133
    const-string p1, "+"

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_a

    .line 140
    .line 141
    const-string p1, "-"

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-nez p1, :cond_a

    .line 148
    .line 149
    const-string p1, "UTC"

    .line 150
    .line 151
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-nez p1, :cond_9

    .line 156
    .line 157
    const-string p1, "GMT"

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-nez p1, :cond_9

    .line 164
    .line 165
    const-string p1, "UT"

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_0

    .line 172
    .line 173
    goto/16 :goto_4

    .line 174
    .line 175
    :cond_0
    const-string v1, "UTC+"

    .line 176
    .line 177
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_7

    .line 182
    .line 183
    const-string v1, "GMT+"

    .line 184
    .line 185
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_7

    .line 190
    .line 191
    const-string v1, "UTC-"

    .line 192
    .line 193
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_7

    .line 198
    .line 199
    const-string v1, "GMT-"

    .line 200
    .line 201
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_1

    .line 206
    .line 207
    goto/16 :goto_2

    .line 208
    .line 209
    :cond_1
    const-string v1, "UT+"

    .line 210
    .line 211
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    const/4 v2, 0x2

    .line 216
    if-nez v1, :cond_5

    .line 217
    .line 218
    const-string v1, "UT-"

    .line 219
    .line 220
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_2

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-lt p1, v2, :cond_4

    .line 232
    .line 233
    sget-object p1, Lsh/q;->c:Ljava/util/regex/Pattern;

    .line 234
    .line 235
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-eqz p1, :cond_4

    .line 244
    .line 245
    :try_start_0
    invoke-static {p0}, Lxh/d;->a(Ljava/lang/String;)Lxh/h;

    .line 246
    .line 247
    .line 248
    move-result-object p1
    :try_end_0
    .catch Lxh/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_0

    .line 250
    :catch_0
    const-string p1, "GMT0"

    .line 251
    .line 252
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    if-eqz p1, :cond_3

    .line 257
    .line 258
    sget-object p1, Lsh/p;->e:Lsh/p;

    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    new-instance v0, Lxh/g;

    .line 264
    .line 265
    invoke-direct {v0, p1}, Lxh/g;-><init>(Lsh/p;)V

    .line 266
    .line 267
    .line 268
    move-object p1, v0

    .line 269
    goto :goto_0

    .line 270
    :cond_3
    const/4 p1, 0x0

    .line 271
    :goto_0
    new-instance v0, Lsh/q;

    .line 272
    .line 273
    invoke-direct {v0, p0, p1}, Lsh/q;-><init>(Ljava/lang/String;Lxh/h;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_5

    .line 277
    .line 278
    :cond_4
    new-instance p1, Lsh/a;

    .line 279
    .line 280
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-direct {p1, p0}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw p1

    .line 288
    :cond_5
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-static {p0}, Lsh/p;->p(Ljava/lang/String;)Lsh/p;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    iget v0, p0, Lsh/p;->a:I

    .line 297
    .line 298
    if-nez v0, :cond_6

    .line 299
    .line 300
    new-instance v0, Lsh/q;

    .line 301
    .line 302
    new-instance v1, Lxh/g;

    .line 303
    .line 304
    invoke-direct {v1, p0}, Lxh/g;-><init>(Lsh/p;)V

    .line 305
    .line 306
    .line 307
    invoke-direct {v0, p1, v1}, Lsh/q;-><init>(Ljava/lang/String;Lxh/h;)V

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_6
    new-instance v0, Lsh/q;

    .line 312
    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object p1, p0, Lsh/p;->b:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    new-instance v1, Lxh/g;

    .line 328
    .line 329
    invoke-direct {v1, p0}, Lxh/g;-><init>(Lsh/p;)V

    .line 330
    .line 331
    .line 332
    invoke-direct {v0, p1, v1}, Lsh/q;-><init>(Ljava/lang/String;Lxh/h;)V

    .line 333
    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_7
    :goto_2
    const/4 p1, 0x3

    .line 337
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-static {v0}, Lsh/p;->p(Ljava/lang/String;)Lsh/p;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    iget v1, v0, Lsh/p;->a:I

    .line 346
    .line 347
    const/4 v2, 0x0

    .line 348
    if-nez v1, :cond_8

    .line 349
    .line 350
    new-instance v1, Lsh/q;

    .line 351
    .line 352
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    new-instance p1, Lxh/g;

    .line 357
    .line 358
    invoke-direct {p1, v0}, Lxh/g;-><init>(Lsh/p;)V

    .line 359
    .line 360
    .line 361
    invoke-direct {v1, p0, p1}, Lsh/q;-><init>(Ljava/lang/String;Lxh/h;)V

    .line 362
    .line 363
    .line 364
    :goto_3
    move-object v0, v1

    .line 365
    goto :goto_5

    .line 366
    :cond_8
    new-instance v1, Lsh/q;

    .line 367
    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p0

    .line 377
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    iget-object p0, v0, Lsh/p;->b:Ljava/lang/String;

    .line 381
    .line 382
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    new-instance p1, Lxh/g;

    .line 390
    .line 391
    invoke-direct {p1, v0}, Lxh/g;-><init>(Lsh/p;)V

    .line 392
    .line 393
    .line 394
    invoke-direct {v1, p0, p1}, Lsh/q;-><init>(Ljava/lang/String;Lxh/h;)V

    .line 395
    .line 396
    .line 397
    goto :goto_3

    .line 398
    :cond_9
    :goto_4
    new-instance v0, Lsh/q;

    .line 399
    .line 400
    sget-object p1, Lsh/p;->e:Lsh/p;

    .line 401
    .line 402
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    new-instance v1, Lxh/g;

    .line 406
    .line 407
    invoke-direct {v1, p1}, Lxh/g;-><init>(Lsh/p;)V

    .line 408
    .line 409
    .line 410
    invoke-direct {v0, p0, v1}, Lsh/q;-><init>(Ljava/lang/String;Lxh/h;)V

    .line 411
    .line 412
    .line 413
    :goto_5
    return-object v0

    .line 414
    :cond_a
    new-instance p1, Lsh/a;

    .line 415
    .line 416
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p0

    .line 420
    invoke-direct {p1, p0}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    throw p1

    .line 424
    :pswitch_6
    sget-object p0, Lsh/f;->c:Lsh/f;

    .line 425
    .line 426
    sget-object p0, Lsh/e;->d:Lsh/e;

    .line 427
    .line 428
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 429
    .line 430
    .line 431
    move-result p0

    .line 432
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    invoke-static {p0, v0, v1}, Lsh/e;->v(III)Lsh/e;

    .line 441
    .line 442
    .line 443
    move-result-object p0

    .line 444
    invoke-static {p1}, Lsh/g;->v(Ljava/io/ObjectInput;)Lsh/g;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-static {p0, v0}, Lsh/f;->q(Lsh/e;Lsh/g;)Lsh/f;

    .line 449
    .line 450
    .line 451
    move-result-object p0

    .line 452
    invoke-static {p1}, Lsh/p;->t(Ljava/io/ObjectInput;)Lsh/p;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    invoke-static {v1, p1}, Lsh/l;->a(BLjava/io/ObjectInput;)Ljava/io/Serializable;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    check-cast p1, Lsh/o;

    .line 465
    .line 466
    const-string v1, "zone"

    .line 467
    .line 468
    invoke-static {p1, v1}, Lif/a;->t0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    instance-of v1, p1, Lsh/p;

    .line 472
    .line 473
    if-eqz v1, :cond_c

    .line 474
    .line 475
    invoke-virtual {v0, p1}, Lsh/p;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    if-eqz v1, :cond_b

    .line 480
    .line 481
    goto :goto_6

    .line 482
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 483
    .line 484
    const-string p1, "ZoneId must match ZoneOffset"

    .line 485
    .line 486
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    throw p0

    .line 490
    :cond_c
    :goto_6
    new-instance v1, Lsh/r;

    .line 491
    .line 492
    invoke-direct {v1, p0, p1, v0}, Lsh/r;-><init>(Lsh/f;Lsh/o;Lsh/p;)V

    .line 493
    .line 494
    .line 495
    return-object v1

    .line 496
    :pswitch_7
    invoke-static {p1}, Lsh/g;->v(Ljava/io/ObjectInput;)Lsh/g;

    .line 497
    .line 498
    .line 499
    move-result-object p0

    .line 500
    return-object p0

    .line 501
    :pswitch_8
    sget-object p0, Lsh/f;->c:Lsh/f;

    .line 502
    .line 503
    sget-object p0, Lsh/e;->d:Lsh/e;

    .line 504
    .line 505
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 506
    .line 507
    .line 508
    move-result p0

    .line 509
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    invoke-static {p0, v0, v1}, Lsh/e;->v(III)Lsh/e;

    .line 518
    .line 519
    .line 520
    move-result-object p0

    .line 521
    invoke-static {p1}, Lsh/g;->v(Ljava/io/ObjectInput;)Lsh/g;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    invoke-static {p0, p1}, Lsh/f;->q(Lsh/e;Lsh/g;)Lsh/f;

    .line 526
    .line 527
    .line 528
    move-result-object p0

    .line 529
    return-object p0

    .line 530
    :pswitch_9
    sget-object p0, Lsh/e;->d:Lsh/e;

    .line 531
    .line 532
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 533
    .line 534
    .line 535
    move-result p0

    .line 536
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 541
    .line 542
    .line 543
    move-result p1

    .line 544
    invoke-static {p0, v0, p1}, Lsh/e;->v(III)Lsh/e;

    .line 545
    .line 546
    .line 547
    move-result-object p0

    .line 548
    return-object p0

    .line 549
    :pswitch_a
    sget-object p0, Lsh/d;->c:Lsh/d;

    .line 550
    .line 551
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    .line 552
    .line 553
    .line 554
    move-result-wide v0

    .line 555
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 556
    .line 557
    .line 558
    move-result p0

    .line 559
    int-to-long p0, p0

    .line 560
    invoke-static {v0, v1, p0, p1}, Lsh/d;->n(JJ)Lsh/d;

    .line 561
    .line 562
    .line 563
    move-result-object p0

    .line 564
    return-object p0

    .line 565
    :pswitch_b
    sget-object p0, Lsh/c;->c:Lsh/c;

    .line 566
    .line 567
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    .line 568
    .line 569
    .line 570
    move-result-wide v0

    .line 571
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 572
    .line 573
    .line 574
    move-result p0

    .line 575
    int-to-long p0, p0

    .line 576
    const-wide/32 v2, 0x3b9aca00

    .line 577
    .line 578
    .line 579
    invoke-static {p0, p1, v2, v3}, Lif/a;->C(JJ)J

    .line 580
    .line 581
    .line 582
    move-result-wide v2

    .line 583
    invoke-static {v0, v1, v2, v3}, Lif/a;->u0(JJ)J

    .line 584
    .line 585
    .line 586
    move-result-wide v0

    .line 587
    const v2, 0x3b9aca00

    .line 588
    .line 589
    .line 590
    invoke-static {v2, p0, p1}, Lif/a;->D(IJ)I

    .line 591
    .line 592
    .line 593
    move-result p0

    .line 594
    invoke-static {p0, v0, v1}, Lsh/c;->a(IJ)Lsh/c;

    .line 595
    .line 596
    .line 597
    move-result-object p0

    .line 598
    return-object p0

    .line 599
    :cond_d
    sget p0, Lsh/i;->c:I

    .line 600
    .line 601
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 602
    .line 603
    .line 604
    move-result p0

    .line 605
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 606
    .line 607
    .line 608
    move-result p1

    .line 609
    invoke-static {p0}, Lsh/h;->q(I)Lsh/h;

    .line 610
    .line 611
    .line 612
    move-result-object p0

    .line 613
    const-string v0, "month"

    .line 614
    .line 615
    invoke-static {p0, v0}, Lif/a;->t0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    sget-object v0, Lwh/a;->v:Lwh/a;

    .line 619
    .line 620
    int-to-long v1, p1

    .line 621
    invoke-virtual {v0, v1, v2}, Lwh/a;->h(J)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {p0}, Lsh/h;->p()I

    .line 625
    .line 626
    .line 627
    move-result v0

    .line 628
    if-gt p1, v0, :cond_e

    .line 629
    .line 630
    new-instance v0, Lsh/i;

    .line 631
    .line 632
    invoke-virtual {p0}, Lsh/h;->n()I

    .line 633
    .line 634
    .line 635
    move-result p0

    .line 636
    invoke-direct {v0, p0, p1}, Lsh/i;-><init>(II)V

    .line 637
    .line 638
    .line 639
    return-object v0

    .line 640
    :cond_e
    new-instance v0, Lsh/a;

    .line 641
    .line 642
    const-string v1, "Illegal value for DayOfMonth field, value "

    .line 643
    .line 644
    const-string v2, " is not valid for month "

    .line 645
    .line 646
    invoke-static {v1, p1, v2}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    move-result-object p1

    .line 650
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object p0

    .line 654
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object p0

    .line 661
    invoke-direct {v0, p0}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    goto :goto_8

    .line 665
    :goto_7
    throw v0

    .line 666
    :goto_8
    goto :goto_7

    .line 667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lsh/l;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-byte v0, p0, Lsh/l;->a:B

    .line 6
    .line 7
    invoke-static {v0, p1}, Lsh/l;->a(BLjava/io/ObjectInput;)Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lsh/l;->b:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4

    .line 1
    iget-byte v0, p0, Lsh/l;->a:B

    .line 2
    .line 3
    iget-object v1, p0, Lsh/l;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x40

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    packed-switch v0, :pswitch_data_1

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/io/InvalidClassException;

    .line 19
    .line 20
    const-string v0, "Unknown serialized type"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :pswitch_0
    check-cast v1, Lsh/j;

    .line 27
    .line 28
    iget-object v0, v1, Lsh/j;->a:Lsh/f;

    .line 29
    .line 30
    iget-object v2, v0, Lsh/f;->a:Lsh/e;

    .line 31
    .line 32
    iget v3, v2, Lsh/e;->a:I

    .line 33
    .line 34
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 35
    .line 36
    .line 37
    iget-short v3, v2, Lsh/e;->b:S

    .line 38
    .line 39
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 40
    .line 41
    .line 42
    iget-short v2, v2, Lsh/e;->c:S

    .line 43
    .line 44
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lsh/f;->b:Lsh/g;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lsh/g;->A(Ljava/io/DataOutput;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v1, Lsh/j;->b:Lsh/p;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lsh/p;->u(Ljava/io/DataOutput;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :pswitch_1
    check-cast v1, Lsh/n;

    .line 60
    .line 61
    iget v0, v1, Lsh/n;->a:I

    .line 62
    .line 63
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    iget v0, v1, Lsh/n;->b:I

    .line 67
    .line 68
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :pswitch_2
    check-cast v1, Lsh/m;

    .line 74
    .line 75
    iget v0, v1, Lsh/m;->a:I

    .line 76
    .line 77
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :pswitch_3
    check-cast v1, Lsh/k;

    .line 83
    .line 84
    iget-object v0, v1, Lsh/k;->a:Lsh/g;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Lsh/g;->A(Ljava/io/DataOutput;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, v1, Lsh/k;->b:Lsh/p;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Lsh/p;->u(Ljava/io/DataOutput;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :pswitch_4
    check-cast v1, Lsh/p;

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Lsh/p;->u(Ljava/io/DataOutput;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :pswitch_5
    check-cast v1, Lsh/q;

    .line 104
    .line 105
    iget-object v0, v1, Lsh/q;->a:Ljava/lang/String;

    .line 106
    .line 107
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :pswitch_6
    check-cast v1, Lsh/r;

    .line 113
    .line 114
    iget-object v0, v1, Lsh/r;->a:Lsh/f;

    .line 115
    .line 116
    iget-object v2, v0, Lsh/f;->a:Lsh/e;

    .line 117
    .line 118
    iget v3, v2, Lsh/e;->a:I

    .line 119
    .line 120
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 121
    .line 122
    .line 123
    iget-short v3, v2, Lsh/e;->b:S

    .line 124
    .line 125
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 126
    .line 127
    .line 128
    iget-short v2, v2, Lsh/e;->c:S

    .line 129
    .line 130
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 131
    .line 132
    .line 133
    iget-object v0, v0, Lsh/f;->b:Lsh/g;

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Lsh/g;->A(Ljava/io/DataOutput;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, v1, Lsh/r;->b:Lsh/p;

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Lsh/p;->u(Ljava/io/DataOutput;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, v1, Lsh/r;->c:Lsh/o;

    .line 144
    .line 145
    invoke-virtual {v0, p1}, Lsh/o;->o(Ljava/io/ObjectOutput;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :pswitch_7
    check-cast v1, Lsh/g;

    .line 150
    .line 151
    invoke-virtual {v1, p1}, Lsh/g;->A(Ljava/io/DataOutput;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :pswitch_8
    check-cast v1, Lsh/f;

    .line 156
    .line 157
    iget-object v0, v1, Lsh/f;->a:Lsh/e;

    .line 158
    .line 159
    iget v2, v0, Lsh/e;->a:I

    .line 160
    .line 161
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 162
    .line 163
    .line 164
    iget-short v2, v0, Lsh/e;->b:S

    .line 165
    .line 166
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 167
    .line 168
    .line 169
    iget-short v0, v0, Lsh/e;->c:S

    .line 170
    .line 171
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 172
    .line 173
    .line 174
    iget-object v0, v1, Lsh/f;->b:Lsh/g;

    .line 175
    .line 176
    invoke-virtual {v0, p1}, Lsh/g;->A(Ljava/io/DataOutput;)V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :pswitch_9
    check-cast v1, Lsh/e;

    .line 181
    .line 182
    iget v0, v1, Lsh/e;->a:I

    .line 183
    .line 184
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 185
    .line 186
    .line 187
    iget-short v0, v1, Lsh/e;->b:S

    .line 188
    .line 189
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 190
    .line 191
    .line 192
    iget-short v0, v1, Lsh/e;->c:S

    .line 193
    .line 194
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :pswitch_a
    check-cast v1, Lsh/d;

    .line 199
    .line 200
    iget-wide v2, v1, Lsh/d;->a:J

    .line 201
    .line 202
    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 203
    .line 204
    .line 205
    iget v0, v1, Lsh/d;->b:I

    .line 206
    .line 207
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :pswitch_b
    check-cast v1, Lsh/c;

    .line 212
    .line 213
    iget-wide v2, v1, Lsh/c;->a:J

    .line 214
    .line 215
    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 216
    .line 217
    .line 218
    iget v0, v1, Lsh/c;->b:I

    .line 219
    .line 220
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 221
    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_0
    check-cast v1, Lsh/i;

    .line 225
    .line 226
    iget v0, v1, Lsh/i;->a:I

    .line 227
    .line 228
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 229
    .line 230
    .line 231
    iget v0, v1, Lsh/i;->b:I

    .line 232
    .line 233
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 234
    .line 235
    .line 236
    :goto_0
    return-void

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
