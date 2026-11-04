.class public abstract Lp0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll5/y;

.field public static final b:La0/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lp0/l;

    .line 8
    .line 9
    invoke-direct {v0}, Lp0/l;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lp0/g;->a:Ll5/y;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v1, 0x1c

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    new-instance v0, Lp0/k;

    .line 20
    .line 21
    invoke-direct {v0}, Lp0/k;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lp0/g;->a:Ll5/y;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 v1, 0x1a

    .line 28
    .line 29
    if-lt v0, v1, :cond_2

    .line 30
    .line 31
    new-instance v0, Lp0/j;

    .line 32
    .line 33
    invoke-direct {v0}, Lp0/j;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lp0/g;->a:Ll5/y;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/16 v1, 0x18

    .line 40
    .line 41
    if-lt v0, v1, :cond_3

    .line 42
    .line 43
    sget-object v1, Lp0/i;->e:Ljava/lang/reflect/Method;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    new-instance v0, Lp0/i;

    .line 48
    .line 49
    invoke-direct {v0}, Lp0/i;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lp0/g;->a:Ll5/y;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/16 v1, 0x15

    .line 56
    .line 57
    if-lt v0, v1, :cond_4

    .line 58
    .line 59
    new-instance v0, Lp0/h;

    .line 60
    .line 61
    invoke-direct {v0}, Lp0/h;-><init>()V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lp0/g;->a:Ll5/y;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    new-instance v0, Ll5/y;

    .line 68
    .line 69
    const/16 v1, 0x9

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-direct {v0, v2, v1}, Ll5/y;-><init>(BI)V

    .line 73
    .line 74
    .line 75
    sput-object v0, Lp0/g;->a:Ll5/y;

    .line 76
    .line 77
    :goto_0
    new-instance v0, La0/m;

    .line 78
    .line 79
    const/16 v1, 0x10

    .line 80
    .line 81
    invoke-direct {v0, v1}, La0/m;-><init>(I)V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lp0/g;->b:La0/m;

    .line 85
    .line 86
    return-void
.end method

.method public static a(Landroid/content/Context;Lo0/e;Landroid/content/res/Resources;ILjava/lang/String;IILo0/b;Z)Landroid/graphics/Typeface;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v7, p6

    .line 6
    .line 7
    move-object/from16 v2, p7

    .line 8
    .line 9
    const/4 v8, 0x4

    .line 10
    const/4 v9, 0x1

    .line 11
    const/16 v3, 0x1b

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/16 v5, 0x15

    .line 15
    .line 16
    instance-of v6, v1, Lo0/h;

    .line 17
    .line 18
    const/4 v10, -0x3

    .line 19
    if-eqz v6, :cond_d

    .line 20
    .line 21
    check-cast v1, Lo0/h;

    .line 22
    .line 23
    iget-object v6, v1, Lo0/h;->d:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    if-eqz v6, :cond_1

    .line 27
    .line 28
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v12

    .line 32
    if-eqz v12, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v6, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 40
    .line 41
    invoke-static {v12, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 42
    .line 43
    .line 44
    move-result-object v12

    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    invoke-virtual {v6, v12}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v12

    .line 51
    if-nez v12, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    move-object v6, v11

    .line 55
    :goto_1
    if-eqz v6, :cond_3

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    new-instance v0, Landroid/os/Handler;

    .line 60
    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, La2/c0;

    .line 69
    .line 70
    invoke-direct {v1, v2, v3, v6}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    return-object v6

    .line 77
    :cond_3
    if-eqz p8, :cond_5

    .line 78
    .line 79
    iget v3, v1, Lo0/h;->c:I

    .line 80
    .line 81
    if-nez v3, :cond_4

    .line 82
    .line 83
    :goto_2
    const/4 v3, 0x1

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    const/4 v3, 0x0

    .line 86
    goto :goto_3

    .line 87
    :cond_5
    if-nez v2, :cond_4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :goto_3
    const/4 v6, -0x1

    .line 91
    if-eqz p8, :cond_6

    .line 92
    .line 93
    iget v12, v1, Lo0/h;->b:I

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_6
    const/4 v12, -0x1

    .line 97
    :goto_4
    new-instance v13, Landroid/os/Handler;

    .line 98
    .line 99
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 100
    .line 101
    .line 102
    move-result-object v14

    .line 103
    invoke-direct {v13, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 104
    .line 105
    .line 106
    new-instance v14, Ll5/y;

    .line 107
    .line 108
    const/16 v15, 0x8

    .line 109
    .line 110
    invoke-direct {v14, v15, v2}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object v15, v1, Lo0/h;->a:Lkf/b;

    .line 114
    .line 115
    new-instance v2, Lkf/d;

    .line 116
    .line 117
    invoke-direct {v2, v14, v5, v13}, Lkf/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    if-eqz v3, :cond_9

    .line 121
    .line 122
    sget-object v1, Lu0/f;->a:La0/m;

    .line 123
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v3, v15, Lkf/b;->f:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v3, Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v3, "-"

    .line 137
    .line 138
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    sget-object v1, Lu0/f;->a:La0/m;

    .line 149
    .line 150
    invoke-virtual {v1, v3}, La0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Landroid/graphics/Typeface;

    .line 155
    .line 156
    if-eqz v1, :cond_7

    .line 157
    .line 158
    new-instance v0, Ly7/b;

    .line 159
    .line 160
    invoke-direct {v0, v14, v5, v1}, Ly7/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    .line 165
    .line 166
    move-object v11, v1

    .line 167
    goto/16 :goto_8

    .line 168
    .line 169
    :cond_7
    if-ne v12, v6, :cond_8

    .line 170
    .line 171
    invoke-static {v3, v0, v15, v7}, Lu0/f;->a(Ljava/lang/String;Landroid/content/Context;Lkf/b;I)Lu0/e;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v2, v0}, Lkf/d;->K(Lu0/e;)V

    .line 176
    .line 177
    .line 178
    iget-object v11, v0, Lu0/e;->a:Landroid/graphics/Typeface;

    .line 179
    .line 180
    goto/16 :goto_8

    .line 181
    .line 182
    :cond_8
    new-instance v9, Lu0/c;

    .line 183
    .line 184
    const/4 v6, 0x0

    .line 185
    move-object v1, v9

    .line 186
    move-object v13, v2

    .line 187
    move-object v2, v3

    .line 188
    move-object/from16 v3, p0

    .line 189
    .line 190
    move-object v4, v15

    .line 191
    move/from16 v5, p6

    .line 192
    .line 193
    invoke-direct/range {v1 .. v6}, Lu0/c;-><init>(Ljava/lang/String;Landroid/content/Context;Lkf/b;II)V

    .line 194
    .line 195
    .line 196
    :try_start_0
    sget-object v0, Lu0/f;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 197
    .line 198
    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 199
    .line 200
    .line 201
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 202
    int-to-long v1, v12

    .line 203
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 204
    .line 205
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    .line 209
    :try_start_2
    check-cast v0, Lu0/e;

    .line 210
    .line 211
    invoke-virtual {v13, v0}, Lkf/d;->K(Lu0/e;)V

    .line 212
    .line 213
    .line 214
    iget-object v11, v0, Lu0/e;->a:Landroid/graphics/Typeface;

    .line 215
    .line 216
    goto/16 :goto_8

    .line 217
    .line 218
    :catch_0
    move-exception v0

    .line 219
    goto :goto_5

    .line 220
    :catch_1
    move-exception v0

    .line 221
    goto :goto_6

    .line 222
    :catch_2
    new-instance v0, Ljava/lang/InterruptedException;

    .line 223
    .line 224
    const-string v1, "timeout"

    .line 225
    .line 226
    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v0

    .line 230
    :goto_5
    throw v0

    .line 231
    :goto_6
    new-instance v1, Ljava/lang/RuntimeException;

    .line 232
    .line 233
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 237
    :catch_3
    new-instance v0, Landroidx/emoji2/text/j;

    .line 238
    .line 239
    iget-object v1, v13, Lkf/d;->b:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v1, Ll5/y;

    .line 242
    .line 243
    invoke-direct {v0, v10, v8, v1}, Landroidx/emoji2/text/j;-><init>(IILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    iget-object v1, v13, Lkf/d;->c:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v1, Landroid/os/Handler;

    .line 249
    .line 250
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    .line 252
    .line 253
    goto/16 :goto_8

    .line 254
    .line 255
    :cond_9
    move-object v1, v2

    .line 256
    sget-object v2, Lu0/f;->a:La0/m;

    .line 257
    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    iget-object v3, v15, Lkf/b;->f:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v3, Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v3, "-"

    .line 271
    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    sget-object v2, Lu0/f;->a:La0/m;

    .line 283
    .line 284
    invoke-virtual {v2, v10}, La0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    check-cast v2, Landroid/graphics/Typeface;

    .line 289
    .line 290
    if-eqz v2, :cond_a

    .line 291
    .line 292
    new-instance v0, Ly7/b;

    .line 293
    .line 294
    invoke-direct {v0, v14, v5, v2}, Ly7/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    .line 299
    .line 300
    move-object v11, v2

    .line 301
    goto :goto_8

    .line 302
    :cond_a
    new-instance v2, Lu0/d;

    .line 303
    .line 304
    invoke-direct {v2, v4, v1}, Lu0/d;-><init>(ILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    sget-object v4, Lu0/f;->c:Ljava/lang/Object;

    .line 308
    .line 309
    monitor-enter v4

    .line 310
    :try_start_3
    sget-object v1, Lu0/f;->d:La0/t;

    .line 311
    .line 312
    invoke-virtual {v1, v10}, La0/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    check-cast v3, Ljava/util/ArrayList;

    .line 317
    .line 318
    if-eqz v3, :cond_b

    .line 319
    .line 320
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    monitor-exit v4

    .line 324
    goto :goto_8

    .line 325
    :catchall_0
    move-exception v0

    .line 326
    goto :goto_9

    .line 327
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v10, v3}, La0/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 339
    new-instance v12, Lu0/c;

    .line 340
    .line 341
    const/4 v6, 0x1

    .line 342
    move-object v1, v12

    .line 343
    move-object v2, v10

    .line 344
    move-object/from16 v3, p0

    .line 345
    .line 346
    move-object v4, v15

    .line 347
    move/from16 v5, p6

    .line 348
    .line 349
    invoke-direct/range {v1 .. v6}, Lu0/c;-><init>(Ljava/lang/String;Landroid/content/Context;Lkf/b;II)V

    .line 350
    .line 351
    .line 352
    sget-object v0, Lu0/f;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 353
    .line 354
    new-instance v1, Lu0/d;

    .line 355
    .line 356
    invoke-direct {v1, v9, v10}, Lu0/d;-><init>(ILjava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    if-nez v2, :cond_c

    .line 364
    .line 365
    new-instance v2, Landroid/os/Handler;

    .line 366
    .line 367
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 372
    .line 373
    .line 374
    goto :goto_7

    .line 375
    :cond_c
    new-instance v2, Landroid/os/Handler;

    .line 376
    .line 377
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 378
    .line 379
    .line 380
    :goto_7
    new-instance v3, Lcom/yunpan/appmanage/util/l;

    .line 381
    .line 382
    invoke-direct {v3, v2, v12, v1, v8}, Lcom/yunpan/appmanage/util/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 386
    .line 387
    .line 388
    :goto_8
    move-object/from16 v5, p2

    .line 389
    .line 390
    goto :goto_a

    .line 391
    :goto_9
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 392
    throw v0

    .line 393
    :cond_d
    sget-object v4, Lp0/g;->a:Ll5/y;

    .line 394
    .line 395
    check-cast v1, Lo0/f;

    .line 396
    .line 397
    move-object/from16 v5, p2

    .line 398
    .line 399
    invoke-virtual {v4, v0, v1, v5, v7}, Ll5/y;->u(Landroid/content/Context;Lo0/f;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    .line 400
    .line 401
    .line 402
    move-result-object v11

    .line 403
    if-eqz v2, :cond_f

    .line 404
    .line 405
    if-eqz v11, :cond_e

    .line 406
    .line 407
    new-instance v0, Landroid/os/Handler;

    .line 408
    .line 409
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 414
    .line 415
    .line 416
    new-instance v1, La2/c0;

    .line 417
    .line 418
    invoke-direct {v1, v2, v3, v11}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    .line 423
    .line 424
    goto :goto_a

    .line 425
    :cond_e
    invoke-virtual {v2, v10}, Lo0/b;->a(I)V

    .line 426
    .line 427
    .line 428
    :cond_f
    :goto_a
    if-eqz v11, :cond_10

    .line 429
    .line 430
    sget-object v0, Lp0/g;->b:La0/m;

    .line 431
    .line 432
    invoke-static/range {p2 .. p6}, Lp0/g;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-virtual {v0, v1, v11}, La0/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    :cond_10
    return-object v11
.end method

.method public static b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 p0, 0x2d

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
