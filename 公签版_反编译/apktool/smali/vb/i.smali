.class public final synthetic Lvb/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldb/q;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lvb/k;


# direct methods
.method public synthetic constructor <init>(Lvb/k;I)V
    .locals 0

    .line 1
    iput p2, p0, Lvb/i;->a:I

    iput-object p1, p0, Lvb/i;->b:Lvb/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbi/a;Lag/h;)V
    .locals 7

    .line 1
    iget p2, p0, Lvb/i;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ldb/l;

    .line 7
    .line 8
    iget-object p1, p0, Lvb/i;->b:Lvb/k;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p1, Lvb/k;->E:Z

    .line 12
    .line 13
    iget-object v0, p1, Lvb/k;->A:Ldb/p;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ldb/p;->d(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lvb/k;->e()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lvb/k;->f()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    check-cast p1, Ldb/x;

    .line 26
    .line 27
    iget-object p2, p0, Lvb/i;->b:Lvb/k;

    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ldb/x;->c()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_4

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    iget v1, p1, Ldb/x;->e:I

    .line 40
    .line 41
    if-eq v1, v0, :cond_4

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    if-eq v1, v0, :cond_4

    .line 45
    .line 46
    const/4 v0, 0x3

    .line 47
    if-eq v1, v0, :cond_4

    .line 48
    .line 49
    const/4 v0, 0x6

    .line 50
    if-eq v1, v0, :cond_4

    .line 51
    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p2, Lvb/k;->B:Lmb/b;

    .line 56
    .line 57
    iget-object p1, p1, Ldb/x;->c:Lmb/b;

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {p1}, Lmb/b;->a()Lmb/b;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p2, Lvb/k;->B:Lmb/b;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v2, 0x7

    .line 69
    if-ne v1, v2, :cond_5

    .line 70
    .line 71
    iget v0, v0, Lmb/b;->b:I

    .line 72
    .line 73
    iget v1, p1, Lmb/b;->b:I

    .line 74
    .line 75
    if-eq v0, v1, :cond_2

    .line 76
    .line 77
    invoke-virtual {p2}, Lvb/k;->f()V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    iget-object v0, p2, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    iget-object v0, p2, Lvb/k;->B:Lmb/b;

    .line 90
    .line 91
    iget v0, v0, Lmb/b;->c:I

    .line 92
    .line 93
    iget v1, p1, Lmb/b;->c:I

    .line 94
    .line 95
    sub-int/2addr v0, v1

    .line 96
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    const/4 v1, 0x1

    .line 101
    if-gt v0, v1, :cond_5

    .line 102
    .line 103
    iget p1, p1, Lmb/b;->c:I

    .line 104
    .line 105
    if-lez p1, :cond_3

    .line 106
    .line 107
    invoke-virtual {p2}, Lvb/k;->h()V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {p2}, Lvb/k;->f()V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    :goto_0
    invoke-virtual {p2}, Lvb/k;->f()V

    .line 116
    .line 117
    .line 118
    :cond_5
    :goto_1
    return-void

    .line 119
    :pswitch_1
    check-cast p1, Ldb/i;

    .line 120
    .line 121
    iget-object p2, p0, Lvb/i;->b:Lvb/k;

    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    iget v0, p1, Ldb/i;->e:I

    .line 127
    .line 128
    const/4 v1, 0x2

    .line 129
    if-ne v0, v1, :cond_10

    .line 130
    .line 131
    iget-boolean v0, p1, Ldb/i;->g:Z

    .line 132
    .line 133
    if-nez v0, :cond_10

    .line 134
    .line 135
    iget-object v0, p1, Ldb/i;->d:Landroid/view/KeyEvent;

    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    and-int/lit16 v1, v1, 0x1000

    .line 142
    .line 143
    if-eqz v1, :cond_6

    .line 144
    .line 145
    goto/16 :goto_3

    .line 146
    .line 147
    :cond_6
    iget-boolean v1, p1, Ldb/i;->f:Z

    .line 148
    .line 149
    if-nez v1, :cond_10

    .line 150
    .line 151
    iget-object v1, p2, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_10

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    const/16 v1, 0x13

    .line 164
    .line 165
    const/4 v2, -0x1

    .line 166
    const/4 v3, 0x3

    .line 167
    if-eq v0, v1, :cond_d

    .line 168
    .line 169
    const/16 v1, 0x14

    .line 170
    .line 171
    if-eq v0, v1, :cond_c

    .line 172
    .line 173
    const/16 v1, 0x3d

    .line 174
    .line 175
    if-eq v0, v1, :cond_a

    .line 176
    .line 177
    const/16 v1, 0x42

    .line 178
    .line 179
    if-eq v0, v1, :cond_8

    .line 180
    .line 181
    const/16 p1, 0x5c

    .line 182
    .line 183
    if-eq v0, p1, :cond_7

    .line 184
    .line 185
    const/16 p1, 0x5d

    .line 186
    .line 187
    if-eq v0, p1, :cond_7

    .line 188
    .line 189
    goto/16 :goto_3

    .line 190
    .line 191
    :cond_7
    invoke-virtual {p2}, Lvb/k;->f()V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_3

    .line 195
    .line 196
    :cond_8
    iget v0, p2, Lvb/k;->x:I

    .line 197
    .line 198
    if-ne v0, v2, :cond_9

    .line 199
    .line 200
    iget-object v0, p2, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 201
    .line 202
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iget-boolean v0, v0, Ltb/e;->M:Z

    .line 207
    .line 208
    if-eqz v0, :cond_9

    .line 209
    .line 210
    invoke-virtual {p2}, Lvb/k;->g()V

    .line 211
    .line 212
    .line 213
    :cond_9
    iget v0, p2, Lvb/k;->x:I

    .line 214
    .line 215
    invoke-virtual {p2, v0}, Lvb/k;->i(I)Z

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    if-eqz p2, :cond_10

    .line 220
    .line 221
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 222
    .line 223
    iput-object p2, p1, Ldb/i;->c:Ljava/lang/Boolean;

    .line 224
    .line 225
    iput v3, p1, Lbi/a;->a:I

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_a
    iget v0, p2, Lvb/k;->x:I

    .line 229
    .line 230
    if-ne v0, v2, :cond_b

    .line 231
    .line 232
    invoke-virtual {p2}, Lvb/k;->g()V

    .line 233
    .line 234
    .line 235
    :cond_b
    iget v0, p2, Lvb/k;->x:I

    .line 236
    .line 237
    invoke-virtual {p2, v0}, Lvb/k;->i(I)Z

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    if-eqz p2, :cond_10

    .line 242
    .line 243
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 244
    .line 245
    iput-object p2, p1, Ldb/i;->c:Ljava/lang/Boolean;

    .line 246
    .line 247
    iput v3, p1, Lbi/a;->a:I

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_c
    invoke-virtual {p2}, Lvb/k;->g()V

    .line 251
    .line 252
    .line 253
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 254
    .line 255
    iput-object p2, p1, Ldb/i;->c:Ljava/lang/Boolean;

    .line 256
    .line 257
    iput v3, p1, Lbi/a;->a:I

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_d
    iget-object v0, p2, Lvb/k;->z:La2/w0;

    .line 261
    .line 262
    iget-object v0, v0, La2/w0;->b:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v0, Landroid/widget/ListView;

    .line 265
    .line 266
    iget v1, p2, Lvb/k;->x:I

    .line 267
    .line 268
    const/4 v4, 0x1

    .line 269
    sub-int/2addr v1, v4

    .line 270
    if-gez v1, :cond_e

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_e
    iput v1, p2, Lvb/k;->x:I

    .line 274
    .line 275
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    check-cast v0, Lvb/a;

    .line 280
    .line 281
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 282
    .line 283
    .line 284
    iget v0, p2, Lvb/k;->x:I

    .line 285
    .line 286
    if-eq v0, v2, :cond_f

    .line 287
    .line 288
    iget-object v1, p2, Lvb/k;->z:La2/w0;

    .line 289
    .line 290
    iget-object p2, p2, Lvb/k;->y:Lvb/a;

    .line 291
    .line 292
    iget-object p2, p2, Lvb/a;->a:Lvb/k;

    .line 293
    .line 294
    iget-object p2, p2, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 295
    .line 296
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    const/high16 v2, 0x42340000    # 45.0f

    .line 309
    .line 310
    invoke-static {v4, v2, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 311
    .line 312
    .line 313
    move-result p2

    .line 314
    float-to-int p2, p2

    .line 315
    iget-object v2, v1, La2/w0;->b:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v2, Landroid/widget/ListView;

    .line 318
    .line 319
    new-instance v4, Lcom/yunpan/appmanage/carsdk/a;

    .line 320
    .line 321
    const/4 v5, 0x2

    .line 322
    invoke-direct {v4, v1, v0, p2, v5}, Lcom/yunpan/appmanage/carsdk/a;-><init>(Ljava/lang/Object;III)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 326
    .line 327
    .line 328
    :cond_f
    :goto_2
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 329
    .line 330
    iput-object p2, p1, Ldb/i;->c:Ljava/lang/Boolean;

    .line 331
    .line 332
    iput v3, p1, Lbi/a;->a:I

    .line 333
    .line 334
    :cond_10
    :goto_3
    return-void

    .line 335
    :pswitch_2
    check-cast p1, Ldb/w;

    .line 336
    .line 337
    iget-object p2, p0, Lvb/i;->b:Lvb/k;

    .line 338
    .line 339
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    iget p1, p1, Ldb/w;->g:I

    .line 343
    .line 344
    const/4 v0, 0x1

    .line 345
    if-ne p1, v0, :cond_11

    .line 346
    .line 347
    const/4 p1, 0x0

    .line 348
    invoke-virtual {p2, p1}, Lvb/k;->k(Z)V

    .line 349
    .line 350
    .line 351
    goto :goto_4

    .line 352
    :cond_11
    const/4 v0, 0x2

    .line 353
    if-ne p1, v0, :cond_13

    .line 354
    .line 355
    iget-object p1, p2, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 356
    .line 357
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 358
    .line 359
    .line 360
    move-result p1

    .line 361
    const/high16 v0, 0x44fa0000    # 2000.0f

    .line 362
    .line 363
    mul-float p1, p1, v0

    .line 364
    .line 365
    const/4 v0, 0x0

    .line 366
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    cmpl-float v1, v1, p1

    .line 371
    .line 372
    if-gez v1, :cond_12

    .line 373
    .line 374
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    cmpl-float p1, v0, p1

    .line 379
    .line 380
    if-ltz p1, :cond_13

    .line 381
    .line 382
    :cond_12
    invoke-virtual {p2}, Lvb/k;->f()V

    .line 383
    .line 384
    .line 385
    :cond_13
    :goto_4
    return-void

    .line 386
    :pswitch_3
    check-cast p1, Ldb/d;

    .line 387
    .line 388
    iget-object p2, p0, Lvb/i;->b:Lvb/k;

    .line 389
    .line 390
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    iget-boolean v0, p1, Ldb/d;->f:Z

    .line 394
    .line 395
    if-nez v0, :cond_1c

    .line 396
    .line 397
    iget-boolean v0, p2, Lvb/k;->E:Z

    .line 398
    .line 399
    if-eqz v0, :cond_1c

    .line 400
    .line 401
    const/4 v0, 0x1

    .line 402
    iget v1, p1, Ldb/d;->c:I

    .line 403
    .line 404
    if-ne v1, v0, :cond_14

    .line 405
    .line 406
    goto :goto_9

    .line 407
    :cond_14
    iget-object v2, p2, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 408
    .line 409
    const/4 v3, 0x2

    .line 410
    iget-object v4, p2, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 411
    .line 412
    iget-object v5, p1, Ldb/d;->d:Lmb/b;

    .line 413
    .line 414
    iget-object p1, p1, Ldb/d;->e:Lmb/b;

    .line 415
    .line 416
    const/4 v6, 0x0

    .line 417
    if-eq v1, v3, :cond_19

    .line 418
    .line 419
    const/4 v3, 0x3

    .line 420
    if-eq v1, v3, :cond_15

    .line 421
    .line 422
    goto :goto_6

    .line 423
    :cond_15
    iget-object v1, v4, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 424
    .line 425
    iget-object v1, v1, Ltb/f;->b:Lmb/d;

    .line 426
    .line 427
    invoke-virtual {v1}, Lmb/d;->a()Z

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    if-nez v1, :cond_18

    .line 432
    .line 433
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-eqz v1, :cond_18

    .line 438
    .line 439
    iget v1, v5, Lmb/b;->b:I

    .line 440
    .line 441
    iget v2, p1, Lmb/b;->b:I

    .line 442
    .line 443
    if-ne v1, v2, :cond_17

    .line 444
    .line 445
    iget v1, v5, Lmb/b;->c:I

    .line 446
    .line 447
    iget p1, p1, Lmb/b;->c:I

    .line 448
    .line 449
    sub-int/2addr p1, v0

    .line 450
    if-eq v1, p1, :cond_16

    .line 451
    .line 452
    goto :goto_5

    .line 453
    :cond_16
    invoke-virtual {p2, v0}, Lvb/k;->k(Z)V

    .line 454
    .line 455
    .line 456
    goto :goto_8

    .line 457
    :cond_17
    :goto_5
    invoke-virtual {p2}, Lvb/k;->f()V

    .line 458
    .line 459
    .line 460
    :cond_18
    :goto_6
    const/4 v0, 0x0

    .line 461
    goto :goto_8

    .line 462
    :cond_19
    iget-object v1, v4, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 463
    .line 464
    iget-object v1, v1, Ltb/f;->b:Lmb/d;

    .line 465
    .line 466
    invoke-virtual {v1}, Lmb/d;->a()Z

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    if-eqz v1, :cond_1a

    .line 471
    .line 472
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    iget-boolean v1, v1, Ltb/e;->e:Z

    .line 477
    .line 478
    if-eqz v1, :cond_1b

    .line 479
    .line 480
    :cond_1a
    iget v1, p1, Lmb/b;->c:I

    .line 481
    .line 482
    if-eqz v1, :cond_1b

    .line 483
    .line 484
    iget v1, v5, Lmb/b;->b:I

    .line 485
    .line 486
    iget p1, p1, Lmb/b;->b:I

    .line 487
    .line 488
    if-ne v1, p1, :cond_1b

    .line 489
    .line 490
    goto :goto_7

    .line 491
    :cond_1b
    invoke-virtual {p2}, Lvb/k;->f()V

    .line 492
    .line 493
    .line 494
    const/4 v0, 0x0

    .line 495
    :goto_7
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 496
    .line 497
    .line 498
    move-result p1

    .line 499
    invoke-virtual {p2, p1}, Lvb/k;->k(Z)V

    .line 500
    .line 501
    .line 502
    :goto_8
    if-eqz v0, :cond_1d

    .line 503
    .line 504
    invoke-virtual {p2}, Lvb/k;->h()V

    .line 505
    .line 506
    .line 507
    goto :goto_a

    .line 508
    :cond_1c
    :goto_9
    invoke-virtual {p2}, Lvb/k;->f()V

    .line 509
    .line 510
    .line 511
    :cond_1d
    :goto_a
    return-void

    .line 512
    :pswitch_4
    check-cast p1, Ldb/c;

    .line 513
    .line 514
    iget-object p1, p0, Lvb/i;->b:Lvb/k;

    .line 515
    .line 516
    invoke-virtual {p1}, Lvb/k;->d()V

    .line 517
    .line 518
    .line 519
    return-void

    .line 520
    nop

    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
