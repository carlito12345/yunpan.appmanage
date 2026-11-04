.class public final synthetic Ltb/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lte/p;
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;
.implements Lec/d;
.implements Lcom/hjq/permissions/OnPermissionCallback;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ltb/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Ltb/v;->a:I

    .line 2
    .line 3
    check-cast p1, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 4
    .line 5
    check-cast p2, Lmb/b;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const-string v0, "editor"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "pos"

    .line 16
    .line 17
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v1, p2, Lmb/b;->b:I

    .line 25
    .line 26
    iget p2, p2, Lmb/b;->c:I

    .line 27
    .line 28
    invoke-static {v1, p2}, Lsb/h;->g(II)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    const/16 p2, 0x20

    .line 33
    .line 34
    shr-long v3, v1, p2

    .line 35
    .line 36
    long-to-int v4, v3

    .line 37
    const-wide v5, 0xffffffffL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    and-long/2addr v1, v5

    .line 43
    long-to-int v2, v1

    .line 44
    iget-object v0, v0, Lmb/j;->a:Lmb/g;

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Lmb/g;->o(I)Lmb/h;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget v1, v1, Lmb/h;->c:I

    .line 51
    .line 52
    invoke-static {}, Lmb/n;->a()Lmb/n;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v0, v4}, Lmb/g;->o(I)Lmb/h;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    add-int/lit8 v8, v2, -0x40

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    sub-int v10, v2, v8

    .line 68
    .line 69
    iget v11, v7, Lmb/h;->c:I

    .line 70
    .line 71
    add-int/lit8 v12, v2, 0x41

    .line 72
    .line 73
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    iget-object v12, v3, Lmb/n;->a:Landroid/text/Editable;

    .line 78
    .line 79
    invoke-interface {v12, v7, v8, v11}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 80
    .line 81
    .line 82
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-static {v12, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 91
    .line 92
    .line 93
    iget-object v3, v3, Lmb/n;->b:Landroid/text/DynamicLayout;

    .line 94
    .line 95
    invoke-static {v12, v3}, Landroid/text/Selection;->moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 96
    .line 97
    .line 98
    invoke-static {v12}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-interface {v12}, Landroid/text/Editable;->clear()V

    .line 103
    .line 104
    .line 105
    invoke-static {v12}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 106
    .line 107
    .line 108
    add-int/2addr v3, v8

    .line 109
    if-ne v3, v1, :cond_1

    .line 110
    .line 111
    if-ne v2, v3, :cond_1

    .line 112
    .line 113
    add-int/lit8 v2, v4, 0x1

    .line 114
    .line 115
    iget-object v0, v0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-ne v2, v0, :cond_0

    .line 122
    .line 123
    invoke-static {v4, v1}, Lsb/h;->g(II)J

    .line 124
    .line 125
    .line 126
    move-result-wide v0

    .line 127
    goto :goto_0

    .line 128
    :cond_0
    invoke-static {v2, v9}, Lsb/h;->g(II)J

    .line 129
    .line 130
    .line 131
    move-result-wide v0

    .line 132
    goto :goto_0

    .line 133
    :cond_1
    invoke-static {v4, v3}, Lsb/h;->g(II)J

    .line 134
    .line 135
    .line 136
    move-result-wide v0

    .line 137
    :goto_0
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    shr-long v2, v0, p2

    .line 146
    .line 147
    long-to-int p2, v2

    .line 148
    and-long/2addr v0, v5

    .line 149
    long-to-int v1, v0

    .line 150
    invoke-virtual {p1, p2, v1}, Lmb/a;->A(II)Lmb/b;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    return-object p1

    .line 155
    :pswitch_0
    const-string v0, "editor"

    .line 156
    .line 157
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v0, "pos"

    .line 161
    .line 162
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget v1, p2, Lmb/b;->b:I

    .line 170
    .line 171
    iget p2, p2, Lmb/b;->c:I

    .line 172
    .line 173
    invoke-static {v1, p2}, Lsb/h;->g(II)J

    .line 174
    .line 175
    .line 176
    move-result-wide v1

    .line 177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    const/16 p2, 0x20

    .line 181
    .line 182
    shr-long v3, v1, p2

    .line 183
    .line 184
    long-to-int v4, v3

    .line 185
    const-wide v5, 0xffffffffL

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    and-long/2addr v1, v5

    .line 191
    long-to-int v2, v1

    .line 192
    invoke-static {}, Lmb/n;->a()Lmb/n;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iget-object v0, v0, Lmb/j;->a:Lmb/g;

    .line 197
    .line 198
    invoke-virtual {v0, v4}, Lmb/g;->o(I)Lmb/h;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v1, v2, v3}, Lmb/n;->b(ILmb/h;)I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-ne v1, v2, :cond_3

    .line 207
    .line 208
    if-nez v2, :cond_3

    .line 209
    .line 210
    if-nez v4, :cond_2

    .line 211
    .line 212
    const-wide/16 v0, 0x0

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 216
    .line 217
    invoke-virtual {v0, v4}, Lmb/g;->o(I)Lmb/h;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iget v0, v0, Lmb/h;->c:I

    .line 222
    .line 223
    invoke-static {v4, v0}, Lsb/h;->g(II)J

    .line 224
    .line 225
    .line 226
    move-result-wide v0

    .line 227
    goto :goto_1

    .line 228
    :cond_3
    invoke-static {v4, v1}, Lsb/h;->g(II)J

    .line 229
    .line 230
    .line 231
    move-result-wide v0

    .line 232
    :goto_1
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    shr-long v2, v0, p2

    .line 241
    .line 242
    long-to-int p2, v2

    .line 243
    and-long/2addr v0, v5

    .line 244
    long-to-int v1, v0

    .line 245
    invoke-virtual {p1, p2, v1}, Lmb/a;->A(II)Lmb/b;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    return-object p1

    .line 250
    :pswitch_1
    const-string v0, "editor"

    .line 251
    .line 252
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    const-string v0, "pos"

    .line 256
    .line 257
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object v0, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 261
    .line 262
    iget v1, p2, Lmb/b;->b:I

    .line 263
    .line 264
    iget p2, p2, Lmb/b;->c:I

    .line 265
    .line 266
    invoke-interface {v0, v1, p2}, Lwb/d;->g(II)J

    .line 267
    .line 268
    .line 269
    move-result-wide v0

    .line 270
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    const/16 p2, 0x20

    .line 279
    .line 280
    shr-long v2, v0, p2

    .line 281
    .line 282
    long-to-int p2, v2

    .line 283
    const-wide v2, 0xffffffffL

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    and-long/2addr v0, v2

    .line 289
    long-to-int v1, v0

    .line 290
    invoke-virtual {p1, p2, v1}, Lmb/a;->A(II)Lmb/b;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    return-object p1

    .line 295
    :pswitch_2
    const-string v0, "editor"

    .line 296
    .line 297
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const-string v0, "pos"

    .line 301
    .line 302
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 306
    .line 307
    iget v1, p2, Lmb/b;->a:I

    .line 308
    .line 309
    invoke-interface {v0, v1}, Lwb/d;->l(I)I

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    invoke-interface {v0, v1}, Lwb/d;->q(I)Lwb/h;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    add-int/lit8 v1, v1, 0x1

    .line 318
    .line 319
    invoke-interface {v0}, Lwb/d;->a()I

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    if-eq v1, v3, :cond_5

    .line 324
    .line 325
    invoke-interface {v0, v1}, Lwb/d;->q(I)Lwb/h;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    iget v0, v0, Lwb/h;->a:I

    .line 330
    .line 331
    iget v1, v2, Lwb/h;->a:I

    .line 332
    .line 333
    if-eq v0, v1, :cond_4

    .line 334
    .line 335
    goto :goto_2

    .line 336
    :cond_4
    iget v0, v2, Lwb/h;->e:I

    .line 337
    .line 338
    add-int/lit8 v0, v0, -0x1

    .line 339
    .line 340
    goto :goto_3

    .line 341
    :cond_5
    :goto_2
    iget v0, v2, Lwb/h;->e:I

    .line 342
    .line 343
    :goto_3
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    iget-boolean v1, v1, Ltb/e;->x:Z

    .line 348
    .line 349
    if-eqz v1, :cond_7

    .line 350
    .line 351
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    iget v3, p2, Lmb/b;->b:I

    .line 356
    .line 357
    invoke-virtual {v1, v3}, Lmb/g;->o(I)Lmb/h;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    iget v2, v2, Lwb/h;->d:I

    .line 362
    .line 363
    invoke-static {v1, v2, v0}, Lmb/k;->c(Lmb/h;II)J

    .line 364
    .line 365
    .line 366
    move-result-wide v1

    .line 367
    const-wide v3, 0xffffffffL

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    and-long/2addr v1, v3

    .line 373
    long-to-int v2, v1

    .line 374
    iget v1, p2, Lmb/b;->c:I

    .line 375
    .line 376
    if-eq v1, v2, :cond_6

    .line 377
    .line 378
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    iget p2, p2, Lmb/b;->b:I

    .line 387
    .line 388
    invoke-virtual {p1, p2, v2}, Lmb/a;->A(II)Lmb/b;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    goto :goto_4

    .line 393
    :cond_6
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    iget p2, p2, Lmb/b;->b:I

    .line 402
    .line 403
    invoke-virtual {p1, p2, v0}, Lmb/a;->A(II)Lmb/b;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    goto :goto_4

    .line 408
    :cond_7
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    iget p2, v2, Lwb/h;->a:I

    .line 417
    .line 418
    invoke-virtual {p1, p2, v0}, Lmb/a;->A(II)Lmb/b;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    :goto_4
    return-object p1

    .line 423
    :pswitch_3
    const-string v0, "editor"

    .line 424
    .line 425
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    const-string v0, "pos"

    .line 429
    .line 430
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    iget-object v0, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 434
    .line 435
    iget v1, p2, Lmb/b;->a:I

    .line 436
    .line 437
    invoke-interface {v0, v1}, Lwb/d;->l(I)I

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    invoke-interface {v0, v1}, Lwb/d;->q(I)Lwb/h;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    add-int/lit8 v1, v1, 0x1

    .line 446
    .line 447
    invoke-interface {v0}, Lwb/d;->a()I

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    if-eq v1, v3, :cond_9

    .line 452
    .line 453
    invoke-interface {v0, v1}, Lwb/d;->q(I)Lwb/h;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    iget v0, v0, Lwb/h;->a:I

    .line 458
    .line 459
    iget v1, v2, Lwb/h;->a:I

    .line 460
    .line 461
    if-eq v0, v1, :cond_8

    .line 462
    .line 463
    goto :goto_5

    .line 464
    :cond_8
    iget v0, v2, Lwb/h;->e:I

    .line 465
    .line 466
    add-int/lit8 v0, v0, -0x1

    .line 467
    .line 468
    goto :goto_6

    .line 469
    :cond_9
    :goto_5
    iget v0, v2, Lwb/h;->e:I

    .line 470
    .line 471
    :goto_6
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    iget-boolean v1, v1, Ltb/e;->x:Z

    .line 476
    .line 477
    if-eqz v1, :cond_c

    .line 478
    .line 479
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    iget v3, p2, Lmb/b;->b:I

    .line 484
    .line 485
    invoke-virtual {v1, v3}, Lmb/g;->o(I)Lmb/h;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    iget v3, v2, Lwb/h;->d:I

    .line 490
    .line 491
    invoke-static {v1, v3, v0}, Lmb/k;->c(Lmb/h;II)J

    .line 492
    .line 493
    .line 494
    move-result-wide v3

    .line 495
    const/16 v1, 0x20

    .line 496
    .line 497
    shr-long/2addr v3, v1

    .line 498
    long-to-int v1, v3

    .line 499
    iget v3, p2, Lmb/b;->c:I

    .line 500
    .line 501
    if-eq v3, v1, :cond_b

    .line 502
    .line 503
    if-ne v1, v0, :cond_a

    .line 504
    .line 505
    goto :goto_7

    .line 506
    :cond_a
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 507
    .line 508
    .line 509
    move-result-object p1

    .line 510
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    iget p2, p2, Lmb/b;->b:I

    .line 515
    .line 516
    invoke-virtual {p1, p2, v1}, Lmb/a;->A(II)Lmb/b;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    goto :goto_8

    .line 521
    :cond_b
    :goto_7
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    iget p2, p2, Lmb/b;->b:I

    .line 530
    .line 531
    iget v0, v2, Lwb/h;->d:I

    .line 532
    .line 533
    invoke-virtual {p1, p2, v0}, Lmb/a;->A(II)Lmb/b;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    goto :goto_8

    .line 538
    :cond_c
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    iget p2, v2, Lwb/h;->a:I

    .line 547
    .line 548
    iget v0, v2, Lwb/h;->d:I

    .line 549
    .line 550
    invoke-virtual {p1, p2, v0}, Lmb/a;->A(II)Lmb/b;

    .line 551
    .line 552
    .line 553
    move-result-object p1

    .line 554
    :goto_8
    return-object p1

    .line 555
    :pswitch_4
    const-string v0, "editor"

    .line 556
    .line 557
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    const-string v0, "<unused var>"

    .line 561
    .line 562
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 566
    .line 567
    .line 568
    move-result-object p2

    .line 569
    invoke-virtual {p2}, Lmb/g;->n()Lmb/a;

    .line 570
    .line 571
    .line 572
    move-result-object p2

    .line 573
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 574
    .line 575
    .line 576
    move-result-object p1

    .line 577
    iget p1, p1, Lmb/g;->d:I

    .line 578
    .line 579
    invoke-virtual {p2, p1}, Lmb/a;->z(I)Lmb/b;

    .line 580
    .line 581
    .line 582
    move-result-object p1

    .line 583
    return-object p1

    .line 584
    :pswitch_5
    const-string v0, "<unused var>"

    .line 585
    .line 586
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    new-instance p1, Lmb/b;

    .line 593
    .line 594
    invoke-direct {p1}, Lmb/b;-><init>()V

    .line 595
    .line 596
    .line 597
    const/4 p2, 0x0

    .line 598
    iput p2, p1, Lmb/b;->c:I

    .line 599
    .line 600
    iput p2, p1, Lmb/b;->b:I

    .line 601
    .line 602
    iput p2, p1, Lmb/b;->a:I

    .line 603
    .line 604
    return-object p1

    .line 605
    :pswitch_6
    const-string v0, "editor"

    .line 606
    .line 607
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    const-string v0, "pos"

    .line 611
    .line 612
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    iget v1, p2, Lmb/b;->b:I

    .line 620
    .line 621
    invoke-virtual {v0, v1}, Lmb/g;->o(I)Lmb/h;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    iget v0, v0, Lmb/h;->c:I

    .line 626
    .line 627
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    iget-boolean v1, v1, Ltb/e;->x:Z

    .line 632
    .line 633
    if-eqz v1, :cond_e

    .line 634
    .line 635
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    iget v2, p2, Lmb/b;->b:I

    .line 640
    .line 641
    invoke-virtual {v1, v2}, Lmb/g;->o(I)Lmb/h;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    iget v2, v1, Lmb/h;->c:I

    .line 646
    .line 647
    const/4 v3, 0x0

    .line 648
    invoke-static {v1, v3, v2}, Lmb/k;->c(Lmb/h;II)J

    .line 649
    .line 650
    .line 651
    move-result-wide v1

    .line 652
    const-wide v3, 0xffffffffL

    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    and-long/2addr v1, v3

    .line 658
    long-to-int v2, v1

    .line 659
    iget v1, p2, Lmb/b;->c:I

    .line 660
    .line 661
    if-eq v1, v2, :cond_d

    .line 662
    .line 663
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 664
    .line 665
    .line 666
    move-result-object p1

    .line 667
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 668
    .line 669
    .line 670
    move-result-object p1

    .line 671
    iget p2, p2, Lmb/b;->b:I

    .line 672
    .line 673
    invoke-virtual {p1, p2, v2}, Lmb/a;->A(II)Lmb/b;

    .line 674
    .line 675
    .line 676
    move-result-object p1

    .line 677
    goto :goto_9

    .line 678
    :cond_d
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 679
    .line 680
    .line 681
    move-result-object p1

    .line 682
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 683
    .line 684
    .line 685
    move-result-object p1

    .line 686
    iget p2, p2, Lmb/b;->b:I

    .line 687
    .line 688
    invoke-virtual {p1, p2, v0}, Lmb/a;->A(II)Lmb/b;

    .line 689
    .line 690
    .line 691
    move-result-object p1

    .line 692
    goto :goto_9

    .line 693
    :cond_e
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 694
    .line 695
    .line 696
    move-result-object p1

    .line 697
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 698
    .line 699
    .line 700
    move-result-object p1

    .line 701
    iget p2, p2, Lmb/b;->b:I

    .line 702
    .line 703
    invoke-virtual {p1, p2, v0}, Lmb/a;->A(II)Lmb/b;

    .line 704
    .line 705
    .line 706
    move-result-object p1

    .line 707
    :goto_9
    return-object p1

    .line 708
    :pswitch_7
    const-string v0, "editor"

    .line 709
    .line 710
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    const-string v0, "pos"

    .line 714
    .line 715
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    iget-boolean v0, v0, Ltb/e;->x:Z

    .line 723
    .line 724
    const/4 v1, 0x0

    .line 725
    if-eqz v0, :cond_11

    .line 726
    .line 727
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    iget v2, p2, Lmb/b;->b:I

    .line 732
    .line 733
    invoke-virtual {v0, v2}, Lmb/g;->o(I)Lmb/h;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    iget v2, v0, Lmb/h;->c:I

    .line 738
    .line 739
    invoke-static {v0, v1, v2}, Lmb/k;->c(Lmb/h;II)J

    .line 740
    .line 741
    .line 742
    move-result-wide v2

    .line 743
    const/16 v0, 0x20

    .line 744
    .line 745
    shr-long/2addr v2, v0

    .line 746
    long-to-int v0, v2

    .line 747
    iget v2, p2, Lmb/b;->c:I

    .line 748
    .line 749
    if-eq v2, v0, :cond_10

    .line 750
    .line 751
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 752
    .line 753
    .line 754
    move-result-object v2

    .line 755
    iget v3, p2, Lmb/b;->b:I

    .line 756
    .line 757
    invoke-virtual {v2, v3}, Lmb/g;->o(I)Lmb/h;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    iget v2, v2, Lmb/h;->c:I

    .line 762
    .line 763
    if-ne v0, v2, :cond_f

    .line 764
    .line 765
    goto :goto_a

    .line 766
    :cond_f
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 767
    .line 768
    .line 769
    move-result-object p1

    .line 770
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 771
    .line 772
    .line 773
    move-result-object p1

    .line 774
    iget p2, p2, Lmb/b;->b:I

    .line 775
    .line 776
    invoke-virtual {p1, p2, v0}, Lmb/a;->A(II)Lmb/b;

    .line 777
    .line 778
    .line 779
    move-result-object p1

    .line 780
    goto :goto_b

    .line 781
    :cond_10
    :goto_a
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 782
    .line 783
    .line 784
    move-result-object p1

    .line 785
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 786
    .line 787
    .line 788
    move-result-object p1

    .line 789
    iget p2, p2, Lmb/b;->b:I

    .line 790
    .line 791
    invoke-virtual {p1, p2, v1}, Lmb/a;->A(II)Lmb/b;

    .line 792
    .line 793
    .line 794
    move-result-object p1

    .line 795
    goto :goto_b

    .line 796
    :cond_11
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 797
    .line 798
    .line 799
    move-result-object p1

    .line 800
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 801
    .line 802
    .line 803
    move-result-object p1

    .line 804
    iget p2, p2, Lmb/b;->b:I

    .line 805
    .line 806
    invoke-virtual {p1, p2, v1}, Lmb/a;->A(II)Lmb/b;

    .line 807
    .line 808
    .line 809
    move-result-object p1

    .line 810
    :goto_b
    return-object p1

    .line 811
    :pswitch_8
    const-string v0, "editor"

    .line 812
    .line 813
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    const-string v0, "pos"

    .line 817
    .line 818
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    iget-object v0, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 822
    .line 823
    iget v1, p2, Lmb/b;->a:I

    .line 824
    .line 825
    invoke-interface {v0, v1}, Lwb/d;->l(I)I

    .line 826
    .line 827
    .line 828
    move-result v1

    .line 829
    iget p2, p2, Lmb/b;->c:I

    .line 830
    .line 831
    invoke-interface {v0, v1}, Lwb/d;->q(I)Lwb/h;

    .line 832
    .line 833
    .line 834
    move-result-object v1

    .line 835
    iget v1, v1, Lwb/h;->d:I

    .line 836
    .line 837
    sub-int/2addr p2, v1

    .line 838
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLastVisibleRow()I

    .line 839
    .line 840
    .line 841
    move-result v1

    .line 842
    invoke-interface {v0, v1}, Lwb/d;->q(I)Lwb/h;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    iget v1, v0, Lwb/h;->a:I

    .line 847
    .line 848
    iget v2, v0, Lwb/h;->d:I

    .line 849
    .line 850
    iget v0, v0, Lwb/h;->e:I

    .line 851
    .line 852
    sub-int/2addr v0, v2

    .line 853
    invoke-static {p2, v0}, Lsb/h;->b(II)I

    .line 854
    .line 855
    .line 856
    move-result p2

    .line 857
    add-int/2addr p2, v2

    .line 858
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 859
    .line 860
    .line 861
    move-result-object p1

    .line 862
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 863
    .line 864
    .line 865
    move-result-object p1

    .line 866
    invoke-virtual {p1, v1, p2}, Lmb/a;->A(II)Lmb/b;

    .line 867
    .line 868
    .line 869
    move-result-object p1

    .line 870
    return-object p1

    .line 871
    :pswitch_9
    const-string v0, "editor"

    .line 872
    .line 873
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    const-string v0, "pos"

    .line 877
    .line 878
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    iget-object v0, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 882
    .line 883
    iget v1, p2, Lmb/b;->a:I

    .line 884
    .line 885
    invoke-interface {v0, v1}, Lwb/d;->l(I)I

    .line 886
    .line 887
    .line 888
    move-result v1

    .line 889
    iget p2, p2, Lmb/b;->c:I

    .line 890
    .line 891
    invoke-interface {v0, v1}, Lwb/d;->q(I)Lwb/h;

    .line 892
    .line 893
    .line 894
    move-result-object v1

    .line 895
    iget v1, v1, Lwb/h;->d:I

    .line 896
    .line 897
    sub-int/2addr p2, v1

    .line 898
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getFirstVisibleRow()I

    .line 899
    .line 900
    .line 901
    move-result v1

    .line 902
    invoke-interface {v0, v1}, Lwb/d;->q(I)Lwb/h;

    .line 903
    .line 904
    .line 905
    move-result-object v0

    .line 906
    iget v1, v0, Lwb/h;->a:I

    .line 907
    .line 908
    iget v2, v0, Lwb/h;->d:I

    .line 909
    .line 910
    iget v0, v0, Lwb/h;->e:I

    .line 911
    .line 912
    sub-int/2addr v0, v2

    .line 913
    invoke-static {p2, v0}, Lsb/h;->b(II)I

    .line 914
    .line 915
    .line 916
    move-result p2

    .line 917
    add-int/2addr p2, v2

    .line 918
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 919
    .line 920
    .line 921
    move-result-object p1

    .line 922
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 923
    .line 924
    .line 925
    move-result-object p1

    .line 926
    invoke-virtual {p1, v1, p2}, Lmb/a;->A(II)Lmb/b;

    .line 927
    .line 928
    .line 929
    move-result-object p1

    .line 930
    return-object p1

    .line 931
    :pswitch_a
    const-string v0, "editor"

    .line 932
    .line 933
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 934
    .line 935
    .line 936
    const-string v0, "pos"

    .line 937
    .line 938
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 939
    .line 940
    .line 941
    iget-object v0, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 942
    .line 943
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 944
    .line 945
    .line 946
    move-result v1

    .line 947
    int-to-float v1, v1

    .line 948
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 949
    .line 950
    .line 951
    move-result v2

    .line 952
    int-to-float v2, v2

    .line 953
    div-float/2addr v1, v2

    .line 954
    float-to-double v1, v1

    .line 955
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 956
    .line 957
    .line 958
    move-result-wide v1

    .line 959
    double-to-float v1, v1

    .line 960
    float-to-int v1, v1

    .line 961
    iget v2, p2, Lmb/b;->a:I

    .line 962
    .line 963
    invoke-interface {v0, v2}, Lwb/d;->l(I)I

    .line 964
    .line 965
    .line 966
    move-result v2

    .line 967
    add-int/2addr v1, v2

    .line 968
    invoke-interface {v0}, Lwb/d;->a()I

    .line 969
    .line 970
    .line 971
    move-result v3

    .line 972
    add-int/lit8 v3, v3, -0x1

    .line 973
    .line 974
    invoke-static {v1, v3}, Lsb/h;->b(II)I

    .line 975
    .line 976
    .line 977
    move-result v1

    .line 978
    iget p2, p2, Lmb/b;->c:I

    .line 979
    .line 980
    invoke-interface {v0, v2}, Lwb/d;->q(I)Lwb/h;

    .line 981
    .line 982
    .line 983
    move-result-object v2

    .line 984
    iget v2, v2, Lwb/h;->d:I

    .line 985
    .line 986
    sub-int/2addr p2, v2

    .line 987
    invoke-interface {v0, v1}, Lwb/d;->q(I)Lwb/h;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    iget v1, v0, Lwb/h;->a:I

    .line 992
    .line 993
    iget v2, v0, Lwb/h;->d:I

    .line 994
    .line 995
    iget v0, v0, Lwb/h;->e:I

    .line 996
    .line 997
    sub-int/2addr v0, v2

    .line 998
    invoke-static {p2, v0}, Lsb/h;->b(II)I

    .line 999
    .line 1000
    .line 1001
    move-result p2

    .line 1002
    add-int/2addr p2, v2

    .line 1003
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 1004
    .line 1005
    .line 1006
    move-result-object p1

    .line 1007
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 1008
    .line 1009
    .line 1010
    move-result-object p1

    .line 1011
    invoke-virtual {p1, v1, p2}, Lmb/a;->A(II)Lmb/b;

    .line 1012
    .line 1013
    .line 1014
    move-result-object p1

    .line 1015
    return-object p1

    .line 1016
    :pswitch_b
    const-string v0, "editor"

    .line 1017
    .line 1018
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    const-string v0, "pos"

    .line 1022
    .line 1023
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1024
    .line 1025
    .line 1026
    iget-object v0, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 1027
    .line 1028
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 1029
    .line 1030
    .line 1031
    move-result v1

    .line 1032
    int-to-float v1, v1

    .line 1033
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 1034
    .line 1035
    .line 1036
    move-result v2

    .line 1037
    int-to-float v2, v2

    .line 1038
    div-float/2addr v1, v2

    .line 1039
    float-to-double v1, v1

    .line 1040
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 1041
    .line 1042
    .line 1043
    move-result-wide v1

    .line 1044
    double-to-float v1, v1

    .line 1045
    float-to-int v1, v1

    .line 1046
    iget v2, p2, Lmb/b;->a:I

    .line 1047
    .line 1048
    invoke-interface {v0, v2}, Lwb/d;->l(I)I

    .line 1049
    .line 1050
    .line 1051
    move-result v2

    .line 1052
    sub-int v1, v2, v1

    .line 1053
    .line 1054
    invoke-interface {v0}, Lwb/d;->a()I

    .line 1055
    .line 1056
    .line 1057
    move-result v3

    .line 1058
    add-int/lit8 v3, v3, -0x1

    .line 1059
    .line 1060
    invoke-static {v1, v3}, Lsb/h;->b(II)I

    .line 1061
    .line 1062
    .line 1063
    move-result v1

    .line 1064
    iget p2, p2, Lmb/b;->c:I

    .line 1065
    .line 1066
    invoke-interface {v0, v2}, Lwb/d;->q(I)Lwb/h;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v2

    .line 1070
    iget v2, v2, Lwb/h;->d:I

    .line 1071
    .line 1072
    sub-int/2addr p2, v2

    .line 1073
    invoke-interface {v0, v1}, Lwb/d;->q(I)Lwb/h;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v0

    .line 1077
    iget v1, v0, Lwb/h;->a:I

    .line 1078
    .line 1079
    iget v2, v0, Lwb/h;->d:I

    .line 1080
    .line 1081
    iget v0, v0, Lwb/h;->e:I

    .line 1082
    .line 1083
    sub-int/2addr v0, v2

    .line 1084
    invoke-static {p2, v0}, Lsb/h;->b(II)I

    .line 1085
    .line 1086
    .line 1087
    move-result p2

    .line 1088
    add-int/2addr p2, v2

    .line 1089
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 1090
    .line 1091
    .line 1092
    move-result-object p1

    .line 1093
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 1094
    .line 1095
    .line 1096
    move-result-object p1

    .line 1097
    invoke-virtual {p1, v1, p2}, Lmb/a;->A(II)Lmb/b;

    .line 1098
    .line 1099
    .line 1100
    move-result-object p1

    .line 1101
    return-object p1

    .line 1102
    nop

    .line 1103
    :pswitch_data_0
    .packed-switch 0x0
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

.method public g(Lmc/b;)V
    .locals 7

    .line 1
    iget v0, p0, Ltb/v;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/yunpan/appmanage/ui/ActivityApps;->L:I

    .line 7
    .line 8
    invoke-static {}, Lha/e6;->a()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iput-wide v1, v0, Lcom/yunpan/appmanage/util/w;->h0:J

    .line 18
    .line 19
    :try_start_0
    iget-object v3, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 20
    .line 21
    const-string v4, "IcoUpdateTime"

    .line 22
    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v3, v4, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :catch_0
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/k;->k()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :sswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityApps;->L:I

    .line 43
    .line 44
    const-string v0, "UserInfo{"

    .line 45
    .line 46
    const-string v1, ":"

    .line 47
    .line 48
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 54
    .line 55
    const-string v4, "pm list users"

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const-wide/16 v5, 0x7d0

    .line 61
    .line 62
    invoke-static {v5, v6, v4}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object v3, v3, Lfa/a0;->b:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    const/4 v5, 0x0

    .line 92
    invoke-static {v4, v0, v1, v5}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-static {v4, v1, v1, v5}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_2

    .line 109
    .line 110
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 111
    .line 112
    iput-object v2, v0, Lcom/yunpan/appmanage/util/k;->u:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    .line 114
    :catch_1
    :cond_2
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :sswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->G:I

    .line 119
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-interface {v1}, Lcom/yunpan/appmanage/db/AppDao;->get_app_user()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_3

    .line 146
    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 152
    .line 153
    new-instance v3, Lx9/n3;

    .line 154
    .line 155
    invoke-direct {v3, v2}, Lx9/n3;-><init>(Lcom/yunpan/appmanage/db/AppBean;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_3
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :sswitch_2
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 170
    .line 171
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_4

    .line 176
    .line 177
    const/4 v1, 0x1

    .line 178
    invoke-virtual {v0, v1}, Lfa/j;->d(Z)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_4
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 183
    .line 184
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_6

    .line 189
    .line 190
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_5

    .line 195
    .line 196
    const-string v1, "disconnect:"

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Lfa/m;->O(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_5
    :try_start_2
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 202
    .line 203
    .line 204
    :catch_2
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 205
    .line 206
    const-string v1, "\u672a\u8fde\u63a5"

    .line 207
    .line 208
    iput-object v1, v0, Lfa/j;->h:Ljava/lang/String;

    .line 209
    .line 210
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :sswitch_3
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 215
    .line 216
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const-string v1, "\u5de5\u7a0b\u6a21\u5f0f"

    .line 225
    .line 226
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean_name(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-nez v0, :cond_7

    .line 231
    .line 232
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    const-string v1, "\u5de5\u5382\u6a21\u5f0f"

    .line 241
    .line 242
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean_name(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    :cond_7
    if-nez v0, :cond_8

    .line 247
    .line 248
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    const-string v1, "\u5de5\u7a0b"

    .line 257
    .line 258
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean_name(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    :cond_8
    if-nez v0, :cond_9

    .line 263
    .line 264
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    const-string v1, "\u5de5\u7a0b\u754c\u9762"

    .line 273
    .line 274
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean_name(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    :cond_9
    if-nez v0, :cond_a

    .line 279
    .line 280
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    const-string v1, "\u5de5\u5382\u754c\u9762"

    .line 289
    .line 290
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean_name(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    :cond_a
    const-string v1, "\u672a\u627e\u5230\u5de5\u7a0b\u6a21\u5f0f"

    .line 295
    .line 296
    if-nez v0, :cond_b

    .line 297
    .line 298
    :goto_3
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 299
    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_b
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 303
    .line 304
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 305
    .line 306
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 307
    .line 308
    iget-object v0, v0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    if-nez v0, :cond_c

    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_c
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 318
    .line 319
    .line 320
    :goto_4
    return-void

    .line 321
    :sswitch_4
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 322
    .line 323
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    const-string v0, "setprop service.adb.tcp.port 5555"

    .line 329
    .line 330
    invoke-static {v0}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    iget v0, v0, Lfa/a0;->a:I

    .line 335
    .line 336
    if-eqz v0, :cond_d

    .line 337
    .line 338
    const-string v0, "\u4fee\u6539\u5931\u8d25"

    .line 339
    .line 340
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 341
    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_d
    const-string v0, "setprop sys.connect.adb.wiress 5555"

    .line 345
    .line 346
    invoke-static {v0}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 347
    .line 348
    .line 349
    const-string v0, "setprop persist.adb.tcpip 5555"

    .line 350
    .line 351
    invoke-static {v0}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 352
    .line 353
    .line 354
    const-string v0, "setprop persist.adb.tcp.port 5555"

    .line 355
    .line 356
    invoke-static {v0}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 360
    .line 361
    .line 362
    :goto_5
    return-void

    .line 363
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_4
        0xf -> :sswitch_3
        0x10 -> :sswitch_2
        0x12 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 9

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    const/16 v1, 0x14c

    .line 4
    .line 5
    const/16 v2, 0x14d

    .line 6
    .line 7
    const/16 v3, 0x42

    .line 8
    .line 9
    const/16 v4, 0x11

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/16 v6, 0x82

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    iget v8, p0, Ltb/v;->a:I

    .line 16
    .line 17
    packed-switch v8, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->K:I

    .line 21
    .line 22
    if-eq p1, v4, :cond_1

    .line 23
    .line 24
    if-ne p1, v3, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    if-ne p1, v6, :cond_2

    .line 28
    .line 29
    invoke-static {v2, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    const/4 v5, 0x1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_1
    invoke-static {v1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    :goto_2
    return v5

    .line 39
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->H:I

    .line 40
    .line 41
    if-eq p1, v4, :cond_4

    .line 42
    .line 43
    if-ne p1, v3, :cond_3

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_3
    if-ne p1, v6, :cond_5

    .line 47
    .line 48
    invoke-static {v2, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 49
    .line 50
    .line 51
    :goto_3
    const/4 v5, 0x1

    .line 52
    goto :goto_5

    .line 53
    :cond_4
    :goto_4
    invoke-static {v1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_5
    :goto_5
    return v5

    .line 58
    :pswitch_2
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->H:I

    .line 59
    .line 60
    if-eq p1, v4, :cond_7

    .line 61
    .line 62
    if-ne p1, v3, :cond_6

    .line 63
    .line 64
    goto :goto_7

    .line 65
    :cond_6
    if-ne p1, v6, :cond_8

    .line 66
    .line 67
    invoke-static {v2, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 68
    .line 69
    .line 70
    :goto_6
    const/4 v5, 0x1

    .line 71
    goto :goto_8

    .line 72
    :cond_7
    :goto_7
    invoke-static {v1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 73
    .line 74
    .line 75
    goto :goto_6

    .line 76
    :cond_8
    :goto_8
    return v5

    .line 77
    :pswitch_3
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->K:I

    .line 78
    .line 79
    if-eq p1, v4, :cond_a

    .line 80
    .line 81
    if-ne p1, v3, :cond_9

    .line 82
    .line 83
    goto :goto_a

    .line 84
    :cond_9
    if-ne p1, v6, :cond_b

    .line 85
    .line 86
    invoke-static {v2, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 87
    .line 88
    .line 89
    :goto_9
    const/4 v5, 0x1

    .line 90
    goto :goto_b

    .line 91
    :cond_a
    :goto_a
    invoke-static {v1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 92
    .line 93
    .line 94
    goto :goto_9

    .line 95
    :cond_b
    :goto_b
    return v5

    .line 96
    :pswitch_4
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->L:I

    .line 97
    .line 98
    if-eq p1, v4, :cond_d

    .line 99
    .line 100
    if-ne p1, v3, :cond_c

    .line 101
    .line 102
    goto :goto_d

    .line 103
    :cond_c
    if-ne p1, v6, :cond_e

    .line 104
    .line 105
    invoke-static {v2, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 106
    .line 107
    .line 108
    :goto_c
    const/4 v5, 0x1

    .line 109
    goto :goto_e

    .line 110
    :cond_d
    :goto_d
    invoke-static {v1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 111
    .line 112
    .line 113
    goto :goto_c

    .line 114
    :cond_e
    :goto_e
    return v5

    .line 115
    :pswitch_5
    sget v1, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->G:I

    .line 116
    .line 117
    if-ne p1, v3, :cond_f

    .line 118
    .line 119
    invoke-static {v2, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 120
    .line 121
    .line 122
    :goto_f
    const/4 v5, 0x1

    .line 123
    goto :goto_10

    .line 124
    :cond_f
    if-eq p1, v6, :cond_10

    .line 125
    .line 126
    if-ne p1, v0, :cond_11

    .line 127
    .line 128
    :cond_10
    invoke-static {v2, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 129
    .line 130
    .line 131
    goto :goto_f

    .line 132
    :cond_11
    :goto_10
    return v5

    .line 133
    :pswitch_6
    sget v1, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->G:I

    .line 134
    .line 135
    if-ne p1, v4, :cond_12

    .line 136
    .line 137
    const/16 p1, 0x294

    .line 138
    .line 139
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 140
    .line 141
    .line 142
    :goto_11
    const/4 v5, 0x1

    .line 143
    goto :goto_12

    .line 144
    :cond_12
    if-eq p1, v6, :cond_13

    .line 145
    .line 146
    if-ne p1, v0, :cond_14

    .line 147
    .line 148
    :cond_13
    const/16 p1, 0x295

    .line 149
    .line 150
    invoke-static {p1, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 151
    .line 152
    .line 153
    goto :goto_11

    .line 154
    :cond_14
    :goto_12
    return v5

    .line 155
    :pswitch_7
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->G:I

    .line 156
    .line 157
    if-eq p1, v4, :cond_16

    .line 158
    .line 159
    if-ne p1, v3, :cond_15

    .line 160
    .line 161
    goto :goto_14

    .line 162
    :cond_15
    if-ne p1, v6, :cond_17

    .line 163
    .line 164
    const/16 p1, 0x14f

    .line 165
    .line 166
    invoke-static {p1, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 167
    .line 168
    .line 169
    :goto_13
    const/4 v5, 0x1

    .line 170
    goto :goto_15

    .line 171
    :cond_16
    :goto_14
    invoke-static {v2, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 172
    .line 173
    .line 174
    goto :goto_13

    .line 175
    :cond_17
    :goto_15
    return v5

    .line 176
    nop

    .line 177
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPermissionResult(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iget p2, p0, Ltb/v;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget p2, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p1, "\u8bf7\u6388\u4e88\u3010\u60ac\u6d6e\u7a97\u6743\u9650\u3011"

    .line 15
    .line 16
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    :pswitch_0
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method
