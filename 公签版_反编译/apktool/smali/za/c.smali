.class public final Lza/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IArchiveExtractCallback;
.implements Lnet/sf/sevenzipjbinding/ICryptoGetTextPassword;


# instance fields
.field public final a:Lnet/sf/sevenzipjbinding/IInArchive;

.field public b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lza/a;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lmc/b;


# direct methods
.method public constructor <init>(Lnet/sf/sevenzipjbinding/IInArchive;Ljava/lang/String;Lza/a;Ljava/lang/String;Ljava/lang/String;Lmc/b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lza/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lza/c;->d:Lza/a;

    .line 4
    .line 5
    iput-object p4, p0, Lza/c;->e:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lza/c;->f:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lza/c;->g:Lmc/b;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    iput p2, p0, Lza/c;->b:I

    .line 16
    .line 17
    iput-object p1, p0, Lza/c;->a:Lnet/sf/sevenzipjbinding/IInArchive;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final cryptoGetTextPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lza/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStream(ILnet/sf/sevenzipjbinding/ExtractAskMode;)Lnet/sf/sevenzipjbinding/ISequentialOutStream;
    .locals 11

    .line 1
    sget-object v0, Lnet/sf/sevenzipjbinding/ExtractAskMode;->EXTRACT:Lnet/sf/sevenzipjbinding/ExtractAskMode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object p2, p0, Lza/c;->a:Lnet/sf/sevenzipjbinding/IInArchive;

    .line 8
    .line 9
    invoke-interface {p2}, Lnet/sf/sevenzipjbinding/IInArchive;->getSimpleInterface()Lnet/sf/sevenzipjbinding/simple/ISimpleInArchive;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p2}, Lnet/sf/sevenzipjbinding/simple/ISimpleInArchive;->getArchiveItems()[Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    aget-object p1, p2, p1

    .line 18
    .line 19
    invoke-interface {p1}, Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;->isEncrypted()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    iget-object p2, p0, Lza/c;->c:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 31
    .line 32
    const-string p2, "\u9700\u8981\u5bc6\u7801"

    .line 33
    .line 34
    invoke-direct {p1, p2}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_2
    :goto_0
    iget-object p2, p0, Lza/c;->d:Lza/a;

    .line 39
    .line 40
    iget-object v0, p2, Lza/a;->d:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const-string v2, "UTF-8"

    .line 47
    .line 48
    if-eqz v0, :cond_2e

    .line 49
    .line 50
    invoke-interface {p1}, Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;->getPath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    sget-object v0, Lza/g;->a:[Ljava/lang/String;

    .line 55
    .line 56
    const-string v3, "?"

    .line 57
    .line 58
    const-string v4, "??"

    .line 59
    .line 60
    const-string v5, "???"

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    const-string p2, ""

    .line 69
    .line 70
    goto/16 :goto_15

    .line 71
    .line 72
    :cond_3
    const/4 v6, 0x0

    .line 73
    const/4 v7, 0x0

    .line 74
    :goto_1
    const/16 v8, 0x22

    .line 75
    .line 76
    if-ge v7, v8, :cond_30

    .line 77
    .line 78
    :try_start_0
    aget-object v9, v0, v7

    .line 79
    .line 80
    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-nez v9, :cond_4

    .line 85
    .line 86
    add-int/lit8 v7, v7, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    new-instance v7, Ljava/lang/Exception;

    .line 90
    .line 91
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 92
    .line 93
    .line 94
    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :catch_0
    :try_start_1
    new-instance v7, Ljava/lang/String;

    .line 96
    .line 97
    const-string v9, "ISO-8859-1"

    .line 98
    .line 99
    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    invoke-direct {v7, v9, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-nez v9, :cond_d

    .line 115
    .line 116
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-eqz v9, :cond_6

    .line 121
    .line 122
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_5

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    new-instance v7, Ljava/lang/Exception;

    .line 130
    .line 131
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 132
    .line 133
    .line 134
    throw v7

    .line 135
    :cond_6
    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    if-eqz v9, :cond_8

    .line 140
    .line 141
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-eqz v9, :cond_7

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_7
    new-instance v7, Ljava/lang/Exception;

    .line 149
    .line 150
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 151
    .line 152
    .line 153
    throw v7

    .line 154
    :cond_8
    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    if-eqz v9, :cond_a

    .line 159
    .line 160
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-eqz v9, :cond_9

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_9
    new-instance v7, Ljava/lang/Exception;

    .line 168
    .line 169
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 170
    .line 171
    .line 172
    throw v7

    .line 173
    :cond_a
    :goto_4
    const/4 v9, 0x0

    .line 174
    :goto_5
    if-ge v9, v8, :cond_c

    .line 175
    .line 176
    aget-object v10, v0, v9

    .line 177
    .line 178
    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    if-nez v10, :cond_b

    .line 183
    .line 184
    add-int/lit8 v9, v9, 0x1

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_b
    new-instance v7, Ljava/lang/Exception;

    .line 188
    .line 189
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 190
    .line 191
    .line 192
    throw v7

    .line 193
    :cond_c
    move-object p2, v7

    .line 194
    goto/16 :goto_15

    .line 195
    .line 196
    :cond_d
    new-instance v7, Ljava/lang/Exception;

    .line 197
    .line 198
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 199
    .line 200
    .line 201
    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    :catch_1
    :try_start_2
    new-instance v7, Ljava/lang/String;

    .line 203
    .line 204
    const-string v9, "GBK"

    .line 205
    .line 206
    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    invoke-direct {v7, v9, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    if-nez v9, :cond_15

    .line 222
    .line 223
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    if-eqz v9, :cond_f

    .line 228
    .line 229
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v9

    .line 233
    if-eqz v9, :cond_e

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_e
    new-instance v7, Ljava/lang/Exception;

    .line 237
    .line 238
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 239
    .line 240
    .line 241
    throw v7

    .line 242
    :cond_f
    :goto_6
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 243
    .line 244
    .line 245
    move-result v9

    .line 246
    if-eqz v9, :cond_11

    .line 247
    .line 248
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 249
    .line 250
    .line 251
    move-result v9

    .line 252
    if-eqz v9, :cond_10

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_10
    new-instance v7, Ljava/lang/Exception;

    .line 256
    .line 257
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 258
    .line 259
    .line 260
    throw v7

    .line 261
    :cond_11
    :goto_7
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    if-eqz v9, :cond_13

    .line 266
    .line 267
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 268
    .line 269
    .line 270
    move-result v9

    .line 271
    if-eqz v9, :cond_12

    .line 272
    .line 273
    goto :goto_8

    .line 274
    :cond_12
    new-instance v7, Ljava/lang/Exception;

    .line 275
    .line 276
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 277
    .line 278
    .line 279
    throw v7

    .line 280
    :cond_13
    :goto_8
    const/4 v9, 0x0

    .line 281
    :goto_9
    if-ge v9, v8, :cond_c

    .line 282
    .line 283
    aget-object v10, v0, v9

    .line 284
    .line 285
    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 286
    .line 287
    .line 288
    move-result v10

    .line 289
    if-nez v10, :cond_14

    .line 290
    .line 291
    add-int/lit8 v9, v9, 0x1

    .line 292
    .line 293
    goto :goto_9

    .line 294
    :cond_14
    new-instance v7, Ljava/lang/Exception;

    .line 295
    .line 296
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 297
    .line 298
    .line 299
    throw v7

    .line 300
    :cond_15
    new-instance v7, Ljava/lang/Exception;

    .line 301
    .line 302
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 303
    .line 304
    .line 305
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 306
    :catch_2
    :try_start_3
    new-instance v7, Ljava/lang/String;

    .line 307
    .line 308
    const-string v9, "BIG5"

    .line 309
    .line 310
    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 311
    .line 312
    .line 313
    move-result-object v9

    .line 314
    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    invoke-direct {v7, v9, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    if-nez v9, :cond_1d

    .line 326
    .line 327
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 328
    .line 329
    .line 330
    move-result v9

    .line 331
    if-eqz v9, :cond_17

    .line 332
    .line 333
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 334
    .line 335
    .line 336
    move-result v9

    .line 337
    if-eqz v9, :cond_16

    .line 338
    .line 339
    goto :goto_a

    .line 340
    :cond_16
    new-instance v7, Ljava/lang/Exception;

    .line 341
    .line 342
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 343
    .line 344
    .line 345
    throw v7

    .line 346
    :cond_17
    :goto_a
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 347
    .line 348
    .line 349
    move-result v9

    .line 350
    if-eqz v9, :cond_19

    .line 351
    .line 352
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 353
    .line 354
    .line 355
    move-result v9

    .line 356
    if-eqz v9, :cond_18

    .line 357
    .line 358
    goto :goto_b

    .line 359
    :cond_18
    new-instance v7, Ljava/lang/Exception;

    .line 360
    .line 361
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 362
    .line 363
    .line 364
    throw v7

    .line 365
    :cond_19
    :goto_b
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 366
    .line 367
    .line 368
    move-result v9

    .line 369
    if-eqz v9, :cond_1b

    .line 370
    .line 371
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 372
    .line 373
    .line 374
    move-result v9

    .line 375
    if-eqz v9, :cond_1a

    .line 376
    .line 377
    goto :goto_c

    .line 378
    :cond_1a
    new-instance v7, Ljava/lang/Exception;

    .line 379
    .line 380
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 381
    .line 382
    .line 383
    throw v7

    .line 384
    :cond_1b
    :goto_c
    const/4 v9, 0x0

    .line 385
    :goto_d
    if-ge v9, v8, :cond_c

    .line 386
    .line 387
    aget-object v10, v0, v9

    .line 388
    .line 389
    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 390
    .line 391
    .line 392
    move-result v10

    .line 393
    if-nez v10, :cond_1c

    .line 394
    .line 395
    add-int/lit8 v9, v9, 0x1

    .line 396
    .line 397
    goto :goto_d

    .line 398
    :cond_1c
    new-instance v7, Ljava/lang/Exception;

    .line 399
    .line 400
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 401
    .line 402
    .line 403
    throw v7

    .line 404
    :cond_1d
    new-instance v7, Ljava/lang/Exception;

    .line 405
    .line 406
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 407
    .line 408
    .line 409
    throw v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 410
    :catch_3
    :try_start_4
    new-instance v7, Ljava/lang/String;

    .line 411
    .line 412
    const-string v9, "GB2312"

    .line 413
    .line 414
    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 415
    .line 416
    .line 417
    move-result-object v9

    .line 418
    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 419
    .line 420
    .line 421
    move-result-object v9

    .line 422
    invoke-direct {v7, v9, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 426
    .line 427
    .line 428
    move-result v9

    .line 429
    if-nez v9, :cond_25

    .line 430
    .line 431
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 432
    .line 433
    .line 434
    move-result v9

    .line 435
    if-eqz v9, :cond_1f

    .line 436
    .line 437
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 438
    .line 439
    .line 440
    move-result v9

    .line 441
    if-eqz v9, :cond_1e

    .line 442
    .line 443
    goto :goto_e

    .line 444
    :cond_1e
    new-instance v7, Ljava/lang/Exception;

    .line 445
    .line 446
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 447
    .line 448
    .line 449
    throw v7

    .line 450
    :cond_1f
    :goto_e
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 451
    .line 452
    .line 453
    move-result v9

    .line 454
    if-eqz v9, :cond_21

    .line 455
    .line 456
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 457
    .line 458
    .line 459
    move-result v9

    .line 460
    if-eqz v9, :cond_20

    .line 461
    .line 462
    goto :goto_f

    .line 463
    :cond_20
    new-instance v7, Ljava/lang/Exception;

    .line 464
    .line 465
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 466
    .line 467
    .line 468
    throw v7

    .line 469
    :cond_21
    :goto_f
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 470
    .line 471
    .line 472
    move-result v9

    .line 473
    if-eqz v9, :cond_23

    .line 474
    .line 475
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 476
    .line 477
    .line 478
    move-result v9

    .line 479
    if-eqz v9, :cond_22

    .line 480
    .line 481
    goto :goto_10

    .line 482
    :cond_22
    new-instance v7, Ljava/lang/Exception;

    .line 483
    .line 484
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 485
    .line 486
    .line 487
    throw v7

    .line 488
    :cond_23
    :goto_10
    const/4 v9, 0x0

    .line 489
    :goto_11
    if-ge v9, v8, :cond_c

    .line 490
    .line 491
    aget-object v10, v0, v9

    .line 492
    .line 493
    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 494
    .line 495
    .line 496
    move-result v10

    .line 497
    if-nez v10, :cond_24

    .line 498
    .line 499
    add-int/lit8 v9, v9, 0x1

    .line 500
    .line 501
    goto :goto_11

    .line 502
    :cond_24
    new-instance v7, Ljava/lang/Exception;

    .line 503
    .line 504
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 505
    .line 506
    .line 507
    throw v7

    .line 508
    :cond_25
    new-instance v7, Ljava/lang/Exception;

    .line 509
    .line 510
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 511
    .line 512
    .line 513
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 514
    :catch_4
    :try_start_5
    new-instance v7, Ljava/lang/String;

    .line 515
    .line 516
    const-string v9, "US-ASCII"

    .line 517
    .line 518
    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 519
    .line 520
    .line 521
    move-result-object v9

    .line 522
    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 523
    .line 524
    .line 525
    move-result-object v9

    .line 526
    invoke-direct {v7, v9, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    if-nez v2, :cond_2d

    .line 534
    .line 535
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    if-eqz v2, :cond_27

    .line 540
    .line 541
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    if-eqz v2, :cond_26

    .line 546
    .line 547
    goto :goto_12

    .line 548
    :cond_26
    new-instance v0, Ljava/lang/Exception;

    .line 549
    .line 550
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 551
    .line 552
    .line 553
    throw v0

    .line 554
    :catch_5
    nop

    .line 555
    goto :goto_15

    .line 556
    :cond_27
    :goto_12
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    if-eqz v2, :cond_29

    .line 561
    .line 562
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 563
    .line 564
    .line 565
    move-result v2

    .line 566
    if-eqz v2, :cond_28

    .line 567
    .line 568
    goto :goto_13

    .line 569
    :cond_28
    new-instance v0, Ljava/lang/Exception;

    .line 570
    .line 571
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 572
    .line 573
    .line 574
    throw v0

    .line 575
    :cond_29
    :goto_13
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    if-eqz v2, :cond_2b

    .line 580
    .line 581
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 582
    .line 583
    .line 584
    move-result v2

    .line 585
    if-eqz v2, :cond_2a

    .line 586
    .line 587
    goto :goto_14

    .line 588
    :cond_2a
    new-instance v0, Ljava/lang/Exception;

    .line 589
    .line 590
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 591
    .line 592
    .line 593
    throw v0

    .line 594
    :cond_2b
    :goto_14
    if-ge v6, v8, :cond_c

    .line 595
    .line 596
    aget-object v2, v0, v6

    .line 597
    .line 598
    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 599
    .line 600
    .line 601
    move-result v2

    .line 602
    if-nez v2, :cond_2c

    .line 603
    .line 604
    add-int/lit8 v6, v6, 0x1

    .line 605
    .line 606
    goto :goto_14

    .line 607
    :cond_2c
    new-instance v0, Ljava/lang/Exception;

    .line 608
    .line 609
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 610
    .line 611
    .line 612
    throw v0

    .line 613
    :cond_2d
    new-instance v0, Ljava/lang/Exception;

    .line 614
    .line 615
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 616
    .line 617
    .line 618
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 619
    :cond_2e
    iget-object v0, p2, Lza/a;->d:Ljava/lang/String;

    .line 620
    .line 621
    const-string v3, "0"

    .line 622
    .line 623
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    move-result v0

    .line 627
    if-eqz v0, :cond_2f

    .line 628
    .line 629
    invoke-interface {p1}, Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;->getPath()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object p2

    .line 633
    goto :goto_15

    .line 634
    :cond_2f
    :try_start_6
    new-instance v0, Ljava/lang/String;

    .line 635
    .line 636
    invoke-interface {p1}, Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;->getPath()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    iget-object p2, p2, Lza/a;->d:Ljava/lang/String;

    .line 641
    .line 642
    invoke-virtual {v3, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 643
    .line 644
    .line 645
    move-result-object p2

    .line 646
    invoke-direct {v0, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 647
    .line 648
    .line 649
    move-object p2, v0

    .line 650
    goto :goto_15

    .line 651
    :catch_6
    invoke-interface {p1}, Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;->getPath()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object p2

    .line 655
    :cond_30
    :goto_15
    invoke-interface {p1}, Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;->isFolder()Z

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    iget-object v2, p0, Lza/c;->e:Ljava/lang/String;

    .line 660
    .line 661
    iget-object v3, p0, Lza/c;->f:Ljava/lang/String;

    .line 662
    .line 663
    if-eqz v0, :cond_33

    .line 664
    .line 665
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 666
    .line 667
    .line 668
    move-result v0

    .line 669
    const-string v4, "/"

    .line 670
    .line 671
    if-nez v0, :cond_32

    .line 672
    .line 673
    invoke-interface {p1}, Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;->getPath()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object p1

    .line 677
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result p1

    .line 681
    if-eqz p1, :cond_31

    .line 682
    .line 683
    return-object v1

    .line 684
    :cond_31
    new-instance p1, Ljava/io/File;

    .line 685
    .line 686
    invoke-static {v3}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 691
    .line 692
    .line 693
    move-result v2

    .line 694
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object p2

    .line 698
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object p2

    .line 708
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 712
    .line 713
    .line 714
    goto :goto_16

    .line 715
    :cond_32
    new-instance p1, Ljava/io/File;

    .line 716
    .line 717
    invoke-static {v3, p2, v4}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object p2

    .line 721
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 725
    .line 726
    .line 727
    :goto_16
    return-object v1

    .line 728
    :cond_33
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 729
    .line 730
    .line 731
    move-result p1

    .line 732
    if-nez p1, :cond_34

    .line 733
    .line 734
    new-instance p1, Ljava/io/File;

    .line 735
    .line 736
    invoke-static {v3}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    invoke-static {v2, p2, v0}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object p2

    .line 744
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    goto :goto_17

    .line 748
    :cond_34
    new-instance p1, Ljava/io/File;

    .line 749
    .line 750
    invoke-static {v3, p2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object p2

    .line 754
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    :goto_17
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 758
    .line 759
    .line 760
    move-result-object p2

    .line 761
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 762
    .line 763
    .line 764
    :try_start_7
    new-instance p2, Ljava/io/FileOutputStream;

    .line 765
    .line 766
    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 767
    .line 768
    .line 769
    new-instance v0, Lua/i8;

    .line 770
    .line 771
    const/16 v1, 0xf

    .line 772
    .line 773
    const/4 v2, 0x0

    .line 774
    invoke-direct {v0, v1, p2, p1, v2}, Lua/i8;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 775
    .line 776
    .line 777
    return-object v0

    .line 778
    :catch_7
    move-exception p2

    .line 779
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 780
    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    .line 782
    .line 783
    const-string v2, "\u5199\u5165\u6587\u4ef6\u5931\u8d25: "

    .line 784
    .line 785
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object p1

    .line 792
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object p1

    .line 799
    invoke-direct {v0, p1, p2}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 800
    .line 801
    .line 802
    goto :goto_19

    .line 803
    :goto_18
    throw v0

    .line 804
    :goto_19
    goto :goto_18
.end method

.method public final prepareOperation(Lnet/sf/sevenzipjbinding/ExtractAskMode;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setCompleted(J)V
    .locals 6

    .line 1
    iget v0, p0, Lza/c;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lza/c;->b:I

    .line 6
    .line 7
    iget-object v1, p0, Lza/c;->d:Lza/a;

    .line 8
    .line 9
    iput-wide p1, v1, Lza/a;->b:J

    .line 10
    .line 11
    iget-object p1, p0, Lza/c;->g:Lmc/b;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    rem-int/lit8 v0, v0, 0x1e

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-wide v2, v1, Lza/a;->b:J

    .line 25
    .line 26
    long-to-double v2, v2

    .line 27
    invoke-static {v2, v3}, Lif/a;->D0(D)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "/"

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-wide v2, v1, Lza/a;->a:J

    .line 40
    .line 41
    long-to-double v2, v2

    .line 42
    invoke-static {v2, v3}, Lif/a;->D0(D)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, "  "

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 55
    .line 56
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 57
    .line 58
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 59
    .line 60
    iget-wide v2, v1, Lza/a;->b:J

    .line 61
    .line 62
    long-to-double v2, v2

    .line 63
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 64
    .line 65
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 66
    .line 67
    .line 68
    mul-double v2, v2, v4

    .line 69
    .line 70
    iget-wide v4, v1, Lza/a;->a:J

    .line 71
    .line 72
    long-to-double v4, v4

    .line 73
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 74
    .line 75
    .line 76
    div-double/2addr v2, v4

    .line 77
    const-string v4, "%"

    .line 78
    .line 79
    invoke-static {v0, v2, v3, p2, v4}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iput-object p2, v1, Lza/a;->c:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    return-void
.end method

.method public final setOperationResult(Lnet/sf/sevenzipjbinding/ExtractOperationResult;)V
    .locals 1

    .line 1
    sget-object v0, Lza/f;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const-string v0, "\u6570\u636e\u51fa\u9519"

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :pswitch_1
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 22
    .line 23
    const-string v0, "\u51fa\u9519\uff1a\u4e00\u4e9b\u6570\u636e\u6ca1\u5199\u5165"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :pswitch_2
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 30
    .line 31
    const-string v0, "\u5b58\u6863\u610f\u5916\u7ed3\u675f"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :pswitch_3
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 38
    .line 39
    const-string v0, "\u5f52\u6863\u6570\u636e\u4e0d\u53ef\u7528"

    .line 40
    .line 41
    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :pswitch_4
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 46
    .line 47
    const-string v0, "CRC\u6821\u9a8c\u5931\u8d25"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :pswitch_5
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 54
    .line 55
    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :pswitch_6
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 60
    .line 61
    const-string v0, "\u4e0d\u652f\u6301\u6b64\u683c\u5f0f"

    .line 62
    .line 63
    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :pswitch_7
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 68
    .line 69
    iget-object v0, p0, Lza/c;->c:Ljava/lang/String;

    .line 70
    .line 71
    if-nez v0, :cond_0

    .line 72
    .line 73
    const-string v0, "\u9700\u8981\u5bc6\u7801"

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const-string v0, "\u5bc6\u7801\u9519\u8bef"

    .line 77
    .line 78
    :goto_0
    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setTotal(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lza/c;->d:Lza/a;

    .line 2
    .line 3
    iput-wide p1, v0, Lza/a;->a:J

    .line 4
    .line 5
    return-void
.end method
