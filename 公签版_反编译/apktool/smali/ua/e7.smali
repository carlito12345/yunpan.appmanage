.class public final synthetic Lua/e7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Lua/e7;->a:I

    iput-object p1, p0, Lua/e7;->b:Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;

    iput-object p2, p0, Lua/e7;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lua/e7;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "/"

    .line 6
    .line 7
    const-string v5, "\u7cfb\u7edf\u5206\u533a\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3"

    .line 8
    .line 9
    const-string v6, "\u4e0d\u5b58\u5728\u8d85\u7ea7\u7cfb\u7edf\u5e94\u7528\u76ee\u5f55"

    .line 10
    .line 11
    const-string v7, "/system/priv-app"

    .line 12
    .line 13
    iget-boolean v8, v0, Lua/e7;->d:Z

    .line 14
    .line 15
    const-string v9, "/system/app"

    .line 16
    .line 17
    const-string v10, "/data/app"

    .line 18
    .line 19
    const-string v11, "\u6b64\u5e94\u7528\u5df2\u88ab\u60a8\u4f2a\u5378\u8f7d\uff0c\u8bf7\u5148\u6062\u590d\u6216\u5f3a\u5220"

    .line 20
    .line 21
    const-string v13, "\u672c\u8eab\u5c31\u662f\u7cfb\u7edf\u5e94\u7528 "

    .line 22
    .line 23
    const-string v14, "/data/app/"

    .line 24
    .line 25
    const-string v15, "\u6b64\u5e94\u7528\u5df2\u88ab\u60a8\u7981\u7528\uff0c\u8bf7\u5148\u89e3\u7981"

    .line 26
    .line 27
    const-string v3, "\'"

    .line 28
    .line 29
    const-string v4, "rm -rf \'"

    .line 30
    .line 31
    iget-object v12, v0, Lua/e7;->b:Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;

    .line 32
    .line 33
    move-object/from16 v18, v2

    .line 34
    .line 35
    iget-object v2, v0, Lua/e7;->c:Ljava/lang/String;

    .line 36
    .line 37
    const/16 v19, 0x1

    .line 38
    .line 39
    move-object/from16 v20, v5

    .line 40
    .line 41
    iget v5, v0, Lua/e7;->a:I

    .line 42
    .line 43
    packed-switch v5, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    sget v5, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->F:I

    .line 47
    .line 48
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const-string v5, "/base.apk"

    .line 52
    .line 53
    :try_start_0
    new-instance v0, Lef/b;

    .line 54
    .line 55
    invoke-direct {v0, v2}, Lef/b;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lef/b;->M()V

    .line 59
    .line 60
    .line 61
    move-object/from16 v21, v5

    .line 62
    .line 63
    iget-object v5, v0, Lef/b;->e:Lff/c;

    .line 64
    .line 65
    iget-object v5, v5, Lff/c;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 66
    .line 67
    invoke-virtual {v0}, Lef/b;->M()V

    .line 68
    .line 69
    .line 70
    iget-object v0, v0, Lef/b;->e:Lff/c;

    .line 71
    .line 72
    iget-object v0, v0, Lff/c;->g:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    move-object/from16 v22, v2

    .line 83
    .line 84
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 85
    .line 86
    if-le v0, v2, :cond_0

    .line 87
    .line 88
    const-string v0, "\u6b64\u5e94\u7528\u4e0d\u517c\u5bb9\u60a8\u7684\u7cfb\u7edf"

    .line 89
    .line 90
    :goto_0
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_d

    .line 94
    .line 95
    :cond_0
    :try_start_1
    iget-object v0, v12, Lda/g;->A:Lda/g;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 103
    .line 104
    .line 105
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    goto :goto_1

    .line 107
    :catch_0
    nop

    .line 108
    const/4 v0, 0x0

    .line 109
    :goto_1
    if-eqz v0, :cond_7

    .line 110
    .line 111
    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 112
    .line 113
    if-nez v2, :cond_1

    .line 114
    .line 115
    invoke-static {v15, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_d

    .line 119
    .line 120
    :cond_1
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 121
    .line 122
    and-int/lit8 v2, v2, 0x1

    .line 123
    .line 124
    if-eqz v2, :cond_2

    .line 125
    .line 126
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_2

    .line 133
    .line 134
    invoke-static {v13, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_d

    .line 138
    .line 139
    :cond_2
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 140
    .line 141
    const/high16 v12, 0x800000

    .line 142
    .line 143
    and-int/2addr v2, v12

    .line 144
    if-nez v2, :cond_3

    .line 145
    .line 146
    :goto_2
    invoke-static {v11, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_d

    .line 150
    .line 151
    :cond_3
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 152
    .line 153
    if-eqz v2, :cond_7

    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_4

    .line 160
    .line 161
    goto/16 :goto_3

    .line 162
    .line 163
    :cond_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    new-instance v2, Ljava/io/File;

    .line 169
    .line 170
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 171
    .line 172
    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    const-string v11, "\u5220\u9664\u65e7\u5e94\u7528\u6587\u4ef6\u5931\u8d25"

    .line 184
    .line 185
    if-eqz v2, :cond_5

    .line 186
    .line 187
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 188
    .line 189
    new-instance v10, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    iget v0, v0, Lfa/a0;->a:I

    .line 214
    .line 215
    if-eqz v0, :cond_7

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_5
    new-instance v2, Ljava/io/File;

    .line 219
    .line 220
    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 221
    .line 222
    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_6

    .line 238
    .line 239
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 240
    .line 241
    new-instance v10, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    new-instance v12, Ljava/io/File;

    .line 247
    .line 248
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 249
    .line 250
    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v12}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    iget v0, v0, Lfa/a0;->a:I

    .line 275
    .line 276
    if-eqz v0, :cond_7

    .line 277
    .line 278
    goto/16 :goto_2

    .line 279
    .line 280
    :cond_6
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 281
    .line 282
    new-instance v10, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    new-instance v12, Ljava/io/File;

    .line 288
    .line 289
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 290
    .line 291
    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    iget v0, v0, Lfa/a0;->a:I

    .line 320
    .line 321
    if-eqz v0, :cond_7

    .line 322
    .line 323
    goto/16 :goto_2

    .line 324
    .line 325
    :cond_7
    :goto_3
    new-instance v0, Ljava/io/File;

    .line 326
    .line 327
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    if-nez v8, :cond_8

    .line 331
    .line 332
    new-instance v0, Ljava/io/File;

    .line 333
    .line 334
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-nez v2, :cond_8

    .line 342
    .line 343
    invoke-static {v6, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_d

    .line 347
    .line 348
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->j(Ljava/lang/String;)J

    .line 353
    .line 354
    .line 355
    move-result-wide v6

    .line 356
    const-wide/32 v8, 0x1400000

    .line 357
    .line 358
    .line 359
    cmp-long v2, v6, v8

    .line 360
    .line 361
    if-gez v2, :cond_9

    .line 362
    .line 363
    move-object/from16 v2, v20

    .line 364
    .line 365
    :goto_4
    invoke-static {v2, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 366
    .line 367
    .line 368
    goto/16 :goto_d

    .line 369
    .line 370
    :cond_9
    move-object/from16 v2, v20

    .line 371
    .line 372
    new-instance v10, Ljava/io/File;

    .line 373
    .line 374
    move-object/from16 v11, v22

    .line 375
    .line 376
    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-static {v10}, Lcom/yunpan/appmanage/util/a0;->p(Ljava/io/File;)J

    .line 380
    .line 381
    .line 382
    move-result-wide v12

    .line 383
    add-long/2addr v12, v8

    .line 384
    cmp-long v8, v6, v12

    .line 385
    .line 386
    if-gez v8, :cond_a

    .line 387
    .line 388
    goto :goto_4

    .line 389
    :cond_a
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 390
    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    move-object/from16 v7, v18

    .line 404
    .line 405
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    invoke-static {v6}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 422
    .line 423
    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    const-string v6, "mkdir \'"

    .line 427
    .line 428
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    iget v2, v2, Lfa/a0;->a:I

    .line 456
    .line 457
    if-eqz v2, :cond_b

    .line 458
    .line 459
    const-string v0, "\u521b\u5efa\u6587\u4ef6\u5939\u5931\u8d25"

    .line 460
    .line 461
    goto/16 :goto_0

    .line 462
    .line 463
    :cond_b
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 464
    .line 465
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    const-string v6, "chmod 755 \'"

    .line 474
    .line 475
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v6

    .line 482
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    iget v2, v2, Lfa/a0;->a:I

    .line 503
    .line 504
    if-eqz v2, :cond_c

    .line 505
    .line 506
    const-string v0, "\u8bbe\u7f6e\u6587\u4ef6\u5939\u6743\u9650\u5931\u8d25"

    .line 507
    .line 508
    goto/16 :goto_0

    .line 509
    .line 510
    :cond_c
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v6

    .line 519
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 526
    .line 527
    .line 528
    move-object/from16 v6, v21

    .line 529
    .line 530
    :try_start_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    invoke-static {v11, v2}, La2/w0;->z(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 538
    .line 539
    .line 540
    goto/16 :goto_5

    .line 541
    .line 542
    :catch_1
    move-object/from16 v6, v21

    .line 543
    .line 544
    :catch_2
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 545
    .line 546
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 547
    .line 548
    iget v2, v2, Lcom/yunpan/appmanage/util/k;->n:I

    .line 549
    .line 550
    const-string v8, "\u62f7\u8d1d\u6587\u4ef6\u5230\u7cfb\u7edf\u76ee\u5f55 \u5931\u8d25"

    .line 551
    .line 552
    if-lez v2, :cond_18

    .line 553
    .line 554
    :try_start_4
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 555
    .line 556
    new-instance v9, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v10

    .line 565
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v9

    .line 581
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    invoke-static {v11, v9}, La2/w0;->z(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 585
    .line 586
    .line 587
    goto :goto_5

    .line 588
    :catch_3
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 589
    .line 590
    iget v9, v2, Lcom/yunpan/appmanage/util/k;->n:I

    .line 591
    .line 592
    if-eqz v9, :cond_18

    .line 593
    .line 594
    sget-object v9, Lfa/g0;->a:Lfa/h0;

    .line 595
    .line 596
    invoke-virtual {v9}, Lfa/h0;->d()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v10

    .line 600
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 601
    .line 602
    .line 603
    move-result v10

    .line 604
    if-nez v10, :cond_d

    .line 605
    .line 606
    goto/16 :goto_c

    .line 607
    .line 608
    :cond_d
    :try_start_5
    sget-object v10, Lfa/b0;->a:La2/w0;

    .line 609
    .line 610
    new-instance v12, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .line 614
    .line 615
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->o:Ljava/lang/String;

    .line 616
    .line 617
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v9}, Lfa/h0;->d()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 625
    .line 626
    .line 627
    move-result v2

    .line 628
    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    new-instance v9, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v12

    .line 648
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v6

    .line 664
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 665
    .line 666
    .line 667
    invoke-static {v2, v6}, La2/w0;->z(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 668
    .line 669
    .line 670
    :goto_5
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 671
    .line 672
    new-instance v6, Ljava/lang/StringBuilder;

    .line 673
    .line 674
    const-string v8, "chmod 644 \'"

    .line 675
    .line 676
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v8

    .line 683
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    const-string v8, "/base.apk\'"

    .line 693
    .line 694
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v6

    .line 701
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    .line 703
    .line 704
    invoke-static {v6}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 705
    .line 706
    .line 707
    move-result-object v2

    .line 708
    iget v2, v2, Lfa/a0;->a:I

    .line 709
    .line 710
    if-eqz v2, :cond_e

    .line 711
    .line 712
    const-string v0, "\u4fee\u6539\u6587\u4ef6\u6743\u9650\u5931\u8d25"

    .line 713
    .line 714
    goto/16 :goto_0

    .line 715
    .line 716
    :cond_e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 717
    .line 718
    const/16 v6, 0x15

    .line 719
    .line 720
    if-ge v2, v6, :cond_f

    .line 721
    .line 722
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 723
    .line 724
    .line 725
    goto/16 :goto_d

    .line 726
    .line 727
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 728
    .line 729
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .line 731
    .line 732
    sget-object v6, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 733
    .line 734
    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 735
    .line 736
    .line 737
    move-result-object v6

    .line 738
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v6

    .line 742
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    const-string v6, "/111/"

    .line 746
    .line 747
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    :try_start_6
    sget-object v6, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 755
    .line 756
    iget-boolean v6, v6, Lcom/yunpan/appmanage/util/w;->r0:Z

    .line 757
    .line 758
    if-eqz v6, :cond_10

    .line 759
    .line 760
    new-instance v6, Ljava/io/File;

    .line 761
    .line 762
    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    const/4 v8, 0x0

    .line 766
    invoke-static {v6, v2, v8, v8}, Lif/a;->w(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lmc/b;)V

    .line 767
    .line 768
    .line 769
    goto :goto_6

    .line 770
    :cond_10
    const/4 v8, 0x0

    .line 771
    new-instance v6, Ljava/io/File;

    .line 772
    .line 773
    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    invoke-static {v6, v2, v8, v8}, Lza/g;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lmc/b;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 777
    .line 778
    .line 779
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 780
    .line 781
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    const-string v8, "lib"

    .line 788
    .line 789
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v6

    .line 796
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 797
    .line 798
    .line 799
    move-result v6

    .line 800
    if-eqz v6, :cond_17

    .line 801
    .line 802
    invoke-static {}, Lg7/d;->w()[Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v6

    .line 806
    array-length v8, v6

    .line 807
    const/4 v9, 0x0

    .line 808
    :goto_7
    if-ge v9, v8, :cond_16

    .line 809
    .line 810
    aget-object v10, v6, v9

    .line 811
    .line 812
    new-instance v11, Ljava/lang/StringBuilder;

    .line 813
    .line 814
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    const-string v12, "lib/"

    .line 821
    .line 822
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    .line 827
    .line 828
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v11

    .line 832
    invoke-static {v11}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 833
    .line 834
    .line 835
    move-result v11

    .line 836
    if-eqz v11, :cond_15

    .line 837
    .line 838
    new-instance v6, Ljava/io/File;

    .line 839
    .line 840
    new-instance v8, Ljava/lang/StringBuilder;

    .line 841
    .line 842
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v9

    .line 849
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    const-string v9, "/lib/"

    .line 859
    .line 860
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    const-string v9, "armeabi-v7a"

    .line 864
    .line 865
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 866
    .line 867
    .line 868
    move-result v9

    .line 869
    if-eqz v9, :cond_11

    .line 870
    .line 871
    const-string v9, "arm"

    .line 872
    .line 873
    goto :goto_8

    .line 874
    :cond_11
    const-string v9, "arm64-v8a"

    .line 875
    .line 876
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 877
    .line 878
    .line 879
    move-result v9

    .line 880
    if-eqz v9, :cond_12

    .line 881
    .line 882
    const-string v9, "arm64"

    .line 883
    .line 884
    goto :goto_8

    .line 885
    :cond_12
    move-object v9, v10

    .line 886
    :goto_8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v8

    .line 893
    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    sget-object v8, Lfa/b0;->a:La2/w0;

    .line 897
    .line 898
    new-instance v9, Ljava/lang/StringBuilder;

    .line 899
    .line 900
    const-string v11, "mkdir -p \'"

    .line 901
    .line 902
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v11

    .line 909
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    .line 911
    .line 912
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    .line 915
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v9

    .line 919
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 920
    .line 921
    .line 922
    invoke-static {v9}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 923
    .line 924
    .line 925
    move-result-object v8

    .line 926
    iget v8, v8, Lfa/a0;->a:I

    .line 927
    .line 928
    if-eqz v8, :cond_13

    .line 929
    .line 930
    goto/16 :goto_a

    .line 931
    .line 932
    :cond_13
    new-instance v8, Ljava/lang/StringBuilder;

    .line 933
    .line 934
    const-string v9, "chmod -R 755 \'"

    .line 935
    .line 936
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v9

    .line 943
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    .line 948
    .line 949
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v8

    .line 953
    invoke-static {v8}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 954
    .line 955
    .line 956
    new-instance v8, Ljava/io/File;

    .line 957
    .line 958
    invoke-static {v2, v12, v10}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v9

    .line 962
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 966
    .line 967
    .line 968
    move-result-object v8

    .line 969
    array-length v9, v8

    .line 970
    const/4 v12, 0x0

    .line 971
    const/16 v17, 0x0

    .line 972
    .line 973
    :goto_9
    if-ge v12, v9, :cond_14

    .line 974
    .line 975
    aget-object v10, v8, v12

    .line 976
    .line 977
    sget-object v11, Lfa/b0;->a:La2/w0;

    .line 978
    .line 979
    new-instance v13, Ljava/lang/StringBuilder;

    .line 980
    .line 981
    const-string v14, "\\cp -R \'"

    .line 982
    .line 983
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v14

    .line 990
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    .line 992
    .line 993
    const-string v14, "\' \'"

    .line 994
    .line 995
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v14

    .line 1002
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v13

    .line 1012
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1013
    .line 1014
    .line 1015
    invoke-static {v13}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1016
    .line 1017
    .line 1018
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    const-string v13, "chmod -R 644 \'"

    .line 1021
    .line 1022
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v13

    .line 1029
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v10

    .line 1039
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v10

    .line 1049
    invoke-static {v10}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1050
    .line 1051
    .line 1052
    add-int/lit8 v12, v12, 0x1

    .line 1053
    .line 1054
    const/16 v17, 0x1

    .line 1055
    .line 1056
    goto :goto_9

    .line 1057
    :cond_14
    move/from16 v12, v17

    .line 1058
    .line 1059
    goto :goto_b

    .line 1060
    :cond_15
    add-int/lit8 v9, v9, 0x1

    .line 1061
    .line 1062
    goto/16 :goto_7

    .line 1063
    .line 1064
    :cond_16
    :goto_a
    const/4 v12, 0x0

    .line 1065
    :goto_b
    if-nez v12, :cond_17

    .line 1066
    .line 1067
    const-string v6, "\u68c0\u6d4b\u5230\u6b64\u5e94\u7528\u53ef\u80fd\u4e0d\u517c\u5bb9\u60a8\u7684\u7cfb\u7edf"

    .line 1068
    .line 1069
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1070
    .line 1071
    .line 1072
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v0

    .line 1094
    invoke-virtual {v1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1095
    .line 1096
    .line 1097
    :cond_17
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 1098
    .line 1099
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v2

    .line 1114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1115
    .line 1116
    .line 1117
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1121
    .line 1122
    .line 1123
    goto :goto_d

    .line 1124
    :catch_4
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 1125
    .line 1126
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v2

    .line 1141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1142
    .line 1143
    .line 1144
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1148
    .line 1149
    .line 1150
    goto :goto_d

    .line 1151
    :catch_5
    :cond_18
    :goto_c
    invoke-static {v8, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1152
    .line 1153
    .line 1154
    goto :goto_d

    .line 1155
    :catch_6
    const-string v0, "\u5931\u8d25\uff1a\u65e0\u6cd5\u5206\u6790\u6b64\u5e94\u7528"

    .line 1156
    .line 1157
    goto/16 :goto_0

    .line 1158
    .line 1159
    :goto_d
    return-void

    .line 1160
    :pswitch_0
    move-object v0, v2

    .line 1161
    move-object/from16 v5, v18

    .line 1162
    .line 1163
    move-object/from16 v2, v20

    .line 1164
    .line 1165
    sget v18, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->F:I

    .line 1166
    .line 1167
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1168
    .line 1169
    .line 1170
    :try_start_7
    iget-object v12, v12, Lda/g;->A:Lda/g;

    .line 1171
    .line 1172
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 1176
    move-object/from16 v18, v3

    .line 1177
    .line 1178
    const/4 v3, 0x0

    .line 1179
    :try_start_8
    invoke-virtual {v12, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 1183
    goto :goto_10

    .line 1184
    :catch_7
    :goto_e
    nop

    .line 1185
    goto :goto_f

    .line 1186
    :catch_8
    move-object/from16 v18, v3

    .line 1187
    .line 1188
    goto :goto_e

    .line 1189
    :goto_f
    const/4 v12, 0x0

    .line 1190
    :goto_10
    const-string v3, "\u672a\u627e\u5230\u6b64\u5e94\u7528"

    .line 1191
    .line 1192
    if-nez v12, :cond_19

    .line 1193
    .line 1194
    invoke-static {v3, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1195
    .line 1196
    .line 1197
    goto/16 :goto_14

    .line 1198
    .line 1199
    :cond_19
    move-object/from16 v16, v3

    .line 1200
    .line 1201
    iget-object v3, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1202
    .line 1203
    if-eqz v3, :cond_1a

    .line 1204
    .line 1205
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1206
    .line 1207
    .line 1208
    move-result v3

    .line 1209
    if-eqz v3, :cond_1b

    .line 1210
    .line 1211
    :cond_1a
    move-object/from16 v0, v16

    .line 1212
    .line 1213
    goto :goto_11

    .line 1214
    :cond_1b
    iget-object v3, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1215
    .line 1216
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 1217
    .line 1218
    .line 1219
    move-result v3

    .line 1220
    if-nez v3, :cond_1c

    .line 1221
    .line 1222
    const-string v0, "\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u8bf7\u91cd\u542f\u7cfb\u7edf"

    .line 1223
    .line 1224
    :goto_11
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1225
    .line 1226
    .line 1227
    goto/16 :goto_14

    .line 1228
    .line 1229
    :cond_1c
    iget-boolean v3, v12, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1230
    .line 1231
    if-nez v3, :cond_1d

    .line 1232
    .line 1233
    invoke-static {v15, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1234
    .line 1235
    .line 1236
    goto/16 :goto_14

    .line 1237
    .line 1238
    :cond_1d
    iget v3, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1239
    .line 1240
    and-int/lit8 v3, v3, 0x1

    .line 1241
    .line 1242
    if-eqz v3, :cond_1e

    .line 1243
    .line 1244
    iget-object v3, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1245
    .line 1246
    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1247
    .line 1248
    .line 1249
    move-result v3

    .line 1250
    if-nez v3, :cond_1e

    .line 1251
    .line 1252
    invoke-static {v13, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1253
    .line 1254
    .line 1255
    goto/16 :goto_14

    .line 1256
    .line 1257
    :cond_1e
    iget v3, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1258
    .line 1259
    const/high16 v13, 0x800000

    .line 1260
    .line 1261
    and-int/2addr v3, v13

    .line 1262
    if-nez v3, :cond_1f

    .line 1263
    .line 1264
    invoke-static {v11, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1265
    .line 1266
    .line 1267
    goto/16 :goto_14

    .line 1268
    .line 1269
    :cond_1f
    new-instance v3, Ljava/io/File;

    .line 1270
    .line 1271
    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1272
    .line 1273
    .line 1274
    if-nez v8, :cond_20

    .line 1275
    .line 1276
    new-instance v3, Ljava/io/File;

    .line 1277
    .line 1278
    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1279
    .line 1280
    .line 1281
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 1282
    .line 1283
    .line 1284
    move-result v7

    .line 1285
    if-nez v7, :cond_20

    .line 1286
    .line 1287
    :goto_12
    invoke-static {v6, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1288
    .line 1289
    .line 1290
    goto/16 :goto_14

    .line 1291
    .line 1292
    :cond_20
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v6

    .line 1296
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->j(Ljava/lang/String;)J

    .line 1297
    .line 1298
    .line 1299
    move-result-wide v6

    .line 1300
    const-wide/32 v8, 0x1400000

    .line 1301
    .line 1302
    .line 1303
    cmp-long v11, v6, v8

    .line 1304
    .line 1305
    if-gez v11, :cond_21

    .line 1306
    .line 1307
    :goto_13
    invoke-static {v2, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1308
    .line 1309
    .line 1310
    goto/16 :goto_14

    .line 1311
    .line 1312
    :cond_21
    new-instance v8, Ljava/io/File;

    .line 1313
    .line 1314
    iget-object v9, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1315
    .line 1316
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v8

    .line 1323
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v8

    .line 1327
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v8

    .line 1331
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1332
    .line 1333
    .line 1334
    move-result v8

    .line 1335
    if-nez v8, :cond_22

    .line 1336
    .line 1337
    const-string v0, "\u6b64\u5e94\u7528\u5b89\u88c5\u76ee\u5f55\u4e0d\u6b63\u786e\uff0c\u907f\u514d\u51fa\u9519\uff0c\u7981\u6b62\u8f6c\u6362"

    .line 1338
    .line 1339
    goto :goto_11

    .line 1340
    :cond_22
    new-instance v8, Ljava/io/File;

    .line 1341
    .line 1342
    iget-object v9, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1343
    .line 1344
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v8

    .line 1351
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v8

    .line 1355
    invoke-static {v8}, Landroid/support/v4/media/session/b;->k(Ljava/lang/String;)J

    .line 1356
    .line 1357
    .line 1358
    move-result-wide v8

    .line 1359
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1360
    .line 1361
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1362
    .line 1363
    .line 1364
    const-wide/32 v10, 0x1400000

    .line 1365
    .line 1366
    .line 1367
    add-long/2addr v8, v10

    .line 1368
    cmp-long v10, v6, v8

    .line 1369
    .line 1370
    if-gez v10, :cond_23

    .line 1371
    .line 1372
    goto :goto_13

    .line 1373
    :cond_23
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 1374
    .line 1375
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1376
    .line 1377
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v4

    .line 1384
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    .line 1392
    .line 1393
    move-object/from16 v4, v18

    .line 1394
    .line 1395
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    .line 1397
    .line 1398
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v5

    .line 1402
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1403
    .line 1404
    .line 1405
    invoke-static {v5}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1406
    .line 1407
    .line 1408
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1409
    .line 1410
    const-string v5, "mv "

    .line 1411
    .line 1412
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1413
    .line 1414
    .line 1415
    new-instance v5, Ljava/io/File;

    .line 1416
    .line 1417
    iget-object v6, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1418
    .line 1419
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1420
    .line 1421
    .line 1422
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v5

    .line 1426
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v5

    .line 1430
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    .line 1432
    .line 1433
    const-string v5, " "

    .line 1434
    .line 1435
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v5

    .line 1442
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v2

    .line 1449
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v2

    .line 1453
    iget v5, v2, Lfa/a0;->a:I

    .line 1454
    .line 1455
    const-string v6, "\u8f6c\u79fb\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 1456
    .line 1457
    if-eqz v5, :cond_24

    .line 1458
    .line 1459
    invoke-virtual {v2}, Lfa/a0;->a()Ljava/lang/String;

    .line 1460
    .line 1461
    .line 1462
    new-instance v0, Ljava/lang/Exception;

    .line 1463
    .line 1464
    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual {v1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1468
    .line 1469
    .line 1470
    goto :goto_14

    .line 1471
    :cond_24
    new-instance v2, Ljava/io/File;

    .line 1472
    .line 1473
    new-instance v5, Ljava/io/File;

    .line 1474
    .line 1475
    iget-object v7, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1476
    .line 1477
    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v5

    .line 1484
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v5

    .line 1488
    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1489
    .line 1490
    .line 1491
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 1492
    .line 1493
    .line 1494
    move-result v3

    .line 1495
    if-nez v3, :cond_25

    .line 1496
    .line 1497
    goto/16 :goto_12

    .line 1498
    .line 1499
    :cond_25
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v3

    .line 1503
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1504
    .line 1505
    .line 1506
    move-result v3

    .line 1507
    if-nez v3, :cond_26

    .line 1508
    .line 1509
    new-instance v3, Ljava/io/File;

    .line 1510
    .line 1511
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v5

    .line 1515
    invoke-direct {v3, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1516
    .line 1517
    .line 1518
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 1519
    .line 1520
    .line 1521
    move-result v3

    .line 1522
    if-nez v3, :cond_26

    .line 1523
    .line 1524
    :try_start_9
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v3

    .line 1528
    invoke-static {v3, v0}, La2/w0;->C(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    .line 1530
    .line 1531
    new-instance v3, Ljava/io/File;

    .line 1532
    .line 1533
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v5

    .line 1537
    invoke-direct {v3, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 1538
    .line 1539
    .line 1540
    move-object v2, v3

    .line 1541
    :catch_9
    :cond_26
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 1542
    .line 1543
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1544
    .line 1545
    const-string v5, "chown -R root:root \'"

    .line 1546
    .line 1547
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v2

    .line 1554
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    .line 1559
    .line 1560
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v2

    .line 1564
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1565
    .line 1566
    .line 1567
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1568
    .line 1569
    .line 1570
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1571
    .line 1572
    .line 1573
    :goto_14
    return-void

    .line 1574
    nop

    .line 1575
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
