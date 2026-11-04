.class public final synthetic Lfa/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lfa/e;


# direct methods
.method public synthetic constructor <init>(Lfa/e;I)V
    .locals 0

    .line 1
    iput p2, p0, Lfa/c;->a:I

    iput-object p1, p0, Lfa/c;->b:Lfa/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget v3, p0, Lfa/c;->a:I

    .line 5
    .line 6
    packed-switch v3, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lfa/c;->b:Lfa/e;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iget-wide v3, v0, Lfa/e;->i:J

    .line 19
    .line 20
    sub-long/2addr v1, v3

    .line 21
    const-wide/16 v3, 0x7d0

    .line 22
    .line 23
    cmp-long v5, v1, v3

    .line 24
    .line 25
    if-lez v5, :cond_0

    .line 26
    .line 27
    :try_start_0
    iget-object v0, v0, Lfa/e;->h:Lgh/a;

    .line 28
    .line 29
    invoke-virtual {v0}, Lgh/a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    :cond_0
    return-void

    .line 33
    :pswitch_0
    iget-object v3, p0, Lfa/c;->b:Lfa/e;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    const-wide/32 v6, 0x186a0

    .line 43
    .line 44
    .line 45
    cmp-long v8, v4, v6

    .line 46
    .line 47
    if-lez v8, :cond_1

    .line 48
    .line 49
    iput-boolean v2, v3, Lfa/e;->d:Z

    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v8

    .line 57
    sub-long/2addr v8, v4

    .line 58
    :cond_2
    iget-object v4, v3, Lfa/e;->c:Lv9/i;

    .line 59
    .line 60
    if-eqz v4, :cond_4

    .line 61
    .line 62
    iget v5, v4, Lv9/i;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 63
    .line 64
    if-gez v5, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    :try_start_2
    iget-object v5, v4, Lv9/i;->d:Ljava/lang/Process;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Lv9/i;->M()V
    :try_end_2
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_0
    :try_start_3
    new-instance v4, Lv9/a;

    .line 76
    .line 77
    invoke-direct {v4}, Lv9/a;-><init>()V

    .line 78
    .line 79
    .line 80
    iput v2, v4, Lv9/a;->b:I

    .line 81
    .line 82
    const-wide/16 v10, 0x5

    .line 83
    .line 84
    iput-wide v10, v4, Lv9/a;->a:J

    .line 85
    .line 86
    invoke-virtual {v4}, Lv9/a;->a()Lv9/i;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iput-object v4, v3, Lfa/e;->c:Lv9/i;

    .line 91
    .line 92
    :catch_1
    iget-object v4, v3, Lfa/e;->c:Lv9/i;

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    new-instance v5, Lv9/e;

    .line 98
    .line 99
    invoke-direct {v5, v4}, Lv9/e;-><init>(Lv9/i;)V

    .line 100
    .line 101
    .line 102
    new-array v4, v2, [Ljava/lang/String;

    .line 103
    .line 104
    const-string v10, "dumpsys window | grep -E \'mCurrentFocu|mSystemBooted\'"

    .line 105
    .line 106
    aput-object v10, v4, v1

    .line 107
    .line 108
    iget-object v10, v5, Lv9/e;->b:Ljava/util/ArrayList;

    .line 109
    .line 110
    new-instance v11, Lv9/b;

    .line 111
    .line 112
    invoke-direct {v11, v4}, Lv9/b;-><init>([Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Lv9/e;->l0()Landroidx/room/s;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v4}, Landroidx/room/s;->k()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    const-string v5, "mCurrentFocus=null"

    .line 131
    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-nez v5, :cond_5

    .line 137
    .line 138
    const-string v5, "mSystemBooted=false"

    .line 139
    .line 140
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-nez v4, :cond_5

    .line 145
    .line 146
    iput-boolean v2, v3, Lfa/e;->d:Z

    .line 147
    .line 148
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 149
    .line 150
    iget-boolean v1, v1, Lwa/u;->t:Z

    .line 151
    .line 152
    if-eqz v1, :cond_7

    .line 153
    .line 154
    const-string v1, "\u7cfb\u7edf\u52a0\u8f7d\u5b8c\u6210"

    .line 155
    .line 156
    invoke-static {v1}, Lwa/w;->c(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_5
    const-wide/16 v4, 0x29a

    .line 161
    .line 162
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 166
    .line 167
    .line 168
    move-result-wide v4

    .line 169
    sub-long/2addr v4, v8

    .line 170
    cmp-long v10, v4, v6

    .line 171
    .line 172
    if-ltz v10, :cond_2

    .line 173
    .line 174
    iput-boolean v2, v3, Lfa/e;->d:Z

    .line 175
    .line 176
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 177
    .line 178
    iget-boolean v1, v1, Lwa/u;->t:Z

    .line 179
    .line 180
    if-eqz v1, :cond_6

    .line 181
    .line 182
    const-string v1, "\u7cfb\u7edf\u52a0\u8f7d\u8d85\u65f6"

    .line 183
    .line 184
    invoke-static {v1}, Lwa/w;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :catch_2
    iput-boolean v2, v3, Lfa/e;->d:Z

    .line 189
    .line 190
    :cond_6
    :goto_1
    iget-object v1, v3, Lfa/e;->c:Lv9/i;

    .line 191
    .line 192
    if-eqz v1, :cond_7

    .line 193
    .line 194
    invoke-static {v1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 195
    .line 196
    .line 197
    iput-object v0, v3, Lfa/e;->c:Lv9/i;

    .line 198
    .line 199
    :cond_7
    :goto_2
    return-void

    .line 200
    :pswitch_1
    iget-object v3, p0, Lfa/c;->b:Lfa/e;

    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    :try_start_4
    sget-object v4, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 206
    .line 207
    iget-object v4, v4, Lcom/yunpan/appmanage/util/w;->b0:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 208
    .line 209
    :try_start_5
    new-instance v5, Ljava/io/File;

    .line 210
    .line 211
    const-string v6, "/system/bin/su"

    .line 212
    .line 213
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-nez v5, :cond_a

    .line 221
    .line 222
    new-instance v5, Ljava/io/File;

    .line 223
    .line 224
    const-string v6, "/system/xbin/su"

    .line 225
    .line 226
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 230
    .line 231
    .line 232
    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 233
    if-eqz v5, :cond_8

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :catch_3
    :cond_8
    :try_start_6
    new-instance v5, Ljava/io/File;

    .line 237
    .line 238
    const-string v6, "/system/bin/tclsu"

    .line 239
    .line 240
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-nez v5, :cond_9

    .line 248
    .line 249
    new-instance v5, Ljava/io/File;

    .line 250
    .line 251
    const-string v6, "/system/xbin/tclsu"

    .line 252
    .line 253
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 257
    .line 258
    .line 259
    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 260
    if-eqz v5, :cond_a

    .line 261
    .line 262
    :cond_9
    :try_start_7
    const-string v4, "tclsu"

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :catch_4
    move-exception v0

    .line 266
    goto/16 :goto_5

    .line 267
    .line 268
    :catch_5
    :cond_a
    :goto_3
    const-string v5, "/system/bin/su_guanjia"

    .line 269
    .line 270
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-eqz v5, :cond_b

    .line 275
    .line 276
    const-string v4, "su_guanjia"

    .line 277
    .line 278
    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 283
    .line 284
    .line 285
    move-result v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 286
    const-string v6, "su"

    .line 287
    .line 288
    if-eqz v5, :cond_c

    .line 289
    .line 290
    move-object v4, v6

    .line 291
    :cond_c
    :try_start_8
    sget-object v5, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 292
    .line 293
    invoke-static {}, Lv9/c;->a()Lv9/i;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    if-nez v5, :cond_d

    .line 305
    .line 306
    new-array v5, v2, [Ljava/lang/String;

    .line 307
    .line 308
    aput-object v4, v5, v1

    .line 309
    .line 310
    invoke-static {v5}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-virtual {v4}, Lv9/e;->l0()Landroidx/room/s;

    .line 315
    .line 316
    .line 317
    :cond_d
    sget-object v4, Lfa/a;->a:Lfa/b;

    .line 318
    .line 319
    invoke-virtual {v4}, Lfa/b;->g()V

    .line 320
    .line 321
    .line 322
    new-array v5, v2, [Ljava/lang/String;

    .line 323
    .line 324
    const-string v6, "id"

    .line 325
    .line 326
    aput-object v6, v5, v1

    .line 327
    .line 328
    invoke-static {v5}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    invoke-virtual {v5}, Lv9/e;->l0()Landroidx/room/s;

    .line 333
    .line 334
    .line 335
    move-result-object v5

    .line 336
    invoke-virtual {v5}, Landroidx/room/s;->k()Ljava/util/List;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    invoke-virtual {v5}, Landroidx/room/s;->j()Ljava/util/List;

    .line 341
    .line 342
    .line 343
    move-result-object v7

    .line 344
    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 345
    .line 346
    .line 347
    invoke-virtual {v5}, Landroidx/room/s;->k()Ljava/util/List;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    const-string v6, "uid=0(root"

    .line 356
    .line 357
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    if-eqz v5, :cond_f

    .line 362
    .line 363
    invoke-virtual {v4}, Lfa/b;->f()Z

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    if-nez v5, :cond_e

    .line 368
    .line 369
    sget-object v5, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 370
    .line 371
    invoke-static {v5}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    new-array v6, v2, [Ljava/lang/String;

    .line 376
    .line 377
    aput-object v5, v6, v1

    .line 378
    .line 379
    invoke-static {v6}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v1, v0}, Ls1/g;->e0(Lua/i6;)V

    .line 384
    .line 385
    .line 386
    :cond_e
    iput-boolean v2, v3, Lfa/e;->a:Z

    .line 387
    .line 388
    goto :goto_4

    .line 389
    :cond_f
    invoke-virtual {v3}, Lfa/e;->i()V

    .line 390
    .line 391
    .line 392
    :goto_4
    iget-boolean v0, v3, Lfa/e;->a:Z

    .line 393
    .line 394
    if-nez v0, :cond_10

    .line 395
    .line 396
    invoke-virtual {v4}, Lfa/b;->f()Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-nez v0, :cond_10

    .line 401
    .line 402
    invoke-virtual {v3}, Lfa/e;->j()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 403
    .line 404
    .line 405
    goto :goto_6

    .line 406
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 407
    .line 408
    .line 409
    :cond_10
    :goto_6
    return-void

    .line 410
    nop

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
