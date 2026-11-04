.class public final synthetic Lha/d4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lx9/w3;


# direct methods
.method public synthetic constructor <init>(Lx9/w3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/d4;->a:I

    iput-object p1, p0, Lha/d4;->b:Lx9/w3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, " ORDER BY name COLLATE NOCASE"

    .line 6
    .line 7
    const-string v3, "SELECT * FROM fileList WHERE parent=?"

    .line 8
    .line 9
    const-string v4, "\u5931\u8d25\uff1a"

    .line 10
    .line 11
    const-string v5, " and name NOT LIKE \'.%\'"

    .line 12
    .line 13
    const-string v6, ""

    .line 14
    .line 15
    iget-object v9, v1, Lha/d4;->b:Lx9/w3;

    .line 16
    .line 17
    iget v10, v1, Lha/d4;->a:I

    .line 18
    .line 19
    packed-switch v10, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    const-string v0, "\""

    .line 23
    .line 24
    const-string v3, "\u4f20\u8f93\u5931\u8d25\uff1a"

    .line 25
    .line 26
    const-string v5, "\u5b89\u88c5\u5931\u8d25\uff1a"

    .line 27
    .line 28
    const-string v10, "\u5199\u5165\u5931\u8d25\uff1a"

    .line 29
    .line 30
    const-string v11, "\u6293\u53d6sessionId\u5931\u8d25\uff1a"

    .line 31
    .line 32
    const-string v12, "cmd package install-create  -r -d -t --user "

    .line 33
    .line 34
    const-string v13, "cmd package install-create  -r -d -t -g --user "

    .line 35
    .line 36
    const-string v14, "pm install-create  -r -d -t --user "

    .line 37
    .line 38
    const-string v15, "pm install-create  -r -d -t -g --user "

    .line 39
    .line 40
    const-string v7, "ls -ls \""

    .line 41
    .line 42
    :try_start_0
    const-string v8, "/data/local/tmp/.temp"

    .line 43
    .line 44
    sget-object v16, Lfa/b0;->a:La2/w0;

    .line 45
    .line 46
    const-string v17, "rm /data/local/tmp/.temp"

    .line 47
    .line 48
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static/range {v17 .. v17}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 52
    .line 53
    .line 54
    const-string v1, "\u4f20\u8f93\u4e2d"

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    .line 58
    .line 59
    :try_start_1
    sget-object v1, Lfa/h;->a:Lfa/j;

    .line 60
    .line 61
    invoke-virtual {v1}, Lfa/j;->i()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    iget-object v1, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v1, v8, v2}, La2/w0;->a0(Ljava/lang/String;Ljava/lang/String;Lmc/b;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_0
    sget-object v1, Lfa/l;->a:Lfa/m;

    .line 77
    .line 78
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    iget-object v1, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v1, v8, v2}, La2/w0;->b0(Ljava/lang/String;Ljava/lang/String;Lmc/b;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object v8, v9, Lx9/w3;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .line 92
    :goto_0
    :try_start_2
    const-string v1, "\u67e5\u770b\u4e2d"

    .line 93
    .line 94
    invoke-virtual {v2, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget v1, v1, Lfa/a0;->a:I

    .line 117
    .line 118
    if-eqz v1, :cond_2

    .line 119
    .line 120
    const-string v0, "\u6587\u4ef6\u4f20\u8f93\u5931\u8d25"

    .line 121
    .line 122
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_6

    .line 129
    .line 130
    :catch_1
    move-exception v0

    .line 131
    goto/16 :goto_4

    .line 132
    .line 133
    :cond_2
    const-string v1, "\u521b\u5efa\u4e2d"

    .line 134
    .line 135
    invoke-virtual {v2, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {}, Lif/a;->T()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    iget v3, v1, Lfa/a0;->a:I

    .line 159
    .line 160
    if-eqz v3, :cond_3

    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Lif/a;->T()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    :cond_3
    iget v3, v1, Lfa/a0;->a:I

    .line 183
    .line 184
    if-eqz v3, :cond_5

    .line 185
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Lif/a;->T()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    iget v3, v1, Lfa/a0;->a:I

    .line 207
    .line 208
    if-eqz v3, :cond_4

    .line 209
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lif/a;->T()I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    :cond_4
    iget v3, v1, Lfa/a0;->a:I

    .line 231
    .line 232
    if-eqz v3, :cond_5

    .line 233
    .line 234
    const/4 v7, 0x1

    .line 235
    goto :goto_1

    .line 236
    :cond_5
    const/4 v7, 0x0

    .line 237
    :goto_1
    iget v3, v1, Lfa/a0;->a:I

    .line 238
    .line 239
    if-eqz v3, :cond_6

    .line 240
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Lfa/a0;->a()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_6

    .line 264
    .line 265
    :cond_6
    invoke-virtual {v1}, Lfa/a0;->a()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    const-string v4, "["

    .line 270
    .line 271
    const-string v9, "]"

    .line 272
    .line 273
    const/4 v12, 0x0

    .line 274
    invoke-static {v3, v4, v9, v12}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-eqz v4, :cond_7

    .line 283
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Lfa/a0;->a()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_6

    .line 307
    .line 308
    :cond_7
    const-string v1, "\u63d0\u4ea4\u4e2d"

    .line 309
    .line 310
    invoke-virtual {v2, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    if-eqz v7, :cond_8

    .line 314
    .line 315
    const-string v1, "cmd package"

    .line 316
    .line 317
    goto :goto_2

    .line 318
    :cond_8
    const-string v1, "pm"

    .line 319
    .line 320
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v7, " install-write -S "

    .line 329
    .line 330
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    new-instance v7, Ljava/io/File;

    .line 334
    .line 335
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->p(Ljava/io/File;)J

    .line 339
    .line 340
    .line 341
    move-result-wide v11

    .line 342
    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v7, " "

    .line 346
    .line 347
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v7, " \""

    .line 354
    .line 355
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    new-instance v7, Ljava/io/File;

    .line 359
    .line 360
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v7, "\" \""

    .line 371
    .line 372
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    iget v4, v0, Lfa/a0;->a:I

    .line 390
    .line 391
    if-eqz v4, :cond_9

    .line 392
    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 413
    .line 414
    .line 415
    goto :goto_6

    .line 416
    :cond_9
    const-string v0, "\u5b89\u88c5\u4e2d"

    .line 417
    .line 418
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const-string v1, " install-commit "

    .line 430
    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    iget v1, v0, Lfa/a0;->a:I

    .line 446
    .line 447
    if-eqz v1, :cond_a

    .line 448
    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 466
    .line 467
    .line 468
    goto :goto_5

    .line 469
    :cond_a
    const-string v0, "\u5b89\u88c5\u6210\u529f"

    .line 470
    .line 471
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    goto :goto_5

    .line 475
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 495
    .line 496
    .line 497
    goto :goto_6

    .line 498
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-static {v0, v1}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 504
    .line 505
    .line 506
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 507
    .line 508
    .line 509
    :goto_6
    return-void

    .line 510
    :pswitch_0
    :try_start_3
    new-instance v0, Ljava/io/File;

    .line 511
    .line 512
    iget-object v1, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 513
    .line 514
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    const/4 v1, 0x1

    .line 522
    new-array v3, v1, [Ljava/lang/Object;

    .line 523
    .line 524
    const/4 v5, 0x0

    .line 525
    aput-object v0, v3, v5

    .line 526
    .line 527
    new-instance v0, Ljava/util/ArrayList;

    .line 528
    .line 529
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 530
    .line 531
    .line 532
    aget-object v1, v3, v5

    .line 533
    .line 534
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 545
    .line 546
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 547
    .line 548
    iget v1, v1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 549
    .line 550
    invoke-static {v1, v0}, La2/d;->g(ILjava/util/List;)V

    .line 551
    .line 552
    .line 553
    const-string v0, "\u5b89\u88c5\u5b8c\u6210"

    .line 554
    .line 555
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 556
    .line 557
    .line 558
    goto :goto_7

    .line 559
    :catch_2
    move-exception v0

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    .line 561
    .line 562
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    invoke-static {v0, v1}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 566
    .line 567
    .line 568
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 569
    .line 570
    .line 571
    return-void

    .line 572
    :pswitch_1
    iget-object v0, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 573
    .line 574
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    const-string v3, ".apk"

    .line 579
    .line 580
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    if-nez v1, :cond_b

    .line 585
    .line 586
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    const-string v3, ".1"

    .line 591
    .line 592
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 593
    .line 594
    .line 595
    move-result v1

    .line 596
    if-eqz v1, :cond_c

    .line 597
    .line 598
    :cond_b
    invoke-static {v0}, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 602
    :catch_3
    :cond_c
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 606
    .line 607
    .line 608
    return-void

    .line 609
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 610
    .line 611
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 615
    .line 616
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 617
    .line 618
    if-eqz v1, :cond_d

    .line 619
    .line 620
    move-object v5, v6

    .line 621
    :cond_d
    const-string v1, " ORDER BY   CASE WHEN isDir = 1 THEN 0 ELSE 1 END,   name COLLATE NOCASE ASC"

    .line 622
    .line 623
    invoke-static {v5, v1, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    iget-object v1, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 628
    .line 629
    const/4 v3, 0x1

    .line 630
    new-array v3, v3, [Ljava/lang/Object;

    .line 631
    .line 632
    const/4 v4, 0x0

    .line 633
    aput-object v1, v3, v4

    .line 634
    .line 635
    new-instance v1, La2/g1;

    .line 636
    .line 637
    invoke-direct {v1, v0, v3}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    .line 639
    .line 640
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    new-instance v1, Ljava/util/ArrayList;

    .line 653
    .line 654
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .line 656
    .line 657
    if-eqz v0, :cond_e

    .line 658
    .line 659
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 660
    .line 661
    .line 662
    move-result v3

    .line 663
    if-nez v3, :cond_e

    .line 664
    .line 665
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 670
    .line 671
    .line 672
    move-result v3

    .line 673
    if-eqz v3, :cond_e

    .line 674
    .line 675
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v3

    .line 679
    check-cast v3, Lcom/yunpan/appmanage/db/FileInfo;

    .line 680
    .line 681
    new-instance v4, Lx9/w3;

    .line 682
    .line 683
    invoke-direct {v4, v3}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    goto :goto_8

    .line 690
    :cond_e
    invoke-virtual {v2, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 694
    .line 695
    .line 696
    return-void

    .line 697
    :pswitch_3
    new-instance v0, Ljava/util/ArrayList;

    .line 698
    .line 699
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .line 701
    .line 702
    iget-object v1, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 703
    .line 704
    const-string v3, "/data"

    .line 705
    .line 706
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    if-eqz v1, :cond_f

    .line 711
    .line 712
    iget-object v1, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 713
    .line 714
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->b(Ljava/lang/String;)Z

    .line 715
    .line 716
    .line 717
    move-result v1

    .line 718
    if-nez v1, :cond_f

    .line 719
    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    .line 721
    .line 722
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    .line 724
    .line 725
    iget-object v3, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 726
    .line 727
    const-string v4, "/"

    .line 728
    .line 729
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 730
    .line 731
    .line 732
    move-result v4

    .line 733
    const/4 v5, 0x0

    .line 734
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v3

    .line 738
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    const-string v3, "/\u200bdata"

    .line 742
    .line 743
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    iput-object v1, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 751
    .line 752
    :cond_f
    new-instance v1, Ljava/io/File;

    .line 753
    .line 754
    iget-object v3, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 755
    .line 756
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    if-nez v1, :cond_10

    .line 764
    .line 765
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 766
    .line 767
    .line 768
    goto :goto_c

    .line 769
    :cond_10
    array-length v3, v1

    .line 770
    const/4 v8, 0x0

    .line 771
    :goto_9
    if-ge v8, v3, :cond_13

    .line 772
    .line 773
    aget-object v4, v1, v8

    .line 774
    .line 775
    sget-object v5, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 776
    .line 777
    iget-boolean v5, v5, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 778
    .line 779
    if-nez v5, :cond_12

    .line 780
    .line 781
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v5

    .line 785
    const-string v6, "."

    .line 786
    .line 787
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 788
    .line 789
    .line 790
    move-result v5

    .line 791
    if-eqz v5, :cond_12

    .line 792
    .line 793
    :cond_11
    :goto_a
    const/4 v4, 0x1

    .line 794
    goto :goto_b

    .line 795
    :cond_12
    new-instance v5, Lx9/w3;

    .line 796
    .line 797
    invoke-direct {v5, v4}, Lx9/w3;-><init>(Ljava/io/File;)V

    .line 798
    .line 799
    .line 800
    iget-boolean v4, v5, Lx9/w3;->c:Z

    .line 801
    .line 802
    if-eqz v4, :cond_11

    .line 803
    .line 804
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    .line 806
    .line 807
    goto :goto_a

    .line 808
    :goto_b
    add-int/2addr v8, v4

    .line 809
    goto :goto_9

    .line 810
    :cond_13
    new-instance v1, La2/m;

    .line 811
    .line 812
    const/16 v3, 0x12

    .line 813
    .line 814
    invoke-direct {v1, v3}, La2/m;-><init>(I)V

    .line 815
    .line 816
    .line 817
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 818
    .line 819
    .line 820
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 821
    .line 822
    .line 823
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 824
    .line 825
    .line 826
    goto :goto_c

    .line 827
    :catch_4
    const-string v0, "\u65e0\u6743\u9650"

    .line 828
    .line 829
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 830
    .line 831
    .line 832
    :goto_c
    return-void

    .line 833
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 834
    .line 835
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 839
    .line 840
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 841
    .line 842
    if-eqz v3, :cond_14

    .line 843
    .line 844
    move-object v5, v6

    .line 845
    :cond_14
    invoke-static {v5, v0, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    iget-object v1, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 850
    .line 851
    const/4 v3, 0x1

    .line 852
    new-array v3, v3, [Ljava/lang/Object;

    .line 853
    .line 854
    const/4 v4, 0x0

    .line 855
    aput-object v1, v3, v4

    .line 856
    .line 857
    new-instance v1, La2/g1;

    .line 858
    .line 859
    invoke-direct {v1, v0, v3}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 860
    .line 861
    .line 862
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 867
    .line 868
    .line 869
    move-result-object v0

    .line 870
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    new-instance v1, Ljava/util/ArrayList;

    .line 875
    .line 876
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .line 878
    .line 879
    new-instance v3, Ljava/util/ArrayList;

    .line 880
    .line 881
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 882
    .line 883
    .line 884
    if-eqz v0, :cond_17

    .line 885
    .line 886
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 887
    .line 888
    .line 889
    move-result v4

    .line 890
    if-nez v4, :cond_17

    .line 891
    .line 892
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 897
    .line 898
    .line 899
    move-result v4

    .line 900
    if-eqz v4, :cond_16

    .line 901
    .line 902
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v4

    .line 906
    check-cast v4, Lcom/yunpan/appmanage/db/FileInfo;

    .line 907
    .line 908
    iget-boolean v5, v4, Lcom/yunpan/appmanage/db/FileInfo;->isDir:Z

    .line 909
    .line 910
    if-eqz v5, :cond_15

    .line 911
    .line 912
    new-instance v5, Lx9/w3;

    .line 913
    .line 914
    invoke-direct {v5, v4}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 915
    .line 916
    .line 917
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    .line 919
    .line 920
    goto :goto_d

    .line 921
    :cond_15
    new-instance v5, Lx9/w3;

    .line 922
    .line 923
    invoke-direct {v5, v4}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    .line 928
    .line 929
    goto :goto_d

    .line 930
    :cond_16
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 931
    .line 932
    .line 933
    :cond_17
    invoke-virtual {v2, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 934
    .line 935
    .line 936
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 937
    .line 938
    .line 939
    return-void

    .line 940
    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    .line 941
    .line 942
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 943
    .line 944
    .line 945
    new-instance v1, Ljava/util/ArrayList;

    .line 946
    .line 947
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 948
    .line 949
    .line 950
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 951
    .line 952
    iget-boolean v4, v3, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 953
    .line 954
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/w;->n0:Z

    .line 955
    .line 956
    const/4 v5, 0x0

    .line 957
    invoke-static {v9, v0, v5, v4, v3}, Lcom/yunpan/appmanage/util/u;->b(Lx9/w3;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 958
    .line 959
    .line 960
    iget-object v3, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 961
    .line 962
    invoke-static {v3, v0, v1}, Lcom/yunpan/appmanage/util/u;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 963
    .line 964
    .line 965
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 966
    .line 967
    .line 968
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 969
    .line 970
    .line 971
    return-void

    .line 972
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 973
    .line 974
    const-string v3, "SELECT * FROM fileList WHERE isDir=1 and parent=?"

    .line 975
    .line 976
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 980
    .line 981
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 982
    .line 983
    if-eqz v3, :cond_18

    .line 984
    .line 985
    move-object v5, v6

    .line 986
    :cond_18
    invoke-static {v5, v0, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    iget-object v1, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 991
    .line 992
    const/4 v3, 0x1

    .line 993
    new-array v3, v3, [Ljava/lang/Object;

    .line 994
    .line 995
    const/4 v4, 0x0

    .line 996
    aput-object v1, v3, v4

    .line 997
    .line 998
    new-instance v1, La2/g1;

    .line 999
    .line 1000
    invoke-direct {v1, v0, v3}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1001
    .line 1002
    .line 1003
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v0

    .line 1011
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v0

    .line 1015
    new-instance v1, Ljava/util/ArrayList;

    .line 1016
    .line 1017
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1018
    .line 1019
    .line 1020
    if-eqz v0, :cond_19

    .line 1021
    .line 1022
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1023
    .line 1024
    .line 1025
    move-result v3

    .line 1026
    if-nez v3, :cond_19

    .line 1027
    .line 1028
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v0

    .line 1032
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1033
    .line 1034
    .line 1035
    move-result v3

    .line 1036
    if-eqz v3, :cond_19

    .line 1037
    .line 1038
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v3

    .line 1042
    check-cast v3, Lcom/yunpan/appmanage/db/FileInfo;

    .line 1043
    .line 1044
    new-instance v4, Lx9/w3;

    .line 1045
    .line 1046
    invoke-direct {v4, v3}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    .line 1051
    .line 1052
    goto :goto_e

    .line 1053
    :cond_19
    invoke-virtual {v2, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1057
    .line 1058
    .line 1059
    return-void

    .line 1060
    nop

    .line 1061
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
