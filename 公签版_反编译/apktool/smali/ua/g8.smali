.class public final synthetic Lua/g8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lua/g8;->a:I

    iput-object p2, p0, Lua/g8;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lua/g8;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget v3, p0, Lua/g8;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast v2, Lz1/e;

    .line 17
    .line 18
    invoke-virtual {v2}, Lz1/e;->I()Lz1/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lz1/c;

    .line 23
    .line 24
    const/16 v3, 0xc

    .line 25
    .line 26
    invoke-direct {v1, v0, v3}, Lz1/c;-><init>(Lz1/a;I)V

    .line 27
    .line 28
    .line 29
    const/16 v3, 0x404

    .line 30
    .line 31
    invoke-virtual {v2, v0, v3, v1}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v2, Lz1/e;->f:Lu1/m;

    .line 35
    .line 36
    invoke-virtual {v0}, Lu1/m;->d()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    check-cast v2, Lya/k;

    .line 41
    .line 42
    iget-object v0, v2, Lya/k;->a:Lya/l;

    .line 43
    .line 44
    invoke-virtual {v0}, Lya/l;->c()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2
    check-cast v2, Lya/i;

    .line 49
    .line 50
    iget-object v0, v2, Lya/i;->e:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/high16 v1, 0x3f800000    # 1.0f

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-wide/16 v1, 0x32

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_3
    move-object v3, v2

    .line 77
    check-cast v3, Ls4/a;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, v3, Ls4/a;->d:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 85
    .line 86
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 87
    .line 88
    const-wide/16 v4, 0x1388

    .line 89
    .line 90
    invoke-virtual {v0, v4, v5, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ly9/d;

    .line 95
    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    invoke-virtual {v3, v0}, Ls4/a;->l(Ly9/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_4
    check-cast v2, Ly1/x;

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, v2, Ly1/x;->e:Landroid/content/Context;

    .line 115
    .line 116
    invoke-static {v3}, Ls1/g;->v(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v3}, Ltb/b;->b(Landroid/media/AudioManager;)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    const/4 v4, -0x1

    .line 125
    if-eq v3, v4, :cond_1

    .line 126
    .line 127
    move v1, v3

    .line 128
    :cond_1
    iget-object v3, v2, Ly1/x;->E:Lb5/i;

    .line 129
    .line 130
    invoke-virtual {v3}, Lb5/i;->e()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eq v4, v1, :cond_3

    .line 141
    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    iput-object v4, v3, Lb5/i;->f:Ljava/lang/Object;

    .line 147
    .line 148
    new-instance v5, Lu1/b;

    .line 149
    .line 150
    invoke-direct {v5, v3, v4, v0}, Lu1/b;-><init>(Lb5/i;Ljava/lang/Object;I)V

    .line 151
    .line 152
    .line 153
    iget-object v3, v3, Lb5/i;->c:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v3, Lu1/b0;

    .line 156
    .line 157
    iget-object v4, v3, Lu1/b0;->a:Landroid/os/Handler;

    .line 158
    .line 159
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-nez v4, :cond_2

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_2
    invoke-virtual {v3, v5}, Lu1/b0;->d(Ljava/lang/Runnable;)Z

    .line 175
    .line 176
    .line 177
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    const/16 v4, 0xa

    .line 182
    .line 183
    invoke-virtual {v2, v0, v4, v3}, Ly1/x;->W(IILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    const/4 v1, 0x2

    .line 191
    invoke-virtual {v2, v1, v4, v0}, Ly1/x;->W(IILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    :cond_3
    return-void

    .line 195
    :pswitch_5
    check-cast v2, Landroid/content/Intent;

    .line 196
    .line 197
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 198
    .line 199
    const/16 v1, 0x15

    .line 200
    .line 201
    if-lt v0, v1, :cond_7

    .line 202
    .line 203
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 208
    .line 209
    .line 210
    move-result-wide v1

    .line 211
    :cond_4
    const-wide/16 v3, 0xc8

    .line 212
    .line 213
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    iget-object v3, v3, Lwa/s;->f:Lcom/yunpan/appmanage/service/StartService;

    .line 221
    .line 222
    invoke-virtual {v3}, Lcom/yunpan/appmanage/service/StartService;->c()V

    .line 223
    .line 224
    .line 225
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    iget-object v3, v3, Lwa/s;->b:Ljava/util/List;

    .line 230
    .line 231
    if-eqz v3, :cond_6

    .line 232
    .line 233
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    iget-object v3, v3, Lwa/s;->b:Ljava/util/List;

    .line 238
    .line 239
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-nez v3, :cond_6

    .line 244
    .line 245
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    iget-object v3, v3, Lwa/s;->b:Ljava/util/List;

    .line 250
    .line 251
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-eqz v4, :cond_6

    .line 260
    .line 261
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-static {v4}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-static {v4}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-eqz v5, :cond_5

    .line 278
    .line 279
    invoke-static {v4}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {v0}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    const/4 v1, 0x3

    .line 288
    if-eq v0, v1, :cond_7

    .line 289
    .line 290
    invoke-static {v4}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-static {v0}, Lt0/e;->D(Landroid/media/session/MediaController$TransportControls;)V

    .line 295
    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 299
    .line 300
    .line 301
    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 302
    sub-long/2addr v3, v1

    .line 303
    const-wide/16 v5, 0x7e4

    .line 304
    .line 305
    cmp-long v7, v3, v5

    .line 306
    .line 307
    if-ltz v7, :cond_4

    .line 308
    .line 309
    :catch_1
    :cond_7
    :goto_2
    return-void

    .line 310
    :pswitch_6
    sget v0, Lcom/yunpan/appmanage/utilacc/GroundStartAppActivity;->A:I

    .line 311
    .line 312
    check-cast v2, Lcom/yunpan/appmanage/utilacc/GroundStartAppActivity;

    .line 313
    .line 314
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :pswitch_7
    check-cast v2, Lvb/s;

    .line 319
    .line 320
    invoke-virtual {v2}, Lvb/s;->f()V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :pswitch_8
    check-cast v2, Lvb/p;

    .line 325
    .line 326
    iget-object v0, v2, Lvb/p;->t:Lmb/b;

    .line 327
    .line 328
    iget-object v1, v2, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 329
    .line 330
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    iget-object v3, v2, Lub/b;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 335
    .line 336
    if-eqz v1, :cond_8

    .line 337
    .line 338
    iget-object v1, v2, Lvb/p;->r:Lcom/yunpan/appmanage/carsdk/k0;

    .line 339
    .line 340
    iget-boolean v1, v1, Lcom/yunpan/appmanage/carsdk/k0;->a:Z

    .line 341
    .line 342
    if-nez v1, :cond_9

    .line 343
    .line 344
    if-eqz v0, :cond_9

    .line 345
    .line 346
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDiagnostics()Lib/a;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2}, Lvb/p;->g()V

    .line 350
    .line 351
    .line 352
    goto :goto_3

    .line 353
    :cond_8
    if-eqz v0, :cond_9

    .line 354
    .line 355
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDiagnostics()Lib/a;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2}, Lvb/p;->g()V

    .line 359
    .line 360
    .line 361
    :cond_9
    :goto_3
    return-void

    .line 362
    :pswitch_9
    check-cast v2, Lvb/j;

    .line 363
    .line 364
    iget-object v0, v2, Lvb/j;->e:Lvb/k;

    .line 365
    .line 366
    iput-boolean v1, v0, Lvb/k;->F:Z

    .line 367
    .line 368
    iget-object v0, v0, Lvb/k;->z:La2/w0;

    .line 369
    .line 370
    iget-object v0, v0, La2/w0;->c:Ljava/lang/Object;

    .line 371
    .line 372
    check-cast v0, Landroid/widget/ProgressBar;

    .line 373
    .line 374
    const/16 v1, 0x8

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :goto_4
    :pswitch_a
    move-object v0, v2

    .line 381
    check-cast v0, Lv9/i;

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Lv9/i;->L(Z)Lu9/c;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    if-eqz v3, :cond_a

    .line 388
    .line 389
    :try_start_2
    invoke-virtual {v0, v3}, Lv9/i;->J(Lu9/c;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 390
    .line 391
    .line 392
    goto :goto_4

    .line 393
    :catch_2
    nop

    .line 394
    goto :goto_4

    .line 395
    :cond_a
    return-void

    .line 396
    :pswitch_b
    check-cast v2, Lua/g5;

    .line 397
    .line 398
    :try_start_3
    invoke-static {}, Lv9/c;->a()Lv9/i;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    iget-object v1, v2, Lua/g5;->b:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v1, Lv9/e;

    .line 405
    .line 406
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, v1}, Lv9/i;->N(Lu9/c;)V
    :try_end_3
    .catch Lu9/a; {:try_start_3 .. :try_end_3} :catch_3

    .line 410
    .line 411
    .line 412
    :catch_3
    return-void

    .line 413
    :pswitch_c
    check-cast v2, Lv3/e0;

    .line 414
    .line 415
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 416
    .line 417
    .line 418
    return-void

    .line 419
    :pswitch_d
    check-cast v2, Lv3/t;

    .line 420
    .line 421
    invoke-virtual {v2}, Lv3/t;->s()V

    .line 422
    .line 423
    .line 424
    return-void

    .line 425
    :pswitch_e
    check-cast v2, Lv3/e;

    .line 426
    .line 427
    invoke-virtual {v2, v1}, Lv3/e;->d(Z)V

    .line 428
    .line 429
    .line 430
    return-void

    .line 431
    :pswitch_f
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    check-cast v2, Lx9/w3;

    .line 440
    .line 441
    iget-object v1, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 442
    .line 443
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/FileInfoDao;->deleteDir(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    return-void

    .line 447
    :pswitch_10
    check-cast v2, Lua/q8;

    .line 448
    .line 449
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    iget-object v1, v2, Lua/q8;->B:Lx9/w3;

    .line 461
    .line 462
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 463
    .line 464
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/FileInfoDao;->deleteDir(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    return-void

    .line 468
    nop

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
