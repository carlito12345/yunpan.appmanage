.class public abstract Lif/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/leanback/transition/e;
.implements Lb2/g;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/yunpan/appmanage/service/AccService;Lz7/s;I)V
    .locals 7

    .line 1
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 2
    .line 3
    iget-object v1, v0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string p0, "\u672a\u8fde\u63a5shizuku"

    .line 8
    .line 9
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/16 v2, 0x398

    .line 14
    .line 15
    const-wide/16 v3, 0x1a0a

    .line 16
    .line 17
    const-string v5, "str1"

    .line 18
    .line 19
    if-ne p2, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lz7/p;->i()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-object p1, v0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 30
    .line 31
    invoke-interface {p1, p0, v3, v4}, Lcom/yunpan/appmanage/shizuku/IUserService;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 32
    .line 33
    .line 34
    goto/16 :goto_9

    .line 35
    .line 36
    :cond_1
    const/16 v2, 0x39c

    .line 37
    .line 38
    if-ne p2, v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lz7/p;->i()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object p1, v0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 49
    .line 50
    invoke-interface {p1, p0, v3, v4}, Lcom/yunpan/appmanage/shizuku/IUserService;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    iget p1, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/yunpan/appmanage/shizuku/CmdResult;->getAllStr()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    const-string p0, "\u6267\u884c\u6210\u529f"

    .line 73
    .line 74
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_9

    .line 78
    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/yunpan/appmanage/shizuku/CmdResult;->getAllStr()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_9

    .line 87
    .line 88
    :cond_3
    const/4 v0, 0x0

    .line 89
    const/16 v2, 0x399

    .line 90
    .line 91
    const/4 v3, 0x4

    .line 92
    const-string v4, "action"

    .line 93
    .line 94
    const/4 v6, 0x1

    .line 95
    if-ne p2, v2, :cond_5

    .line 96
    .line 97
    const-string p0, "keycode"

    .line 98
    .line 99
    invoke-virtual {p1, p0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Lz7/p;->e()I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_4

    .line 116
    .line 117
    invoke-static {}, Lfa/o0;->c()Landroid/hardware/input/IInputManager;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1, p0, v6}, Lwa/c;->d(Landroid/hardware/input/IInputManager;IZ)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_9

    .line 125
    .line 126
    :cond_4
    if-lez p1, :cond_21

    .line 127
    .line 128
    if-ge p1, v3, :cond_21

    .line 129
    .line 130
    :goto_0
    if-lez p1, :cond_21

    .line 131
    .line 132
    sget-object p2, Lfa/n0;->a:Lfa/o0;

    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lfa/o0;->c()Landroid/hardware/input/IInputManager;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-static {p2, p0, v0}, Lwa/c;->d(Landroid/hardware/input/IInputManager;IZ)V

    .line 142
    .line 143
    .line 144
    const-wide/16 v1, 0xc8

    .line 145
    .line 146
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 147
    .line 148
    .line 149
    add-int/lit8 p1, p1, -0x1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_5
    const/16 v2, 0x39a

    .line 153
    .line 154
    if-ne p2, v2, :cond_7

    .line 155
    .line 156
    const-string p0, "api"

    .line 157
    .line 158
    invoke-virtual {p1, p0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p0}, Lz7/p;->e()I

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Lz7/p;->e()I

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    const-string p2, "x"

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p2}, Lz7/p;->e()I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    const-string v1, "y"

    .line 184
    .line 185
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-nez p0, :cond_6

    .line 194
    .line 195
    invoke-static {}, Lfa/o0;->c()Landroid/hardware/input/IInputManager;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-static {p0, p2, p1, v6}, Lwa/c;->g(Landroid/hardware/input/IInputManager;IIZ)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_9

    .line 203
    .line 204
    :cond_6
    if-lez p0, :cond_21

    .line 205
    .line 206
    if-ge p0, v3, :cond_21

    .line 207
    .line 208
    :goto_1
    if-lez p0, :cond_21

    .line 209
    .line 210
    sget-object v1, Lfa/n0;->a:Lfa/o0;

    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lfa/o0;->c()Landroid/hardware/input/IInputManager;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-static {v1, p2, p1, v0}, Lwa/c;->g(Landroid/hardware/input/IInputManager;IIZ)V

    .line 220
    .line 221
    .line 222
    const-wide/16 v1, 0xb4

    .line 223
    .line 224
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 225
    .line 226
    .line 227
    add-int/lit8 p0, p0, -0x1

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_7
    const/16 v2, 0x39b

    .line 231
    .line 232
    if-ne p2, v2, :cond_8

    .line 233
    .line 234
    invoke-static {}, Lfa/o0;->c()Landroid/hardware/input/IInputManager;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    if-eqz p0, :cond_21

    .line 239
    .line 240
    invoke-static {p0, p1}, Lq4/a;->G(Landroid/hardware/input/IInputManager;Lz7/s;)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_9

    .line 244
    .line 245
    :cond_8
    const/16 v2, 0x3ae

    .line 246
    .line 247
    if-ne p2, v2, :cond_9

    .line 248
    .line 249
    invoke-static {}, Lfa/o0;->b()Landroid/app/IActivityManager;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-virtual {p1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-interface {p0, p1, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_9

    .line 265
    .line 266
    :cond_9
    const/16 v2, 0x3af

    .line 267
    .line 268
    const-string v3, "."

    .line 269
    .line 270
    if-ne p2, v2, :cond_d

    .line 271
    .line 272
    :try_start_0
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 285
    .line 286
    .line 287
    move-result p2

    .line 288
    if-eqz p2, :cond_21

    .line 289
    .line 290
    invoke-static {p0}, Lqf/c;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-nez v1, :cond_a

    .line 299
    .line 300
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result p2

    .line 304
    if-eqz p2, :cond_a

    .line 305
    .line 306
    return-void

    .line 307
    :cond_a
    const-string p2, "com.android."

    .line 308
    .line 309
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 310
    .line 311
    .line 312
    move-result p2

    .line 313
    if-nez p2, :cond_c

    .line 314
    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p2

    .line 319
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result p2

    .line 323
    if-nez p2, :cond_c

    .line 324
    .line 325
    const-string p2, "moe.shizuku.privileged.api"

    .line 326
    .line 327
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result p2

    .line 331
    if-eqz p2, :cond_b

    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_b
    invoke-static {}, Lfa/o0;->b()Landroid/app/IActivityManager;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    invoke-interface {p0, p1, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_9

    .line 342
    .line 343
    :cond_c
    :goto_2
    invoke-virtual {p0, v6}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :cond_d
    const/16 v2, 0x3ac

    .line 348
    .line 349
    if-ne p2, v2, :cond_1d

    .line 350
    .line 351
    new-instance p1, Ljava/util/ArrayList;

    .line 352
    .line 353
    invoke-static {}, Lfa/o0;->b()Landroid/app/IActivityManager;

    .line 354
    .line 355
    .line 356
    move-result-object p2

    .line 357
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 358
    .line 359
    const/16 v2, 0x1c

    .line 360
    .line 361
    const/16 v4, 0x32

    .line 362
    .line 363
    if-lt v1, v2, :cond_e

    .line 364
    .line 365
    invoke-interface {p2, v4}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    .line 366
    .line 367
    .line 368
    move-result-object p2

    .line 369
    goto :goto_3

    .line 370
    :cond_e
    invoke-interface {p2, v4, v0}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    .line 371
    .line 372
    .line 373
    move-result-object p2

    .line 374
    :goto_3
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 378
    .line 379
    .line 380
    move-result p2

    .line 381
    if-le p2, v6, :cond_21

    .line 382
    .line 383
    const/16 p2, 0x1d

    .line 384
    .line 385
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 390
    .line 391
    if-lt v1, p2, :cond_f

    .line 392
    .line 393
    invoke-static {v0}, Lwa/f;->a(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    goto :goto_4

    .line 398
    :cond_f
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 399
    .line 400
    :goto_4
    new-instance v1, Lqa/e;

    .line 401
    .line 402
    const/16 v2, 0x1c

    .line 403
    .line 404
    invoke-direct {v1, v2}, Lqa/e;-><init>(I)V

    .line 405
    .line 406
    .line 407
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 408
    .line 409
    .line 410
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 411
    .line 412
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    :cond_10
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    const-string v4, "com.android.systemui"

    .line 427
    .line 428
    if-eqz v2, :cond_16

    .line 429
    .line 430
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 435
    .line 436
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 437
    .line 438
    if-lt v5, p2, :cond_11

    .line 439
    .line 440
    invoke-static {v2}, Lwa/f;->a(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 441
    .line 442
    .line 443
    move-result v5

    .line 444
    goto :goto_6

    .line 445
    :cond_11
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 446
    .line 447
    :goto_6
    if-gt v5, v0, :cond_12

    .line 448
    .line 449
    goto :goto_5

    .line 450
    :cond_12
    invoke-static {v2}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    if-nez v5, :cond_13

    .line 455
    .line 456
    goto :goto_5

    .line 457
    :cond_13
    invoke-static {v2}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v4

    .line 469
    if-eqz v4, :cond_14

    .line 470
    .line 471
    goto :goto_5

    .line 472
    :cond_14
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 473
    .line 474
    .line 475
    move-result v4

    .line 476
    if-nez v4, :cond_15

    .line 477
    .line 478
    goto :goto_5

    .line 479
    :cond_15
    invoke-static {v2}, Lif/a;->M(Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    if-eqz v2, :cond_10

    .line 484
    .line 485
    invoke-static {v6, p0, v2}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 486
    .line 487
    .line 488
    goto/16 :goto_9

    .line 489
    .line 490
    :cond_16
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    :cond_17
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    if-eqz v1, :cond_21

    .line 499
    .line 500
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 505
    .line 506
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 507
    .line 508
    if-lt v2, p2, :cond_18

    .line 509
    .line 510
    invoke-static {v1}, Lwa/f;->a(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    goto :goto_8

    .line 515
    :cond_18
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 516
    .line 517
    :goto_8
    if-ne v2, v0, :cond_19

    .line 518
    .line 519
    goto :goto_7

    .line 520
    :cond_19
    invoke-static {v1}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    if-nez v2, :cond_1a

    .line 525
    .line 526
    goto :goto_7

    .line 527
    :cond_1a
    invoke-static {v1}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    if-eqz v2, :cond_1b

    .line 540
    .line 541
    goto :goto_7

    .line 542
    :cond_1b
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    if-nez v2, :cond_1c

    .line 547
    .line 548
    goto :goto_7

    .line 549
    :cond_1c
    invoke-static {v1}, Lif/a;->M(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    if-eqz v1, :cond_17

    .line 554
    .line 555
    invoke-static {v6, p0, v1}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 556
    .line 557
    .line 558
    goto/16 :goto_9

    .line 559
    .line 560
    :cond_1d
    const/16 p0, 0x3b0

    .line 561
    .line 562
    if-ne p2, p0, :cond_20

    .line 563
    .line 564
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object p0

    .line 568
    const-string p1, "mounted"

    .line 569
    .line 570
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 571
    .line 572
    .line 573
    move-result p0

    .line 574
    if-nez p0, :cond_1e

    .line 575
    .line 576
    const-string p0, "\u622a\u5c4f\u5931\u8d25\uff1a\u6ca1\u6709\u5185\u90e8\u5b58\u50a8\u5361"

    .line 577
    .line 578
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    return-void

    .line 582
    :cond_1e
    new-instance p0, Ljava/io/File;

    .line 583
    .line 584
    new-instance p1, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .line 588
    .line 589
    sget-object p2, Lfa/d;->a:Lfa/e;

    .line 590
    .line 591
    invoke-virtual {p2}, Lfa/e;->d()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object p2

    .line 595
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    const-string p2, "/Download"

    .line 599
    .line 600
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 611
    .line 612
    .line 613
    :catch_0
    sget-object p1, Lfa/n0;->a:Lfa/o0;

    .line 614
    .line 615
    iget-object p1, p1, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 616
    .line 617
    new-instance p2, Ljava/lang/StringBuilder;

    .line 618
    .line 619
    const-string v0, "screencap -p \'"

    .line 620
    .line 621
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object p0

    .line 628
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    const-string p0, "/\u622a\u5c4f"

    .line 632
    .line 633
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 637
    .line 638
    .line 639
    move-result-wide v0

    .line 640
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    const-string p0, ".png\'"

    .line 644
    .line 645
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object p0

    .line 652
    const-wide/16 v0, 0xd05

    .line 653
    .line 654
    invoke-interface {p1, p0, v0, v1}, Lcom/yunpan/appmanage/shizuku/IUserService;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 655
    .line 656
    .line 657
    move-result-object p0

    .line 658
    iget p1, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 659
    .line 660
    if-nez p1, :cond_1f

    .line 661
    .line 662
    const-string p0, "\u622a\u5c4f\u5df2\u4fdd\u5b58\u5230 Download \u76ee\u5f55"

    .line 663
    .line 664
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    goto :goto_9

    .line 668
    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    .line 669
    .line 670
    const-string p2, "\u622a\u5c4f\u5931\u8d25\uff1a"

    .line 671
    .line 672
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {p0}, Lcom/yunpan/appmanage/shizuku/CmdResult;->getAllStr()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object p0

    .line 679
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object p0

    .line 686
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    goto :goto_9

    .line 690
    :cond_20
    const/16 p0, 0x3b1

    .line 691
    .line 692
    if-ne p2, p0, :cond_21

    .line 693
    .line 694
    new-instance p0, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    const-string p2, "am startservice -n \""

    .line 697
    .line 698
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {p1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 702
    .line 703
    .line 704
    move-result-object p1

    .line 705
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object p1

    .line 709
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    const-string p1, "\""

    .line 713
    .line 714
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object p0

    .line 721
    const-wide/16 p1, 0x8ae

    .line 722
    .line 723
    invoke-interface {v1, p0, p1, p2}, Lcom/yunpan/appmanage/shizuku/IUserService;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 724
    .line 725
    .line 726
    :catch_1
    :cond_21
    :goto_9
    return-void
.end method

.method public static A0(Landroid/view/Window;IZ)V
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Lif/a;->B0(Landroid/view/Window;I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x6

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne p1, v1, :cond_2

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const/4 p1, 0x1

    .line 19
    :cond_2
    const/4 v1, 0x2

    .line 20
    const/4 v3, 0x5

    .line 21
    const/high16 v4, -0x80000000

    .line 22
    .line 23
    const/16 v5, 0x200

    .line 24
    .line 25
    const/high16 v6, 0x8000000

    .line 26
    .line 27
    const/high16 v7, 0x4000000

    .line 28
    .line 29
    const/16 v8, 0x400

    .line 30
    .line 31
    if-eqz p1, :cond_6

    .line 32
    .line 33
    const/4 v9, 0x4

    .line 34
    if-eq p1, v9, :cond_6

    .line 35
    .line 36
    if-ne p1, v3, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    if-eq p1, v2, :cond_5

    .line 40
    .line 41
    if-ne p1, v1, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    const/4 v9, 0x3

    .line 45
    if-ne p1, v9, :cond_7

    .line 46
    .line 47
    invoke-virtual {p0, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Landroidx/fragment/app/o1;->D(Landroid/view/Window;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_5
    :goto_0
    invoke-virtual {p0, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 79
    .line 80
    .line 81
    invoke-static {p0}, Landroidx/fragment/app/o1;->v(Landroid/view/Window;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p0}, Landroidx/fragment/app/o1;->D(Landroid/view/Window;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    :goto_1
    invoke-virtual {p0, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v8}, Landroid/view/Window;->addFlags(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 101
    .line 102
    .line 103
    :cond_7
    :goto_2
    invoke-static {p0, p1}, Lif/a;->B0(Landroid/view/Window;I)V

    .line 104
    .line 105
    .line 106
    const/16 v4, 0x1c

    .line 107
    .line 108
    if-lt v0, v4, :cond_8

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Landroidx/emoji2/text/b;->x(Landroid/view/WindowManager$LayoutParams;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 118
    .line 119
    .line 120
    :cond_8
    if-ne p1, v3, :cond_9

    .line 121
    .line 122
    invoke-virtual {p0, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 123
    .line 124
    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const-string v4, "splitState"

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 140
    .line 141
    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :catch_0
    nop

    .line 151
    :cond_9
    :goto_3
    if-nez p2, :cond_b

    .line 152
    .line 153
    const/4 p2, 0x0

    .line 154
    const v0, 0x7f0b0558

    .line 155
    .line 156
    .line 157
    if-ne p1, v1, :cond_a

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    const/16 p1, 0x24

    .line 164
    .line 165
    invoke-virtual {p0, p2, p1, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_a
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 174
    .line 175
    .line 176
    :cond_b
    :goto_4
    return-void
.end method

.method public static B(Ljava/io/InputStream;Ljava/lang/String;Lmc/b;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "addSuppressed"

    .line 4
    .line 5
    const-class v3, Ljava/lang/Throwable;

    .line 6
    .line 7
    new-instance v4, Lkg/d;

    .line 8
    .line 9
    invoke-direct {v4, p0}, Lkg/d;-><init>(Ljava/io/InputStream;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v4}, Lkg/d;->L()Lkg/c;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/high16 v5, 0x80000

    .line 17
    .line 18
    new-array v5, v5, [B

    .line 19
    .line 20
    :goto_0
    if-eqz p0, :cond_4

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    iget-object v6, p0, Lkg/c;->a:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p2, v6}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lkg/c;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-nez v6, :cond_3

    .line 34
    .line 35
    iget-object v6, p0, Lkg/c;->a:Ljava/lang/String;

    .line 36
    .line 37
    const-string v7, "/"

    .line 38
    .line 39
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_1
    new-instance v6, Ljava/io/FileOutputStream;

    .line 47
    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lkg/c;->a:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {v6, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    .line 67
    .line 68
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    :goto_1
    const/4 v7, -0x1

    .line 73
    if-eq p0, v7, :cond_2

    .line 74
    .line 75
    invoke-virtual {v6, v5, v1, p0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    .line 79
    .line 80
    .line 81
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    .line 87
    .line 88
    goto :goto_5

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    goto :goto_6

    .line 91
    :goto_2
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :catchall_2
    move-exception p1

    .line 96
    :try_start_4
    new-array p2, v0, [Ljava/lang/Class;

    .line 97
    .line 98
    aput-object v3, p2, v1

    .line 99
    .line 100
    invoke-virtual {v3, v2, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    new-array v5, v0, [Ljava/lang/Object;

    .line 105
    .line 106
    aput-object p1, v5, v1

    .line 107
    .line 108
    invoke-virtual {p2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    .line 110
    .line 111
    :catch_0
    :goto_3
    :try_start_5
    throw p0

    .line 112
    :cond_3
    :goto_4
    new-instance v6, Ljava/io/File;

    .line 113
    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lkg/c;->a:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 135
    .line 136
    .line 137
    :goto_5
    invoke-virtual {v4}, Lkg/d;->L()Lkg/c;

    .line 138
    .line 139
    .line 140
    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 141
    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {v4}, Lkg/d;->close()V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :goto_6
    :try_start_6
    invoke-virtual {v4}, Lkg/d;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 147
    .line 148
    .line 149
    goto :goto_7

    .line 150
    :catchall_3
    move-exception p1

    .line 151
    :try_start_7
    new-array p2, v0, [Ljava/lang/Class;

    .line 152
    .line 153
    aput-object v3, p2, v1

    .line 154
    .line 155
    invoke-virtual {v3, v2, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    new-array v0, v0, [Ljava/lang/Object;

    .line 160
    .line 161
    aput-object p1, v0, v1

    .line 162
    .line 163
    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 164
    .line 165
    .line 166
    :catch_1
    :goto_7
    goto :goto_9

    .line 167
    :goto_8
    throw p0

    .line 168
    :goto_9
    goto :goto_8
.end method

.method public static B0(Landroid/view/Window;I)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x3

    .line 7
    if-lt v0, v1, :cond_3

    .line 8
    .line 9
    invoke-static {p0}, Lx0/h2;->b(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lx0/h2;->a()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {}, Lx0/h2;->e()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    or-int/2addr p1, v0

    .line 24
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/b0;->y(Landroid/view/WindowInsetsController;I)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    if-ne p1, v3, :cond_1

    .line 30
    .line 31
    invoke-static {}, Landroidx/media3/exoplayer/video/b0;->b()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/b0;->D(Landroid/view/WindowInsetsController;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lx0/h2;->a()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/b0;->y(Landroid/view/WindowInsetsController;I)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_1
    if-ne p1, v2, :cond_2

    .line 48
    .line 49
    invoke-static {}, Lx0/h2;->a()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/b0;->y(Landroid/view/WindowInsetsController;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lx0/h2;->e()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/b0;->y(Landroid/view/WindowInsetsController;I)V

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Lx0/h2;->d(Landroid/view/WindowInsetsController;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Landroidx/media3/exoplayer/video/b0;->x(Landroid/view/WindowInsetsController;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    invoke-static {}, Landroidx/media3/exoplayer/video/b0;->b()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/b0;->D(Landroid/view/WindowInsetsController;I)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    if-eqz p1, :cond_7

    .line 79
    .line 80
    const/4 v1, 0x5

    .line 81
    if-ne p1, v1, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    if-ne p1, v3, :cond_5

    .line 85
    .line 86
    const/16 p1, 0x504

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    if-ne p1, v2, :cond_6

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const/16 p1, 0x80e

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const/4 p1, 0x0

    .line 113
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_7
    :goto_0
    const/16 p1, 0x15

    .line 118
    .line 119
    if-lt v0, p1, :cond_8

    .line 120
    .line 121
    const/16 p1, 0xf06

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_8
    const/16 p1, 0x606

    .line 125
    .line 126
    :goto_1
    const/16 v1, 0x1d

    .line 127
    .line 128
    if-ne v0, v1, :cond_9

    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 143
    .line 144
    const/4 v1, 0x1

    .line 145
    if-ne v0, v1, :cond_9

    .line 146
    .line 147
    const/4 p1, 0x6

    .line 148
    :cond_9
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 153
    .line 154
    .line 155
    :goto_2
    return-void
.end method

.method public static C(JJ)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    div-long/2addr p0, p2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-wide/16 v0, 0x1

    .line 10
    .line 11
    add-long/2addr p0, v0

    .line 12
    div-long/2addr p0, p2

    .line 13
    sub-long/2addr p0, v0

    .line 14
    :goto_0
    return-wide p0
.end method

.method public static C0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    .line 5
    .line 6
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const-string v4, "set"

    .line 11
    .line 12
    new-array v5, v2, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v6, Ljava/lang/String;

    .line 15
    .line 16
    aput-object v6, v5, v1

    .line 17
    .line 18
    aput-object v6, v5, v0

    .line 19
    .line 20
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    aput-object p0, v2, v1

    .line 27
    .line 28
    aput-object p1, v2, v0

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    return-void
.end method

.method public static D(IJ)I
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    rem-long/2addr p1, v0

    .line 3
    add-long/2addr p1, v0

    .line 4
    rem-long/2addr p1, v0

    .line 5
    long-to-int p0, p1

    .line 6
    return p0
.end method

.method public static D0(D)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    .line 2
    .line 3
    const-string v1, "0.00"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-wide v1, 0x10000000000L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    long-to-double v1, v1

    .line 14
    cmpl-double v3, p0, v1

    .line 15
    .line 16
    if-ltz v3, :cond_0

    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 19
    .line 20
    .line 21
    div-double/2addr p0, v1

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "T"

    .line 28
    .line 29
    invoke-static {v0, p0, p1, v1, v2}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_0
    const-wide/32 v1, 0x40000000

    .line 35
    .line 36
    .line 37
    long-to-double v1, v1

    .line 38
    cmpl-double v3, p0, v1

    .line 39
    .line 40
    if-ltz v3, :cond_1

    .line 41
    .line 42
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 43
    .line 44
    .line 45
    div-double/2addr p0, v1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "G"

    .line 52
    .line 53
    invoke-static {v0, p0, p1, v1, v2}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_1
    const-wide/32 v1, 0x100000

    .line 59
    .line 60
    .line 61
    long-to-double v1, v1

    .line 62
    cmpl-double v3, p0, v1

    .line 63
    .line 64
    if-ltz v3, :cond_2

    .line 65
    .line 66
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 67
    .line 68
    .line 69
    div-double/2addr p0, v1

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "M"

    .line 76
    .line 77
    invoke-static {v0, p0, p1, v1, v2}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_2
    const-wide/16 v1, 0x400

    .line 83
    .line 84
    long-to-double v1, v1

    .line 85
    cmpl-double v3, p0, v1

    .line 86
    .line 87
    if-ltz v3, :cond_3

    .line 88
    .line 89
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 90
    .line 91
    .line 92
    div-double/2addr p0, v1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v2, "K"

    .line 99
    .line 100
    invoke-static {v0, p0, p1, v1, v2}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p0, "b"

    .line 114
    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0
.end method

.method public static E0(Landroid/app/Activity;Landroid/content/Context;Lcom/yunpan/appmanage/db/AppBean;)V
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    iget-boolean v0, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "\u6b64\u5e94\u7528\u5df2\u88ab\u7981\u7528\uff0c\u65e0\u6cd5\u6253\u5f00"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v4, 0x15

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    if-lt v3, v4, :cond_1

    .line 25
    .line 26
    iget-object v3, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v3}, Lg7/d;->g(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v3, v5

    .line 34
    :goto_0
    if-nez v3, :cond_2

    .line 35
    .line 36
    iget-object v3, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :cond_2
    const/4 v4, 0x1

    .line 43
    const/high16 v6, 0x10200000

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    invoke-static {v4, v1, v3}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_3
    new-instance v3, Landroid/content/Intent;

    .line 59
    .line 60
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object v5, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 64
    .line 65
    const-string v7, "com.android.settings"

    .line 66
    .line 67
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_4

    .line 72
    .line 73
    new-instance v0, Landroid/content/ComponentName;

    .line 74
    .line 75
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 76
    .line 77
    const-string v5, "com.android.settings.Settings"

    .line 78
    .line 79
    invoke-direct {v0, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :cond_4
    iget-object v5, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 88
    .line 89
    const-string v7, "com.android.tv.settings"

    .line 90
    .line 91
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    new-instance v0, Landroid/content/ComponentName;

    .line 98
    .line 99
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 100
    .line 101
    const-string v5, "com.android.tv.settings.MainSettings"

    .line 102
    .line 103
    invoke-direct {v0, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .line 114
    .line 115
    const/4 v7, 0x0

    .line 116
    :try_start_1
    iget-object v8, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v8, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 123
    .line 124
    if-eqz v8, :cond_7

    .line 125
    .line 126
    array-length v9, v8

    .line 127
    const/4 v10, 0x0

    .line 128
    :goto_1
    if-ge v10, v9, :cond_7

    .line 129
    .line 130
    aget-object v11, v8, v10

    .line 131
    .line 132
    iget-boolean v12, v11, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 133
    .line 134
    if-eqz v12, :cond_6

    .line 135
    .line 136
    iget-boolean v12, v11, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 137
    .line 138
    if-eqz v12, :cond_6

    .line 139
    .line 140
    new-instance v12, Lx9/t3;

    .line 141
    .line 142
    invoke-virtual {v11, v0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    invoke-virtual {v11, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v14

    .line 154
    iget-object v15, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 155
    .line 156
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 157
    .line 158
    invoke-direct {v12, v13, v14, v15, v11}, Lx9/t3;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    goto :goto_3

    .line 167
    :cond_6
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 171
    .line 172
    .line 173
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-ne v0, v4, :cond_8

    .line 178
    .line 179
    new-instance v0, Landroid/content/ComponentName;

    .line 180
    .line 181
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    check-cast v5, Lx9/t3;

    .line 188
    .line 189
    iget-object v5, v5, Lx9/t3;->d:Ljava/lang/String;

    .line 190
    .line 191
    invoke-direct {v0, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-le v0, v4, :cond_9

    .line 203
    .line 204
    new-instance v0, Lha/v2;

    .line 205
    .line 206
    move-object/from16 v2, p0

    .line 207
    .line 208
    invoke-direct {v0, v2, v1, v5}, Lha/v2;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_9
    :goto_4
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    .line 217
    .line 218
    invoke-static {v4, v1, v3}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :catch_1
    const-string v0, "\u6b64\u5e94\u7528\u65e0\u6cd5\u6253\u5f00"

    .line 223
    .line 224
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    :goto_5
    return-void
.end method

.method public static F0(Landroid/content/Context;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lqf/c;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Lqf/c;->r(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    const-string v1, "activity"

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/app/ActivityManager;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    const/16 v4, 0x64

    .line 58
    .line 59
    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_5

    .line 72
    .line 73
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 78
    .line 79
    invoke-static {v5}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    if-nez v6, :cond_4

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 87
    .line 88
    invoke-static {v5}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-static {v5}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_3

    .line 111
    .line 112
    iget p0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 113
    .line 114
    invoke-virtual {v1, p0, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_5
    const/4 v4, 0x2

    .line 119
    if-lt v3, v4, :cond_2

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {p0, v0}, Lif/a;->z0(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public static G([I[II)I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    array-length v3, v0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/16 v5, 0x9

    .line 10
    .line 11
    if-lt v3, v5, :cond_11

    .line 12
    .line 13
    array-length v3, v1

    .line 14
    const/16 v6, 0x26

    .line 15
    .line 16
    if-ge v3, v6, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    const/4 v3, 0x5

    .line 21
    const/4 v6, 0x4

    .line 22
    const/4 v7, 0x2

    .line 23
    const/4 v8, 0x3

    .line 24
    const/4 v9, 0x1

    .line 25
    packed-switch v2, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    const/4 v10, 0x6

    .line 29
    if-eq v2, v5, :cond_10

    .line 30
    .line 31
    const/16 v11, 0xa

    .line 32
    .line 33
    const/4 v12, 0x7

    .line 34
    if-eq v2, v11, :cond_f

    .line 35
    .line 36
    packed-switch v2, :pswitch_data_1

    .line 37
    .line 38
    .line 39
    const/16 v13, 0xc

    .line 40
    .line 41
    const/16 v14, 0xd

    .line 42
    .line 43
    const/16 v15, 0xb

    .line 44
    .line 45
    const/16 v16, 0x8

    .line 46
    .line 47
    const/16 v17, 0xe

    .line 48
    .line 49
    const/16 v18, 0x10

    .line 50
    .line 51
    const/16 v19, 0x11

    .line 52
    .line 53
    const/16 v20, 0x17

    .line 54
    .line 55
    const/16 v21, 0x15

    .line 56
    .line 57
    const/16 v5, 0x12

    .line 58
    .line 59
    const/16 v22, 0xf

    .line 60
    .line 61
    packed-switch v2, :pswitch_data_2

    .line 62
    .line 63
    .line 64
    const/16 v11, 0x20

    .line 65
    .line 66
    const/16 v13, 0x1e

    .line 67
    .line 68
    const/16 v16, 0x18

    .line 69
    .line 70
    const/16 v17, 0x1f

    .line 71
    .line 72
    const/16 v18, 0x19

    .line 73
    .line 74
    const/16 v19, 0x1a

    .line 75
    .line 76
    packed-switch v2, :pswitch_data_3

    .line 77
    .line 78
    .line 79
    const/16 v13, 0x22

    .line 80
    .line 81
    const/16 v16, 0x21

    .line 82
    .line 83
    packed-switch v2, :pswitch_data_4

    .line 84
    .line 85
    .line 86
    const/16 v16, 0x1b

    .line 87
    .line 88
    const/16 v18, 0x1c

    .line 89
    .line 90
    const/16 v19, 0x13

    .line 91
    .line 92
    packed-switch v2, :pswitch_data_5

    .line 93
    .line 94
    .line 95
    const/16 v0, 0xe5

    .line 96
    .line 97
    if-eq v2, v0, :cond_e

    .line 98
    .line 99
    const/16 v0, 0xe6

    .line 100
    .line 101
    if-eq v2, v0, :cond_d

    .line 102
    .line 103
    const/16 v0, 0x2710

    .line 104
    .line 105
    if-eq v2, v0, :cond_c

    .line 106
    .line 107
    const/16 v0, 0x2711

    .line 108
    .line 109
    if-eq v2, v0, :cond_b

    .line 110
    .line 111
    packed-switch v2, :pswitch_data_6

    .line 112
    .line 113
    .line 114
    const/16 v0, 0x2769

    .line 115
    .line 116
    const/16 v10, 0x1d

    .line 117
    .line 118
    if-eq v2, v0, :cond_a

    .line 119
    .line 120
    const/16 v0, 0x276a

    .line 121
    .line 122
    if-eq v2, v0, :cond_9

    .line 123
    .line 124
    if-eq v2, v5, :cond_8

    .line 125
    .line 126
    const/16 v0, 0x2728

    .line 127
    .line 128
    if-eq v2, v0, :cond_7

    .line 129
    .line 130
    const/16 v0, 0x272c

    .line 131
    .line 132
    if-eq v2, v0, :cond_6

    .line 133
    .line 134
    const/16 v0, 0x2755

    .line 135
    .line 136
    if-eq v2, v0, :cond_5

    .line 137
    .line 138
    const/16 v0, 0x2757

    .line 139
    .line 140
    if-eq v2, v0, :cond_4

    .line 141
    .line 142
    const/16 v0, 0x2771

    .line 143
    .line 144
    if-eq v2, v0, :cond_3

    .line 145
    .line 146
    const/16 v0, 0x2780

    .line 147
    .line 148
    if-eq v2, v0, :cond_2

    .line 149
    .line 150
    const/16 v0, 0x27a0

    .line 151
    .line 152
    if-eq v2, v0, :cond_1

    .line 153
    .line 154
    return v4

    .line 155
    :cond_1
    aget v0, v1, v15

    .line 156
    .line 157
    shr-int/2addr v0, v8

    .line 158
    and-int/2addr v0, v9

    .line 159
    return v0

    .line 160
    :cond_2
    aget v0, v1, v7

    .line 161
    .line 162
    and-int/2addr v0, v8

    .line 163
    return v0

    .line 164
    :cond_3
    aget v0, v1, v19

    .line 165
    .line 166
    shr-int/2addr v0, v3

    .line 167
    and-int/2addr v0, v8

    .line 168
    return v0

    .line 169
    :cond_4
    aget v0, v1, v10

    .line 170
    .line 171
    and-int/2addr v0, v9

    .line 172
    return v0

    .line 173
    :cond_5
    aget v0, v1, v10

    .line 174
    .line 175
    shr-int/2addr v0, v9

    .line 176
    and-int/2addr v0, v9

    .line 177
    return v0

    .line 178
    :cond_6
    aget v0, v1, v19

    .line 179
    .line 180
    shr-int/2addr v0, v6

    .line 181
    and-int/2addr v0, v9

    .line 182
    return v0

    .line 183
    :cond_7
    aget v0, v1, v18

    .line 184
    .line 185
    shr-int/2addr v0, v12

    .line 186
    and-int/2addr v0, v9

    .line 187
    return v0

    .line 188
    :cond_8
    aget v0, v1, v8

    .line 189
    .line 190
    shr-int/2addr v0, v6

    .line 191
    and-int/2addr v0, v9

    .line 192
    return v0

    .line 193
    :cond_9
    aget v0, v1, v10

    .line 194
    .line 195
    shr-int/2addr v0, v6

    .line 196
    and-int/2addr v0, v9

    .line 197
    return v0

    .line 198
    :cond_a
    aget v0, v1, v10

    .line 199
    .line 200
    shr-int/2addr v0, v8

    .line 201
    and-int/2addr v0, v9

    .line 202
    return v0

    .line 203
    :pswitch_0
    aget v0, v1, v13

    .line 204
    .line 205
    shr-int/2addr v0, v6

    .line 206
    and-int/2addr v0, v9

    .line 207
    return v0

    .line 208
    :pswitch_1
    aget v0, v1, v13

    .line 209
    .line 210
    shr-int/2addr v0, v8

    .line 211
    and-int/2addr v0, v9

    .line 212
    return v0

    .line 213
    :pswitch_2
    aget v0, v1, v13

    .line 214
    .line 215
    shr-int/2addr v0, v9

    .line 216
    and-int/2addr v0, v8

    .line 217
    return v0

    .line 218
    :pswitch_3
    aget v0, v1, v11

    .line 219
    .line 220
    shr-int/2addr v0, v7

    .line 221
    and-int/2addr v0, v8

    .line 222
    return v0

    .line 223
    :pswitch_4
    aget v0, v1, v18

    .line 224
    .line 225
    shr-int/2addr v0, v10

    .line 226
    and-int/2addr v0, v9

    .line 227
    return v0

    .line 228
    :pswitch_5
    aget v0, v1, v18

    .line 229
    .line 230
    shr-int/2addr v0, v3

    .line 231
    and-int/2addr v0, v9

    .line 232
    return v0

    .line 233
    :pswitch_6
    aget v0, v1, v19

    .line 234
    .line 235
    shr-int/2addr v0, v8

    .line 236
    and-int/2addr v0, v9

    .line 237
    return v0

    .line 238
    :pswitch_7
    aget v0, v1, v19

    .line 239
    .line 240
    shr-int/2addr v0, v7

    .line 241
    and-int/2addr v0, v9

    .line 242
    return v0

    .line 243
    :pswitch_8
    aget v0, v1, v14

    .line 244
    .line 245
    shr-int/2addr v0, v8

    .line 246
    and-int/2addr v0, v9

    .line 247
    return v0

    .line 248
    :pswitch_9
    aget v0, v1, v14

    .line 249
    .line 250
    shr-int/2addr v0, v9

    .line 251
    and-int/2addr v0, v8

    .line 252
    return v0

    .line 253
    :cond_b
    aget v0, v1, v15

    .line 254
    .line 255
    shr-int/2addr v0, v7

    .line 256
    and-int/2addr v0, v9

    .line 257
    return v0

    .line 258
    :cond_c
    aget v0, v1, v15

    .line 259
    .line 260
    shr-int/2addr v0, v9

    .line 261
    and-int/2addr v0, v9

    .line 262
    return v0

    .line 263
    :cond_d
    aget v0, v1, v18

    .line 264
    .line 265
    shr-int/2addr v0, v6

    .line 266
    and-int/2addr v0, v9

    .line 267
    return v0

    .line 268
    :cond_e
    aget v0, v1, v19

    .line 269
    .line 270
    shr-int/2addr v0, v9

    .line 271
    and-int/2addr v0, v9

    .line 272
    return v0

    .line 273
    :pswitch_a
    aget v0, v1, v18

    .line 274
    .line 275
    and-int/lit8 v0, v0, 0xf

    .line 276
    .line 277
    return v0

    .line 278
    :pswitch_b
    aget v0, v0, v9

    .line 279
    .line 280
    shr-int/2addr v0, v8

    .line 281
    and-int/2addr v0, v9

    .line 282
    return v0

    .line 283
    :pswitch_c
    aget v0, v1, v19

    .line 284
    .line 285
    and-int/2addr v0, v9

    .line 286
    return v0

    .line 287
    :pswitch_d
    aget v0, v1, v16

    .line 288
    .line 289
    shr-int/2addr v0, v8

    .line 290
    and-int/lit8 v0, v0, 0x1f

    .line 291
    .line 292
    return v0

    .line 293
    :pswitch_e
    aget v0, v1, v16

    .line 294
    .line 295
    and-int/2addr v0, v12

    .line 296
    return v0

    .line 297
    :pswitch_f
    aget v0, v0, v8

    .line 298
    .line 299
    and-int/2addr v0, v9

    .line 300
    return v0

    .line 301
    :pswitch_10
    aget v0, v0, v12

    .line 302
    .line 303
    shr-int/2addr v0, v10

    .line 304
    and-int/2addr v0, v8

    .line 305
    return v0

    .line 306
    :pswitch_11
    aget v0, v0, v12

    .line 307
    .line 308
    shr-int/2addr v0, v6

    .line 309
    and-int/2addr v0, v8

    .line 310
    return v0

    .line 311
    :pswitch_12
    aget v0, v0, v12

    .line 312
    .line 313
    and-int/lit8 v0, v0, 0xf

    .line 314
    .line 315
    return v0

    .line 316
    :pswitch_13
    aget v0, v0, v10

    .line 317
    .line 318
    shr-int/2addr v0, v10

    .line 319
    and-int/2addr v0, v8

    .line 320
    return v0

    .line 321
    :pswitch_14
    aget v0, v0, v10

    .line 322
    .line 323
    shr-int/2addr v0, v6

    .line 324
    and-int/2addr v0, v8

    .line 325
    return v0

    .line 326
    :pswitch_15
    aget v0, v0, v10

    .line 327
    .line 328
    shr-int/2addr v0, v7

    .line 329
    and-int/2addr v0, v8

    .line 330
    return v0

    .line 331
    :pswitch_16
    aget v0, v0, v3

    .line 332
    .line 333
    shr-int/2addr v0, v10

    .line 334
    and-int/2addr v0, v9

    .line 335
    return v0

    .line 336
    :pswitch_17
    aget v0, v0, v3

    .line 337
    .line 338
    shr-int/2addr v0, v8

    .line 339
    and-int/2addr v0, v12

    .line 340
    return v0

    .line 341
    :pswitch_18
    aget v0, v0, v3

    .line 342
    .line 343
    and-int/2addr v0, v12

    .line 344
    return v0

    .line 345
    :pswitch_19
    aget v0, v0, v6

    .line 346
    .line 347
    shr-int/2addr v0, v6

    .line 348
    and-int/lit8 v0, v0, 0xf

    .line 349
    .line 350
    return v0

    .line 351
    :pswitch_1a
    aget v0, v0, v6

    .line 352
    .line 353
    shr-int/2addr v0, v9

    .line 354
    and-int/2addr v0, v12

    .line 355
    return v0

    .line 356
    :pswitch_1b
    aget v0, v0, v6

    .line 357
    .line 358
    and-int/2addr v0, v9

    .line 359
    return v0

    .line 360
    :pswitch_1c
    aget v0, v0, v7

    .line 361
    .line 362
    shr-int/2addr v0, v10

    .line 363
    and-int/2addr v0, v8

    .line 364
    return v0

    .line 365
    :pswitch_1d
    aget v0, v0, v7

    .line 366
    .line 367
    shr-int/2addr v0, v3

    .line 368
    and-int/2addr v0, v9

    .line 369
    return v0

    .line 370
    :pswitch_1e
    aget v0, v0, v7

    .line 371
    .line 372
    shr-int/2addr v0, v6

    .line 373
    and-int/2addr v0, v9

    .line 374
    return v0

    .line 375
    :pswitch_1f
    aget v0, v0, v7

    .line 376
    .line 377
    shr-int/2addr v0, v8

    .line 378
    and-int/2addr v0, v9

    .line 379
    return v0

    .line 380
    :pswitch_20
    aget v0, v0, v7

    .line 381
    .line 382
    shr-int/2addr v0, v7

    .line 383
    and-int/2addr v0, v9

    .line 384
    return v0

    .line 385
    :pswitch_21
    aget v0, v0, v7

    .line 386
    .line 387
    and-int/2addr v0, v8

    .line 388
    return v0

    .line 389
    :pswitch_22
    aget v0, v0, v9

    .line 390
    .line 391
    shr-int/2addr v0, v7

    .line 392
    and-int/2addr v0, v9

    .line 393
    return v0

    .line 394
    :pswitch_23
    aget v0, v0, v9

    .line 395
    .line 396
    shr-int/2addr v0, v9

    .line 397
    and-int/2addr v0, v9

    .line 398
    return v0

    .line 399
    :pswitch_24
    aget v0, v0, v9

    .line 400
    .line 401
    and-int/2addr v0, v9

    .line 402
    return v0

    .line 403
    :pswitch_25
    aget v0, v0, v4

    .line 404
    .line 405
    and-int/lit8 v0, v0, 0xf

    .line 406
    .line 407
    return v0

    .line 408
    :pswitch_26
    aget v0, v1, v8

    .line 409
    .line 410
    shr-int/2addr v0, v10

    .line 411
    and-int/2addr v0, v9

    .line 412
    return v0

    .line 413
    :pswitch_27
    aget v0, v1, v13

    .line 414
    .line 415
    and-int/2addr v0, v9

    .line 416
    return v0

    .line 417
    :pswitch_28
    aget v0, v1, v16

    .line 418
    .line 419
    shr-int/2addr v0, v12

    .line 420
    and-int/2addr v0, v9

    .line 421
    return v0

    .line 422
    :pswitch_29
    aget v0, v1, v16

    .line 423
    .line 424
    shr-int/2addr v0, v10

    .line 425
    and-int/2addr v0, v9

    .line 426
    return v0

    .line 427
    :pswitch_2a
    aget v0, v1, v16

    .line 428
    .line 429
    shr-int/2addr v0, v6

    .line 430
    and-int/2addr v0, v8

    .line 431
    return v0

    .line 432
    :pswitch_2b
    aget v0, v1, v16

    .line 433
    .line 434
    shr-int/2addr v0, v7

    .line 435
    and-int/2addr v0, v8

    .line 436
    return v0

    .line 437
    :pswitch_2c
    aget v0, v1, v16

    .line 438
    .line 439
    and-int/2addr v0, v8

    .line 440
    return v0

    .line 441
    :pswitch_2d
    aget v0, v1, v11

    .line 442
    .line 443
    shr-int/2addr v0, v12

    .line 444
    and-int/2addr v0, v9

    .line 445
    return v0

    .line 446
    :pswitch_2e
    aget v0, v1, v11

    .line 447
    .line 448
    shr-int/2addr v0, v10

    .line 449
    and-int/2addr v0, v9

    .line 450
    return v0

    .line 451
    :pswitch_2f
    aget v0, v1, v11

    .line 452
    .line 453
    shr-int/2addr v0, v6

    .line 454
    and-int/2addr v0, v8

    .line 455
    return v0

    .line 456
    :pswitch_30
    aget v0, v1, v11

    .line 457
    .line 458
    and-int/2addr v0, v8

    .line 459
    return v0

    .line 460
    :pswitch_31
    aget v0, v1, v17

    .line 461
    .line 462
    shr-int/2addr v0, v10

    .line 463
    and-int/2addr v0, v8

    .line 464
    return v0

    .line 465
    :pswitch_32
    aget v0, v1, v17

    .line 466
    .line 467
    shr-int/2addr v0, v3

    .line 468
    and-int/2addr v0, v9

    .line 469
    return v0

    .line 470
    :pswitch_33
    aget v0, v1, v17

    .line 471
    .line 472
    shr-int/2addr v0, v6

    .line 473
    and-int/2addr v0, v9

    .line 474
    return v0

    .line 475
    :pswitch_34
    aget v0, v1, v17

    .line 476
    .line 477
    shr-int/2addr v0, v8

    .line 478
    and-int/2addr v0, v9

    .line 479
    return v0

    .line 480
    :pswitch_35
    aget v0, v1, v17

    .line 481
    .line 482
    shr-int/2addr v0, v9

    .line 483
    and-int/2addr v0, v8

    .line 484
    return v0

    .line 485
    :pswitch_36
    aget v0, v1, v17

    .line 486
    .line 487
    and-int/2addr v0, v9

    .line 488
    return v0

    .line 489
    :pswitch_37
    aget v0, v1, v13

    .line 490
    .line 491
    shr-int/2addr v0, v12

    .line 492
    and-int/2addr v0, v9

    .line 493
    return v0

    .line 494
    :pswitch_38
    aget v0, v1, v13

    .line 495
    .line 496
    shr-int/2addr v0, v3

    .line 497
    and-int/2addr v0, v8

    .line 498
    return v0

    .line 499
    :pswitch_39
    aget v0, v1, v13

    .line 500
    .line 501
    shr-int/2addr v0, v8

    .line 502
    and-int/2addr v0, v8

    .line 503
    return v0

    .line 504
    :pswitch_3a
    aget v0, v1, v13

    .line 505
    .line 506
    shr-int/2addr v0, v7

    .line 507
    and-int/2addr v0, v9

    .line 508
    return v0

    .line 509
    :pswitch_3b
    aget v0, v1, v13

    .line 510
    .line 511
    shr-int/2addr v0, v9

    .line 512
    and-int/2addr v0, v9

    .line 513
    return v0

    .line 514
    :pswitch_3c
    aget v0, v1, v13

    .line 515
    .line 516
    and-int/2addr v0, v9

    .line 517
    return v0

    .line 518
    :pswitch_3d
    aget v0, v1, v19

    .line 519
    .line 520
    shr-int/2addr v0, v12

    .line 521
    and-int/2addr v0, v9

    .line 522
    return v0

    .line 523
    :pswitch_3e
    aget v0, v1, v19

    .line 524
    .line 525
    shr-int/2addr v0, v10

    .line 526
    and-int/2addr v0, v9

    .line 527
    return v0

    .line 528
    :pswitch_3f
    aget v0, v1, v19

    .line 529
    .line 530
    shr-int/2addr v0, v3

    .line 531
    and-int/2addr v0, v9

    .line 532
    return v0

    .line 533
    :pswitch_40
    aget v0, v1, v19

    .line 534
    .line 535
    shr-int/2addr v0, v6

    .line 536
    and-int/2addr v0, v9

    .line 537
    return v0

    .line 538
    :pswitch_41
    aget v0, v1, v19

    .line 539
    .line 540
    shr-int/2addr v0, v8

    .line 541
    and-int/2addr v0, v9

    .line 542
    return v0

    .line 543
    :pswitch_42
    aget v0, v1, v19

    .line 544
    .line 545
    shr-int/2addr v0, v7

    .line 546
    and-int/2addr v0, v9

    .line 547
    return v0

    .line 548
    :pswitch_43
    aget v0, v1, v19

    .line 549
    .line 550
    shr-int/2addr v0, v9

    .line 551
    and-int/2addr v0, v9

    .line 552
    return v0

    .line 553
    :pswitch_44
    aget v0, v1, v19

    .line 554
    .line 555
    and-int/2addr v0, v9

    .line 556
    return v0

    .line 557
    :pswitch_45
    aget v0, v1, v18

    .line 558
    .line 559
    shr-int/2addr v0, v12

    .line 560
    and-int/2addr v0, v9

    .line 561
    return v0

    .line 562
    :pswitch_46
    aget v0, v1, v18

    .line 563
    .line 564
    shr-int/2addr v0, v10

    .line 565
    and-int/2addr v0, v9

    .line 566
    return v0

    .line 567
    :pswitch_47
    aget v0, v1, v18

    .line 568
    .line 569
    shr-int/2addr v0, v3

    .line 570
    and-int/2addr v0, v9

    .line 571
    return v0

    .line 572
    :pswitch_48
    aget v0, v1, v18

    .line 573
    .line 574
    shr-int/2addr v0, v6

    .line 575
    and-int/2addr v0, v9

    .line 576
    return v0

    .line 577
    :pswitch_49
    aget v0, v1, v18

    .line 578
    .line 579
    shr-int/2addr v0, v8

    .line 580
    and-int/2addr v0, v9

    .line 581
    return v0

    .line 582
    :pswitch_4a
    aget v0, v1, v18

    .line 583
    .line 584
    shr-int/2addr v0, v7

    .line 585
    and-int/2addr v0, v9

    .line 586
    return v0

    .line 587
    :pswitch_4b
    aget v0, v1, v18

    .line 588
    .line 589
    shr-int/2addr v0, v9

    .line 590
    and-int/2addr v0, v9

    .line 591
    return v0

    .line 592
    :pswitch_4c
    aget v0, v1, v18

    .line 593
    .line 594
    and-int/2addr v0, v9

    .line 595
    return v0

    .line 596
    :pswitch_4d
    aget v0, v1, v16

    .line 597
    .line 598
    shr-int/2addr v0, v10

    .line 599
    and-int/2addr v0, v8

    .line 600
    return v0

    .line 601
    :pswitch_4e
    aget v0, v1, v16

    .line 602
    .line 603
    shr-int/2addr v0, v3

    .line 604
    and-int/2addr v0, v9

    .line 605
    return v0

    .line 606
    :pswitch_4f
    aget v0, v1, v16

    .line 607
    .line 608
    shr-int/2addr v0, v6

    .line 609
    and-int/2addr v0, v9

    .line 610
    return v0

    .line 611
    :pswitch_50
    aget v0, v1, v16

    .line 612
    .line 613
    shr-int/2addr v0, v8

    .line 614
    and-int/2addr v0, v9

    .line 615
    return v0

    .line 616
    :pswitch_51
    aget v0, v1, v16

    .line 617
    .line 618
    shr-int/2addr v0, v7

    .line 619
    and-int/2addr v0, v9

    .line 620
    return v0

    .line 621
    :pswitch_52
    aget v0, v1, v16

    .line 622
    .line 623
    shr-int/2addr v0, v9

    .line 624
    and-int/2addr v0, v9

    .line 625
    return v0

    .line 626
    :pswitch_53
    aget v0, v1, v16

    .line 627
    .line 628
    and-int/2addr v0, v9

    .line 629
    return v0

    .line 630
    :pswitch_54
    aget v0, v1, v20

    .line 631
    .line 632
    shr-int/2addr v0, v12

    .line 633
    and-int/2addr v0, v9

    .line 634
    return v0

    .line 635
    :pswitch_55
    aget v0, v1, v20

    .line 636
    .line 637
    shr-int/2addr v0, v3

    .line 638
    and-int/2addr v0, v9

    .line 639
    return v0

    .line 640
    :pswitch_56
    aget v0, v1, v20

    .line 641
    .line 642
    shr-int/2addr v0, v6

    .line 643
    and-int/2addr v0, v9

    .line 644
    return v0

    .line 645
    :pswitch_57
    aget v0, v1, v20

    .line 646
    .line 647
    shr-int/2addr v0, v8

    .line 648
    and-int/2addr v0, v9

    .line 649
    return v0

    .line 650
    :pswitch_58
    aget v0, v1, v20

    .line 651
    .line 652
    shr-int/2addr v0, v7

    .line 653
    and-int/2addr v0, v9

    .line 654
    return v0

    .line 655
    :pswitch_59
    aget v0, v1, v20

    .line 656
    .line 657
    shr-int/2addr v0, v9

    .line 658
    and-int/2addr v0, v9

    .line 659
    return v0

    .line 660
    :pswitch_5a
    aget v0, v1, v20

    .line 661
    .line 662
    and-int/2addr v0, v9

    .line 663
    return v0

    .line 664
    :pswitch_5b
    aget v0, v1, v21

    .line 665
    .line 666
    shr-int/2addr v0, v12

    .line 667
    and-int/2addr v0, v9

    .line 668
    return v0

    .line 669
    :pswitch_5c
    aget v0, v1, v21

    .line 670
    .line 671
    shr-int/2addr v0, v10

    .line 672
    and-int/2addr v0, v9

    .line 673
    return v0

    .line 674
    :pswitch_5d
    aget v0, v1, v21

    .line 675
    .line 676
    shr-int/2addr v0, v3

    .line 677
    and-int/2addr v0, v9

    .line 678
    return v0

    .line 679
    :pswitch_5e
    aget v0, v1, v21

    .line 680
    .line 681
    shr-int/2addr v0, v6

    .line 682
    and-int/2addr v0, v9

    .line 683
    return v0

    .line 684
    :pswitch_5f
    aget v0, v1, v21

    .line 685
    .line 686
    shr-int/2addr v0, v8

    .line 687
    and-int/2addr v0, v9

    .line 688
    return v0

    .line 689
    :pswitch_60
    aget v0, v1, v21

    .line 690
    .line 691
    shr-int/2addr v0, v7

    .line 692
    and-int/2addr v0, v9

    .line 693
    return v0

    .line 694
    :pswitch_61
    aget v0, v1, v21

    .line 695
    .line 696
    shr-int/2addr v0, v9

    .line 697
    and-int/2addr v0, v9

    .line 698
    return v0

    .line 699
    :pswitch_62
    aget v0, v1, v21

    .line 700
    .line 701
    and-int/2addr v0, v9

    .line 702
    return v0

    .line 703
    :pswitch_63
    aget v0, v1, v5

    .line 704
    .line 705
    shr-int/2addr v0, v12

    .line 706
    and-int/2addr v0, v9

    .line 707
    return v0

    .line 708
    :pswitch_64
    aget v0, v1, v5

    .line 709
    .line 710
    shr-int/2addr v0, v10

    .line 711
    and-int/2addr v0, v9

    .line 712
    return v0

    .line 713
    :pswitch_65
    aget v0, v1, v5

    .line 714
    .line 715
    shr-int/2addr v0, v3

    .line 716
    and-int/2addr v0, v9

    .line 717
    return v0

    .line 718
    :pswitch_66
    aget v0, v1, v5

    .line 719
    .line 720
    shr-int/2addr v0, v6

    .line 721
    and-int/2addr v0, v9

    .line 722
    return v0

    .line 723
    :pswitch_67
    aget v0, v1, v5

    .line 724
    .line 725
    shr-int/2addr v0, v8

    .line 726
    and-int/2addr v0, v9

    .line 727
    return v0

    .line 728
    :pswitch_68
    aget v0, v1, v5

    .line 729
    .line 730
    shr-int/2addr v0, v7

    .line 731
    and-int/2addr v0, v9

    .line 732
    return v0

    .line 733
    :pswitch_69
    aget v0, v1, v5

    .line 734
    .line 735
    shr-int/2addr v0, v9

    .line 736
    and-int/2addr v0, v9

    .line 737
    return v0

    .line 738
    :pswitch_6a
    aget v0, v1, v5

    .line 739
    .line 740
    and-int/2addr v0, v9

    .line 741
    return v0

    .line 742
    :pswitch_6b
    aget v0, v1, v19

    .line 743
    .line 744
    shr-int/2addr v0, v12

    .line 745
    and-int/2addr v0, v9

    .line 746
    return v0

    .line 747
    :pswitch_6c
    aget v0, v1, v19

    .line 748
    .line 749
    shr-int/2addr v0, v10

    .line 750
    and-int/2addr v0, v9

    .line 751
    return v0

    .line 752
    :pswitch_6d
    aget v0, v1, v19

    .line 753
    .line 754
    shr-int/2addr v0, v3

    .line 755
    and-int/2addr v0, v9

    .line 756
    return v0

    .line 757
    :pswitch_6e
    aget v0, v1, v19

    .line 758
    .line 759
    shr-int/2addr v0, v6

    .line 760
    and-int/2addr v0, v9

    .line 761
    return v0

    .line 762
    :pswitch_6f
    aget v0, v1, v19

    .line 763
    .line 764
    shr-int/2addr v0, v8

    .line 765
    and-int/2addr v0, v9

    .line 766
    return v0

    .line 767
    :pswitch_70
    aget v0, v1, v19

    .line 768
    .line 769
    shr-int/2addr v0, v7

    .line 770
    and-int/2addr v0, v9

    .line 771
    return v0

    .line 772
    :pswitch_71
    aget v0, v1, v19

    .line 773
    .line 774
    and-int/2addr v0, v8

    .line 775
    return v0

    .line 776
    :pswitch_72
    aget v0, v1, v18

    .line 777
    .line 778
    shr-int/2addr v0, v12

    .line 779
    and-int/2addr v0, v9

    .line 780
    return v0

    .line 781
    :pswitch_73
    aget v0, v1, v18

    .line 782
    .line 783
    shr-int/2addr v0, v10

    .line 784
    and-int/2addr v0, v9

    .line 785
    return v0

    .line 786
    :pswitch_74
    aget v0, v1, v18

    .line 787
    .line 788
    shr-int/2addr v0, v3

    .line 789
    and-int/2addr v0, v9

    .line 790
    return v0

    .line 791
    :pswitch_75
    aget v0, v1, v18

    .line 792
    .line 793
    shr-int/2addr v0, v6

    .line 794
    and-int/2addr v0, v9

    .line 795
    return v0

    .line 796
    :pswitch_76
    aget v0, v1, v18

    .line 797
    .line 798
    shr-int/2addr v0, v8

    .line 799
    and-int/2addr v0, v9

    .line 800
    return v0

    .line 801
    :pswitch_77
    aget v0, v1, v18

    .line 802
    .line 803
    shr-int/2addr v0, v7

    .line 804
    and-int/2addr v0, v9

    .line 805
    return v0

    .line 806
    :pswitch_78
    aget v0, v1, v18

    .line 807
    .line 808
    and-int/2addr v0, v8

    .line 809
    return v0

    .line 810
    :pswitch_79
    aget v0, v1, v22

    .line 811
    .line 812
    shr-int/2addr v0, v12

    .line 813
    and-int/2addr v0, v9

    .line 814
    return v0

    .line 815
    :pswitch_7a
    aget v0, v1, v22

    .line 816
    .line 817
    shr-int/2addr v0, v10

    .line 818
    and-int/2addr v0, v9

    .line 819
    return v0

    .line 820
    :pswitch_7b
    aget v0, v1, v22

    .line 821
    .line 822
    shr-int/2addr v0, v3

    .line 823
    and-int/2addr v0, v9

    .line 824
    return v0

    .line 825
    :pswitch_7c
    aget v0, v1, v22

    .line 826
    .line 827
    shr-int/2addr v0, v6

    .line 828
    and-int/2addr v0, v9

    .line 829
    return v0

    .line 830
    :pswitch_7d
    aget v0, v1, v22

    .line 831
    .line 832
    shr-int/2addr v0, v8

    .line 833
    and-int/2addr v0, v9

    .line 834
    return v0

    .line 835
    :pswitch_7e
    aget v0, v1, v22

    .line 836
    .line 837
    shr-int/2addr v0, v7

    .line 838
    and-int/2addr v0, v9

    .line 839
    return v0

    .line 840
    :pswitch_7f
    aget v0, v1, v22

    .line 841
    .line 842
    shr-int/2addr v0, v9

    .line 843
    and-int/2addr v0, v9

    .line 844
    return v0

    .line 845
    :pswitch_80
    aget v0, v1, v22

    .line 846
    .line 847
    and-int/2addr v0, v9

    .line 848
    return v0

    .line 849
    :pswitch_81
    aget v0, v1, v17

    .line 850
    .line 851
    shr-int/2addr v0, v12

    .line 852
    and-int/2addr v0, v9

    .line 853
    return v0

    .line 854
    :pswitch_82
    aget v0, v1, v17

    .line 855
    .line 856
    shr-int/2addr v0, v10

    .line 857
    and-int/2addr v0, v9

    .line 858
    return v0

    .line 859
    :pswitch_83
    aget v0, v1, v17

    .line 860
    .line 861
    shr-int/2addr v0, v3

    .line 862
    and-int/2addr v0, v9

    .line 863
    return v0

    .line 864
    :pswitch_84
    aget v0, v1, v17

    .line 865
    .line 866
    shr-int/2addr v0, v6

    .line 867
    and-int/2addr v0, v9

    .line 868
    return v0

    .line 869
    :pswitch_85
    aget v0, v1, v17

    .line 870
    .line 871
    shr-int/2addr v0, v7

    .line 872
    and-int/2addr v0, v8

    .line 873
    return v0

    .line 874
    :pswitch_86
    aget v0, v1, v17

    .line 875
    .line 876
    and-int/2addr v0, v8

    .line 877
    return v0

    .line 878
    :pswitch_87
    aget v0, v1, v14

    .line 879
    .line 880
    shr-int/2addr v0, v10

    .line 881
    and-int/2addr v0, v8

    .line 882
    return v0

    .line 883
    :pswitch_88
    aget v0, v1, v14

    .line 884
    .line 885
    shr-int/2addr v0, v6

    .line 886
    and-int/2addr v0, v8

    .line 887
    return v0

    .line 888
    :pswitch_89
    aget v0, v1, v13

    .line 889
    .line 890
    shr-int/2addr v0, v10

    .line 891
    and-int/2addr v0, v9

    .line 892
    return v0

    .line 893
    :pswitch_8a
    aget v0, v1, v13

    .line 894
    .line 895
    shr-int/2addr v0, v8

    .line 896
    and-int/2addr v0, v12

    .line 897
    return v0

    .line 898
    :pswitch_8b
    aget v0, v1, v13

    .line 899
    .line 900
    and-int/2addr v0, v12

    .line 901
    return v0

    .line 902
    :pswitch_8c
    aget v0, v1, v15

    .line 903
    .line 904
    and-int/2addr v0, v9

    .line 905
    return v0

    .line 906
    :pswitch_8d
    aget v0, v1, v11

    .line 907
    .line 908
    shr-int/2addr v0, v12

    .line 909
    and-int/2addr v0, v9

    .line 910
    return v0

    .line 911
    :pswitch_8e
    aget v0, v1, v11

    .line 912
    .line 913
    shr-int/2addr v0, v10

    .line 914
    and-int/2addr v0, v9

    .line 915
    return v0

    .line 916
    :pswitch_8f
    aget v0, v1, v11

    .line 917
    .line 918
    shr-int/2addr v0, v3

    .line 919
    and-int/2addr v0, v9

    .line 920
    return v0

    .line 921
    :pswitch_90
    aget v0, v1, v11

    .line 922
    .line 923
    shr-int/2addr v0, v6

    .line 924
    and-int/2addr v0, v9

    .line 925
    return v0

    .line 926
    :pswitch_91
    aget v0, v1, v11

    .line 927
    .line 928
    shr-int/2addr v0, v8

    .line 929
    and-int/2addr v0, v9

    .line 930
    return v0

    .line 931
    :pswitch_92
    aget v0, v1, v11

    .line 932
    .line 933
    shr-int/2addr v0, v7

    .line 934
    and-int/2addr v0, v9

    .line 935
    return v0

    .line 936
    :pswitch_93
    aget v0, v1, v11

    .line 937
    .line 938
    shr-int/2addr v0, v9

    .line 939
    and-int/2addr v0, v9

    .line 940
    return v0

    .line 941
    :pswitch_94
    aget v0, v1, v11

    .line 942
    .line 943
    and-int/2addr v0, v9

    .line 944
    return v0

    .line 945
    :pswitch_95
    const/16 v0, 0x9

    .line 946
    .line 947
    aget v0, v1, v0

    .line 948
    .line 949
    shr-int/2addr v0, v7

    .line 950
    and-int/2addr v0, v9

    .line 951
    return v0

    .line 952
    :pswitch_96
    const/16 v0, 0x9

    .line 953
    .line 954
    aget v0, v1, v0

    .line 955
    .line 956
    shr-int/2addr v0, v9

    .line 957
    and-int/2addr v0, v9

    .line 958
    return v0

    .line 959
    :pswitch_97
    const/16 v0, 0x9

    .line 960
    .line 961
    aget v0, v1, v0

    .line 962
    .line 963
    and-int/2addr v0, v9

    .line 964
    return v0

    .line 965
    :pswitch_98
    aget v0, v1, v16

    .line 966
    .line 967
    shr-int/2addr v0, v12

    .line 968
    and-int/2addr v0, v9

    .line 969
    return v0

    .line 970
    :pswitch_99
    aget v0, v1, v16

    .line 971
    .line 972
    shr-int/2addr v0, v10

    .line 973
    and-int/2addr v0, v9

    .line 974
    return v0

    .line 975
    :pswitch_9a
    aget v0, v1, v16

    .line 976
    .line 977
    shr-int/2addr v0, v3

    .line 978
    and-int/2addr v0, v9

    .line 979
    return v0

    .line 980
    :pswitch_9b
    aget v0, v1, v16

    .line 981
    .line 982
    shr-int/2addr v0, v6

    .line 983
    and-int/2addr v0, v9

    .line 984
    return v0

    .line 985
    :pswitch_9c
    aget v0, v1, v16

    .line 986
    .line 987
    and-int/2addr v0, v9

    .line 988
    return v0

    .line 989
    :pswitch_9d
    aget v0, v1, v12

    .line 990
    .line 991
    shr-int/2addr v0, v12

    .line 992
    and-int/2addr v0, v9

    .line 993
    return v0

    .line 994
    :pswitch_9e
    aget v0, v1, v12

    .line 995
    .line 996
    shr-int/2addr v0, v6

    .line 997
    and-int/2addr v0, v12

    .line 998
    return v0

    .line 999
    :pswitch_9f
    aget v0, v1, v12

    .line 1000
    .line 1001
    and-int/lit8 v0, v0, 0xf

    .line 1002
    .line 1003
    return v0

    .line 1004
    :pswitch_a0
    aget v0, v1, v8

    .line 1005
    .line 1006
    shr-int/2addr v0, v3

    .line 1007
    and-int/2addr v0, v9

    .line 1008
    return v0

    .line 1009
    :pswitch_a1
    aget v0, v1, v8

    .line 1010
    .line 1011
    shr-int/2addr v0, v8

    .line 1012
    and-int/2addr v0, v9

    .line 1013
    return v0

    .line 1014
    :pswitch_a2
    aget v0, v1, v8

    .line 1015
    .line 1016
    shr-int/2addr v0, v7

    .line 1017
    and-int/2addr v0, v9

    .line 1018
    return v0

    .line 1019
    :pswitch_a3
    aget v0, v1, v8

    .line 1020
    .line 1021
    shr-int/2addr v0, v9

    .line 1022
    and-int/2addr v0, v9

    .line 1023
    return v0

    .line 1024
    :pswitch_a4
    aget v0, v1, v8

    .line 1025
    .line 1026
    and-int/2addr v0, v9

    .line 1027
    return v0

    .line 1028
    :cond_f
    aget v0, v1, v7

    .line 1029
    .line 1030
    shr-int/2addr v0, v12

    .line 1031
    and-int/2addr v0, v9

    .line 1032
    return v0

    .line 1033
    :cond_10
    aget v0, v1, v7

    .line 1034
    .line 1035
    shr-int/2addr v0, v10

    .line 1036
    and-int/2addr v0, v9

    .line 1037
    return v0

    .line 1038
    :pswitch_a5
    aget v0, v1, v7

    .line 1039
    .line 1040
    shr-int/2addr v0, v3

    .line 1041
    and-int/2addr v0, v9

    .line 1042
    return v0

    .line 1043
    :pswitch_a6
    aget v0, v1, v7

    .line 1044
    .line 1045
    shr-int/2addr v0, v6

    .line 1046
    and-int/2addr v0, v9

    .line 1047
    return v0

    .line 1048
    :pswitch_a7
    aget v0, v1, v7

    .line 1049
    .line 1050
    shr-int/2addr v0, v8

    .line 1051
    and-int/2addr v0, v9

    .line 1052
    return v0

    .line 1053
    :pswitch_a8
    aget v0, v1, v7

    .line 1054
    .line 1055
    shr-int/2addr v0, v7

    .line 1056
    and-int/2addr v0, v9

    .line 1057
    return v0

    .line 1058
    :pswitch_a9
    aget v0, v1, v7

    .line 1059
    .line 1060
    shr-int/2addr v0, v9

    .line 1061
    and-int/2addr v0, v9

    .line 1062
    return v0

    .line 1063
    :pswitch_aa
    aget v0, v1, v7

    .line 1064
    .line 1065
    and-int/2addr v0, v9

    .line 1066
    return v0

    .line 1067
    :pswitch_ab
    aget v0, v1, v9

    .line 1068
    .line 1069
    return v0

    .line 1070
    :pswitch_ac
    aget v0, v1, v4

    .line 1071
    .line 1072
    and-int/2addr v0, v8

    .line 1073
    return v0

    .line 1074
    :cond_11
    :goto_0
    return v4

    .line 1075
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
    .end packed-switch

    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
    .end packed-switch

    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
    .end packed-switch

    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    :pswitch_data_3
    .packed-switch 0x67
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    :pswitch_data_4
    .packed-switch 0x8d
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch

    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    :pswitch_data_5
    .packed-switch 0xc8
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    :pswitch_data_6
    .packed-switch 0x2713
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

.method public static G0(Lcom/yunpan/appmanage/service/AccService;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.permission.DEVICE_POWER"

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-wide v2, p0, Lcom/yunpan/appmanage/service/AccService;->H:J

    .line 22
    .line 23
    sub-long/2addr v0, v2

    .line 24
    const-wide/16 v2, 0x1a0a

    .line 25
    .line 26
    cmp-long v4, v0, v2

    .line 27
    .line 28
    if-lez v4, :cond_2

    .line 29
    .line 30
    const-string v0, "activity"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/app/ActivityManager;

    .line 37
    .line 38
    const/16 v1, 0x64

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 59
    .line 60
    invoke-static {v2}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-nez v3, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-static {v2}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_0

    .line 84
    .line 85
    iget p0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :catch_0
    :cond_2
    invoke-static {p0}, Lif/a;->H0(Landroid/content/ContextWrapper;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public static H([I[II)I
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    array-length v3, v0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/16 v5, 0x9

    .line 10
    .line 11
    if-lt v3, v5, :cond_f

    .line 12
    .line 13
    array-length v3, v1

    .line 14
    const/16 v6, 0x26

    .line 15
    .line 16
    if-ge v3, v6, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    const/4 v3, 0x5

    .line 21
    const/4 v6, 0x4

    .line 22
    const/4 v7, 0x2

    .line 23
    const/4 v8, 0x3

    .line 24
    const/4 v9, 0x1

    .line 25
    packed-switch v2, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    const/4 v10, 0x6

    .line 29
    if-eq v2, v5, :cond_e

    .line 30
    .line 31
    const/16 v11, 0xa

    .line 32
    .line 33
    const/4 v12, 0x7

    .line 34
    if-eq v2, v11, :cond_d

    .line 35
    .line 36
    packed-switch v2, :pswitch_data_1

    .line 37
    .line 38
    .line 39
    const/16 v13, 0xe

    .line 40
    .line 41
    const/16 v14, 0xc

    .line 42
    .line 43
    const/16 v16, 0xb

    .line 44
    .line 45
    const/16 v17, 0xd

    .line 46
    .line 47
    const/16 v18, 0xf

    .line 48
    .line 49
    const/16 v19, 0x8

    .line 50
    .line 51
    packed-switch v2, :pswitch_data_2

    .line 52
    .line 53
    .line 54
    const/16 v11, 0x39

    .line 55
    .line 56
    if-eq v2, v11, :cond_c

    .line 57
    .line 58
    const/16 v11, 0x3a

    .line 59
    .line 60
    if-eq v2, v11, :cond_b

    .line 61
    .line 62
    const/16 v11, 0x10

    .line 63
    .line 64
    packed-switch v2, :pswitch_data_3

    .line 65
    .line 66
    .line 67
    packed-switch v2, :pswitch_data_4

    .line 68
    .line 69
    .line 70
    const/16 v11, 0x17

    .line 71
    .line 72
    const/16 v13, 0x15

    .line 73
    .line 74
    const/16 v15, 0x12

    .line 75
    .line 76
    packed-switch v2, :pswitch_data_5

    .line 77
    .line 78
    .line 79
    const/16 v13, 0x20

    .line 80
    .line 81
    const/16 v20, 0x21

    .line 82
    .line 83
    const/16 v21, 0x22

    .line 84
    .line 85
    const/16 v22, 0x1e

    .line 86
    .line 87
    const/16 v23, 0x18

    .line 88
    .line 89
    const/16 v24, 0x1f

    .line 90
    .line 91
    const/16 v25, 0x19

    .line 92
    .line 93
    const/16 v26, 0x1a

    .line 94
    .line 95
    packed-switch v2, :pswitch_data_6

    .line 96
    .line 97
    .line 98
    const/16 v11, 0x1b

    .line 99
    .line 100
    const/16 v13, 0x1c

    .line 101
    .line 102
    const/16 v20, 0x13

    .line 103
    .line 104
    packed-switch v2, :pswitch_data_7

    .line 105
    .line 106
    .line 107
    const/16 v11, 0x1d

    .line 108
    .line 109
    packed-switch v2, :pswitch_data_8

    .line 110
    .line 111
    .line 112
    packed-switch v2, :pswitch_data_9

    .line 113
    .line 114
    .line 115
    const/16 v13, 0x14

    .line 116
    .line 117
    packed-switch v2, :pswitch_data_a

    .line 118
    .line 119
    .line 120
    packed-switch v2, :pswitch_data_b

    .line 121
    .line 122
    .line 123
    const/16 v18, 0x16

    .line 124
    .line 125
    packed-switch v2, :pswitch_data_c

    .line 126
    .line 127
    .line 128
    packed-switch v2, :pswitch_data_d

    .line 129
    .line 130
    .line 131
    const/16 v5, 0x24

    .line 132
    .line 133
    const/16 v13, 0x25

    .line 134
    .line 135
    packed-switch v2, :pswitch_data_e

    .line 136
    .line 137
    .line 138
    const/16 v0, 0x2796

    .line 139
    .line 140
    if-eq v2, v0, :cond_a

    .line 141
    .line 142
    const/16 v0, 0x2797

    .line 143
    .line 144
    if-eq v2, v0, :cond_9

    .line 145
    .line 146
    const/16 v0, 0x279a

    .line 147
    .line 148
    if-eq v2, v0, :cond_7

    .line 149
    .line 150
    const/16 v0, 0x279b

    .line 151
    .line 152
    if-eq v2, v0, :cond_6

    .line 153
    .line 154
    packed-switch v2, :pswitch_data_f

    .line 155
    .line 156
    .line 157
    if-eq v2, v15, :cond_5

    .line 158
    .line 159
    const/16 v0, 0x2737

    .line 160
    .line 161
    if-eq v2, v0, :cond_4

    .line 162
    .line 163
    const/16 v0, 0x273d

    .line 164
    .line 165
    if-eq v2, v0, :cond_3

    .line 166
    .line 167
    const/16 v0, 0x2775

    .line 168
    .line 169
    if-eq v2, v0, :cond_2

    .line 170
    .line 171
    const/16 v0, 0x278a

    .line 172
    .line 173
    if-eq v2, v0, :cond_1

    .line 174
    .line 175
    return v4

    .line 176
    :cond_1
    aget v0, v1, v10

    .line 177
    .line 178
    shr-int/2addr v0, v10

    .line 179
    and-int/2addr v0, v9

    .line 180
    return v0

    .line 181
    :cond_2
    aget v0, v1, v18

    .line 182
    .line 183
    shr-int/2addr v0, v6

    .line 184
    and-int/2addr v0, v9

    .line 185
    return v0

    .line 186
    :cond_3
    aget v0, v1, v18

    .line 187
    .line 188
    and-int/2addr v0, v9

    .line 189
    return v0

    .line 190
    :cond_4
    aget v0, v1, v19

    .line 191
    .line 192
    shr-int/2addr v0, v8

    .line 193
    and-int/2addr v0, v9

    .line 194
    return v0

    .line 195
    :cond_5
    aget v0, v1, v8

    .line 196
    .line 197
    shr-int/2addr v0, v6

    .line 198
    and-int/2addr v0, v9

    .line 199
    return v0

    .line 200
    :pswitch_0
    aget v0, v1, v13

    .line 201
    .line 202
    shr-int/2addr v0, v10

    .line 203
    and-int/2addr v0, v9

    .line 204
    return v0

    .line 205
    :pswitch_1
    aget v0, v1, v13

    .line 206
    .line 207
    shr-int/2addr v0, v3

    .line 208
    and-int/2addr v0, v9

    .line 209
    return v0

    .line 210
    :pswitch_2
    aget v0, v1, v13

    .line 211
    .line 212
    shr-int/2addr v0, v6

    .line 213
    and-int/2addr v0, v9

    .line 214
    return v0

    .line 215
    :pswitch_3
    aget v0, v1, v13

    .line 216
    .line 217
    shr-int/2addr v0, v7

    .line 218
    and-int/2addr v0, v8

    .line 219
    return v0

    .line 220
    :cond_6
    aget v0, v1, v18

    .line 221
    .line 222
    shr-int/2addr v0, v10

    .line 223
    and-int/2addr v0, v9

    .line 224
    return v0

    .line 225
    :cond_7
    aget v0, v1, v10

    .line 226
    .line 227
    shr-int/2addr v0, v12

    .line 228
    and-int/2addr v0, v9

    .line 229
    if-nez v0, :cond_8

    .line 230
    .line 231
    const/4 v4, 0x1

    .line 232
    :cond_8
    return v4

    .line 233
    :cond_9
    aget v0, v1, v11

    .line 234
    .line 235
    shr-int/2addr v0, v8

    .line 236
    and-int/2addr v0, v9

    .line 237
    return v0

    .line 238
    :cond_a
    aget v0, v1, v3

    .line 239
    .line 240
    shr-int/2addr v0, v10

    .line 241
    and-int/2addr v0, v8

    .line 242
    return v0

    .line 243
    :pswitch_4
    aget v0, v1, v13

    .line 244
    .line 245
    and-int/2addr v0, v8

    .line 246
    return v0

    .line 247
    :pswitch_5
    aget v0, v0, v19

    .line 248
    .line 249
    shr-int/2addr v0, v6

    .line 250
    and-int/2addr v0, v8

    .line 251
    return v0

    .line 252
    :pswitch_6
    aget v0, v1, v5

    .line 253
    .line 254
    shr-int/2addr v0, v7

    .line 255
    and-int/2addr v0, v9

    .line 256
    return v0

    .line 257
    :pswitch_7
    aget v0, v1, v5

    .line 258
    .line 259
    shr-int/2addr v0, v9

    .line 260
    and-int/2addr v0, v9

    .line 261
    return v0

    .line 262
    :pswitch_8
    aget v0, v1, v5

    .line 263
    .line 264
    and-int/2addr v0, v9

    .line 265
    return v0

    .line 266
    :pswitch_9
    aget v0, v1, v21

    .line 267
    .line 268
    shr-int/2addr v0, v12

    .line 269
    and-int/2addr v0, v9

    .line 270
    return v0

    .line 271
    :pswitch_a
    aget v0, v1, v17

    .line 272
    .line 273
    shr-int/2addr v0, v7

    .line 274
    and-int/2addr v0, v9

    .line 275
    return v0

    .line 276
    :pswitch_b
    aget v0, v1, v17

    .line 277
    .line 278
    shr-int/2addr v0, v9

    .line 279
    and-int/2addr v0, v9

    .line 280
    return v0

    .line 281
    :pswitch_c
    aget v0, v1, v10

    .line 282
    .line 283
    shr-int/2addr v0, v3

    .line 284
    and-int/2addr v0, v9

    .line 285
    return v0

    .line 286
    :pswitch_d
    aget v0, v1, v10

    .line 287
    .line 288
    shr-int/2addr v0, v6

    .line 289
    and-int/2addr v0, v9

    .line 290
    return v0

    .line 291
    :pswitch_e
    aget v0, v1, v10

    .line 292
    .line 293
    shr-int/2addr v0, v7

    .line 294
    and-int/2addr v0, v8

    .line 295
    return v0

    .line 296
    :pswitch_f
    aget v0, v0, v8

    .line 297
    .line 298
    shr-int/2addr v0, v7

    .line 299
    and-int/2addr v0, v8

    .line 300
    return v0

    .line 301
    :pswitch_10
    aget v0, v1, v20

    .line 302
    .line 303
    shr-int/2addr v0, v3

    .line 304
    and-int/2addr v0, v8

    .line 305
    return v0

    .line 306
    :pswitch_11
    aget v0, v1, v5

    .line 307
    .line 308
    shr-int/2addr v0, v10

    .line 309
    and-int/2addr v0, v9

    .line 310
    return v0

    .line 311
    :pswitch_12
    aget v0, v1, v10

    .line 312
    .line 313
    and-int/2addr v0, v8

    .line 314
    return v0

    .line 315
    :pswitch_13
    aget v0, v0, v10

    .line 316
    .line 317
    and-int/2addr v0, v8

    .line 318
    return v0

    .line 319
    :pswitch_14
    aget v0, v0, v8

    .line 320
    .line 321
    shr-int/2addr v0, v3

    .line 322
    and-int/2addr v0, v9

    .line 323
    return v0

    .line 324
    :pswitch_15
    aget v0, v0, v8

    .line 325
    .line 326
    shr-int/2addr v0, v6

    .line 327
    and-int/2addr v0, v9

    .line 328
    return v0

    .line 329
    :pswitch_16
    aget v0, v1, v16

    .line 330
    .line 331
    shr-int/2addr v0, v12

    .line 332
    and-int/2addr v0, v9

    .line 333
    return v0

    .line 334
    :pswitch_17
    aget v0, v0, v19

    .line 335
    .line 336
    shr-int/2addr v0, v9

    .line 337
    and-int/2addr v0, v9

    .line 338
    return v0

    .line 339
    :pswitch_18
    aget v0, v0, v19

    .line 340
    .line 341
    shr-int/2addr v0, v8

    .line 342
    and-int/2addr v0, v9

    .line 343
    return v0

    .line 344
    :pswitch_19
    aget v0, v0, v19

    .line 345
    .line 346
    shr-int/2addr v0, v7

    .line 347
    and-int/2addr v0, v9

    .line 348
    return v0

    .line 349
    :pswitch_1a
    aget v0, v1, v18

    .line 350
    .line 351
    shr-int/2addr v0, v9

    .line 352
    and-int/2addr v0, v9

    .line 353
    return v0

    .line 354
    :pswitch_1b
    aget v0, v1, v18

    .line 355
    .line 356
    shr-int/2addr v0, v3

    .line 357
    and-int/2addr v0, v9

    .line 358
    return v0

    .line 359
    :pswitch_1c
    aget v0, v1, v14

    .line 360
    .line 361
    shr-int/2addr v0, v12

    .line 362
    and-int/2addr v0, v9

    .line 363
    return v0

    .line 364
    :pswitch_1d
    aget v0, v1, v21

    .line 365
    .line 366
    shr-int/2addr v0, v6

    .line 367
    and-int/2addr v0, v12

    .line 368
    return v0

    .line 369
    :pswitch_1e
    aget v0, v1, v21

    .line 370
    .line 371
    shr-int/2addr v0, v7

    .line 372
    and-int/2addr v0, v9

    .line 373
    return v0

    .line 374
    :pswitch_1f
    aget v0, v1, v21

    .line 375
    .line 376
    shr-int/2addr v0, v9

    .line 377
    and-int/2addr v0, v9

    .line 378
    return v0

    .line 379
    :pswitch_20
    aget v0, v1, v13

    .line 380
    .line 381
    shr-int/2addr v0, v9

    .line 382
    and-int/2addr v0, v9

    .line 383
    return v0

    .line 384
    :pswitch_21
    aget v0, v1, v13

    .line 385
    .line 386
    and-int/2addr v0, v9

    .line 387
    return v0

    .line 388
    :pswitch_22
    aget v0, v1, v20

    .line 389
    .line 390
    shr-int/2addr v0, v12

    .line 391
    and-int/2addr v0, v9

    .line 392
    return v0

    .line 393
    :pswitch_23
    aget v0, v1, v20

    .line 394
    .line 395
    shr-int/2addr v0, v6

    .line 396
    and-int/2addr v0, v9

    .line 397
    return v0

    .line 398
    :pswitch_24
    aget v0, v1, v13

    .line 399
    .line 400
    shr-int/2addr v0, v12

    .line 401
    and-int/2addr v0, v9

    .line 402
    return v0

    .line 403
    :pswitch_25
    aget v0, v1, v13

    .line 404
    .line 405
    shr-int/2addr v0, v10

    .line 406
    and-int/2addr v0, v9

    .line 407
    return v0

    .line 408
    :pswitch_26
    aget v0, v1, v13

    .line 409
    .line 410
    shr-int/2addr v0, v8

    .line 411
    and-int/2addr v0, v9

    .line 412
    return v0

    .line 413
    :pswitch_27
    aget v0, v1, v13

    .line 414
    .line 415
    shr-int/2addr v0, v7

    .line 416
    and-int/2addr v0, v9

    .line 417
    return v0

    .line 418
    :pswitch_28
    aget v0, v1, v17

    .line 419
    .line 420
    shr-int/2addr v0, v8

    .line 421
    and-int/2addr v0, v9

    .line 422
    return v0

    .line 423
    :pswitch_29
    aget v0, v0, v8

    .line 424
    .line 425
    shr-int/2addr v0, v9

    .line 426
    and-int/2addr v0, v9

    .line 427
    return v0

    .line 428
    :pswitch_2a
    aget v0, v0, v9

    .line 429
    .line 430
    shr-int/2addr v0, v6

    .line 431
    and-int/2addr v0, v9

    .line 432
    return v0

    .line 433
    :pswitch_2b
    aget v0, v1, v13

    .line 434
    .line 435
    shr-int/2addr v0, v6

    .line 436
    and-int/2addr v0, v9

    .line 437
    return v0

    .line 438
    :pswitch_2c
    aget v0, v1, v13

    .line 439
    .line 440
    shr-int/2addr v0, v3

    .line 441
    and-int/2addr v0, v9

    .line 442
    return v0

    .line 443
    :pswitch_2d
    aget v0, v1, v17

    .line 444
    .line 445
    and-int/2addr v0, v9

    .line 446
    return v0

    .line 447
    :pswitch_2e
    aget v0, v1, v11

    .line 448
    .line 449
    shr-int/2addr v0, v12

    .line 450
    and-int/2addr v0, v9

    .line 451
    return v0

    .line 452
    :pswitch_2f
    aget v0, v1, v11

    .line 453
    .line 454
    shr-int/2addr v0, v10

    .line 455
    and-int/2addr v0, v9

    .line 456
    return v0

    .line 457
    :pswitch_30
    aget v0, v1, v11

    .line 458
    .line 459
    shr-int/2addr v0, v3

    .line 460
    and-int/2addr v0, v9

    .line 461
    return v0

    .line 462
    :pswitch_31
    aget v0, v1, v16

    .line 463
    .line 464
    shr-int/2addr v0, v10

    .line 465
    and-int/2addr v0, v9

    .line 466
    return v0

    .line 467
    :pswitch_32
    aget v0, v1, v16

    .line 468
    .line 469
    shr-int/2addr v0, v6

    .line 470
    and-int/2addr v0, v8

    .line 471
    return v0

    .line 472
    :pswitch_33
    aget v0, v1, v16

    .line 473
    .line 474
    shr-int/2addr v0, v8

    .line 475
    and-int/2addr v0, v9

    .line 476
    return v0

    .line 477
    :pswitch_34
    aget v0, v1, v19

    .line 478
    .line 479
    shr-int/2addr v0, v7

    .line 480
    and-int/2addr v0, v9

    .line 481
    return v0

    .line 482
    :pswitch_35
    aget v0, v1, v11

    .line 483
    .line 484
    shr-int/2addr v0, v7

    .line 485
    and-int/2addr v0, v9

    .line 486
    return v0

    .line 487
    :pswitch_36
    aget v0, v1, v11

    .line 488
    .line 489
    shr-int/2addr v0, v9

    .line 490
    and-int/2addr v0, v9

    .line 491
    return v0

    .line 492
    :pswitch_37
    aget v0, v1, v11

    .line 493
    .line 494
    and-int/2addr v0, v9

    .line 495
    return v0

    .line 496
    :pswitch_38
    aget v0, v1, v20

    .line 497
    .line 498
    shr-int/2addr v0, v8

    .line 499
    and-int/2addr v0, v9

    .line 500
    return v0

    .line 501
    :pswitch_39
    aget v0, v1, v4

    .line 502
    .line 503
    shr-int/2addr v0, v7

    .line 504
    and-int/2addr v0, v8

    .line 505
    return v0

    .line 506
    :pswitch_3a
    aget v0, v1, v13

    .line 507
    .line 508
    shr-int/2addr v0, v10

    .line 509
    and-int/2addr v0, v9

    .line 510
    return v0

    .line 511
    :pswitch_3b
    aget v0, v1, v5

    .line 512
    .line 513
    shr-int/2addr v0, v3

    .line 514
    and-int/2addr v0, v9

    .line 515
    return v0

    .line 516
    :pswitch_3c
    aget v0, v1, v20

    .line 517
    .line 518
    shr-int/2addr v0, v7

    .line 519
    and-int/2addr v0, v9

    .line 520
    return v0

    .line 521
    :pswitch_3d
    aget v0, v1, v16

    .line 522
    .line 523
    shr-int/2addr v0, v9

    .line 524
    and-int/2addr v0, v8

    .line 525
    return v0

    .line 526
    :pswitch_3e
    aget v0, v1, v19

    .line 527
    .line 528
    shr-int/2addr v0, v9

    .line 529
    and-int/2addr v0, v9

    .line 530
    return v0

    .line 531
    :pswitch_3f
    aget v0, v0, v19

    .line 532
    .line 533
    and-int/2addr v0, v9

    .line 534
    return v0

    .line 535
    :pswitch_40
    aget v0, v1, v5

    .line 536
    .line 537
    shr-int/2addr v0, v6

    .line 538
    and-int/2addr v0, v9

    .line 539
    return v0

    .line 540
    :pswitch_41
    aget v0, v1, v13

    .line 541
    .line 542
    shr-int/2addr v0, v6

    .line 543
    and-int/2addr v0, v9

    .line 544
    return v0

    .line 545
    :pswitch_42
    aget v0, v1, v20

    .line 546
    .line 547
    shr-int/2addr v0, v9

    .line 548
    and-int/2addr v0, v9

    .line 549
    return v0

    .line 550
    :pswitch_43
    aget v0, v1, v5

    .line 551
    .line 552
    shr-int/2addr v0, v8

    .line 553
    and-int/2addr v0, v9

    .line 554
    return v0

    .line 555
    :pswitch_44
    aget v0, v1, v13

    .line 556
    .line 557
    and-int/lit8 v0, v0, 0xf

    .line 558
    .line 559
    return v0

    .line 560
    :pswitch_45
    aget v0, v0, v9

    .line 561
    .line 562
    shr-int/2addr v0, v8

    .line 563
    and-int/2addr v0, v9

    .line 564
    return v0

    .line 565
    :pswitch_46
    aget v0, v1, v20

    .line 566
    .line 567
    and-int/2addr v0, v9

    .line 568
    return v0

    .line 569
    :pswitch_47
    aget v0, v1, v11

    .line 570
    .line 571
    shr-int/2addr v0, v8

    .line 572
    and-int/lit8 v0, v0, 0x1f

    .line 573
    .line 574
    return v0

    .line 575
    :pswitch_48
    aget v0, v1, v11

    .line 576
    .line 577
    and-int/2addr v0, v12

    .line 578
    return v0

    .line 579
    :pswitch_49
    aget v0, v0, v8

    .line 580
    .line 581
    and-int/2addr v0, v9

    .line 582
    return v0

    .line 583
    :pswitch_4a
    aget v0, v0, v12

    .line 584
    .line 585
    shr-int/2addr v0, v10

    .line 586
    and-int/2addr v0, v8

    .line 587
    return v0

    .line 588
    :pswitch_4b
    aget v0, v0, v12

    .line 589
    .line 590
    shr-int/2addr v0, v6

    .line 591
    and-int/2addr v0, v8

    .line 592
    return v0

    .line 593
    :pswitch_4c
    aget v0, v0, v12

    .line 594
    .line 595
    and-int/lit8 v0, v0, 0xf

    .line 596
    .line 597
    return v0

    .line 598
    :pswitch_4d
    aget v0, v0, v10

    .line 599
    .line 600
    shr-int/2addr v0, v10

    .line 601
    and-int/2addr v0, v8

    .line 602
    return v0

    .line 603
    :pswitch_4e
    aget v0, v0, v10

    .line 604
    .line 605
    shr-int/2addr v0, v6

    .line 606
    and-int/2addr v0, v8

    .line 607
    return v0

    .line 608
    :pswitch_4f
    aget v0, v0, v10

    .line 609
    .line 610
    shr-int/2addr v0, v7

    .line 611
    and-int/2addr v0, v8

    .line 612
    return v0

    .line 613
    :pswitch_50
    aget v0, v0, v3

    .line 614
    .line 615
    shr-int/2addr v0, v10

    .line 616
    and-int/2addr v0, v9

    .line 617
    return v0

    .line 618
    :pswitch_51
    aget v0, v0, v3

    .line 619
    .line 620
    shr-int/2addr v0, v8

    .line 621
    and-int/2addr v0, v12

    .line 622
    return v0

    .line 623
    :pswitch_52
    aget v0, v0, v3

    .line 624
    .line 625
    and-int/2addr v0, v12

    .line 626
    return v0

    .line 627
    :pswitch_53
    aget v0, v0, v6

    .line 628
    .line 629
    shr-int/2addr v0, v6

    .line 630
    and-int/lit8 v0, v0, 0xf

    .line 631
    .line 632
    return v0

    .line 633
    :pswitch_54
    aget v0, v0, v6

    .line 634
    .line 635
    shr-int/2addr v0, v9

    .line 636
    and-int/2addr v0, v12

    .line 637
    return v0

    .line 638
    :pswitch_55
    aget v0, v0, v6

    .line 639
    .line 640
    and-int/2addr v0, v9

    .line 641
    return v0

    .line 642
    :pswitch_56
    aget v0, v0, v7

    .line 643
    .line 644
    shr-int/2addr v0, v10

    .line 645
    and-int/2addr v0, v8

    .line 646
    return v0

    .line 647
    :pswitch_57
    aget v0, v0, v7

    .line 648
    .line 649
    shr-int/2addr v0, v3

    .line 650
    and-int/2addr v0, v9

    .line 651
    return v0

    .line 652
    :pswitch_58
    aget v0, v0, v7

    .line 653
    .line 654
    shr-int/2addr v0, v6

    .line 655
    and-int/2addr v0, v9

    .line 656
    return v0

    .line 657
    :pswitch_59
    aget v0, v0, v7

    .line 658
    .line 659
    shr-int/2addr v0, v8

    .line 660
    and-int/2addr v0, v9

    .line 661
    return v0

    .line 662
    :pswitch_5a
    aget v0, v0, v7

    .line 663
    .line 664
    shr-int/2addr v0, v7

    .line 665
    and-int/2addr v0, v9

    .line 666
    return v0

    .line 667
    :pswitch_5b
    aget v0, v0, v7

    .line 668
    .line 669
    and-int/2addr v0, v8

    .line 670
    return v0

    .line 671
    :pswitch_5c
    aget v0, v0, v9

    .line 672
    .line 673
    shr-int/2addr v0, v7

    .line 674
    and-int/2addr v0, v9

    .line 675
    return v0

    .line 676
    :pswitch_5d
    aget v0, v0, v9

    .line 677
    .line 678
    shr-int/2addr v0, v9

    .line 679
    and-int/2addr v0, v9

    .line 680
    return v0

    .line 681
    :pswitch_5e
    aget v0, v0, v9

    .line 682
    .line 683
    and-int/2addr v0, v9

    .line 684
    return v0

    .line 685
    :pswitch_5f
    aget v0, v0, v4

    .line 686
    .line 687
    and-int/lit8 v0, v0, 0xf

    .line 688
    .line 689
    return v0

    .line 690
    :pswitch_60
    aget v0, v1, v8

    .line 691
    .line 692
    shr-int/2addr v0, v10

    .line 693
    and-int/2addr v0, v9

    .line 694
    return v0

    .line 695
    :pswitch_61
    aget v0, v1, v21

    .line 696
    .line 697
    and-int/2addr v0, v9

    .line 698
    return v0

    .line 699
    :pswitch_62
    aget v0, v1, v20

    .line 700
    .line 701
    shr-int/2addr v0, v12

    .line 702
    and-int/2addr v0, v9

    .line 703
    return v0

    .line 704
    :pswitch_63
    aget v0, v1, v20

    .line 705
    .line 706
    shr-int/2addr v0, v10

    .line 707
    and-int/2addr v0, v9

    .line 708
    return v0

    .line 709
    :pswitch_64
    aget v0, v1, v20

    .line 710
    .line 711
    shr-int/2addr v0, v6

    .line 712
    and-int/2addr v0, v8

    .line 713
    return v0

    .line 714
    :pswitch_65
    aget v0, v1, v20

    .line 715
    .line 716
    shr-int/2addr v0, v7

    .line 717
    and-int/2addr v0, v8

    .line 718
    return v0

    .line 719
    :pswitch_66
    aget v0, v1, v20

    .line 720
    .line 721
    and-int/2addr v0, v8

    .line 722
    return v0

    .line 723
    :pswitch_67
    aget v0, v1, v13

    .line 724
    .line 725
    shr-int/2addr v0, v12

    .line 726
    and-int/2addr v0, v9

    .line 727
    return v0

    .line 728
    :pswitch_68
    aget v0, v1, v13

    .line 729
    .line 730
    shr-int/2addr v0, v10

    .line 731
    and-int/2addr v0, v9

    .line 732
    return v0

    .line 733
    :pswitch_69
    aget v0, v1, v13

    .line 734
    .line 735
    shr-int/2addr v0, v6

    .line 736
    and-int/2addr v0, v8

    .line 737
    return v0

    .line 738
    :pswitch_6a
    aget v0, v1, v13

    .line 739
    .line 740
    shr-int/2addr v0, v7

    .line 741
    and-int/2addr v0, v8

    .line 742
    return v0

    .line 743
    :pswitch_6b
    aget v0, v1, v13

    .line 744
    .line 745
    and-int/2addr v0, v8

    .line 746
    return v0

    .line 747
    :pswitch_6c
    aget v0, v1, v24

    .line 748
    .line 749
    shr-int/2addr v0, v10

    .line 750
    and-int/2addr v0, v8

    .line 751
    return v0

    .line 752
    :pswitch_6d
    aget v0, v1, v24

    .line 753
    .line 754
    shr-int/2addr v0, v3

    .line 755
    and-int/2addr v0, v9

    .line 756
    return v0

    .line 757
    :pswitch_6e
    aget v0, v1, v24

    .line 758
    .line 759
    shr-int/2addr v0, v6

    .line 760
    and-int/2addr v0, v9

    .line 761
    return v0

    .line 762
    :pswitch_6f
    aget v0, v1, v24

    .line 763
    .line 764
    shr-int/2addr v0, v8

    .line 765
    and-int/2addr v0, v9

    .line 766
    return v0

    .line 767
    :pswitch_70
    aget v0, v1, v24

    .line 768
    .line 769
    shr-int/2addr v0, v9

    .line 770
    and-int/2addr v0, v8

    .line 771
    return v0

    .line 772
    :pswitch_71
    aget v0, v1, v24

    .line 773
    .line 774
    and-int/2addr v0, v9

    .line 775
    return v0

    .line 776
    :pswitch_72
    aget v0, v1, v22

    .line 777
    .line 778
    shr-int/2addr v0, v12

    .line 779
    and-int/2addr v0, v9

    .line 780
    return v0

    .line 781
    :pswitch_73
    aget v0, v1, v22

    .line 782
    .line 783
    shr-int/2addr v0, v3

    .line 784
    and-int/2addr v0, v8

    .line 785
    return v0

    .line 786
    :pswitch_74
    aget v0, v1, v22

    .line 787
    .line 788
    shr-int/2addr v0, v8

    .line 789
    and-int/2addr v0, v8

    .line 790
    return v0

    .line 791
    :pswitch_75
    aget v0, v1, v22

    .line 792
    .line 793
    shr-int/2addr v0, v7

    .line 794
    and-int/2addr v0, v9

    .line 795
    return v0

    .line 796
    :pswitch_76
    aget v0, v1, v22

    .line 797
    .line 798
    shr-int/2addr v0, v9

    .line 799
    and-int/2addr v0, v9

    .line 800
    return v0

    .line 801
    :pswitch_77
    aget v0, v1, v22

    .line 802
    .line 803
    and-int/2addr v0, v9

    .line 804
    return v0

    .line 805
    :pswitch_78
    aget v0, v1, v26

    .line 806
    .line 807
    shr-int/2addr v0, v12

    .line 808
    and-int/2addr v0, v9

    .line 809
    return v0

    .line 810
    :pswitch_79
    aget v0, v1, v26

    .line 811
    .line 812
    shr-int/2addr v0, v10

    .line 813
    and-int/2addr v0, v9

    .line 814
    return v0

    .line 815
    :pswitch_7a
    aget v0, v1, v26

    .line 816
    .line 817
    shr-int/2addr v0, v3

    .line 818
    and-int/2addr v0, v9

    .line 819
    return v0

    .line 820
    :pswitch_7b
    aget v0, v1, v26

    .line 821
    .line 822
    shr-int/2addr v0, v6

    .line 823
    and-int/2addr v0, v9

    .line 824
    return v0

    .line 825
    :pswitch_7c
    aget v0, v1, v26

    .line 826
    .line 827
    shr-int/2addr v0, v8

    .line 828
    and-int/2addr v0, v9

    .line 829
    return v0

    .line 830
    :pswitch_7d
    aget v0, v1, v26

    .line 831
    .line 832
    shr-int/2addr v0, v7

    .line 833
    and-int/2addr v0, v9

    .line 834
    return v0

    .line 835
    :pswitch_7e
    aget v0, v1, v26

    .line 836
    .line 837
    shr-int/2addr v0, v9

    .line 838
    and-int/2addr v0, v9

    .line 839
    return v0

    .line 840
    :pswitch_7f
    aget v0, v1, v26

    .line 841
    .line 842
    and-int/2addr v0, v9

    .line 843
    return v0

    .line 844
    :pswitch_80
    aget v0, v1, v25

    .line 845
    .line 846
    shr-int/2addr v0, v12

    .line 847
    and-int/2addr v0, v9

    .line 848
    return v0

    .line 849
    :pswitch_81
    aget v0, v1, v25

    .line 850
    .line 851
    shr-int/2addr v0, v10

    .line 852
    and-int/2addr v0, v9

    .line 853
    return v0

    .line 854
    :pswitch_82
    aget v0, v1, v25

    .line 855
    .line 856
    shr-int/2addr v0, v3

    .line 857
    and-int/2addr v0, v9

    .line 858
    return v0

    .line 859
    :pswitch_83
    aget v0, v1, v25

    .line 860
    .line 861
    shr-int/2addr v0, v6

    .line 862
    and-int/2addr v0, v9

    .line 863
    return v0

    .line 864
    :pswitch_84
    aget v0, v1, v25

    .line 865
    .line 866
    shr-int/2addr v0, v8

    .line 867
    and-int/2addr v0, v9

    .line 868
    return v0

    .line 869
    :pswitch_85
    aget v0, v1, v25

    .line 870
    .line 871
    shr-int/2addr v0, v7

    .line 872
    and-int/2addr v0, v9

    .line 873
    return v0

    .line 874
    :pswitch_86
    aget v0, v1, v25

    .line 875
    .line 876
    shr-int/2addr v0, v9

    .line 877
    and-int/2addr v0, v9

    .line 878
    return v0

    .line 879
    :pswitch_87
    aget v0, v1, v25

    .line 880
    .line 881
    and-int/2addr v0, v9

    .line 882
    return v0

    .line 883
    :pswitch_88
    aget v0, v1, v23

    .line 884
    .line 885
    shr-int/2addr v0, v10

    .line 886
    and-int/2addr v0, v8

    .line 887
    return v0

    .line 888
    :pswitch_89
    aget v0, v1, v23

    .line 889
    .line 890
    shr-int/2addr v0, v3

    .line 891
    and-int/2addr v0, v9

    .line 892
    return v0

    .line 893
    :pswitch_8a
    aget v0, v1, v23

    .line 894
    .line 895
    shr-int/2addr v0, v6

    .line 896
    and-int/2addr v0, v9

    .line 897
    return v0

    .line 898
    :pswitch_8b
    aget v0, v1, v23

    .line 899
    .line 900
    shr-int/2addr v0, v8

    .line 901
    and-int/2addr v0, v9

    .line 902
    return v0

    .line 903
    :pswitch_8c
    aget v0, v1, v23

    .line 904
    .line 905
    shr-int/2addr v0, v7

    .line 906
    and-int/2addr v0, v9

    .line 907
    return v0

    .line 908
    :pswitch_8d
    aget v0, v1, v23

    .line 909
    .line 910
    shr-int/2addr v0, v9

    .line 911
    and-int/2addr v0, v9

    .line 912
    return v0

    .line 913
    :pswitch_8e
    aget v0, v1, v23

    .line 914
    .line 915
    and-int/2addr v0, v9

    .line 916
    return v0

    .line 917
    :pswitch_8f
    aget v0, v1, v11

    .line 918
    .line 919
    shr-int/2addr v0, v12

    .line 920
    and-int/2addr v0, v9

    .line 921
    return v0

    .line 922
    :pswitch_90
    aget v0, v1, v11

    .line 923
    .line 924
    shr-int/2addr v0, v3

    .line 925
    and-int/2addr v0, v9

    .line 926
    return v0

    .line 927
    :pswitch_91
    aget v0, v1, v11

    .line 928
    .line 929
    shr-int/2addr v0, v6

    .line 930
    and-int/2addr v0, v9

    .line 931
    return v0

    .line 932
    :pswitch_92
    aget v0, v1, v11

    .line 933
    .line 934
    shr-int/2addr v0, v8

    .line 935
    and-int/2addr v0, v9

    .line 936
    return v0

    .line 937
    :pswitch_93
    aget v0, v1, v11

    .line 938
    .line 939
    shr-int/2addr v0, v7

    .line 940
    and-int/2addr v0, v9

    .line 941
    return v0

    .line 942
    :pswitch_94
    aget v0, v1, v11

    .line 943
    .line 944
    shr-int/2addr v0, v9

    .line 945
    and-int/2addr v0, v9

    .line 946
    return v0

    .line 947
    :pswitch_95
    aget v0, v1, v11

    .line 948
    .line 949
    and-int/2addr v0, v9

    .line 950
    return v0

    .line 951
    :pswitch_96
    aget v0, v1, v13

    .line 952
    .line 953
    shr-int/2addr v0, v12

    .line 954
    and-int/2addr v0, v9

    .line 955
    return v0

    .line 956
    :pswitch_97
    aget v0, v1, v13

    .line 957
    .line 958
    shr-int/2addr v0, v10

    .line 959
    and-int/2addr v0, v9

    .line 960
    return v0

    .line 961
    :pswitch_98
    aget v0, v1, v13

    .line 962
    .line 963
    shr-int/2addr v0, v3

    .line 964
    and-int/2addr v0, v9

    .line 965
    return v0

    .line 966
    :pswitch_99
    aget v0, v1, v13

    .line 967
    .line 968
    shr-int/2addr v0, v6

    .line 969
    and-int/2addr v0, v9

    .line 970
    return v0

    .line 971
    :pswitch_9a
    aget v0, v1, v13

    .line 972
    .line 973
    shr-int/2addr v0, v8

    .line 974
    and-int/2addr v0, v9

    .line 975
    return v0

    .line 976
    :pswitch_9b
    aget v0, v1, v13

    .line 977
    .line 978
    shr-int/2addr v0, v7

    .line 979
    and-int/2addr v0, v9

    .line 980
    return v0

    .line 981
    :pswitch_9c
    aget v0, v1, v13

    .line 982
    .line 983
    shr-int/2addr v0, v9

    .line 984
    and-int/2addr v0, v9

    .line 985
    return v0

    .line 986
    :pswitch_9d
    aget v0, v1, v13

    .line 987
    .line 988
    and-int/2addr v0, v9

    .line 989
    return v0

    .line 990
    :pswitch_9e
    aget v0, v1, v15

    .line 991
    .line 992
    shr-int/2addr v0, v12

    .line 993
    and-int/2addr v0, v9

    .line 994
    return v0

    .line 995
    :pswitch_9f
    aget v0, v1, v15

    .line 996
    .line 997
    shr-int/2addr v0, v10

    .line 998
    and-int/2addr v0, v9

    .line 999
    return v0

    .line 1000
    :pswitch_a0
    aget v0, v1, v15

    .line 1001
    .line 1002
    shr-int/2addr v0, v3

    .line 1003
    and-int/2addr v0, v9

    .line 1004
    return v0

    .line 1005
    :pswitch_a1
    aget v0, v1, v15

    .line 1006
    .line 1007
    shr-int/2addr v0, v6

    .line 1008
    and-int/2addr v0, v9

    .line 1009
    return v0

    .line 1010
    :pswitch_a2
    aget v0, v1, v15

    .line 1011
    .line 1012
    shr-int/2addr v0, v8

    .line 1013
    and-int/2addr v0, v9

    .line 1014
    return v0

    .line 1015
    :pswitch_a3
    aget v0, v1, v15

    .line 1016
    .line 1017
    shr-int/2addr v0, v7

    .line 1018
    and-int/2addr v0, v9

    .line 1019
    return v0

    .line 1020
    :pswitch_a4
    aget v0, v1, v15

    .line 1021
    .line 1022
    shr-int/2addr v0, v9

    .line 1023
    and-int/2addr v0, v9

    .line 1024
    return v0

    .line 1025
    :pswitch_a5
    aget v0, v1, v15

    .line 1026
    .line 1027
    and-int/2addr v0, v9

    .line 1028
    return v0

    .line 1029
    :pswitch_a6
    const/16 v0, 0x11

    .line 1030
    .line 1031
    aget v0, v1, v0

    .line 1032
    .line 1033
    shr-int/2addr v0, v12

    .line 1034
    and-int/2addr v0, v9

    .line 1035
    return v0

    .line 1036
    :pswitch_a7
    const/16 v0, 0x11

    .line 1037
    .line 1038
    aget v0, v1, v0

    .line 1039
    .line 1040
    shr-int/2addr v0, v10

    .line 1041
    and-int/2addr v0, v9

    .line 1042
    return v0

    .line 1043
    :pswitch_a8
    const/16 v0, 0x11

    .line 1044
    .line 1045
    aget v0, v1, v0

    .line 1046
    .line 1047
    shr-int/2addr v0, v6

    .line 1048
    and-int/2addr v0, v9

    .line 1049
    return v0

    .line 1050
    :pswitch_a9
    const/16 v0, 0x11

    .line 1051
    .line 1052
    aget v0, v1, v0

    .line 1053
    .line 1054
    shr-int/2addr v0, v8

    .line 1055
    and-int/2addr v0, v9

    .line 1056
    return v0

    .line 1057
    :pswitch_aa
    const/16 v0, 0x11

    .line 1058
    .line 1059
    aget v0, v1, v0

    .line 1060
    .line 1061
    shr-int/2addr v0, v7

    .line 1062
    and-int/2addr v0, v9

    .line 1063
    return v0

    .line 1064
    :pswitch_ab
    aget v0, v1, v11

    .line 1065
    .line 1066
    shr-int/2addr v0, v10

    .line 1067
    and-int/2addr v0, v9

    .line 1068
    return v0

    .line 1069
    :pswitch_ac
    aget v0, v1, v11

    .line 1070
    .line 1071
    shr-int/2addr v0, v3

    .line 1072
    and-int/2addr v0, v9

    .line 1073
    return v0

    .line 1074
    :pswitch_ad
    aget v0, v1, v11

    .line 1075
    .line 1076
    shr-int/2addr v0, v6

    .line 1077
    and-int/2addr v0, v9

    .line 1078
    return v0

    .line 1079
    :pswitch_ae
    aget v0, v1, v11

    .line 1080
    .line 1081
    shr-int/2addr v0, v8

    .line 1082
    and-int/2addr v0, v9

    .line 1083
    return v0

    .line 1084
    :pswitch_af
    aget v0, v1, v11

    .line 1085
    .line 1086
    shr-int/2addr v0, v7

    .line 1087
    and-int/2addr v0, v9

    .line 1088
    return v0

    .line 1089
    :pswitch_b0
    aget v0, v1, v11

    .line 1090
    .line 1091
    and-int/2addr v0, v8

    .line 1092
    return v0

    .line 1093
    :pswitch_b1
    aget v0, v1, v18

    .line 1094
    .line 1095
    shr-int/2addr v0, v12

    .line 1096
    and-int/2addr v0, v9

    .line 1097
    return v0

    .line 1098
    :pswitch_b2
    aget v0, v1, v18

    .line 1099
    .line 1100
    shr-int/2addr v0, v10

    .line 1101
    and-int/2addr v0, v9

    .line 1102
    return v0

    .line 1103
    :pswitch_b3
    aget v0, v1, v18

    .line 1104
    .line 1105
    shr-int/2addr v0, v3

    .line 1106
    and-int/2addr v0, v9

    .line 1107
    return v0

    .line 1108
    :pswitch_b4
    aget v0, v1, v18

    .line 1109
    .line 1110
    shr-int/2addr v0, v6

    .line 1111
    and-int/2addr v0, v9

    .line 1112
    return v0

    .line 1113
    :pswitch_b5
    aget v0, v1, v18

    .line 1114
    .line 1115
    shr-int/2addr v0, v8

    .line 1116
    and-int/2addr v0, v9

    .line 1117
    return v0

    .line 1118
    :pswitch_b6
    aget v0, v1, v18

    .line 1119
    .line 1120
    shr-int/2addr v0, v7

    .line 1121
    and-int/2addr v0, v9

    .line 1122
    return v0

    .line 1123
    :cond_b
    aget v0, v1, v18

    .line 1124
    .line 1125
    and-int/2addr v0, v9

    .line 1126
    return v0

    .line 1127
    :cond_c
    aget v0, v1, v13

    .line 1128
    .line 1129
    shr-int/2addr v0, v12

    .line 1130
    and-int/2addr v0, v9

    .line 1131
    return v0

    .line 1132
    :pswitch_b7
    const/16 v0, 0x11

    .line 1133
    .line 1134
    aget v0, v1, v0

    .line 1135
    .line 1136
    shr-int/2addr v0, v3

    .line 1137
    and-int/2addr v0, v9

    .line 1138
    return v0

    .line 1139
    :pswitch_b8
    aget v0, v1, v13

    .line 1140
    .line 1141
    shr-int/2addr v0, v6

    .line 1142
    and-int/2addr v0, v9

    .line 1143
    return v0

    .line 1144
    :pswitch_b9
    aget v0, v1, v13

    .line 1145
    .line 1146
    shr-int/2addr v0, v7

    .line 1147
    and-int/2addr v0, v8

    .line 1148
    return v0

    .line 1149
    :pswitch_ba
    aget v0, v1, v13

    .line 1150
    .line 1151
    and-int/2addr v0, v8

    .line 1152
    return v0

    .line 1153
    :pswitch_bb
    aget v0, v1, v17

    .line 1154
    .line 1155
    shr-int/2addr v0, v10

    .line 1156
    and-int/2addr v0, v8

    .line 1157
    return v0

    .line 1158
    :pswitch_bc
    aget v0, v1, v17

    .line 1159
    .line 1160
    shr-int/2addr v0, v6

    .line 1161
    and-int/2addr v0, v8

    .line 1162
    return v0

    .line 1163
    :pswitch_bd
    aget v0, v1, v14

    .line 1164
    .line 1165
    shr-int/2addr v0, v10

    .line 1166
    and-int/2addr v0, v9

    .line 1167
    return v0

    .line 1168
    :pswitch_be
    aget v0, v1, v14

    .line 1169
    .line 1170
    shr-int/2addr v0, v8

    .line 1171
    and-int/2addr v0, v12

    .line 1172
    return v0

    .line 1173
    :pswitch_bf
    aget v0, v1, v14

    .line 1174
    .line 1175
    and-int/2addr v0, v12

    .line 1176
    return v0

    .line 1177
    :pswitch_c0
    aget v0, v1, v16

    .line 1178
    .line 1179
    and-int/2addr v0, v9

    .line 1180
    return v0

    .line 1181
    :pswitch_c1
    aget v0, v1, v11

    .line 1182
    .line 1183
    shr-int/2addr v0, v12

    .line 1184
    and-int/2addr v0, v9

    .line 1185
    return v0

    .line 1186
    :pswitch_c2
    aget v0, v1, v11

    .line 1187
    .line 1188
    shr-int/2addr v0, v10

    .line 1189
    and-int/2addr v0, v9

    .line 1190
    return v0

    .line 1191
    :pswitch_c3
    aget v0, v1, v11

    .line 1192
    .line 1193
    shr-int/2addr v0, v3

    .line 1194
    and-int/2addr v0, v9

    .line 1195
    return v0

    .line 1196
    :pswitch_c4
    aget v0, v1, v11

    .line 1197
    .line 1198
    shr-int/2addr v0, v6

    .line 1199
    and-int/2addr v0, v9

    .line 1200
    return v0

    .line 1201
    :pswitch_c5
    aget v0, v1, v11

    .line 1202
    .line 1203
    shr-int/2addr v0, v8

    .line 1204
    and-int/2addr v0, v9

    .line 1205
    return v0

    .line 1206
    :pswitch_c6
    aget v0, v1, v11

    .line 1207
    .line 1208
    shr-int/2addr v0, v7

    .line 1209
    and-int/2addr v0, v9

    .line 1210
    return v0

    .line 1211
    :pswitch_c7
    aget v0, v1, v11

    .line 1212
    .line 1213
    shr-int/2addr v0, v9

    .line 1214
    and-int/2addr v0, v9

    .line 1215
    return v0

    .line 1216
    :pswitch_c8
    aget v0, v1, v11

    .line 1217
    .line 1218
    and-int/2addr v0, v9

    .line 1219
    return v0

    .line 1220
    :pswitch_c9
    aget v0, v1, v5

    .line 1221
    .line 1222
    shr-int/2addr v0, v7

    .line 1223
    and-int/2addr v0, v9

    .line 1224
    return v0

    .line 1225
    :pswitch_ca
    aget v0, v1, v5

    .line 1226
    .line 1227
    shr-int/2addr v0, v9

    .line 1228
    and-int/2addr v0, v9

    .line 1229
    return v0

    .line 1230
    :pswitch_cb
    aget v0, v1, v5

    .line 1231
    .line 1232
    and-int/2addr v0, v9

    .line 1233
    return v0

    .line 1234
    :pswitch_cc
    aget v0, v1, v19

    .line 1235
    .line 1236
    shr-int/2addr v0, v12

    .line 1237
    and-int/2addr v0, v9

    .line 1238
    return v0

    .line 1239
    :pswitch_cd
    aget v0, v1, v19

    .line 1240
    .line 1241
    shr-int/2addr v0, v10

    .line 1242
    and-int/2addr v0, v9

    .line 1243
    return v0

    .line 1244
    :pswitch_ce
    aget v0, v1, v19

    .line 1245
    .line 1246
    shr-int/2addr v0, v3

    .line 1247
    and-int/2addr v0, v9

    .line 1248
    return v0

    .line 1249
    :pswitch_cf
    aget v0, v1, v19

    .line 1250
    .line 1251
    shr-int/2addr v0, v6

    .line 1252
    and-int/2addr v0, v9

    .line 1253
    return v0

    .line 1254
    :pswitch_d0
    aget v0, v1, v19

    .line 1255
    .line 1256
    and-int/2addr v0, v9

    .line 1257
    return v0

    .line 1258
    :pswitch_d1
    aget v0, v1, v12

    .line 1259
    .line 1260
    shr-int/2addr v0, v12

    .line 1261
    and-int/2addr v0, v9

    .line 1262
    return v0

    .line 1263
    :pswitch_d2
    aget v0, v1, v12

    .line 1264
    .line 1265
    shr-int/2addr v0, v6

    .line 1266
    and-int/2addr v0, v12

    .line 1267
    return v0

    .line 1268
    :pswitch_d3
    aget v0, v1, v12

    .line 1269
    .line 1270
    and-int/lit8 v0, v0, 0xf

    .line 1271
    .line 1272
    return v0

    .line 1273
    :pswitch_d4
    aget v0, v1, v8

    .line 1274
    .line 1275
    shr-int/2addr v0, v3

    .line 1276
    and-int/2addr v0, v9

    .line 1277
    return v0

    .line 1278
    :pswitch_d5
    aget v0, v1, v8

    .line 1279
    .line 1280
    shr-int/2addr v0, v8

    .line 1281
    and-int/2addr v0, v9

    .line 1282
    return v0

    .line 1283
    :pswitch_d6
    aget v0, v1, v8

    .line 1284
    .line 1285
    shr-int/2addr v0, v7

    .line 1286
    and-int/2addr v0, v9

    .line 1287
    return v0

    .line 1288
    :pswitch_d7
    aget v0, v1, v8

    .line 1289
    .line 1290
    shr-int/2addr v0, v9

    .line 1291
    and-int/2addr v0, v9

    .line 1292
    return v0

    .line 1293
    :pswitch_d8
    aget v0, v1, v8

    .line 1294
    .line 1295
    and-int/2addr v0, v9

    .line 1296
    return v0

    .line 1297
    :cond_d
    aget v0, v1, v7

    .line 1298
    .line 1299
    shr-int/2addr v0, v12

    .line 1300
    and-int/2addr v0, v9

    .line 1301
    return v0

    .line 1302
    :cond_e
    aget v0, v1, v7

    .line 1303
    .line 1304
    shr-int/2addr v0, v10

    .line 1305
    and-int/2addr v0, v9

    .line 1306
    return v0

    .line 1307
    :pswitch_d9
    aget v0, v1, v7

    .line 1308
    .line 1309
    shr-int/2addr v0, v3

    .line 1310
    and-int/2addr v0, v9

    .line 1311
    return v0

    .line 1312
    :pswitch_da
    aget v0, v1, v7

    .line 1313
    .line 1314
    shr-int/2addr v0, v6

    .line 1315
    and-int/2addr v0, v9

    .line 1316
    return v0

    .line 1317
    :pswitch_db
    aget v0, v1, v7

    .line 1318
    .line 1319
    shr-int/2addr v0, v8

    .line 1320
    and-int/2addr v0, v9

    .line 1321
    return v0

    .line 1322
    :pswitch_dc
    aget v0, v1, v7

    .line 1323
    .line 1324
    shr-int/2addr v0, v7

    .line 1325
    and-int/2addr v0, v9

    .line 1326
    return v0

    .line 1327
    :pswitch_dd
    aget v0, v1, v7

    .line 1328
    .line 1329
    shr-int/2addr v0, v9

    .line 1330
    and-int/2addr v0, v9

    .line 1331
    return v0

    .line 1332
    :pswitch_de
    aget v0, v1, v7

    .line 1333
    .line 1334
    and-int/2addr v0, v9

    .line 1335
    return v0

    .line 1336
    :pswitch_df
    aget v0, v1, v9

    .line 1337
    .line 1338
    return v0

    .line 1339
    :pswitch_e0
    aget v0, v1, v4

    .line 1340
    .line 1341
    and-int/2addr v0, v8

    .line 1342
    return v0

    .line 1343
    :cond_f
    :goto_0
    return v4

    .line 1344
    nop

    .line 1345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
    .end packed-switch

    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
    .end packed-switch

    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
    .end packed-switch

    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    :pswitch_data_3
    .packed-switch 0x3c
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
    .end packed-switch

    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    :pswitch_data_4
    .packed-switch 0x4a
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
    .end packed-switch

    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    :pswitch_data_5
    .packed-switch 0x4e
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
    .end packed-switch

    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    :pswitch_data_6
    .packed-switch 0x67
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
    .end packed-switch

    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    :pswitch_data_7
    .packed-switch 0xc8
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
    .end packed-switch

    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    :pswitch_data_8
    .packed-switch 0x2720
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    :pswitch_data_9
    .packed-switch 0x2730
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    :pswitch_data_a
    .packed-switch 0x2740
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch

    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    :pswitch_data_b
    .packed-switch 0x2753
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch

    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    :pswitch_data_c
    .packed-switch 0x2758
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    :pswitch_data_d
    .packed-switch 0x276c
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    :pswitch_data_e
    .packed-switch 0x2777
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
    .end packed-switch

    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    :pswitch_data_f
    .packed-switch 0x34bc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static H0(Landroid/content/ContextWrapper;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    const/high16 v1, 0x10200000

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v1, p0, v0}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    return-void
.end method

.method public static I(Lba/r;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lba/r;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "/s/"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lba/r;->f:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "?folderId="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lba/r;->m:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v1, Ll9/a;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Ll9/a;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v1, Lm9/e;->i:Lk9/a;

    .line 46
    .line 47
    const-string v2, "User-Agent"

    .line 48
    .line 49
    const-string v3, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76"

    .line 50
    .line 51
    invoke-virtual {v0, v2, v3}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lba/r;->c:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v2, v1, Lm9/e;->i:Lk9/a;

    .line 57
    .line 58
    const-string v3, "Referer"

    .line 59
    .line 60
    invoke-virtual {v2, v3, v0}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v0, p0, Lba/r;->e:Z

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    const-string v2, "cookie"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const-string v2, "connection"

    .line 71
    .line 72
    :goto_0
    if-eqz v0, :cond_1

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v3, "share_passed_"

    .line 77
    .line 78
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lba/r;->f:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v3, "="

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lba/r;->d:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    const-string p0, "keep-alive"

    .line 102
    .line 103
    :goto_1
    iget-object v0, v1, Lm9/e;->i:Lk9/a;

    .line 104
    .line 105
    invoke-virtual {v0, v2, p0}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p0, v1, Lm9/e;->i:Lk9/a;

    .line 109
    .line 110
    const-string v0, "Upgrade-Insecure-Requests"

    .line 111
    .line 112
    const-string v2, "1"

    .line 113
    .line 114
    invoke-virtual {p0, v0, v2}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lm9/e;->a()Lokhttp3/Response;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    const-string v1, "\u8bf7\u6c42\u5931\u8d25"

    .line 126
    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    if-eqz p0, :cond_3

    .line 134
    .line 135
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    const-string v0, "passwordSection"

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_2

    .line 146
    .line 147
    invoke-static {p0}, Lif/a;->V(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    return-object p0

    .line 152
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    .line 153
    .line 154
    const-string v0, "\u5bc6\u7801\u9519\u8bef"

    .line 155
    .line 156
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0

    .line 160
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    .line 161
    .line 162
    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0

    .line 166
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    .line 167
    .line 168
    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p0
.end method

.method public static I0(Lcom/yunpan/appmanage/service/AccService;Z)V
    .locals 13

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    const-string v1, "display"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 16
    .line 17
    const-wide/16 v2, 0x1a0a

    .line 18
    .line 19
    const-string v4, "com.android.systemui"

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    if-eqz v1, :cond_b

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    array-length v1, v1

    .line 30
    const/4 v7, 0x2

    .line 31
    if-ge v1, v7, :cond_0

    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    .line 36
    .line 37
    const-string v8, "dumpsys window displays"

    .line 38
    .line 39
    aput-object v8, v1, v6

    .line 40
    .line 41
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroidx/room/s;->k()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v8, ""

    .line 58
    .line 59
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-eqz v9, :cond_1

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    check-cast v9, Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v8}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const-string v1, "Display: mDisplayId="

    .line 88
    .line 89
    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    array-length v8, v1

    .line 94
    const/4 v9, 0x0

    .line 95
    :goto_1
    if-ge v9, v8, :cond_11

    .line 96
    .line 97
    aget-object v10, v1, v9

    .line 98
    .line 99
    const/16 v11, 0x30

    .line 100
    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    if-eq v12, v11, :cond_3

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    if-ne v12, v11, :cond_3

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    const-string v11, " ActivityRecord{"

    .line 118
    .line 119
    const-string v12, "}"

    .line 120
    .line 121
    invoke-static {v10, v11, v12}, Lif/a;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    if-eqz v11, :cond_4

    .line 130
    .line 131
    :goto_2
    add-int/2addr v9, v5

    .line 132
    goto :goto_1

    .line 133
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    sub-int/2addr p1, v5

    .line 138
    :goto_3
    if-ltz p1, :cond_11

    .line 139
    .line 140
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const-string v8, " "

    .line 151
    .line 152
    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    array-length v8, v1

    .line 157
    const/4 v9, 0x4

    .line 158
    if-eq v8, v9, :cond_5

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_5
    aget-object v8, v1, v7

    .line 162
    .line 163
    const-string v9, "/"

    .line 164
    .line 165
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    if-eqz v8, :cond_a

    .line 170
    .line 171
    const/4 v8, 0x3

    .line 172
    aget-object v11, v1, v8

    .line 173
    .line 174
    const-string v12, "t"

    .line 175
    .line 176
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    if-nez v11, :cond_6

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_6
    aget-object v11, v1, v7

    .line 184
    .line 185
    invoke-virtual {v11, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    invoke-virtual {v11, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    if-eqz v11, :cond_7

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_7
    aget-object p1, v1, v8

    .line 201
    .line 202
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 211
    .line 212
    .line 213
    move-result-wide v7

    .line 214
    iget-wide v10, p0, Lcom/yunpan/appmanage/service/AccService;->H:J

    .line 215
    .line 216
    sub-long/2addr v7, v10

    .line 217
    cmp-long v1, v7, v2

    .line 218
    .line 219
    if-lez v1, :cond_8

    .line 220
    .line 221
    invoke-virtual {v0, p1, v6}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_8

    .line 225
    .line 226
    :cond_8
    invoke-static {v9}, Lif/a;->M(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    if-eqz v1, :cond_9

    .line 231
    .line 232
    invoke-static {v5, p0, v1}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_8

    .line 236
    .line 237
    :cond_9
    invoke-virtual {v0, p1, v6}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 238
    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_a
    :goto_4
    add-int/lit8 p1, p1, -0x1

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_b
    :goto_5
    const/16 p1, 0x64

    .line 245
    .line 246
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    :goto_6
    if-lez v1, :cond_11

    .line 255
    .line 256
    add-int/lit8 v7, v1, -0x1

    .line 257
    .line 258
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 263
    .line 264
    invoke-static {v8}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    if-nez v8, :cond_c

    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_c
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 276
    .line 277
    invoke-static {v8}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v9

    .line 289
    if-eqz v9, :cond_d

    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_d
    const-string v9, "."

    .line 293
    .line 294
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    if-nez v9, :cond_e

    .line 299
    .line 300
    :goto_7
    add-int/lit8 v1, v1, -0x1

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 304
    .line 305
    .line 306
    move-result-wide v9

    .line 307
    iget-wide v11, p0, Lcom/yunpan/appmanage/service/AccService;->H:J

    .line 308
    .line 309
    sub-long/2addr v9, v11

    .line 310
    cmp-long v1, v9, v2

    .line 311
    .line 312
    if-lez v1, :cond_f

    .line 313
    .line 314
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 319
    .line 320
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 321
    .line 322
    invoke-virtual {v0, p0, v6}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 323
    .line 324
    .line 325
    goto :goto_8

    .line 326
    :cond_f
    invoke-static {v8}, Lif/a;->M(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    if-eqz v1, :cond_10

    .line 331
    .line 332
    invoke-static {v5, p0, v1}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 333
    .line 334
    .line 335
    goto :goto_8

    .line 336
    :cond_10
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 341
    .line 342
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 343
    .line 344
    invoke-virtual {v0, p0, v6}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 345
    .line 346
    .line 347
    :cond_11
    :goto_8
    return-void
.end method

.method public static J(Lba/r;Lba/l;)Lokhttp3/ResponseBody;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lba/r;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "/api/share/download?token="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lba/r;->f:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "&fileId="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Lba/l;->c:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "&hostId=1"

    .line 29
    .line 30
    invoke-static {p1, v1, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v0, Ll9/a;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Ll9/a;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v0, Lm9/e;->i:Lk9/a;

    .line 45
    .line 46
    const-string v1, "User-Agent"

    .line 47
    .line 48
    const-string v2, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76"

    .line 49
    .line 50
    invoke-virtual {p1, v1, v2}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lba/r;->c:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v1, v0, Lm9/e;->i:Lk9/a;

    .line 56
    .line 57
    const-string v2, "Referer"

    .line 58
    .line 59
    invoke-virtual {v1, v2, p1}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-boolean p1, p0, Lba/r;->e:Z

    .line 63
    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    const-string v1, "cookie"

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const-string v1, "connection"

    .line 70
    .line 71
    :goto_0
    if-eqz p1, :cond_1

    .line 72
    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "share_passed_"

    .line 76
    .line 77
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lba/r;->f:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, "="

    .line 86
    .line 87
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lba/r;->d:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    const-string p0, "keep-alive"

    .line 101
    .line 102
    :goto_1
    iget-object p1, v0, Lm9/e;->i:Lk9/a;

    .line 103
    .line 104
    invoke-virtual {p1, v1, p0}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lm9/e;->a()Lokhttp3/Response;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    const-string v0, "\u8bf7\u6c42\u5931\u8d25"

    .line 116
    .line 117
    if-eqz p1, :cond_3

    .line 118
    .line 119
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    if-eqz p0, :cond_2

    .line 124
    .line 125
    return-object p0

    .line 126
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    .line 127
    .line 128
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    .line 133
    .line 134
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0
.end method

.method public static J0(Lcom/yunpan/appmanage/service/AccService;Ljava/lang/String;)V
    .locals 12

    .line 1
    :try_start_0
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    invoke-static {}, Ls1/g;->e()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    sub-int/2addr v2, v3

    .line 19
    const/4 v4, -0x1

    .line 20
    :goto_0
    if-ltz v2, :cond_3

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Lcom/yunpan/appmanage/bean/AmStackListBean;

    .line 27
    .line 28
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/AmStackListBean;->packageName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/yunpan/appmanage/bean/AmStackListBean;

    .line 41
    .line 42
    iget v4, v4, Lcom/yunpan/appmanage/bean/AmStackListBean;->taskId:I

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Lcom/yunpan/appmanage/bean/AmStackListBean;

    .line 56
    .line 57
    iget v5, v5, Lcom/yunpan/appmanage/bean/AmStackListBean;->displayId:I

    .line 58
    .line 59
    if-nez v5, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Lcom/yunpan/appmanage/bean/AmStackListBean;

    .line 66
    .line 67
    iget v5, v5, Lcom/yunpan/appmanage/bean/AmStackListBean;->userId:I

    .line 68
    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Lcom/yunpan/appmanage/bean/AmStackListBean;

    .line 81
    .line 82
    iget-object v6, v6, Lcom/yunpan/appmanage/bean/AmStackListBean;->packageName:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    new-instance p1, La2/m;

    .line 91
    .line 92
    const/4 v2, 0x6

    .line 93
    invoke-direct {p1, v2}, La2/m;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    const-wide/16 v5, 0x1a0a

    .line 108
    .line 109
    const/4 v7, 0x0

    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Lcom/yunpan/appmanage/bean/AmStackListBean;

    .line 117
    .line 118
    iget v8, v2, Lcom/yunpan/appmanage/bean/AmStackListBean;->taskId:I

    .line 119
    .line 120
    if-le v8, v4, :cond_4

    .line 121
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v8

    .line 126
    iget-wide v10, p0, Lcom/yunpan/appmanage/service/AccService;->H:J

    .line 127
    .line 128
    sub-long/2addr v8, v10

    .line 129
    cmp-long v10, v8, v5

    .line 130
    .line 131
    if-lez v10, :cond_5

    .line 132
    .line 133
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iget p0, v2, Lcom/yunpan/appmanage/bean/AmStackListBean;->taskId:I

    .line 139
    .line 140
    invoke-virtual {v0, p0, v7}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_5
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/AmStackListBean;->packageName:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v2}, Lif/a;->M(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    if-eqz v2, :cond_4

    .line 151
    .line 152
    invoke-static {v3, p0, v2}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 157
    .line 158
    .line 159
    move-result-wide v8

    .line 160
    iget-wide v10, p0, Lcom/yunpan/appmanage/service/AccService;->H:J

    .line 161
    .line 162
    sub-long/2addr v8, v10

    .line 163
    cmp-long p1, v8, v5

    .line 164
    .line 165
    if-lez p1, :cond_7

    .line 166
    .line 167
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 168
    .line 169
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Lcom/yunpan/appmanage/bean/AmStackListBean;

    .line 174
    .line 175
    iget p1, p1, Lcom/yunpan/appmanage/bean/AmStackListBean;->taskId:I

    .line 176
    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    check-cast p0, Lcom/yunpan/appmanage/bean/AmStackListBean;

    .line 185
    .line 186
    iget p0, p0, Lcom/yunpan/appmanage/bean/AmStackListBean;->taskId:I

    .line 187
    .line 188
    invoke-virtual {v0, p0, v7}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_7
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Lcom/yunpan/appmanage/bean/AmStackListBean;

    .line 197
    .line 198
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/AmStackListBean;->packageName:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {p1}, Lif/a;->M(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    if-eqz p1, :cond_8

    .line 205
    .line 206
    invoke-static {v3, p0, p1}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_8
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    check-cast p0, Lcom/yunpan/appmanage/bean/AmStackListBean;

    .line 215
    .line 216
    iget p0, p0, Lcom/yunpan/appmanage/bean/AmStackListBean;->taskId:I

    .line 217
    .line 218
    invoke-virtual {v0, p0, v7}, Landroid/app/ActivityManager;->moveTaskToFront(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    .line 224
    .line 225
    :goto_3
    return-void
.end method

.method public static K(Lx9/n5;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lif/a;->S(Lx9/n5;)La9/f0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, La9/f0;->b()V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    throw p0
.end method

.method public static K0(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    instance-of v0, p0, Ljava/lang/LinkageError;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    check-cast p0, Ljava/lang/LinkageError;

    .line 15
    .line 16
    throw p0

    .line 17
    :cond_1
    check-cast p0, Ljava/lang/ThreadDeath;

    .line 18
    .line 19
    throw p0

    .line 20
    :cond_2
    check-cast p0, Ljava/lang/VirtualMachineError;

    .line 21
    .line 22
    throw p0
.end method

.method public static L(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    invoke-static {v0, p0}, Lg7/d;->g(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v2

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    if-nez v0, :cond_2

    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_2
    const/high16 p0, 0x10000000

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public static L0(Ljava/lang/String;)J
    .locals 2

    .line 1
    const/16 v0, 0x3a

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne v1, v0, :cond_0

    .line 12
    .line 13
    const-string v0, ":00"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-wide v0

    .line 35
    :catch_0
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    return-wide v0
.end method

.method public static M(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    invoke-static {v0, p0}, Lg7/d;->g(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v2

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    if-nez v0, :cond_2

    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_2
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const/high16 p0, 0x10200000

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public static M0(Lokhttp3/Response;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Error contacting "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lr9/b;

    .line 31
    .line 32
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v1, v0, v2, p0}, Lr9/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1
.end method

.method public static N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, ""

    .line 3
    .line 4
    if-eqz p3, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    add-int/2addr p1, p3

    .line 25
    if-le p1, p2, :cond_2

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-ne p3, v0, :cond_4

    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    add-int/2addr p1, p3

    .line 45
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-ne p2, v0, :cond_5

    .line 50
    .line 51
    return-object v1

    .line 52
    :cond_5
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public static O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, -0x1

    .line 19
    if-ne v3, v4, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    add-int/2addr v3, v1

    .line 23
    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-ne v5, v4, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_4

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/2addr v5, v2

    .line 47
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    :goto_1
    return-object v0
.end method

.method public static P(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p0, "]("

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, ")"

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static R(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "window"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/view/WindowManager;

    .line 13
    .line 14
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v4, 0x1e

    .line 21
    .line 22
    if-lt v3, v4, :cond_0

    .line 23
    .line 24
    invoke-static {v1}, Landroidx/media3/exoplayer/video/b0;->m(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Landroidx/media3/exoplayer/video/b0;->h(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 49
    .line 50
    const/16 v2, 0x64

    .line 51
    .line 52
    if-lt v1, v2, :cond_1

    .line 53
    .line 54
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 55
    .line 56
    if-ge v1, v2, :cond_2

    .line 57
    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 67
    .line 68
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 69
    .line 70
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 71
    .line 72
    iput p0, v0, Landroid/graphics/Point;->y:I

    .line 73
    .line 74
    :cond_2
    return-object v0
.end method

.method public static S(Lx9/n5;)La9/f0;
    .locals 5

    .line 1
    new-instance v0, La9/l;

    .line 2
    .line 3
    invoke-direct {v0}, La9/l;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lx9/n5;->e:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p0, Lx9/n5;->c:Ljava/lang/String;

    .line 9
    .line 10
    iget v3, p0, Lx9/n5;->d:I

    .line 11
    .line 12
    if-eqz v2, :cond_5

    .line 13
    .line 14
    new-instance v4, La9/f0;

    .line 15
    .line 16
    invoke-direct {v4, v0, v1, v2, v3}, La9/f0;-><init>(La9/l;Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lx9/n5;->D:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lx9/n5;->f:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    sget-object v0, La9/h0;->a:[B

    .line 32
    .line 33
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iput-object p0, v4, La9/f0;->y:[B

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v1, p0, Lx9/n5;->f:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget-object p0, p0, Lx9/n5;->D:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, p0, v2}, La9/l;->a(Ljava/lang/String;[B)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v1, p0, Lx9/n5;->D:Ljava/lang/String;

    .line 58
    .line 59
    iget-object p0, p0, Lx9/n5;->f:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    sget-object v2, La9/h0;->a:[B

    .line 64
    .line 65
    sget-object v2, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 66
    .line 67
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    :cond_2
    invoke-virtual {v0, v1, v2}, La9/l;->a(Ljava/lang/String;[B)V

    .line 72
    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    invoke-static {v2}, La9/h0;->d([B)V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v0, "cipher.c2s"

    .line 85
    .line 86
    invoke-virtual {v4, v0}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ",aes128-cbc"

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {v4, v0, p0}, La9/f0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v0, "cipher.s2c"

    .line 111
    .line 112
    invoke-virtual {v4, v0}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {v4, v0, p0}, La9/f0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance p0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v0, "diffie-hellman-group1-sha1,"

    .line 132
    .line 133
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v0, "kex"

    .line 137
    .line 138
    invoke-virtual {v4, v0}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {v4, v0, p0}, La9/f0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v0, "server_host_key"

    .line 158
    .line 159
    invoke-static {v0}, La9/l;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ",ssh-rsa,ssh-dss"

    .line 167
    .line 168
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    sget-object v2, La9/l;->e:Ljava/util/Hashtable;

    .line 176
    .line 177
    invoke-virtual {v2, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v0, "PubkeyAcceptedAlgorithms"

    .line 186
    .line 187
    invoke-static {v0}, La9/l;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 202
    .line 203
    invoke-virtual {v1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    const-string p0, "StrictHostKeyChecking"

    .line 207
    .line 208
    const-string v0, "no"

    .line 209
    .line 210
    invoke-virtual {v4, p0, v0}, La9/f0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object p0, v4, La9/f0;->f:Ljava/net/Socket;

    .line 214
    .line 215
    const/16 v0, 0x15b3

    .line 216
    .line 217
    if-nez p0, :cond_4

    .line 218
    .line 219
    iput v0, v4, La9/f0;->g:I

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_4
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 223
    .line 224
    .line 225
    iput v0, v4, La9/f0;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .line 227
    :goto_1
    return-object v4

    .line 228
    :catch_0
    move-exception p0

    .line 229
    new-instance v0, La9/n;

    .line 230
    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-direct {v0, v1, p0}, La9/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    .line 237
    .line 238
    throw v0

    .line 239
    :cond_5
    new-instance p0, La9/n;

    .line 240
    .line 241
    const-string v0, "host must not be null."

    .line 242
    .line 243
    invoke-direct {p0, v0}, La9/n;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw p0
.end method

.method public static T()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x186a0

    .line 6
    .line 7
    .line 8
    div-int/2addr v0, v1

    .line 9
    return v0
.end method

.method public static U(J)I
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    ushr-long v0, p0, v0

    .line 4
    .line 5
    xor-long/2addr p0, v0

    .line 6
    long-to-int p1, p0

    .line 7
    return p1
.end method

.method public static V(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12

    .line 1
    const-string v0, "fileId="

    .line 2
    .line 3
    const-string v1, ".file-name.text-blue"

    .line 4
    .line 5
    const-string v2, ".file-size"

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {p0}, Ld/b;->Z(Ljava/lang/String;)Lph/h;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v5, "downloadSection"

    .line 22
    .line 23
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    const-string v6, "data-bytes"

    .line 28
    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    :try_start_1
    const-string v0, "const fileId = "

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/lit8 v0, v0, 0xf

    .line 38
    .line 39
    const-string v1, ";"

    .line 40
    .line 41
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    new-instance v2, Lx9/b6;

    .line 46
    .line 47
    new-instance v5, Lba/l;

    .line 48
    .line 49
    const-string v7, ".app-name"

    .line 50
    .line 51
    invoke-virtual {v4, v7}, Lph/l;->L(Ljava/lang/String;)Lrh/e;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v7}, Lrh/e;->b()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const-string v8, ".file-size.app-size"

    .line 60
    .line 61
    invoke-virtual {v4, v8}, Lph/l;->L(Ljava/lang/String;)Lrh/e;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4, v6}, Lrh/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 74
    .line 75
    .line 76
    move-result-wide v8

    .line 77
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-direct {v5, v7, v8, v9, p0}, Lba/l;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v2, v5}, Lx9/b6;-><init>(Lba/l;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    return-object v3

    .line 91
    :cond_0
    const-string p0, "#fileList .file-item"

    .line 92
    .line 93
    invoke-virtual {v4, p0}, Lph/l;->L(Ljava/lang/String;)Lrh/e;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_4

    .line 109
    .line 110
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lph/l;

    .line 115
    .line 116
    invoke-virtual {v4, v2}, Lph/l;->L(Ljava/lang/String;)Lrh/e;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5}, Lrh/e;->b()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const-string v7, "\u6587\u4ef6\u5939"

    .line 125
    .line 126
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_2

    .line 131
    .line 132
    invoke-virtual {v4, v1}, Lph/l;->L(Ljava/lang/String;)Lrh/e;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    const-string v7, "onclick"

    .line 137
    .line 138
    invoke-virtual {v5, v7}, Lrh/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    const-string v7, "goToFolder"

    .line 143
    .line 144
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-nez v7, :cond_1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_1
    const-string v7, "("

    .line 152
    .line 153
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    add-int/lit8 v7, v7, 0x1

    .line 158
    .line 159
    const-string v8, ")"

    .line 160
    .line 161
    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    new-instance v7, Lx9/b6;

    .line 170
    .line 171
    new-instance v8, Lba/l;

    .line 172
    .line 173
    invoke-virtual {v4, v1}, Lph/l;->L(Ljava/lang/String;)Lrh/e;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v4}, Lrh/e;->b()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-direct {v8, v4, v5}, Lba/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-direct {v7, v8}, Lx9/b6;-><init>(Lba/l;)V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_2
    invoke-virtual {v4, v2}, Lph/l;->L(Ljava/lang/String;)Lrh/e;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v5, v6}, Lrh/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    const-string v7, ".action-btn"

    .line 197
    .line 198
    invoke-virtual {v4, v7}, Lph/l;->L(Ljava/lang/String;)Lrh/e;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    const-string v8, "href"

    .line 203
    .line 204
    invoke-virtual {v7, v8}, Lrh/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    if-nez v8, :cond_3

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    add-int/lit8 v8, v8, 0x7

    .line 220
    .line 221
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    new-instance v8, Lx9/b6;

    .line 226
    .line 227
    new-instance v9, Lba/l;

    .line 228
    .line 229
    const-string v10, ".file-name"

    .line 230
    .line 231
    invoke-virtual {v4, v10}, Lph/l;->L(Ljava/lang/String;)Lrh/e;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-virtual {v4}, Lrh/e;->b()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 244
    .line 245
    .line 246
    move-result-wide v10

    .line 247
    invoke-direct {v9, v4, v10, v11, v7}, Lba/l;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-direct {v8, v9}, Lx9/b6;-><init>(Lba/l;)V

    .line 251
    .line 252
    .line 253
    move-object v7, v8

    .line 254
    :goto_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :catch_0
    :cond_4
    return-object v3
.end method

.method public static final W(I)[B
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static X(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 18
    .line 19
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->l0:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v4, "."

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_2
    return v1
.end method

.method public static Y(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, ".apks"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    const-string v0, ".xapk"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const-string v0, ".apkm"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return v1

    .line 43
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 44
    return p0
.end method

.method public static Z(Landroid/widget/EditText;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static a0(Landroid/content/Context;)Z
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    const-string v2, "usagestats"

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Landroidx/fragment/app/o1;->f(Ljava/lang/Object;)Landroid/app/usage/UsageStatsManager;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Landroidx/fragment/app/o1;->f(Ljava/lang/Object;)Landroid/app/usage/UsageStatsManager;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_0
    const/4 v0, 0x0

    .line 27
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    sub-long/2addr v1, v3

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    const-wide/32 v5, 0x927c0

    .line 41
    .line 42
    .line 43
    add-long/2addr v3, v5

    .line 44
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/o1;->e(Landroid/app/usage/UsageStatsManager;JJ)Landroid/app/usage/UsageEvents;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-nez p0, :cond_1

    .line 49
    .line 50
    return v0

    .line 51
    :cond_1
    invoke-static {p0}, Landroidx/fragment/app/o1;->z(Landroid/app/usage/UsageEvents;)Z

    .line 52
    .line 53
    .line 54
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return p0

    .line 56
    :catch_0
    return v0
.end method

.method public static b0(Landroid/content/Context;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "fgSecure"

    .line 6
    .line 7
    const-string v1, "fangge"

    .line 8
    .line 9
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public static c0(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 18
    .line 19
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->n0:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v4, "."

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_2
    return v1
.end method

.method public static d0(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-lez p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public static e0(Landroid/net/Uri;)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string v0, "content"

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "media"

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method

.method public static f(Lx9/n5;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lif/a;->S(Lx9/n5;)La9/f0;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {p0}, La9/f0;->b()V

    .line 7
    .line 8
    .line 9
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    nop

    .line 13
    move-object v0, p0

    .line 14
    goto :goto_1

    .line 15
    :catchall_1
    move-exception p0

    .line 16
    move-object v2, v0

    .line 17
    move-object v0, p0

    .line 18
    move-object p0, v2

    .line 19
    :goto_0
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget-boolean v1, p0, La9/f0;->h:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, La9/f0;->c()V

    .line 26
    .line 27
    .line 28
    :cond_0
    throw v0

    .line 29
    :catch_1
    nop

    .line 30
    :goto_1
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-boolean p0, v0, La9/f0;->h:Z

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, La9/f0;->c()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public static f0(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 18
    .line 19
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->q0:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v4, "."

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_2
    return v1
.end method

.method public static h(Lx9/n5;Ljava/lang/String;)Lcom/yunpan/appmanage/bean/WpPathBean;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 3
    .line 4
    const-string v2, ""

    .line 5
    .line 6
    invoke-direct {v1, p1, v2}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lif/a;->i(Lx9/n5;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    const-string p1, "\u5df2\u5b58\u5728"

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    return-object v1

    .line 29
    :catch_0
    :cond_1
    return-object v0
.end method

.method public static h0(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 5

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    const/16 v1, 0x64

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    const/4 p0, 0x1

    .line 69
    return p0

    .line 70
    :cond_3
    return v1
.end method

.method public static i(Lx9/n5;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lif/a;->S(Lx9/n5;)La9/f0;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {p0}, La9/f0;->b()V

    .line 7
    .line 8
    .line 9
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :catch_0
    move-exception v0

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    move-object v2, v0

    .line 14
    move-object v0, p0

    .line 15
    move-object p0, v2

    .line 16
    goto :goto_2

    .line 17
    :catch_1
    move-exception p0

    .line 18
    move-object v2, v0

    .line 19
    move-object v0, p0

    .line 20
    move-object p0, v2

    .line 21
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_1
    move-exception v0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_1
    const-string v0, "\u8fde\u63a5\u5931\u8d25"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    .line 41
    :cond_1
    if-eqz p0, :cond_2

    .line 42
    .line 43
    iget-boolean v1, p0, La9/f0;->h:Z

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, La9/f0;->c()V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-object v0

    .line 51
    :goto_2
    if-eqz p0, :cond_3

    .line 52
    .line 53
    iget-boolean v1, p0, La9/f0;->h:Z

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, La9/f0;->c()V

    .line 58
    .line 59
    .line 60
    :cond_3
    throw v0
.end method

.method public static i0(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 18
    .line 19
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->o0:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v4, "."

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_2
    return v1
.end method

.method public static j([Lp0/f;[Lp0/f;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    array-length v1, p0

    .line 8
    array-length v2, p1

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    array-length v2, p0

    .line 14
    if-ge v1, v2, :cond_4

    .line 15
    .line 16
    aget-object v2, p0, v1

    .line 17
    .line 18
    iget-char v3, v2, Lp0/f;->a:C

    .line 19
    .line 20
    aget-object v4, p1, v1

    .line 21
    .line 22
    iget-char v5, v4, Lp0/f;->a:C

    .line 23
    .line 24
    if-ne v3, v5, :cond_3

    .line 25
    .line 26
    iget-object v2, v2, Lp0/f;->b:[F

    .line 27
    .line 28
    array-length v2, v2

    .line 29
    iget-object v3, v4, Lp0/f;->b:[F

    .line 30
    .line 31
    array-length v3, v3

    .line 32
    if-eq v2, v3, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    :goto_1
    return v0

    .line 39
    :cond_4
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_5
    :goto_2
    return v0
.end method

.method public static j0(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 18
    .line 19
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->p0:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v4, "."

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_2
    return v1
.end method

.method public static k(JLjava/lang/String;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p2, " ("

    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, ") must be >= 0"

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public static k0(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "."

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/yunpan/appmanage/util/w;->F0:Ljava/util/HashSet;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    add-int/2addr v0, v3

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    return v3

    .line 42
    :cond_1
    return v1
.end method

.method public static l(Z)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 5
    .line 6
    const-string v0, "mode was UNNECESSARY, but rounding was necessary"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public static l0(J)Ljava/lang/String;
    .locals 4

    .line 1
    long-to-double p0, p0

    .line 2
    new-instance v0, Ljava/text/DecimalFormat;

    .line 3
    .line 4
    const-string v1, "0.00"

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-wide/32 v1, 0x100000

    .line 10
    .line 11
    .line 12
    long-to-double v1, v1

    .line 13
    cmpl-double v3, p0, v1

    .line 14
    .line 15
    if-ltz v3, :cond_0

    .line 16
    .line 17
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 21
    .line 22
    .line 23
    div-double/2addr p0, v1

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "G"

    .line 30
    .line 31
    invoke-static {v0, p0, p1, v1, v2}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    .line 37
    .line 38
    cmpl-double v3, p0, v1

    .line 39
    .line 40
    if-ltz v3, :cond_1

    .line 41
    .line 42
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 43
    .line 44
    .line 45
    div-double/2addr p0, v1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "M"

    .line 52
    .line 53
    invoke-static {v0, p0, p1, v1, v2}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, "K"

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    :goto_0
    return-object p0
.end method

.method public static m(JJ)I
    .locals 1

    .line 1
    cmp-long v0, p0, p2

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    cmp-long v0, p0, p2

    .line 8
    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public static m0(J)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy/MM/dd HH:mm"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-wide v1, 0x2540be400L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    cmp-long v3, p0, v1

    .line 14
    .line 15
    if-gez v3, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/util/Date;

    .line 18
    .line 19
    const-wide/16 v2, 0x3e8

    .line 20
    .line 21
    mul-long p0, p0, v2

    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    new-instance v1, Ljava/util/Date;

    .line 32
    .line 33
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static varargs n([[B)[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p0

    .line 5
    if-ge v1, v3, :cond_0

    .line 6
    .line 7
    aget-object v3, p0, v1

    .line 8
    .line 9
    array-length v3, v3

    .line 10
    add-int/2addr v2, v3

    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-array v1, v2, [B

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_1
    array-length v4, p0

    .line 19
    if-ge v2, v4, :cond_1

    .line 20
    .line 21
    aget-object v4, p0, v2

    .line 22
    .line 23
    array-length v5, v4

    .line 24
    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    aget-object v4, p0, v2

    .line 28
    .line 29
    array-length v4, v4

    .line 30
    add-int/2addr v3, v4

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    return-object v1
.end method

.method public static n0(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    array-length v2, v0

    .line 13
    const/4 v3, 0x4

    .line 14
    if-ge v2, v3, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v2, 0x3

    .line 18
    aget-object v3, v0, v2

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    const/16 v4, 0x2e

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, -0x1

    .line 37
    if-le v4, v5, :cond_2

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-lt v4, v5, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    aget-object v1, v0, v2

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    aget-object v0, v0, v2

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v1, v0, p0}, Lif/a;->P(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    :goto_1
    const-string v0, ""

    .line 66
    .line 67
    invoke-static {v0, v1, p0}, Lif/a;->P(Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static o0(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    array-length v2, v0

    .line 13
    const/4 v3, 0x4

    .line 14
    if-ge v2, v3, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v2, 0x3

    .line 18
    aget-object v3, v0, v2

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    const/16 v4, 0x2e

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, -0x1

    .line 37
    if-le v4, v5, :cond_2

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-lt v4, v5, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    aget-object v1, v0, v2

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    aget-object v0, v0, v2

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v1, v0, p0}, Lif/a;->P(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    :goto_1
    const-string v0, ""

    .line 66
    .line 67
    invoke-static {v0, v1, p0}, Lif/a;->P(Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static varargs p([[J)[J
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    :goto_0
    if-ge v4, v0, :cond_0

    .line 7
    .line 8
    aget-object v5, p0, v4

    .line 9
    .line 10
    array-length v5, v5

    .line 11
    int-to-long v5, v5

    .line 12
    add-long/2addr v1, v5

    .line 13
    add-int/lit8 v4, v4, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    long-to-int v0, v1

    .line 17
    int-to-long v4, v0

    .line 18
    cmp-long v6, v1, v4

    .line 19
    .line 20
    if-nez v6, :cond_1

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v4, 0x0

    .line 25
    :goto_1
    const-string v5, "the total number of elements (%s) in the arrays must fit in an int"

    .line 26
    .line 27
    invoke-static {v5, v4, v1, v2}, La9/o;->j(Ljava/lang/String;ZJ)V

    .line 28
    .line 29
    .line 30
    new-array v0, v0, [J

    .line 31
    .line 32
    array-length v1, p0

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    :goto_2
    if-ge v2, v1, :cond_2

    .line 36
    .line 37
    aget-object v5, p0, v2

    .line 38
    .line 39
    array-length v6, v5

    .line 40
    invoke-static {v5, v3, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    array-length v5, v5

    .line 44
    add-int/2addr v4, v5

    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    return-object v0
.end method

.method public static p0(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    const-string v0, "MD5"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    array-length v1, p0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v1, :cond_1

    .line 23
    .line 24
    aget-byte v3, p0, v2

    .line 25
    .line 26
    and-int/lit16 v3, v3, 0xff

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x1

    .line 37
    if-ne v4, v5, :cond_0

    .line 38
    .line 39
    const/16 v4, 0x30

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :cond_0
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-object p0

    .line 58
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    const-string p0, ""

    .line 62
    .line 63
    return-object p0
.end method

.method public static q0(J)Llb/a;
    .locals 3

    .line 1
    sget-object v0, Llb/a;->c:La2/g1;

    .line 2
    .line 3
    iget-object v1, v0, La2/g1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljb/c;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    move-object v0, v1

    .line 17
    check-cast v0, Llb/a;

    .line 18
    .line 19
    iput v2, v0, Llb/a;->a:I

    .line 20
    .line 21
    iput-wide p0, v0, Llb/a;->b:J

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p1, v0, La2/g1;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lha/jd;

    .line 35
    .line 36
    invoke-virtual {p1, v1, p0}, Lha/jd;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    move-object v1, p0

    .line 41
    check-cast v1, Ljb/c;

    .line 42
    .line 43
    :goto_0
    check-cast v1, Llb/a;

    .line 44
    .line 45
    return-object v1
.end method

.method public static r([FI)[F
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-array p1, p1, [F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public static final r0(Landroid/database/Cursor;)Ljava/util/List;
    .locals 11

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "seq"

    .line 8
    .line 9
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "from"

    .line 14
    .line 15
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-string v3, "to"

    .line 20
    .line 21
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    new-instance v4, Lke/c;

    .line 26
    .line 27
    const/16 v5, 0xa

    .line 28
    .line 29
    invoke-direct {v4, v5}, Lke/c;-><init>(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    new-instance v5, La4/c;

    .line 39
    .line 40
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    const-string v9, "cursor.getString(fromColumnIndex)"

    .line 53
    .line 54
    invoke-static {v8, v9}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    const-string v10, "cursor.getString(toColumnIndex)"

    .line 62
    .line 63
    invoke-static {v9, v10}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v5, v8, v6, v7, v9}, La4/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v5}, Lke/c;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-static {v4}, Lqf/c;->e(Lke/c;)Lke/c;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string v0, "<this>"

    .line 78
    .line 79
    invoke-static {p0, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lke/c;->a()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v1, 0x1

    .line 87
    if-gt v0, v1, :cond_1

    .line 88
    .line 89
    invoke-static {p0}, Lje/j;->m0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    const/4 v0, 0x0

    .line 95
    new-array v0, v0, [Ljava/lang/Comparable;

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lke/c;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    move-object v0, p0

    .line 102
    check-cast v0, [Ljava/lang/Comparable;

    .line 103
    .line 104
    array-length v2, v0

    .line 105
    if-le v2, v1, :cond_2

    .line 106
    .line 107
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const-string v0, "asList(...)"

    .line 115
    .line 116
    invoke-static {p0, v0}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_1
    return-object p0
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "clipboard"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/ClipboardManager;

    .line 8
    .line 9
    const-string v0, "label"

    .line 10
    .line 11
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    return-void
.end method

.method public static final s0(Lc4/a;Ljava/lang/String;Z)La4/d;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PRAGMA index_xinfo(`"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "`)"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p0, v0}, Lc4/a;->s(Ljava/lang/String;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :try_start_0
    const-string v0, "seqno"

    .line 25
    .line 26
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v1, "cid"

    .line 31
    .line 32
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string v2, "name"

    .line 37
    .line 38
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const-string v3, "desc"

    .line 43
    .line 44
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, -0x1

    .line 50
    if-eq v0, v5, :cond_4

    .line 51
    .line 52
    if-eq v1, v5, :cond_4

    .line 53
    .line 54
    if-eq v2, v5, :cond_4

    .line 55
    .line 56
    if-ne v3, v5, :cond_0

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_0
    new-instance v5, Ljava/util/TreeMap;

    .line 60
    .line 61
    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v6, Ljava/util/TreeMap;

    .line 65
    .line 66
    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_3

    .line 74
    .line 75
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-gez v7, :cond_1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-lez v9, :cond_2

    .line 95
    .line 96
    const-string v9, "DESC"

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    goto :goto_3

    .line 101
    :cond_2
    const-string v9, "ASC"

    .line 102
    .line 103
    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    const-string v11, "columnName"

    .line 108
    .line 109
    invoke-static {v8, v11}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v10, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v6, v7, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {v5}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v1, "columnsMap.values"

    .line 128
    .line 129
    invoke-static {v0, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Lje/j;->m0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v6}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const-string v2, "ordersMap.values"

    .line 141
    .line 142
    invoke-static {v1, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v1}, Lje/j;->m0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    new-instance v2, La4/d;

    .line 150
    .line 151
    invoke-direct {v2, p1, p2, v0, v1}, La4/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    .line 154
    invoke-static {p0, v4}, Lqf/c;->g(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    return-object v2

    .line 158
    :cond_4
    :goto_2
    invoke-static {p0, v4}, Lqf/c;->g(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    return-object v4

    .line 162
    :goto_3
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    :catchall_1
    move-exception p2

    .line 164
    invoke-static {p0, p1}, Lqf/c;->g(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :goto_4
    throw p2

    .line 169
    :goto_5
    goto :goto_4
.end method

.method public static t(Ljava/lang/String;)[Lp0/f;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-ge v4, v6, :cond_10

    .line 20
    .line 21
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    const/16 v7, 0x45

    .line 26
    .line 27
    const/16 v8, 0x65

    .line 28
    .line 29
    if-ge v4, v6, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    add-int/lit8 v9, v6, -0x41

    .line 36
    .line 37
    add-int/lit8 v10, v6, -0x5a

    .line 38
    .line 39
    mul-int v10, v10, v9

    .line 40
    .line 41
    if-lez v10, :cond_1

    .line 42
    .line 43
    add-int/lit8 v9, v6, -0x61

    .line 44
    .line 45
    add-int/lit8 v10, v6, -0x7a

    .line 46
    .line 47
    mul-int v10, v10, v9

    .line 48
    .line 49
    if-gtz v10, :cond_2

    .line 50
    .line 51
    :cond_1
    if-eq v6, v8, :cond_2

    .line 52
    .line 53
    if-eq v6, v7, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    :goto_2
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-lez v6, :cond_f

    .line 72
    .line 73
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    const/16 v9, 0x7a

    .line 78
    .line 79
    if-eq v6, v9, :cond_4

    .line 80
    .line 81
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    const/16 v9, 0x5a

    .line 86
    .line 87
    if-ne v6, v9, :cond_5

    .line 88
    .line 89
    :cond_4
    const/4 v2, 0x0

    .line 90
    goto/16 :goto_c

    .line 91
    .line 92
    :cond_5
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    new-array v6, v6, [F

    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    const/4 v10, 0x1

    .line 103
    const/4 v11, 0x0

    .line 104
    :goto_3
    if-ge v10, v9, :cond_e

    .line 105
    .line 106
    move v12, v10

    .line 107
    const/4 v13, 0x0

    .line 108
    const/4 v14, 0x0

    .line 109
    const/4 v15, 0x0

    .line 110
    const/16 v16, 0x0

    .line 111
    .line 112
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-ge v12, v2, :cond_b

    .line 117
    .line 118
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    const/16 v3, 0x20

    .line 123
    .line 124
    if-eq v2, v3, :cond_9

    .line 125
    .line 126
    if-eq v2, v7, :cond_8

    .line 127
    .line 128
    if-eq v2, v8, :cond_8

    .line 129
    .line 130
    packed-switch v2, :pswitch_data_0

    .line 131
    .line 132
    .line 133
    goto :goto_6

    .line 134
    :pswitch_0
    if-nez v14, :cond_6

    .line 135
    .line 136
    const/4 v13, 0x0

    .line 137
    const/4 v14, 0x1

    .line 138
    goto :goto_7

    .line 139
    :cond_6
    :goto_5
    const/4 v13, 0x0

    .line 140
    const/4 v15, 0x1

    .line 141
    const/16 v16, 0x1

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :pswitch_1
    if-eq v12, v10, :cond_7

    .line 145
    .line 146
    if-nez v13, :cond_7

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_7
    :goto_6
    const/4 v13, 0x0

    .line 150
    goto :goto_7

    .line 151
    :cond_8
    const/4 v13, 0x1

    .line 152
    goto :goto_7

    .line 153
    :cond_9
    :pswitch_2
    const/4 v13, 0x0

    .line 154
    const/4 v15, 0x1

    .line 155
    :goto_7
    if-eqz v15, :cond_a

    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_a
    add-int/lit8 v12, v12, 0x1

    .line 159
    .line 160
    const/4 v3, 0x0

    .line 161
    goto :goto_4

    .line 162
    :cond_b
    :goto_8
    if-ge v10, v12, :cond_c

    .line 163
    .line 164
    add-int/lit8 v2, v11, 0x1

    .line 165
    .line 166
    invoke-virtual {v5, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    aput v3, v6, v11

    .line 175
    .line 176
    move v11, v2

    .line 177
    goto :goto_9

    .line 178
    :catch_0
    move-exception v0

    .line 179
    goto :goto_b

    .line 180
    :cond_c
    :goto_9
    if-eqz v16, :cond_d

    .line 181
    .line 182
    move v10, v12

    .line 183
    :goto_a
    const/4 v3, 0x0

    .line 184
    goto :goto_3

    .line 185
    :cond_d
    add-int/lit8 v10, v12, 0x1

    .line 186
    .line 187
    goto :goto_a

    .line 188
    :cond_e
    invoke-static {v6, v11}, Lif/a;->r([FI)[F

    .line 189
    .line 190
    .line 191
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    move-object v3, v2

    .line 193
    const/4 v2, 0x0

    .line 194
    goto :goto_d

    .line 195
    :goto_b
    new-instance v1, Ljava/lang/RuntimeException;

    .line 196
    .line 197
    const-string v2, "error in parsing \""

    .line 198
    .line 199
    const-string v3, "\""

    .line 200
    .line 201
    invoke-static {v2, v5, v3}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .line 207
    .line 208
    throw v1

    .line 209
    :goto_c
    new-array v3, v2, [F

    .line 210
    .line 211
    :goto_d
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    new-instance v2, Lp0/f;

    .line 216
    .line 217
    invoke-direct {v2, v5, v3}, Lp0/f;-><init>(C[F)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    :cond_f
    add-int/lit8 v2, v4, 0x1

    .line 224
    .line 225
    move v5, v4

    .line 226
    const/4 v3, 0x0

    .line 227
    move v4, v2

    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_10
    sub-int/2addr v4, v5

    .line 231
    const/4 v2, 0x1

    .line 232
    if-ne v4, v2, :cond_11

    .line 233
    .line 234
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-ge v5, v2, :cond_11

    .line 239
    .line 240
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    const/4 v2, 0x0

    .line 245
    new-array v2, v2, [F

    .line 246
    .line 247
    new-instance v3, Lp0/f;

    .line 248
    .line 249
    invoke-direct {v3, v0, v2}, Lp0/f;-><init>(C[F)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    new-array v0, v0, [Lp0/f;

    .line 260
    .line 261
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    check-cast v0, [Lp0/f;

    .line 266
    .line 267
    return-object v0

    .line 268
    nop

    .line 269
    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static t0(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 5
    .line 6
    const-string v0, " must not be null"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public static u0(JJ)J
    .locals 7

    .line 1
    add-long v0, p0, p2

    .line 2
    .line 3
    xor-long v2, p0, v0

    .line 4
    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    cmp-long v6, v2, v4

    .line 8
    .line 9
    if-gez v6, :cond_1

    .line 10
    .line 11
    xor-long v2, p0, p2

    .line 12
    .line 13
    cmp-long v6, v2, v4

    .line 14
    .line 15
    if-gez v6, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 19
    .line 20
    const-string v1, "Addition overflows a long: "

    .line 21
    .line 22
    const-string v2, " + "

    .line 23
    .line 24
    invoke-static {p0, p1, v1, v2}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static v(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lif/a;->t(Ljava/lang/String;)[Lp0/f;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-static {v1, v0}, Lp0/f;->b([Lp0/f;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    const-string v2, "Error in parsing "

    .line 20
    .line 21
    invoke-static {v2, p0}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v1

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public static v0(IJ)J
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, " * "

    .line 3
    .line 4
    const-string v2, "Multiplication overflows a long: "

    .line 5
    .line 6
    if-eq p0, v0, :cond_3

    .line 7
    .line 8
    if-eqz p0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    int-to-long v3, p0

    .line 14
    mul-long v5, p1, v3

    .line 15
    .line 16
    div-long v3, v5, v3

    .line 17
    .line 18
    cmp-long v0, v3, p1

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-wide v5

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 24
    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_1
    return-wide p1

    .line 48
    :cond_2
    const-wide/16 p0, 0x0

    .line 49
    .line 50
    return-wide p0

    .line 51
    :cond_3
    const-wide/high16 v3, -0x8000000000000000L

    .line 52
    .line 53
    cmp-long v0, p1, v3

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    neg-long p0, p1

    .line 58
    return-wide p0

    .line 59
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0
.end method

.method public static w(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lmc/b;)V
    .locals 2

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1, p2, p3}, Lif/a;->x(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lmc/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    sget-object p3, Lfa/b0;->a:La2/w0;

    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string p3, ""

    .line 40
    .line 41
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, p1}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p3, " password"

    .line 49
    .line 50
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-nez p3, :cond_2

    .line 55
    .line 56
    const-string p3, "Password is"

    .line 57
    .line 58
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-nez p3, :cond_2

    .line 63
    .line 64
    const-string p3, "can\'t be opened with"

    .line 65
    .line 66
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    if-nez p3, :cond_2

    .line 71
    .line 72
    const-string p3, "extracting all items"

    .line 73
    .line 74
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    if-nez p3, :cond_2

    .line 79
    .line 80
    const-string p3, "Compressed data is corrupt"

    .line 81
    .line 82
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    throw p0

    .line 90
    :cond_2
    :goto_0
    if-eqz p2, :cond_4

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_3

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    const-string p0, "\u5bc6\u7801\u9519\u8bef"

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    :goto_1
    const-string p0, "\u9700\u8981\u5bc6\u7801"

    .line 103
    .line 104
    :goto_2
    new-instance p1, Ljava/lang/Exception;

    .line 105
    .line 106
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method

.method public static w0(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    if-ge p0, v0, :cond_0

    .line 6
    .line 7
    const-string p0, "1.0"

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    const/16 v0, 0x26

    .line 12
    .line 13
    if-le p0, v0, :cond_1

    .line 14
    .line 15
    const-string p0, "18+"

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_1
    const-string p0, "\u672a\u77e5"

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :pswitch_0
    const-string p0, "18"

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :pswitch_1
    const-string p0, "17"

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :pswitch_2
    const-string p0, "16"

    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :pswitch_3
    const-string p0, "15"

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :pswitch_4
    const-string p0, "14"

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :pswitch_5
    const-string p0, "13"

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :pswitch_6
    const-string p0, "12+"

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :pswitch_7
    const-string p0, "12"

    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :pswitch_8
    const-string p0, "11"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_9
    const-string p0, "10"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_a
    const-string p0, "9.0"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_b
    const-string p0, "8.1"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_c
    const-string p0, "8.0"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_d
    const-string p0, "7.1"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_e
    const-string p0, "7.0"

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :pswitch_f
    const-string p0, "6.0"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_10
    const-string p0, "5.1"

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_11
    const-string p0, "5.0"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_12
    const-string p0, "4.4w"

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_13
    const-string p0, "4.4"

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :pswitch_14
    const-string p0, "4.3"

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_15
    const-string p0, "4.2"

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :pswitch_16
    const-string p0, "4.1"

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_17
    const-string p0, "4.0.3"

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_18
    const-string p0, "4.0"

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_19
    const-string p0, "3.2"

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :pswitch_1a
    const-string p0, "3.1"

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_1b
    const-string p0, "3.0"

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_1c
    const-string p0, "2.33"

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_1d
    const-string p0, "2.3"

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :pswitch_1e
    const-string p0, "2.2"

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :pswitch_1f
    const-string p0, "2.1"

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :pswitch_20
    const-string p0, "2.0.1"

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :pswitch_21
    const-string p0, "2.0"

    .line 131
    .line 132
    :goto_0
    return-object p0

    .line 133
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

.method public static x(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lmc/b;)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, ".zip"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const-string v3, "addSuppressed"

    .line 19
    .line 20
    const-class v4, Ljava/lang/Throwable;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const-string v6, "/"

    .line 24
    .line 25
    if-nez v2, :cond_11

    .line 26
    .line 27
    const-string v2, ".jar"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_11

    .line 34
    .line 35
    const-string v2, ".apk"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_11

    .line 42
    .line 43
    const-string v2, ".apk.1"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_11

    .line 50
    .line 51
    const-string v2, ".apks"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_11

    .line 58
    .line 59
    const-string v2, ".apkm"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_11

    .line 66
    .line 67
    const-string v2, ".xapk"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    goto/16 :goto_9

    .line 76
    .line 77
    :cond_0
    const-string v2, ".7z"

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_9

    .line 84
    .line 85
    new-instance v1, Ljg/s;

    .line 86
    .line 87
    invoke-direct {v1}, Ljg/s;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v2, Ltg/a;

    .line 91
    .line 92
    invoke-direct {v2, v5, p0}, Ltg/a;-><init>(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iput-object v2, v1, Ltg/b;->b:Ljava/lang/Object;

    .line 96
    .line 97
    if-eqz p2, :cond_1

    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {p0}, Ljg/k;->i([C)[B

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    iput-object p0, v1, Ljg/s;->e:[B

    .line 108
    .line 109
    :cond_1
    iget-object p0, v1, Ltg/b;->b:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p0, Ltg/b;

    .line 112
    .line 113
    const-string p2, "origin == null"

    .line 114
    .line 115
    if-eqz p0, :cond_8

    .line 116
    .line 117
    invoke-virtual {v1}, Ltg/d;->Q0()[Ljava/nio/file/OpenOption;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {p0}, Lzg/a;->b(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_2

    .line 126
    .line 127
    new-array p0, v0, [Ljava/nio/file/OpenOption;

    .line 128
    .line 129
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->i()Ljava/nio/file/StandardOpenOption;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    aput-object v2, p0, v5

    .line 134
    .line 135
    :cond_2
    iget-object v2, v1, Ltg/b;->b:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v2, Ltg/b;

    .line 138
    .line 139
    if-eqz v2, :cond_7

    .line 140
    .line 141
    invoke-virtual {v2}, Ltg/b;->O0()Ljava/nio/file/Path;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-static {p2, p0}, Leg/a;->d(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {p2}, Leg/a;->e(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-static {p2}, Landroidx/media3/exoplayer/video/i;->c(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    new-instance v2, Ljg/t;

    .line 158
    .line 159
    iget-object v7, v1, Ljg/s;->e:[B

    .line 160
    .line 161
    iget v1, v1, Ljg/s;->f:I

    .line 162
    .line 163
    invoke-direct {v2, p0, p2, v7, v1}, Ljg/t;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BI)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljg/t;->K()Ljg/n;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    const/high16 p2, 0x80000

    .line 171
    .line 172
    new-array p2, p2, [B

    .line 173
    .line 174
    :goto_0
    if-eqz p0, :cond_23

    .line 175
    .line 176
    if-eqz p3, :cond_3

    .line 177
    .line 178
    iget-object v1, p0, Ljg/n;->a:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {p3, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :cond_3
    iget-boolean v1, p0, Ljg/n;->c:Z

    .line 184
    .line 185
    if-nez v1, :cond_6

    .line 186
    .line 187
    iget-object v1, p0, Ljg/n;->a:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_4

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_4
    new-instance v1, Ljava/io/FileOutputStream;

    .line 197
    .line 198
    invoke-static {p1}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    iget-object p0, p0, Ljg/n;->a:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :try_start_0
    invoke-virtual {v2, p2}, Ljg/t;->read([B)I

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    :goto_1
    const/4 v7, -0x1

    .line 219
    if-eq p0, v7, :cond_5

    .line 220
    .line 221
    invoke-virtual {v1, p2, v5, p0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, p2}, Ljg/t;->read([B)I

    .line 225
    .line 226
    .line 227
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    goto :goto_1

    .line 229
    :catchall_0
    move-exception p0

    .line 230
    goto :goto_2

    .line 231
    :cond_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :catchall_1
    move-exception p1

    .line 240
    :try_start_2
    new-array p2, v0, [Ljava/lang/Class;

    .line 241
    .line 242
    aput-object v4, p2, v5

    .line 243
    .line 244
    invoke-virtual {v4, v3, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    new-array p3, v0, [Ljava/lang/Object;

    .line 249
    .line 250
    aput-object p1, p3, v5

    .line 251
    .line 252
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 253
    .line 254
    .line 255
    :catch_0
    :goto_3
    throw p0

    .line 256
    :cond_6
    :goto_4
    new-instance v1, Ljava/io/File;

    .line 257
    .line 258
    invoke-static {p1}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    iget-object p0, p0, Ljg/n;->a:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 275
    .line 276
    .line 277
    :goto_5
    invoke-virtual {v2}, Ljg/t;->K()Ljg/n;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    goto :goto_0

    .line 282
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 283
    .line 284
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw p0

    .line 288
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 289
    .line 290
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw p0

    .line 294
    :cond_9
    const-string p2, ".tar"

    .line 295
    .line 296
    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result p2

    .line 300
    if-eqz p2, :cond_a

    .line 301
    .line 302
    new-instance p2, Ljava/io/FileInputStream;

    .line 303
    .line 304
    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 305
    .line 306
    .line 307
    invoke-static {p2, p1, p3}, Lif/a;->B(Ljava/io/InputStream;Ljava/lang/String;Lmc/b;)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_13

    .line 311
    .line 312
    :cond_a
    const-string p2, ".tar.gz"

    .line 313
    .line 314
    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    if-nez p2, :cond_10

    .line 319
    .line 320
    const-string p2, ".tgz"

    .line 321
    .line 322
    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 323
    .line 324
    .line 325
    move-result p2

    .line 326
    if-eqz p2, :cond_b

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_b
    const-string p2, ".tar.bz2"

    .line 330
    .line 331
    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    move-result p2

    .line 335
    if-nez p2, :cond_f

    .line 336
    .line 337
    const-string p2, ".tbz2"

    .line 338
    .line 339
    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 340
    .line 341
    .line 342
    move-result p2

    .line 343
    if-eqz p2, :cond_c

    .line 344
    .line 345
    goto :goto_7

    .line 346
    :cond_c
    const-string p2, ".tar.xz"

    .line 347
    .line 348
    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 349
    .line 350
    .line 351
    move-result p2

    .line 352
    if-nez p2, :cond_e

    .line 353
    .line 354
    const-string p2, ".txz"

    .line 355
    .line 356
    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 357
    .line 358
    .line 359
    move-result p2

    .line 360
    if-eqz p2, :cond_d

    .line 361
    .line 362
    goto :goto_6

    .line 363
    :cond_d
    new-instance p0, Ljava/io/IOException;

    .line 364
    .line 365
    const-string p1, "\u4e0d\u652f\u6301\u6b64\u683c\u5f0f"

    .line 366
    .line 367
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw p0

    .line 371
    :cond_e
    :goto_6
    new-instance p2, Lqg/b;

    .line 372
    .line 373
    new-instance v1, Ljava/io/FileInputStream;

    .line 374
    .line 375
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 376
    .line 377
    .line 378
    new-instance p0, Lqg/a;

    .line 379
    .line 380
    invoke-direct {p0}, Lqg/a;-><init>()V

    .line 381
    .line 382
    .line 383
    new-instance v2, Ltg/a;

    .line 384
    .line 385
    invoke-direct {v2, v0, v1}, Ltg/a;-><init>(ILjava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    iput-object v2, p0, Ltg/b;->b:Ljava/lang/Object;

    .line 389
    .line 390
    invoke-direct {p2, p0}, Lqg/b;-><init>(Lqg/a;)V

    .line 391
    .line 392
    .line 393
    invoke-static {p2, p1, p3}, Lif/a;->B(Ljava/io/InputStream;Ljava/lang/String;Lmc/b;)V

    .line 394
    .line 395
    .line 396
    goto/16 :goto_13

    .line 397
    .line 398
    :cond_f
    :goto_7
    new-instance p2, Lng/b;

    .line 399
    .line 400
    new-instance v0, Ljava/io/FileInputStream;

    .line 401
    .line 402
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 403
    .line 404
    .line 405
    invoke-direct {p2, v0}, Lng/b;-><init>(Ljava/io/InputStream;)V

    .line 406
    .line 407
    .line 408
    invoke-static {p2, p1, p3}, Lif/a;->B(Ljava/io/InputStream;Ljava/lang/String;Lmc/b;)V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_13

    .line 412
    .line 413
    :cond_10
    :goto_8
    new-instance p2, Lpg/d;

    .line 414
    .line 415
    new-instance v1, Ljava/io/FileInputStream;

    .line 416
    .line 417
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 418
    .line 419
    .line 420
    new-instance p0, Lpg/c;

    .line 421
    .line 422
    invoke-direct {p0}, Lpg/c;-><init>()V

    .line 423
    .line 424
    .line 425
    new-instance v2, Ltg/a;

    .line 426
    .line 427
    invoke-direct {v2, v0, v1}, Ltg/a;-><init>(ILjava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    iput-object v2, p0, Ltg/b;->b:Ljava/lang/Object;

    .line 431
    .line 432
    invoke-direct {p2, p0}, Lpg/d;-><init>(Lpg/c;)V

    .line 433
    .line 434
    .line 435
    invoke-static {p2, p1, p3}, Lif/a;->B(Ljava/io/InputStream;Ljava/lang/String;Lmc/b;)V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_13

    .line 439
    .line 440
    :cond_11
    :goto_9
    const/4 v1, 0x0

    .line 441
    new-instance v2, Lsf/a;

    .line 442
    .line 443
    if-nez p2, :cond_12

    .line 444
    .line 445
    invoke-direct {v2, p0, v1}, Lsf/a;-><init>(Ljava/io/File;[C)V

    .line 446
    .line 447
    .line 448
    goto :goto_a

    .line 449
    :cond_12
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 450
    .line 451
    .line 452
    move-result-object v7

    .line 453
    invoke-direct {v2, p0, v7}, Lsf/a;-><init>(Ljava/io/File;[C)V

    .line 454
    .line 455
    .line 456
    :goto_a
    iget-object v7, v2, Lsf/a;->b:Lag/l;

    .line 457
    .line 458
    const-string v8, "Zip Model is null"

    .line 459
    .line 460
    if-nez v7, :cond_14

    .line 461
    .line 462
    invoke-virtual {v2}, Lsf/a;->J()V

    .line 463
    .line 464
    .line 465
    iget-object v7, v2, Lsf/a;->b:Lag/l;

    .line 466
    .line 467
    if-eqz v7, :cond_13

    .line 468
    .line 469
    goto :goto_b

    .line 470
    :cond_13
    new-instance p0, Lwf/a;

    .line 471
    .line 472
    invoke-direct {p0, v8}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    throw p0

    .line 476
    :cond_14
    :goto_b
    iget-object v7, v2, Lsf/a;->b:Lag/l;

    .line 477
    .line 478
    iget-object v7, v7, Lag/l;->b:Lag/c;

    .line 479
    .line 480
    if-eqz v7, :cond_28

    .line 481
    .line 482
    iget-object v7, v7, Lag/c;->a:Ljava/util/ArrayList;

    .line 483
    .line 484
    if-eqz v7, :cond_28

    .line 485
    .line 486
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 487
    .line 488
    .line 489
    move-result-object v7

    .line 490
    :cond_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 491
    .line 492
    .line 493
    move-result v9

    .line 494
    if-eqz v9, :cond_16

    .line 495
    .line 496
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v9

    .line 500
    check-cast v9, Lag/f;

    .line 501
    .line 502
    if-eqz v9, :cond_15

    .line 503
    .line 504
    iget-boolean v9, v9, Lag/b;->l:Z

    .line 505
    .line 506
    if-eqz v9, :cond_15

    .line 507
    .line 508
    iput-boolean v0, v2, Lsf/a;->c:Z

    .line 509
    .line 510
    :cond_16
    iget-boolean v7, v2, Lsf/a;->c:Z

    .line 511
    .line 512
    if-eqz v7, :cond_18

    .line 513
    .line 514
    if-eqz p2, :cond_17

    .line 515
    .line 516
    goto :goto_c

    .line 517
    :cond_17
    new-instance p0, Ljava/lang/Exception;

    .line 518
    .line 519
    const-string p1, "\u9700\u8981\u5bc6\u7801"

    .line 520
    .line 521
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    throw p0

    .line 525
    :cond_18
    :goto_c
    iget-object v7, v2, Lsf/a;->b:Lag/l;

    .line 526
    .line 527
    if-nez v7, :cond_1a

    .line 528
    .line 529
    invoke-virtual {v2}, Lsf/a;->J()V

    .line 530
    .line 531
    .line 532
    iget-object v7, v2, Lsf/a;->b:Lag/l;

    .line 533
    .line 534
    if-eqz v7, :cond_19

    .line 535
    .line 536
    goto :goto_d

    .line 537
    :cond_19
    new-instance p0, Lwf/a;

    .line 538
    .line 539
    invoke-direct {p0, v8}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    throw p0

    .line 543
    :cond_1a
    :goto_d
    iget-object v7, v2, Lsf/a;->b:Lag/l;

    .line 544
    .line 545
    iget-boolean v7, v7, Lag/l;->f:Z

    .line 546
    .line 547
    if-nez v7, :cond_27

    .line 548
    .line 549
    new-instance v7, Ljava/io/FileInputStream;

    .line 550
    .line 551
    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 552
    .line 553
    .line 554
    if-nez p2, :cond_1b

    .line 555
    .line 556
    :try_start_3
    new-instance p0, Lyf/j;

    .line 557
    .line 558
    invoke-direct {p0, v7, v1}, Lyf/j;-><init>(Ljava/io/FileInputStream;[C)V

    .line 559
    .line 560
    .line 561
    goto :goto_e

    .line 562
    :catchall_2
    move-exception p0

    .line 563
    goto/16 :goto_16

    .line 564
    .line 565
    :cond_1b
    new-instance p0, Lyf/j;

    .line 566
    .line 567
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 568
    .line 569
    .line 570
    move-result-object p2

    .line 571
    invoke-direct {p0, v7, p2}, Lyf/j;-><init>(Ljava/io/FileInputStream;[C)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 572
    .line 573
    .line 574
    :goto_e
    :try_start_4
    invoke-virtual {p0, v1, v0}, Lyf/j;->A(Lag/f;Z)Lag/g;

    .line 575
    .line 576
    .line 577
    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 578
    const-string v8, ""

    .line 579
    .line 580
    move-object v10, v8

    .line 581
    const/4 v9, 0x0

    .line 582
    :goto_f
    if-eqz p2, :cond_1d

    .line 583
    .line 584
    add-int/2addr v9, v0

    .line 585
    :try_start_5
    iget-object v11, p2, Lag/b;->k:Ljava/lang/String;

    .line 586
    .line 587
    if-ne v9, v0, :cond_1f

    .line 588
    .line 589
    iget-boolean p2, p2, Lag/b;->t:Z

    .line 590
    .line 591
    if-nez p2, :cond_1c

    .line 592
    .line 593
    invoke-virtual {v11, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 594
    .line 595
    .line 596
    move-result p2

    .line 597
    if-eqz p2, :cond_1d

    .line 598
    .line 599
    goto :goto_10

    .line 600
    :catchall_3
    move-exception p1

    .line 601
    goto/16 :goto_14

    .line 602
    .line 603
    :cond_1c
    :goto_10
    new-instance p2, Ljava/lang/StringBuilder;

    .line 604
    .line 605
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .line 607
    .line 608
    new-instance v10, Ljava/io/File;

    .line 609
    .line 610
    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v10

    .line 617
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object p2

    .line 627
    invoke-virtual {v11, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result p2

    .line 631
    if-nez p2, :cond_1e

    .line 632
    .line 633
    :cond_1d
    const/4 p2, 0x0

    .line 634
    goto :goto_11

    .line 635
    :cond_1e
    invoke-virtual {p0, v1, v0}, Lyf/j;->A(Lag/f;Z)Lag/g;

    .line 636
    .line 637
    .line 638
    move-result-object p2

    .line 639
    move-object v10, v11

    .line 640
    goto :goto_f

    .line 641
    :cond_1f
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 642
    .line 643
    .line 644
    move-result p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 645
    if-eqz p2, :cond_1d

    .line 646
    .line 647
    const/4 p2, 0x1

    .line 648
    :goto_11
    :try_start_6
    invoke-virtual {p0}, Lyf/j;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 649
    .line 650
    .line 651
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 652
    .line 653
    .line 654
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 655
    .line 656
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    iput-boolean v0, v2, Lsf/a;->e:Z

    .line 660
    .line 661
    if-eqz p2, :cond_20

    .line 662
    .line 663
    new-instance p0, Ljava/io/File;

    .line 664
    .line 665
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object p0

    .line 672
    invoke-virtual {v2, p0}, Lsf/a;->r(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    goto :goto_12

    .line 676
    :cond_20
    invoke-virtual {v2, p1}, Lsf/a;->r(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    :goto_12
    iget-object p0, v2, Lsf/a;->d:Lcg/a;

    .line 680
    .line 681
    iget p1, p0, Lcg/a;->a:I

    .line 682
    .line 683
    invoke-static {p1, v0}, Ld0/f;->a(II)Z

    .line 684
    .line 685
    .line 686
    move-result p1

    .line 687
    if-nez p1, :cond_22

    .line 688
    .line 689
    if-eqz p3, :cond_21

    .line 690
    .line 691
    new-instance p1, Ljava/lang/StringBuilder;

    .line 692
    .line 693
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 694
    .line 695
    .line 696
    iget-wide v3, p0, Lcg/a;->c:J

    .line 697
    .line 698
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    iget-wide v3, p0, Lcg/a;->b:J

    .line 705
    .line 706
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    const-string p2, "   "

    .line 710
    .line 711
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    iget p0, p0, Lcg/a;->d:I

    .line 715
    .line 716
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    const-string p0, "%"

    .line 720
    .line 721
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object p0

    .line 728
    invoke-virtual {p3, p0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 729
    .line 730
    .line 731
    :cond_21
    const-wide/16 p0, 0x12c

    .line 732
    .line 733
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    .line 734
    .line 735
    .line 736
    goto :goto_12

    .line 737
    :cond_22
    iget p1, p0, Lcg/a;->e:I

    .line 738
    .line 739
    invoke-static {p1, v0}, Ld0/f;->a(II)Z

    .line 740
    .line 741
    .line 742
    move-result p1

    .line 743
    if-eqz p1, :cond_24

    .line 744
    .line 745
    :cond_23
    :goto_13
    return-void

    .line 746
    :cond_24
    iget p1, p0, Lcg/a;->e:I

    .line 747
    .line 748
    const/4 p2, 0x3

    .line 749
    invoke-static {p1, p2}, Ld0/f;->a(II)Z

    .line 750
    .line 751
    .line 752
    move-result p1

    .line 753
    if-nez p1, :cond_26

    .line 754
    .line 755
    iget p0, p0, Lcg/a;->e:I

    .line 756
    .line 757
    const/4 p1, 0x4

    .line 758
    invoke-static {p0, p1}, Ld0/f;->a(II)Z

    .line 759
    .line 760
    .line 761
    move-result p0

    .line 762
    if-eqz p0, :cond_25

    .line 763
    .line 764
    new-instance p0, Ljava/lang/Exception;

    .line 765
    .line 766
    const-string p1, "\u5df2\u53d6\u6d88"

    .line 767
    .line 768
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    throw p0

    .line 772
    :cond_25
    new-instance p0, Ljava/lang/Exception;

    .line 773
    .line 774
    const-string p1, "\u89e3\u538b\u51fa\u9519"

    .line 775
    .line 776
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    throw p0

    .line 780
    :cond_26
    new-instance p1, Ljava/lang/Exception;

    .line 781
    .line 782
    new-instance p2, Ljava/lang/StringBuilder;

    .line 783
    .line 784
    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    iget-object p0, p0, Lcg/a;->f:Ljava/lang/Exception;

    .line 788
    .line 789
    invoke-static {p0, p2}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object p0

    .line 793
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    throw p1

    .line 797
    :goto_14
    :try_start_7
    invoke-virtual {p0}, Lyf/j;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 798
    .line 799
    .line 800
    goto :goto_15

    .line 801
    :catchall_4
    move-exception p0

    .line 802
    :try_start_8
    new-array p2, v0, [Ljava/lang/Class;

    .line 803
    .line 804
    aput-object v4, p2, v5

    .line 805
    .line 806
    invoke-virtual {v4, v3, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 807
    .line 808
    .line 809
    move-result-object p2

    .line 810
    new-array p3, v0, [Ljava/lang/Object;

    .line 811
    .line 812
    aput-object p0, p3, v5

    .line 813
    .line 814
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 815
    .line 816
    .line 817
    :catch_1
    :goto_15
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 818
    :goto_16
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 819
    .line 820
    .line 821
    goto :goto_17

    .line 822
    :catchall_5
    move-exception p1

    .line 823
    :try_start_b
    new-array p2, v0, [Ljava/lang/Class;

    .line 824
    .line 825
    aput-object v4, p2, v5

    .line 826
    .line 827
    invoke-virtual {v4, v3, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 828
    .line 829
    .line 830
    move-result-object p2

    .line 831
    new-array p3, v0, [Ljava/lang/Object;

    .line 832
    .line 833
    aput-object p1, p3, v5

    .line 834
    .line 835
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 836
    .line 837
    .line 838
    :catch_2
    :goto_17
    throw p0

    .line 839
    :cond_27
    new-instance p0, Ljava/lang/Exception;

    .line 840
    .line 841
    const-string p1, "\u6b64\u538b\u7f29\u5305\u662f\u62c6\u5206\u5305\uff0c\u9700\u591a\u4e2a\u4e00\u8d77\u89e3\u538b"

    .line 842
    .line 843
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    throw p0

    .line 847
    :cond_28
    new-instance p0, Lwf/a;

    .line 848
    .line 849
    const-string p1, "invalid zip file"

    .line 850
    .line 851
    invoke-direct {p0, p1}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    goto :goto_19

    .line 855
    :goto_18
    throw p0

    .line 856
    :goto_19
    goto :goto_18
.end method

.method public static x0(ILandroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    and-int/2addr v0, v1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 14
    .line 15
    iget-boolean v0, v0, Lwa/u;->s:Z

    .line 16
    .line 17
    const/16 v1, 0x1a

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v0, :cond_6

    .line 22
    .line 23
    if-ne p0, v3, :cond_3

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const/high16 v0, 0x10000000

    .line 30
    .line 31
    and-int/2addr p0, v0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    const/high16 v0, 0x200000

    .line 42
    .line 43
    and-int/2addr p0, v0

    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    if-ne p0, v2, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    .line 61
    if-lt p0, v1, :cond_5

    .line 62
    .line 63
    invoke-static {p1, p2}, Leg/a;->k(Landroid/content/Context;Landroid/content/Intent;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void

    .line 71
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    .line 73
    const/16 v4, 0x17

    .line 74
    .line 75
    if-lt v0, v4, :cond_7

    .line 76
    .line 77
    const/high16 v4, 0xc000000

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_7
    const/high16 v4, 0x8000000

    .line 81
    .line 82
    :goto_1
    const/4 v5, 0x0

    .line 83
    if-ne p0, v3, :cond_8

    .line 84
    .line 85
    invoke-static {p1, v5, p2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    goto :goto_2

    .line 90
    :cond_8
    if-ne p0, v2, :cond_9

    .line 91
    .line 92
    invoke-static {p1, v5, p2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    goto :goto_2

    .line 97
    :cond_9
    if-lt v0, v1, :cond_a

    .line 98
    .line 99
    invoke-static {v4, p1, p2}, Lcom/hjq/permissions/permission/special/b;->d(ILandroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    goto :goto_2

    .line 104
    :cond_a
    invoke-static {p1, v5, p2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    :goto_2
    const/16 p2, 0x22

    .line 109
    .line 110
    if-lt v0, p2, :cond_b

    .line 111
    .line 112
    invoke-static {}, Ld2/c;->f()Landroid/app/ActivityOptions;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-static {p2}, La2/b1;->e(Landroid/app/ActivityOptions;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-static {p0, p1, p2}, La2/a;->m(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_b
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V

    .line 128
    .line 129
    .line 130
    :goto_3
    return-void
.end method

.method public static y([Lp0/f;)[Lp0/f;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    new-array v0, v0, [Lp0/f;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    new-instance v2, Lp0/f;

    .line 13
    .line 14
    aget-object v3, p0, v1

    .line 15
    .line 16
    invoke-direct {v2, v3}, Lp0/f;-><init>(Lp0/f;)V

    .line 17
    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-object v0
.end method

.method public static y0(Landroid/content/ContextWrapper;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p0, p1}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static z(Ljava/lang/Object;Ljava/lang/Comparable;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_1

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    :cond_0
    return v0

    .line 8
    :cond_1
    if-nez p1, :cond_2

    .line 9
    .line 10
    return v0

    .line 11
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static z0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0, p1}, Lg7/d;->g(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    goto :goto_3

    .line 19
    :cond_0
    move-object v0, v2

    .line 20
    :goto_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    const/4 v1, 0x1

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    array-length v3, p1

    .line 46
    const/4 v4, 0x0

    .line 47
    :goto_1
    if-ge v4, v3, :cond_3

    .line 48
    .line 49
    aget-object v5, p1, v4

    .line 50
    .line 51
    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 52
    .line 53
    if-eqz v6, :cond_2

    .line 54
    .line 55
    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 56
    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    new-instance v0, Landroid/content/Intent;

    .line 60
    .line 61
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance p1, Landroid/content/ComponentName;

    .line 65
    .line 66
    iget-object v3, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {p1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 81
    .line 82
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    const/high16 p1, 0x10200000

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    invoke-static {v1, p0, v0}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :goto_4
    return-void
.end method


# virtual methods
.method public abstract E(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
.end method

.method public abstract F(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
.end method

.method public abstract Q(Ljava/lang/Class;)[Ljava/lang/String;
.end method

.method public c(Landroid/view/View;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public d()Landroid/util/Property;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract g0(Ljava/lang/Class;)Z
.end method
