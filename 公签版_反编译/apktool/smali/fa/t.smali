.class public final synthetic Lfa/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lfa/t;->a:I

    iput-object p2, p0, Lfa/t;->b:Ljava/lang/Object;

    iput-boolean p5, p0, Lfa/t;->d:Z

    iput-object p3, p0, Lfa/t;->c:Ljava/lang/Object;

    iput-object p4, p0, Lfa/t;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(La2/w0;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lfa/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa/t;->b:Ljava/lang/Object;

    iput-object p2, p0, Lfa/t;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lfa/t;->d:Z

    iput-object p4, p0, Lfa/t;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-wide/16 v2, 0xd05

    .line 4
    .line 5
    const/16 v4, 0x65

    .line 6
    .line 7
    iget v5, v1, Lfa/t;->a:I

    .line 8
    .line 9
    packed-switch v5, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v1, Lfa/t;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroid/content/Context;

    .line 15
    .line 16
    iget-boolean v2, v1, Lfa/t;->d:Z

    .line 17
    .line 18
    iget-object v3, v1, Lfa/t;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Ly1/x;

    .line 21
    .line 22
    iget-object v4, v1, Lfa/t;->e:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v5, v4

    .line 25
    check-cast v5, Lz1/i;

    .line 26
    .line 27
    const-string v4, "media_metrics"

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v4}, Lx0/d;->e(Ljava/lang/Object;)Landroid/media/metrics/MediaMetricsManager;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v6, Lz1/h;

    .line 42
    .line 43
    invoke-static {v4}, Lx0/d;->g(Landroid/media/metrics/MediaMetricsManager;)Landroid/media/metrics/PlaybackSession;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-direct {v6, v0, v4}, Lz1/h;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    .line 48
    .line 49
    .line 50
    move-object v0, v6

    .line 51
    :goto_0
    if-nez v0, :cond_1

    .line 52
    .line 53
    const-string v0, "MediaMetricsService unavailable."

    .line 54
    .line 55
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object v2, v3, Ly1/x;->t:Lz1/e;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object v2, v2, Lz1/e;->f:Lu1/m;

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Lu1/m;->a(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object v0, v0, Lz1/h;->d:Landroid/media/metrics/PlaybackSession;

    .line 75
    .line 76
    invoke-static {v0}, Lx0/d;->d(Landroid/media/metrics/PlaybackSession;)Landroid/media/metrics/LogSessionId;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    monitor-enter v5

    .line 81
    :try_start_0
    iget-object v2, v5, Lz1/i;->b:Lw/i;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object v3, v2, Lw/i;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v3, Landroid/media/metrics/LogSessionId;

    .line 89
    .line 90
    invoke-static {}, Lx0/d;->c()Landroid/media/metrics/LogSessionId;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-static {v3, v4}, Lx0/d;->s(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-static {v3}, La9/o;->t(Z)V

    .line 99
    .line 100
    .line 101
    iput-object v0, v2, Lw/i;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    monitor-exit v5

    .line 104
    :goto_1
    return-void

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    throw v0

    .line 108
    :pswitch_0
    iget-object v5, v1, Lfa/t;->b:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v5, La2/w0;

    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    iget-object v6, v1, Lfa/t;->c:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v6, Ljava/lang/String;

    .line 118
    .line 119
    const-string v7, "android.permission."

    .line 120
    .line 121
    const-string v8, ""

    .line 122
    .line 123
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    const-string v7, "."

    .line 128
    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-eqz v7, :cond_3

    .line 134
    .line 135
    const-string v0, "APPOPS\u4e0d\u652f\u6301\u6b64\u6743\u9650"

    .line 136
    .line 137
    invoke-virtual {v5, v4, v0}, La2/w0;->e0(ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_b

    .line 141
    .line 142
    :cond_3
    const/4 v7, 0x0

    .line 143
    :goto_2
    iget-boolean v9, v1, Lfa/t;->d:Z

    .line 144
    .line 145
    iget-object v10, v1, Lfa/t;->e:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v10, Ljava/lang/String;

    .line 148
    .line 149
    const-string v11, "\' "

    .line 150
    .line 151
    const-string v12, " \'"

    .line 152
    .line 153
    const-string v13, " --user "

    .line 154
    .line 155
    const-string v14, "appops set"

    .line 156
    .line 157
    const-string v15, "cmd "

    .line 158
    .line 159
    if-eqz v9, :cond_6

    .line 160
    .line 161
    new-instance v9, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    sget-object v16, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 167
    .line 168
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 169
    .line 170
    iget-boolean v0, v4, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 171
    .line 172
    if-eqz v0, :cond_4

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_4
    move-object v15, v8

    .line 176
    :goto_3
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget v0, v4, Lcom/yunpan/appmanage/util/k;->n:I

    .line 183
    .line 184
    if-nez v0, :cond_5

    .line 185
    .line 186
    move-object v0, v8

    .line 187
    goto :goto_4

    .line 188
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget v4, v4, Lcom/yunpan/appmanage/util/k;->n:I

    .line 194
    .line 195
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    :goto_4
    invoke-static {v9, v0, v12, v10, v11}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v0, " allow"

    .line 209
    .line 210
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v2, v3, v0}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    goto/16 :goto_7

    .line 222
    .line 223
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 229
    .line 230
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 231
    .line 232
    iget-boolean v9, v4, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 233
    .line 234
    if-eqz v9, :cond_7

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_7
    move-object v15, v8

    .line 238
    :goto_5
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    iget v9, v4, Lcom/yunpan/appmanage/util/k;->n:I

    .line 245
    .line 246
    if-nez v9, :cond_8

    .line 247
    .line 248
    move-object v4, v8

    .line 249
    goto :goto_6

    .line 250
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget v4, v4, Lcom/yunpan/appmanage/util/k;->n:I

    .line 256
    .line 257
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    :goto_6
    invoke-static {v0, v4, v12, v10, v11}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const-string v4, " "

    .line 268
    .line 269
    invoke-static {v6, v4, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    new-instance v4, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v9, "deny"

    .line 282
    .line 283
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-static {v2, v3, v4}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    iget v9, v4, Lfa/a0;->a:I

    .line 295
    .line 296
    const/4 v10, 0x4

    .line 297
    const-string v11, "found"

    .line 298
    .line 299
    if-eqz v9, :cond_9

    .line 300
    .line 301
    invoke-virtual {v4}, Lfa/a0;->a()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result v9

    .line 309
    if-eqz v9, :cond_9

    .line 310
    .line 311
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-static {v2, v3, v4}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    :cond_9
    iget v9, v4, Lfa/a0;->a:I

    .line 320
    .line 321
    if-eqz v9, :cond_a

    .line 322
    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string v9, "ignore"

    .line 332
    .line 333
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-static {v2, v3, v4}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    iget v9, v4, Lfa/a0;->a:I

    .line 345
    .line 346
    if-eqz v9, :cond_a

    .line 347
    .line 348
    invoke-virtual {v4}, Lfa/a0;->a()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v9

    .line 352
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 353
    .line 354
    .line 355
    move-result v9

    .line 356
    if-eqz v9, :cond_a

    .line 357
    .line 358
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-static {v2, v3, v0}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    goto :goto_7

    .line 367
    :cond_a
    move-object v0, v4

    .line 368
    :goto_7
    if-lez v7, :cond_b

    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_b
    iget v4, v0, Lfa/a0;->a:I

    .line 372
    .line 373
    const/16 v9, -0x378

    .line 374
    .line 375
    if-eqz v4, :cond_d

    .line 376
    .line 377
    const-string v4, "READ_PHONE_STATE"

    .line 378
    .line 379
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v10

    .line 383
    const-string v11, "OP_READ_PHONE_STATE"

    .line 384
    .line 385
    if-eqz v10, :cond_c

    .line 386
    .line 387
    iput v9, v0, Lfa/a0;->a:I

    .line 388
    .line 389
    move-object v6, v11

    .line 390
    goto :goto_8

    .line 391
    :cond_c
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v10

    .line 395
    if-eqz v10, :cond_d

    .line 396
    .line 397
    iput v9, v0, Lfa/a0;->a:I

    .line 398
    .line 399
    move-object v6, v4

    .line 400
    :cond_d
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 401
    .line 402
    iget v4, v0, Lfa/a0;->a:I

    .line 403
    .line 404
    if-eq v4, v9, :cond_10

    .line 405
    .line 406
    :goto_9
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    const-string v3, "Failure"

    .line 411
    .line 412
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    if-nez v3, :cond_f

    .line 417
    .line 418
    const-string v3, "Error:"

    .line 419
    .line 420
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    if-eqz v2, :cond_e

    .line 425
    .line 426
    goto :goto_a

    .line 427
    :cond_e
    iget v0, v0, Lfa/a0;->a:I

    .line 428
    .line 429
    if-nez v0, :cond_f

    .line 430
    .line 431
    const-string v0, "\u8bbe\u7f6e\u6210\u529f"

    .line 432
    .line 433
    const/16 v2, 0x64

    .line 434
    .line 435
    invoke-virtual {v5, v2, v0}, La2/w0;->e0(ILjava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    goto :goto_b

    .line 439
    :cond_f
    :goto_a
    const-string v0, "APPOPS\u4e0d\u652f\u6301\u7ba1\u7406\u6b64\u6743\u9650"

    .line 440
    .line 441
    const/16 v2, 0x65

    .line 442
    .line 443
    invoke-virtual {v5, v2, v0}, La2/w0;->e0(ILjava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    :goto_b
    return-void

    .line 447
    :cond_10
    const/16 v4, 0x65

    .line 448
    .line 449
    goto/16 :goto_2

    .line 450
    .line 451
    :pswitch_1
    iget-object v0, v1, Lfa/t;->b:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast v0, La2/w0;

    .line 454
    .line 455
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    const-string v5, "pm "

    .line 461
    .line 462
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    iget-boolean v5, v1, Lfa/t;->d:Z

    .line 466
    .line 467
    if-eqz v5, :cond_11

    .line 468
    .line 469
    const-string v5, "grant"

    .line 470
    .line 471
    goto :goto_c

    .line 472
    :cond_11
    const-string v5, "revoke"

    .line 473
    .line 474
    :goto_c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 478
    .line 479
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 480
    .line 481
    iget v6, v5, Lcom/yunpan/appmanage/util/k;->n:I

    .line 482
    .line 483
    if-nez v6, :cond_12

    .line 484
    .line 485
    const-string v5, ""

    .line 486
    .line 487
    goto :goto_d

    .line 488
    :cond_12
    new-instance v6, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    const-string v7, " --user "

    .line 491
    .line 492
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    iget v5, v5, Lcom/yunpan/appmanage/util/k;->n:I

    .line 496
    .line 497
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    :goto_d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    const-string v5, " \'"

    .line 508
    .line 509
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    iget-object v5, v1, Lfa/t;->c:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast v5, Ljava/lang/String;

    .line 515
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    const-string v5, "\' "

    .line 520
    .line 521
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    iget-object v5, v1, Lfa/t;->e:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v5, Ljava/lang/String;

    .line 527
    .line 528
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    invoke-static {v2, v3, v4}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    invoke-virtual {v2}, Lfa/a0;->a()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    const-string v4, "Failure"

    .line 544
    .line 545
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 546
    .line 547
    .line 548
    move-result v4

    .line 549
    if-nez v4, :cond_14

    .line 550
    .line 551
    const-string v4, "Error:"

    .line 552
    .line 553
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    if-eqz v3, :cond_13

    .line 558
    .line 559
    goto :goto_e

    .line 560
    :cond_13
    iget v2, v2, Lfa/a0;->a:I

    .line 561
    .line 562
    if-nez v2, :cond_14

    .line 563
    .line 564
    const-string v2, "\u8bbe\u7f6e\u6210\u529f"

    .line 565
    .line 566
    const/16 v3, 0x64

    .line 567
    .line 568
    invoke-virtual {v0, v3, v2}, La2/w0;->e0(ILjava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    goto :goto_f

    .line 572
    :cond_14
    :goto_e
    const-string v2, "\u6b64\u6743\u9650\u65e0\u9700\u8bbe\u7f6e\uff0c\u7531\u7cfb\u7edf\u81ea\u52a8\u6388\u6743\uff01\u6216\u8005\u5728OPS\u4e2d\u6388\u6743"

    .line 573
    .line 574
    const/16 v3, 0x65

    .line 575
    .line 576
    invoke-virtual {v0, v3, v2}, La2/w0;->e0(ILjava/lang/Object;)V

    .line 577
    .line 578
    .line 579
    :goto_f
    return-void

    .line 580
    nop

    .line 581
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
