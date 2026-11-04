.class public final Lh/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lg/c;

.field public static final d:Z


# instance fields
.field public final a:Lg/h;

.field public final b:Lg/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "x509"

    .line 2
    .line 3
    invoke-static {v0}, Lg/c;->a(Ljava/lang/String;)Lg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lh/a;->c:Lg/c;

    .line 8
    .line 9
    new-instance v0, Lb/a;

    .line 10
    .line 11
    invoke-direct {v0}, Lb/a;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sput-boolean v0, Lh/a;->d:Z

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/io/StringReader;Ljava/util/Map;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    :goto_0
    const-string v4, "Incorrect AVA format"

    .line 15
    .line 16
    invoke-static {v1, v4}, Lh/a;->e(Ljava/io/StringReader;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/16 v5, 0x3d

    .line 21
    .line 22
    if-ne v4, v5, :cond_23

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    sget-object v5, Lh/c;->e:Ljava/util/HashMap;

    .line 29
    .line 30
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    move-object/from16 v5, p2

    .line 41
    .line 42
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Ljava/lang/String;

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    if-nez v5, :cond_3

    .line 50
    .line 51
    sget-object v5, Lh/c;->f:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Lh/c;

    .line 58
    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    iget-object v4, v5, Lh/c;->b:Lg/h;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    const-string v5, "OID."

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    const/4 v5, 0x4

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_2

    .line 82
    .line 83
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    const/16 v7, 0x30

    .line 88
    .line 89
    if-lt v5, v7, :cond_2

    .line 90
    .line 91
    const/16 v7, 0x39

    .line 92
    .line 93
    if-gt v5, v7, :cond_2

    .line 94
    .line 95
    new-instance v5, Lg/h;

    .line 96
    .line 97
    invoke-direct {v5, v4}, Lg/h;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    move-object v4, v5

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 103
    .line 104
    const-string v2, "Invalid keyword \""

    .line 105
    .line 106
    const-string v3, "\""

    .line 107
    .line 108
    invoke-static {v2, v4, v3}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v1

    .line 116
    :cond_3
    new-instance v4, Lg/h;

    .line 117
    .line 118
    invoke-direct {v4, v5}, Lg/h;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    iput-object v4, v0, Lh/a;->a:Lg/h;

    .line 122
    .line 123
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 124
    .line 125
    .line 126
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->read()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    const/16 v5, 0x20

    .line 131
    .line 132
    if-eq v4, v5, :cond_4

    .line 133
    .line 134
    const/16 v7, 0xa

    .line 135
    .line 136
    if-eq v4, v7, :cond_4

    .line 137
    .line 138
    const/4 v8, -0x1

    .line 139
    if-ne v4, v8, :cond_5

    .line 140
    .line 141
    new-instance v1, Lg/g;

    .line 142
    .line 143
    const-string v2, ""

    .line 144
    .line 145
    invoke-direct {v1, v2}, Lg/g;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iput-object v1, v0, Lh/a;->b:Lg/g;

    .line 149
    .line 150
    goto/16 :goto_10

    .line 151
    .line 152
    :cond_5
    const/16 v9, 0x23

    .line 153
    .line 154
    if-ne v4, v9, :cond_b

    .line 155
    .line 156
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 157
    .line 158
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    .line 160
    .line 161
    const/4 v4, 0x0

    .line 162
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->read()I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    invoke-static {v5}, Lh/a;->d(I)Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-eqz v7, :cond_8

    .line 171
    .line 172
    if-eqz v6, :cond_7

    .line 173
    .line 174
    rem-int/lit8 v6, v6, 0x2

    .line 175
    .line 176
    if-eq v6, v2, :cond_6

    .line 177
    .line 178
    new-instance v1, Lg/g;

    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-direct {v1, v2}, Lg/g;-><init>([B)V

    .line 185
    .line 186
    .line 187
    iput-object v1, v0, Lh/a;->b:Lg/g;

    .line 188
    .line 189
    goto/16 :goto_10

    .line 190
    .line 191
    :cond_6
    new-instance v1, Ljava/io/IOException;

    .line 192
    .line 193
    const-string v2, "AVA parse, odd number of hex digits"

    .line 194
    .line 195
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v1

    .line 199
    :cond_7
    new-instance v1, Ljava/io/IOException;

    .line 200
    .line 201
    const-string v2, "AVA parse, zero hex digits"

    .line 202
    .line 203
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v1

    .line 207
    :cond_8
    int-to-char v5, v5

    .line 208
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    const-string v9, "0123456789ABCDEF"

    .line 213
    .line 214
    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(I)I

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    if-eq v7, v8, :cond_a

    .line 219
    .line 220
    rem-int/lit8 v5, v6, 0x2

    .line 221
    .line 222
    if-ne v5, v2, :cond_9

    .line 223
    .line 224
    mul-int/lit8 v4, v4, 0x10

    .line 225
    .line 226
    int-to-byte v5, v7

    .line 227
    add-int/2addr v4, v5

    .line 228
    int-to-byte v4, v4

    .line 229
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_9
    int-to-byte v4, v7

    .line 234
    :goto_3
    add-int/2addr v6, v2

    .line 235
    goto :goto_2

    .line 236
    :cond_a
    new-instance v1, Ljava/io/IOException;

    .line 237
    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v3, "AVA parse, invalid hex digit: "

    .line 241
    .line 242
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw v1

    .line 256
    :cond_b
    const/16 v9, 0x16

    .line 257
    .line 258
    const/16 v10, 0xc

    .line 259
    .line 260
    sget-boolean v11, Lh/a;->d:Z

    .line 261
    .line 262
    const/16 v12, 0x5c

    .line 263
    .line 264
    const/16 v13, 0x22

    .line 265
    .line 266
    if-ne v4, v13, :cond_16

    .line 267
    .line 268
    const-string v4, "Quoted string did not end in quote"

    .line 269
    .line 270
    invoke-static {v1, v4}, Lh/a;->e(Ljava/io/StringReader;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v14

    .line 274
    new-instance v15, Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .line 278
    .line 279
    const/16 v16, 0x1

    .line 280
    .line 281
    :goto_4
    if-eq v14, v13, :cond_10

    .line 282
    .line 283
    if-ne v14, v12, :cond_e

    .line 284
    .line 285
    invoke-static {v1, v4}, Lh/a;->e(Ljava/io/StringReader;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v14

    .line 289
    invoke-static {v14, v1}, Lh/a;->a(ILjava/io/StringReader;)Ljava/lang/Byte;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    if-eqz v2, :cond_c

    .line 294
    .line 295
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->read()I

    .line 299
    .line 300
    .line 301
    move-result v14

    .line 302
    const/16 v16, 0x0

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_c
    if-eq v14, v12, :cond_e

    .line 306
    .line 307
    if-eq v14, v13, :cond_e

    .line 308
    .line 309
    int-to-char v2, v14

    .line 310
    const-string v6, ",+=\n<>#;"

    .line 311
    .line 312
    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(I)I

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    if-ltz v6, :cond_d

    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_d
    new-instance v1, Ljava/io/IOException;

    .line 320
    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    const-string v4, "Invalid escaped character in AVA: "

    .line 324
    .line 325
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw v1

    .line 339
    :cond_e
    :goto_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    if-lez v2, :cond_f

    .line 344
    .line 345
    invoke-static {v15}, Lh/a;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 353
    .line 354
    .line 355
    :cond_f
    int-to-char v2, v14

    .line 356
    invoke-static {v2}, Lg/g;->h(C)Z

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    and-int v16, v16, v6

    .line 361
    .line 362
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-static {v1, v4}, Lh/a;->e(Ljava/io/StringReader;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    move-result v14

    .line 369
    const/4 v6, 0x0

    .line 370
    goto :goto_4

    .line 371
    :cond_10
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-lez v2, :cond_11

    .line 376
    .line 377
    invoke-static {v15}, Lh/a;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 385
    .line 386
    .line 387
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->read()I

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    if-eq v2, v7, :cond_11

    .line 392
    .line 393
    if-eq v2, v5, :cond_11

    .line 394
    .line 395
    if-ne v2, v8, :cond_15

    .line 396
    .line 397
    sget-object v1, Ld/a;->b:Lg/h;

    .line 398
    .line 399
    iget-object v2, v0, Lh/a;->a:Lg/h;

    .line 400
    .line 401
    invoke-virtual {v2, v1}, Lg/h;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-nez v1, :cond_14

    .line 406
    .line 407
    sget-object v1, Lh/w;->v:Lg/h;

    .line 408
    .line 409
    invoke-virtual {v2, v1}, Lg/h;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_12

    .line 414
    .line 415
    if-nez v11, :cond_12

    .line 416
    .line 417
    goto :goto_6

    .line 418
    :cond_12
    if-eqz v16, :cond_13

    .line 419
    .line 420
    new-instance v1, Lg/g;

    .line 421
    .line 422
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-direct {v1, v2}, Lg/g;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    goto :goto_7

    .line 434
    :cond_13
    new-instance v1, Lg/g;

    .line 435
    .line 436
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-direct {v1, v10, v2}, Lg/g;-><init>(BLjava/lang/String;)V

    .line 445
    .line 446
    .line 447
    goto :goto_7

    .line 448
    :cond_14
    :goto_6
    new-instance v1, Lg/g;

    .line 449
    .line 450
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    invoke-direct {v1, v9, v2}, Lg/g;-><init>(BLjava/lang/String;)V

    .line 459
    .line 460
    .line 461
    :goto_7
    iput-object v1, v0, Lh/a;->b:Lg/g;

    .line 462
    .line 463
    goto/16 :goto_10

    .line 464
    .line 465
    :cond_15
    new-instance v1, Ljava/io/IOException;

    .line 466
    .line 467
    const-string v2, "AVA had characters other than whitespace after terminating quote"

    .line 468
    .line 469
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    throw v1

    .line 473
    :cond_16
    new-instance v6, Ljava/util/ArrayList;

    .line 474
    .line 475
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .line 477
    .line 478
    const/4 v7, 0x1

    .line 479
    const/4 v13, 0x0

    .line 480
    :goto_8
    if-ne v4, v12, :cond_19

    .line 481
    .line 482
    const-string v4, "Invalid trailing backslash"

    .line 483
    .line 484
    invoke-static {v1, v4}, Lh/a;->e(Ljava/io/StringReader;Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    move-result v4

    .line 488
    invoke-static {v4, v1}, Lh/a;->a(ILjava/io/StringReader;)Ljava/lang/Byte;

    .line 489
    .line 490
    .line 491
    move-result-object v14

    .line 492
    if-eqz v14, :cond_17

    .line 493
    .line 494
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->read()I

    .line 498
    .line 499
    .line 500
    move-result v4

    .line 501
    const/4 v7, 0x0

    .line 502
    goto :goto_d

    .line 503
    :cond_17
    int-to-char v14, v4

    .line 504
    const-string v15, ",=\n+<>#;\\\" "

    .line 505
    .line 506
    invoke-virtual {v15, v14}, Ljava/lang/String;->indexOf(I)I

    .line 507
    .line 508
    .line 509
    move-result v15

    .line 510
    if-eq v15, v8, :cond_18

    .line 511
    .line 512
    const/4 v14, 0x1

    .line 513
    goto :goto_9

    .line 514
    :cond_18
    new-instance v1, Ljava/io/IOException;

    .line 515
    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    const-string v3, "Invalid escaped character in AVA: \'"

    .line 519
    .line 520
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    const-string v3, "\'"

    .line 527
    .line 528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    throw v1

    .line 539
    :cond_19
    const/4 v14, 0x0

    .line 540
    :goto_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 541
    .line 542
    .line 543
    move-result v15

    .line 544
    const-string v8, " "

    .line 545
    .line 546
    if-lez v15, :cond_1b

    .line 547
    .line 548
    const/4 v15, 0x0

    .line 549
    :goto_a
    if-ge v15, v13, :cond_1a

    .line 550
    .line 551
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    add-int/2addr v15, v2

    .line 555
    goto :goto_a

    .line 556
    :cond_1a
    invoke-static {v6}, Lh/a;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v13

    .line 560
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 564
    .line 565
    .line 566
    const/4 v13, 0x0

    .line 567
    :cond_1b
    int-to-char v15, v4

    .line 568
    invoke-static {v15}, Lg/g;->h(C)Z

    .line 569
    .line 570
    .line 571
    move-result v16

    .line 572
    and-int v7, v7, v16

    .line 573
    .line 574
    if-ne v4, v5, :cond_1c

    .line 575
    .line 576
    if-nez v14, :cond_1c

    .line 577
    .line 578
    add-int/2addr v13, v2

    .line 579
    goto :goto_c

    .line 580
    :cond_1c
    const/4 v4, 0x0

    .line 581
    :goto_b
    if-ge v4, v13, :cond_1d

    .line 582
    .line 583
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    add-int/2addr v4, v2

    .line 587
    goto :goto_b

    .line 588
    :cond_1d
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    const/4 v13, 0x0

    .line 592
    :goto_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->read()I

    .line 593
    .line 594
    .line 595
    move-result v4

    .line 596
    :goto_d
    invoke-static {v4}, Lh/a;->d(I)Z

    .line 597
    .line 598
    .line 599
    move-result v8

    .line 600
    if-eqz v8, :cond_22

    .line 601
    .line 602
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    if-lez v1, :cond_1e

    .line 607
    .line 608
    invoke-static {v6}, Lh/a;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 616
    .line 617
    .line 618
    :cond_1e
    sget-object v1, Ld/a;->b:Lg/h;

    .line 619
    .line 620
    iget-object v2, v0, Lh/a;->a:Lg/h;

    .line 621
    .line 622
    invoke-virtual {v2, v1}, Lg/h;->equals(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    if-nez v1, :cond_21

    .line 627
    .line 628
    sget-object v1, Lh/w;->v:Lg/h;

    .line 629
    .line 630
    invoke-virtual {v2, v1}, Lg/h;->equals(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v1

    .line 634
    if-eqz v1, :cond_1f

    .line 635
    .line 636
    if-nez v11, :cond_1f

    .line 637
    .line 638
    goto :goto_e

    .line 639
    :cond_1f
    if-eqz v7, :cond_20

    .line 640
    .line 641
    new-instance v1, Lg/g;

    .line 642
    .line 643
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v2

    .line 647
    invoke-direct {v1, v2}, Lg/g;-><init>(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    goto :goto_f

    .line 651
    :cond_20
    new-instance v1, Lg/g;

    .line 652
    .line 653
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    invoke-direct {v1, v10, v2}, Lg/g;-><init>(BLjava/lang/String;)V

    .line 658
    .line 659
    .line 660
    goto :goto_f

    .line 661
    :cond_21
    :goto_e
    new-instance v1, Lg/g;

    .line 662
    .line 663
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    invoke-direct {v1, v9, v2}, Lg/g;-><init>(BLjava/lang/String;)V

    .line 668
    .line 669
    .line 670
    :goto_f
    iput-object v1, v0, Lh/a;->b:Lg/g;

    .line 671
    .line 672
    :goto_10
    return-void

    .line 673
    :cond_22
    const/4 v8, -0x1

    .line 674
    goto/16 :goto_8

    .line 675
    .line 676
    :cond_23
    move-object/from16 v5, p2

    .line 677
    .line 678
    int-to-char v4, v4

    .line 679
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    goto/16 :goto_0
.end method

.method public static a(ILjava/io/StringReader;)Ljava/lang/Byte;
    .locals 2

    .line 1
    int-to-char p0, p0

    .line 2
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const-string v1, "0123456789ABCDEF"

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ltz v0, :cond_1

    .line 13
    .line 14
    const-string v0, "unexpected EOF - escaped hex value must include two valid digits"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lh/a;->e(Ljava/io/StringReader;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    int-to-char p1, p1

    .line 21
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ltz v0, :cond_0

    .line 30
    .line 31
    const/16 v0, 0x10

    .line 32
    .line 33
    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    shl-int/lit8 p0, p0, 0x4

    .line 42
    .line 43
    add-int/2addr p0, p1

    .line 44
    int-to-byte p0, p0

    .line 45
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 51
    .line 52
    const-string p1, "escaped hex value must include two valid digits"

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_1
    const/4 p0, 0x0

    .line 59
    return-object p0
.end method

.method public static b(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Ljava/lang/Byte;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    aput-byte v3, v1, v2

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 26
    .line 27
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method public static c(Lg/g;Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x13

    .line 4
    .line 5
    const/16 v3, 0xc

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-byte p0, p0, Lg/g;->a:B

    .line 10
    .line 11
    if-eq p0, v3, :cond_0

    .line 12
    .line 13
    if-eq p0, v2, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    return v0

    .line 17
    :cond_1
    iget-byte p0, p0, Lg/g;->a:B

    .line 18
    .line 19
    if-eq p0, v3, :cond_2

    .line 20
    .line 21
    const/16 p1, 0x16

    .line 22
    .line 23
    if-eq p0, p1, :cond_2

    .line 24
    .line 25
    const/16 p1, 0x1b

    .line 26
    .line 27
    if-eq p0, p1, :cond_2

    .line 28
    .line 29
    const/16 p1, 0x1e

    .line 30
    .line 31
    if-eq p0, p1, :cond_2

    .line 32
    .line 33
    if-eq p0, v2, :cond_2

    .line 34
    .line 35
    const/16 p1, 0x14

    .line 36
    .line 37
    if-eq p0, p1, :cond_2

    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    return v0
.end method

.method public static d(I)Z
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x3b

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x3e

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x2b

    .line 14
    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x2c

    .line 18
    .line 19
    if-eq p0, v0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_0
    return v1
.end method

.method public static e(Ljava/io/StringReader;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lh/a;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lh/a;

    .line 12
    .line 13
    invoke-virtual {p0}, Lh/a;->g()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lh/a;->g()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public final f(Ljava/util/Map;I)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lh/c;->e:Ljava/util/HashMap;

    .line 4
    .line 5
    iget-object v2, p0, Lh/a;->a:Lg/h;

    .line 6
    .line 7
    invoke-virtual {v2}, Lg/h;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    if-nez p1, :cond_5

    .line 18
    .line 19
    sget-object p1, Lh/c;->e:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lh/c;

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    if-eq p2, v1, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    if-eq p2, v1, :cond_1

    .line 36
    .line 37
    if-ne p2, v0, :cond_0

    .line 38
    .line 39
    iget-boolean v1, p1, Lh/c;->d:Z

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string v0, "Invalid standard "

    .line 45
    .line 46
    invoke-static {p2, v0}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_1
    iget-boolean v1, p1, Lh/c;->c:Z

    .line 55
    .line 56
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 57
    .line 58
    iget-object v3, p1, Lh/c;->a:Ljava/lang/String;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    if-ne p2, v0, :cond_4

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    const-string p1, "OID."

    .line 65
    .line 66
    invoke-static {p1, v3}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    goto :goto_2

    .line 71
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_d

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const/4 p1, 0x0

    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    const/16 p2, 0x41

    .line 87
    .line 88
    if-lt p1, p2, :cond_c

    .line 89
    .line 90
    const/16 v0, 0x7a

    .line 91
    .line 92
    if-gt p1, v0, :cond_c

    .line 93
    .line 94
    const/16 v2, 0x61

    .line 95
    .line 96
    const/16 v4, 0x5a

    .line 97
    .line 98
    if-le p1, v4, :cond_6

    .line 99
    .line 100
    if-lt p1, v2, :cond_c

    .line 101
    .line 102
    :cond_6
    const/4 p1, 0x1

    .line 103
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-ge p1, v5, :cond_b

    .line 108
    .line 109
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-lt v5, p2, :cond_7

    .line 114
    .line 115
    if-gt v5, v0, :cond_7

    .line 116
    .line 117
    if-le v5, v4, :cond_9

    .line 118
    .line 119
    if-ge v5, v2, :cond_9

    .line 120
    .line 121
    :cond_7
    const/16 v6, 0x30

    .line 122
    .line 123
    if-lt v5, v6, :cond_8

    .line 124
    .line 125
    const/16 v6, 0x39

    .line 126
    .line 127
    if-le v5, v6, :cond_9

    .line 128
    .line 129
    :cond_8
    const/16 v6, 0x5f

    .line 130
    .line 131
    if-ne v5, v6, :cond_a

    .line 132
    .line 133
    :cond_9
    add-int/2addr p1, v1

    .line 134
    goto :goto_1

    .line 135
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    const-string p2, "keyword character is not a letter, digit, or underscore"

    .line 138
    .line 139
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_b
    :goto_2
    return-object v3

    .line 144
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    const-string p2, "keyword does not start with letter"

    .line 147
    .line 148
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    const-string p2, "keyword cannot be empty"

    .line 155
    .line 156
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :goto_3
    throw p1

    .line 161
    :goto_4
    goto :goto_3
.end method

.method public final g()Ljava/lang/String;
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x28

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0, v2, v1}, Lh/a;->f(Ljava/util/Map;I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x3d

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/16 v3, 0x30

    .line 31
    .line 32
    const-string v4, "DER Value conversion"

    .line 33
    .line 34
    const/16 v5, 0x23

    .line 35
    .line 36
    iget-object v6, p0, Lh/a;->b:Lg/g;

    .line 37
    .line 38
    const/16 v7, 0x10

    .line 39
    .line 40
    if-lt v2, v3, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/16 v3, 0x39

    .line 47
    .line 48
    if-le v2, v3, :cond_1

    .line 49
    .line 50
    :cond_0
    const/4 v2, 0x1

    .line 51
    invoke-static {v6, v2}, Lh/a;->c(Lg/g;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    :cond_1
    :try_start_0
    invoke-virtual {v6}, Lg/g;->i()[B

    .line 58
    .line 59
    .line 60
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    array-length v3, v2

    .line 65
    :goto_0
    if-ge v1, v3, :cond_d

    .line 66
    .line 67
    aget-byte v4, v2, v1

    .line 68
    .line 69
    ushr-int/lit8 v5, v4, 0x4

    .line 70
    .line 71
    and-int/lit8 v5, v5, 0xf

    .line 72
    .line 73
    invoke-static {v5, v7}, Ljava/lang/Character;->forDigit(II)C

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    and-int/lit8 v4, v4, 0xf

    .line 81
    .line 82
    invoke-static {v4, v7}, Ljava/lang/Character;->forDigit(II)C

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v6}, Lg/g;->f()[B

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    sget-object v8, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 105
    .line 106
    invoke-direct {v3, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .line 108
    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const/4 v6, 0x0

    .line 115
    const/4 v8, 0x0

    .line 116
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-ge v6, v9, :cond_c

    .line 121
    .line 122
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    invoke-static {v9}, Lg/g;->h(C)Z

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    const/16 v11, 0x5c

    .line 131
    .line 132
    const-string v12, ",+<>;\"\\"

    .line 133
    .line 134
    if-nez v10, :cond_6

    .line 135
    .line 136
    invoke-virtual {v12, v9}, Ljava/lang/String;->indexOf(I)I

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    if-gez v10, :cond_6

    .line 141
    .line 142
    if-nez v6, :cond_3

    .line 143
    .line 144
    if-ne v9, v5, :cond_3

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_3
    sget-object v8, Lh/a;->c:Lg/c;

    .line 148
    .line 149
    if-eqz v8, :cond_5

    .line 150
    .line 151
    const-string v8, "ava"

    .line 152
    .line 153
    invoke-static {v8}, Lg/c;->b(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    if-eqz v8, :cond_5

    .line 158
    .line 159
    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    sget-object v9, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 164
    .line 165
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    array-length v9, v8

    .line 170
    const/4 v10, 0x0

    .line 171
    :goto_2
    if-ge v10, v9, :cond_4

    .line 172
    .line 173
    aget-byte v12, v8, v10

    .line 174
    .line 175
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    ushr-int/lit8 v13, v12, 0x4

    .line 179
    .line 180
    and-int/lit8 v13, v13, 0xf

    .line 181
    .line 182
    invoke-static {v13, v7}, Ljava/lang/Character;->forDigit(II)C

    .line 183
    .line 184
    .line 185
    move-result v13

    .line 186
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    and-int/lit8 v12, v12, 0xf

    .line 190
    .line 191
    invoke-static {v12, v7}, Ljava/lang/Character;->forDigit(II)C

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    add-int/lit8 v10, v10, 0x1

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_4
    :goto_3
    const/4 v8, 0x0

    .line 202
    goto :goto_5

    .line 203
    :cond_5
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_6
    :goto_4
    if-nez v6, :cond_7

    .line 208
    .line 209
    if-eq v9, v5, :cond_8

    .line 210
    .line 211
    :cond_7
    invoke-virtual {v12, v9}, Ljava/lang/String;->indexOf(I)I

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    if-ltz v10, :cond_9

    .line 216
    .line 217
    :cond_8
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    :cond_9
    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    if-nez v10, :cond_a

    .line 225
    .line 226
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_a
    if-nez v8, :cond_b

    .line 231
    .line 232
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const/4 v8, 0x1

    .line 236
    :cond_b
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    sget-object v1, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    .line 265
    .line 266
    invoke-static {v0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    return-object v0

    .line 271
    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 272
    .line 273
    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto :goto_7

    .line 277
    :goto_6
    throw v0

    .line 278
    :goto_7
    goto :goto_6
.end method

.method public final h(Ljava/util/Map;)Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-virtual {p0, p1, v1}, Lh/a;->f(Ljava/util/Map;I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x3d

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/16 v2, 0x30

    .line 27
    .line 28
    const-string v3, "DER Value conversion"

    .line 29
    .line 30
    iget-object v4, p0, Lh/a;->b:Lg/g;

    .line 31
    .line 32
    const/16 v5, 0x10

    .line 33
    .line 34
    if-lt v1, v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/16 v2, 0x39

    .line 41
    .line 42
    if-le v1, v2, :cond_1

    .line 43
    .line 44
    :cond_0
    invoke-static {v4, p1}, Lh/a;->c(Lg/g;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lg/g;->i()[B

    .line 51
    .line 52
    .line 53
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const/16 v2, 0x23

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    array-length v2, v1

    .line 60
    :goto_0
    if-ge p1, v2, :cond_11

    .line 61
    .line 62
    aget-byte v3, v1, p1

    .line 63
    .line 64
    ushr-int/lit8 v4, v3, 0x4

    .line 65
    .line 66
    and-int/lit8 v4, v4, 0xf

    .line 67
    .line 68
    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    and-int/lit8 v3, v3, 0xf

    .line 76
    .line 77
    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    add-int/lit8 p1, p1, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v4}, Lg/g;->f()[B

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    sget-object v4, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 100
    .line 101
    invoke-direct {v1, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    .line 103
    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    const/16 v6, 0x5c

    .line 115
    .line 116
    if-ge v3, v4, :cond_9

    .line 117
    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    invoke-static {v4}, Lg/g;->h(C)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    const-string v8, ",=+<>#;\"\\"

    .line 127
    .line 128
    if-nez v7, :cond_6

    .line 129
    .line 130
    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-ltz v7, :cond_3

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_3
    if-nez v4, :cond_4

    .line 138
    .line 139
    const-string v4, "\\00"

    .line 140
    .line 141
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_4
    sget-object v7, Lh/a;->c:Lg/c;

    .line 146
    .line 147
    if-eqz v7, :cond_5

    .line 148
    .line 149
    const-string v7, "ava"

    .line 150
    .line 151
    invoke-static {v7}, Lg/c;->b(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-eqz v7, :cond_5

    .line 156
    .line 157
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    sget-object v7, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 162
    .line 163
    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    array-length v7, v4

    .line 168
    const/4 v8, 0x0

    .line 169
    :goto_2
    if-ge v8, v7, :cond_8

    .line 170
    .line 171
    aget-byte v9, v4, v8

    .line 172
    .line 173
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    ushr-int/lit8 v10, v9, 0x4

    .line 177
    .line 178
    and-int/lit8 v10, v10, 0xf

    .line 179
    .line 180
    invoke-static {v10, v5}, Ljava/lang/Character;->forDigit(II)C

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    and-int/lit8 v9, v9, 0xf

    .line 192
    .line 193
    invoke-static {v9, v5}, Ljava/lang/Character;->forDigit(II)C

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    add-int/lit8 v8, v8, 0x1

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_6
    :goto_3
    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    if-ltz v7, :cond_7

    .line 216
    .line 217
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    :cond_7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const/4 v3, 0x0

    .line 240
    :goto_5
    array-length v4, v1

    .line 241
    const/16 v5, 0xd

    .line 242
    .line 243
    const/16 v7, 0x20

    .line 244
    .line 245
    if-ge v3, v4, :cond_b

    .line 246
    .line 247
    aget-char v4, v1, v3

    .line 248
    .line 249
    if-eq v4, v7, :cond_a

    .line 250
    .line 251
    if-eq v4, v5, :cond_a

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_b
    :goto_6
    array-length v4, v1

    .line 258
    add-int/lit8 v4, v4, -0x1

    .line 259
    .line 260
    :goto_7
    if-ltz v4, :cond_d

    .line 261
    .line 262
    aget-char v8, v1, v4

    .line 263
    .line 264
    if-eq v8, v7, :cond_c

    .line 265
    .line 266
    if-eq v8, v5, :cond_c

    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_c
    add-int/lit8 v4, v4, -0x1

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_d
    :goto_8
    array-length v5, v1

    .line 273
    if-ge p1, v5, :cond_10

    .line 274
    .line 275
    aget-char v5, v1, p1

    .line 276
    .line 277
    if-lt p1, v3, :cond_e

    .line 278
    .line 279
    if-le p1, v4, :cond_f

    .line 280
    .line 281
    :cond_e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    :cond_f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    add-int/lit8 p1, p1, 0x1

    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    return-object p1

    .line 302
    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 303
    .line 304
    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto :goto_a

    .line 308
    :goto_9
    throw p1

    .line 309
    :goto_a
    goto :goto_9
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh/a;->g()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 15

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Lh/a;->f(Ljava/util/Map;I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v2, "\""

    .line 11
    .line 12
    const-string v3, "0123456789ABCDEF"

    .line 13
    .line 14
    iget-object v4, p0, Lh/a;->b:Lg/g;

    .line 15
    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const/16 v6, 0x28

    .line 19
    .line 20
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, "="

    .line 27
    .line 28
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v4}, Lg/g;->e()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v6, 0x0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v4}, Lg/g;->i()[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/16 v1, 0x23

    .line 43
    .line 44
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    array-length v1, v0

    .line 48
    :goto_0
    if-ge v6, v1, :cond_10

    .line 49
    .line 50
    aget-byte v2, v0, v6

    .line 51
    .line 52
    shr-int/lit8 v4, v2, 0x4

    .line 53
    .line 54
    and-int/lit8 v4, v4, 0xf

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    and-int/lit8 v2, v2, 0xf

    .line 64
    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    const/16 v10, 0xa

    .line 88
    .line 89
    const/16 v11, 0x20

    .line 90
    .line 91
    if-ge v4, v9, :cond_c

    .line 92
    .line 93
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    invoke-static {v9}, Lg/g;->h(C)Z

    .line 98
    .line 99
    .line 100
    move-result v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const-string v13, ",+=\n<>#;\\\""

    .line 102
    .line 103
    const/16 v14, 0x5c

    .line 104
    .line 105
    if-nez v12, :cond_4

    .line 106
    .line 107
    :try_start_1
    invoke-virtual {v13, v9}, Ljava/lang/String;->indexOf(I)I

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    if-ltz v12, :cond_1

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_1
    sget-object v8, Lh/a;->c:Lg/c;

    .line 115
    .line 116
    if-eqz v8, :cond_3

    .line 117
    .line 118
    const-string v8, "ava"

    .line 119
    .line 120
    invoke-static {v8}, Lg/c;->b(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-eqz v8, :cond_3

    .line 125
    .line 126
    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    sget-object v9, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 131
    .line 132
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    array-length v9, v8

    .line 137
    const/4 v10, 0x0

    .line 138
    :goto_2
    if-ge v10, v9, :cond_2

    .line 139
    .line 140
    aget-byte v11, v8, v10

    .line 141
    .line 142
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    ushr-int/lit8 v12, v11, 0x4

    .line 146
    .line 147
    and-int/lit8 v12, v12, 0xf

    .line 148
    .line 149
    const/16 v13, 0x10

    .line 150
    .line 151
    invoke-static {v12, v13}, Ljava/lang/Character;->forDigit(II)C

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    invoke-static {v12}, Ljava/lang/Character;->toUpperCase(C)C

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    and-int/lit8 v11, v11, 0xf

    .line 163
    .line 164
    invoke-static {v11, v13}, Ljava/lang/Character;->forDigit(II)C

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    add-int/lit8 v10, v10, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_2
    :goto_3
    const/4 v8, 0x0

    .line 179
    goto :goto_6

    .line 180
    :cond_3
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_4
    :goto_4
    if-nez v7, :cond_7

    .line 185
    .line 186
    if-nez v4, :cond_5

    .line 187
    .line 188
    if-eq v9, v11, :cond_6

    .line 189
    .line 190
    if-eq v9, v10, :cond_6

    .line 191
    .line 192
    :cond_5
    invoke-virtual {v13, v9}, Ljava/lang/String;->indexOf(I)I

    .line 193
    .line 194
    .line 195
    move-result v12

    .line 196
    if-ltz v12, :cond_7

    .line 197
    .line 198
    :cond_6
    const/4 v7, 0x1

    .line 199
    :cond_7
    if-eq v9, v11, :cond_a

    .line 200
    .line 201
    if-eq v9, v10, :cond_a

    .line 202
    .line 203
    const/16 v8, 0x22

    .line 204
    .line 205
    if-eq v9, v8, :cond_8

    .line 206
    .line 207
    if-ne v9, v14, :cond_9

    .line 208
    .line 209
    :cond_8
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    :cond_9
    const/4 v8, 0x0

    .line 213
    goto :goto_5

    .line 214
    :cond_a
    if-nez v7, :cond_b

    .line 215
    .line 216
    if-eqz v8, :cond_b

    .line 217
    .line 218
    const/4 v7, 0x1

    .line 219
    :cond_b
    const/4 v8, 0x1

    .line 220
    :goto_5
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 224
    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-lez v0, :cond_d

    .line 232
    .line 233
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    sub-int/2addr v0, v1

    .line 238
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eq v0, v11, :cond_e

    .line 243
    .line 244
    if-ne v0, v10, :cond_d

    .line 245
    .line 246
    goto :goto_7

    .line 247
    :cond_d
    move v1, v7

    .line 248
    :cond_e
    :goto_7
    if-eqz v1, :cond_f

    .line 249
    .line 250
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    goto :goto_8

    .line 264
    :cond_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    .line 270
    .line 271
    :cond_10
    :goto_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    return-object v0

    .line 276
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 277
    .line 278
    const-string v1, "DER Value conversion"

    .line 279
    .line 280
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto :goto_a

    .line 284
    :goto_9
    throw v0

    .line 285
    :goto_a
    goto :goto_9
.end method
