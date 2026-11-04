.class public final synthetic Lcom/gj/server/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gj/server/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lcom/gj/server/a;->a:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityShell;->M:I

    .line 10
    .line 11
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 12
    .line 13
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lfa/j;->o()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 24
    .line 25
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lfa/m;->V()V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void

    .line 35
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 36
    .line 37
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 38
    .line 39
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const-string v2, "su"

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void

    .line 57
    :pswitch_2
    const-string v2, "addSuppressed"

    .line 58
    .line 59
    const-class v3, Ljava/lang/Throwable;

    .line 60
    .line 61
    const-string v4, "/key/"

    .line 62
    .line 63
    const-string v5, "/."

    .line 64
    .line 65
    :try_start_0
    new-instance v6, Lha/jd;

    .line 66
    .line 67
    const/4 v7, 0x7

    .line 68
    invoke-direct {v6, v7}, Lha/jd;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-static {v6}, Ly9/c;->a(Ly9/a;)Ly9/c;

    .line 72
    .line 73
    .line 74
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_2

    .line 76
    :catch_0
    const/4 v6, 0x0

    .line 77
    :goto_2
    if-nez v6, :cond_3

    .line 78
    .line 79
    const-string v0, "\u751f\u6210\u5bc6\u94a5\u5931\u8d25"

    .line 80
    .line 81
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_9

    .line 85
    .line 86
    :cond_3
    :try_start_1
    new-instance v7, Ljava/net/Socket;

    .line 87
    .line 88
    const-string v8, ""

    .line 89
    .line 90
    sget-object v9, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 91
    .line 92
    iget v9, v9, Lcom/yunpan/appmanage/util/w;->k:I

    .line 93
    .line 94
    invoke-direct {v7, v8, v9}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .line 96
    .line 97
    :try_start_2
    invoke-static {v7, v6}, Ly9/b;->A(Ljava/net/Socket;Ly9/c;)Ly9/b;

    .line 98
    .line 99
    .line 100
    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    :try_start_3
    invoke-virtual {v8}, Ly9/b;->r()V

    .line 102
    .line 103
    .line 104
    new-instance v9, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    sget-object v10, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 110
    .line 111
    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    new-instance v10, Ljava/io/File;

    .line 130
    .line 131
    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    if-nez v10, :cond_4

    .line 139
    .line 140
    new-instance v10, Ljava/io/File;

    .line 141
    .line 142
    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :catchall_0
    move-exception v4

    .line 150
    goto/16 :goto_4

    .line 151
    .line 152
    :cond_4
    :goto_3
    new-instance v10, Ljava/io/File;

    .line 153
    .line 154
    new-instance v11, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v12, "privateKey"

    .line 163
    .line 164
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance v11, Ljava/io/File;

    .line 175
    .line 176
    new-instance v12, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v9, "publicKey"

    .line 185
    .line 186
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    sget-object v9, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 197
    .line 198
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-virtual {v6, v10, v11}, Ly9/c;->d(Ljava/io/File;Ljava/io/File;)V

    .line 203
    .line 204
    .line 205
    sget-object v6, Lfa/g0;->a:Lfa/h0;

    .line 206
    .line 207
    invoke-virtual {v6}, Lfa/h0;->d()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v12

    .line 215
    if-nez v12, :cond_5

    .line 216
    .line 217
    new-instance v12, Ljava/io/File;

    .line 218
    .line 219
    new-instance v13, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6}, Lfa/h0;->d()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v14

    .line 228
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-direct {v12, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 248
    .line 249
    .line 250
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    new-instance v10, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v6}, Lfa/h0;->d()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v12

    .line 263
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v12, "/key/privateKey"

    .line 273
    .line 274
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    invoke-static {v4, v10}, Lcom/yunpan/appmanage/util/a0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    new-instance v10, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6}, Lfa/h0;->d()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v5, "/key/publicKey"

    .line 307
    .line 308
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    invoke-static {v4, v5}, Lcom/yunpan/appmanage/util/a0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    :cond_5
    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    .line 320
    .line 321
    :try_start_4
    invoke-virtual {v8}, Ly9/b;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 322
    .line 323
    .line 324
    :try_start_5
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 325
    .line 326
    .line 327
    goto :goto_9

    .line 328
    :catch_1
    move-exception v0

    .line 329
    goto :goto_8

    .line 330
    :catchall_1
    move-exception v4

    .line 331
    goto :goto_6

    .line 332
    :goto_4
    :try_start_6
    invoke-virtual {v8}, Ly9/b;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 333
    .line 334
    .line 335
    goto :goto_5

    .line 336
    :catchall_2
    move-exception v5

    .line 337
    :try_start_7
    new-array v6, v0, [Ljava/lang/Class;

    .line 338
    .line 339
    aput-object v3, v6, v1

    .line 340
    .line 341
    invoke-virtual {v3, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    new-array v8, v0, [Ljava/lang/Object;

    .line 346
    .line 347
    aput-object v5, v8, v1

    .line 348
    .line 349
    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 350
    .line 351
    .line 352
    :catch_2
    :goto_5
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 353
    :goto_6
    :try_start_9
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 354
    .line 355
    .line 356
    goto :goto_7

    .line 357
    :catchall_3
    move-exception v5

    .line 358
    :try_start_a
    new-array v6, v0, [Ljava/lang/Class;

    .line 359
    .line 360
    aput-object v3, v6, v1

    .line 361
    .line 362
    invoke-virtual {v3, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    new-array v0, v0, [Ljava/lang/Object;

    .line 367
    .line 368
    aput-object v5, v0, v1

    .line 369
    .line 370
    invoke-virtual {v2, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 371
    .line 372
    .line 373
    :catch_3
    :goto_7
    :try_start_b
    throw v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 374
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 375
    .line 376
    .line 377
    :goto_9
    return-void

    .line 378
    :pswitch_3
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/FileInfoDao;->deleteAll()V

    .line 387
    .line 388
    .line 389
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 390
    .line 391
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 392
    .line 393
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->f0:Ljava/util/concurrent/ExecutorService;

    .line 394
    .line 395
    new-instance v2, Lcom/yunpan/appmanage/util/z;

    .line 396
    .line 397
    new-instance v3, Ljava/io/File;

    .line 398
    .line 399
    sget-object v4, Lfa/g0;->a:Lfa/h0;

    .line 400
    .line 401
    invoke-virtual {v4}, Lfa/h0;->d()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-direct {v2, v3}, Lcom/yunpan/appmanage/util/z;-><init>(Ljava/io/File;)V

    .line 409
    .line 410
    .line 411
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 412
    .line 413
    .line 414
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 415
    .line 416
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-eqz v1, :cond_6

    .line 425
    .line 426
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    check-cast v1, Ljava/lang/String;

    .line 431
    .line 432
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 433
    .line 434
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->f0:Ljava/util/concurrent/ExecutorService;

    .line 435
    .line 436
    new-instance v3, Lcom/yunpan/appmanage/util/z;

    .line 437
    .line 438
    new-instance v4, Ljava/io/File;

    .line 439
    .line 440
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-direct {v3, v4}, Lcom/yunpan/appmanage/util/z;-><init>(Ljava/io/File;)V

    .line 444
    .line 445
    .line 446
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 447
    .line 448
    .line 449
    goto :goto_a

    .line 450
    :cond_6
    return-void

    .line 451
    :pswitch_4
    invoke-static {}, Lha/e6;->a()V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :pswitch_5
    const-wide/16 v0, 0x2710

    .line 456
    .line 457
    :try_start_c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 458
    .line 459
    .line 460
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 461
    .line 462
    invoke-static {v0}, Lrikka/shizuku/ShizukuProvider;->b(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 463
    .line 464
    .line 465
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 466
    .line 467
    invoke-virtual {v0}, Lfa/o0;->d()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 468
    .line 469
    .line 470
    :catch_4
    return-void

    .line 471
    :pswitch_6
    invoke-static {}, Lcom/gj/server/GjService;->b()V

    .line 472
    .line 473
    .line 474
    return-void

    .line 475
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
