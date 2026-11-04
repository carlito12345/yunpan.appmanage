.class public final synthetic Lya/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lya/e;


# direct methods
.method public synthetic constructor <init>(Lya/e;I)V
    .locals 0

    .line 1
    iput p2, p0, Lya/c;->a:I

    iput-object p1, p0, Lya/c;->b:Lya/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget v0, p0, Lya/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lya/c;->b:Lya/e;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    float-to-int v1, v1

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    float-to-int v2, v2

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iget-object v3, v0, Lya/e;->C:Lya/d;

    .line 26
    .line 27
    iget-object v4, v0, Lya/e;->E:Lya/d;

    .line 28
    .line 29
    iget-object v5, v0, Lya/e;->F:Lya/d;

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    const-wide/16 v7, 0x0

    .line 33
    .line 34
    if-eqz p2, :cond_1a

    .line 35
    .line 36
    if-eq p2, v6, :cond_12

    .line 37
    .line 38
    const/4 v9, 0x2

    .line 39
    if-eq p2, v9, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x3

    .line 42
    if-eq p2, p1, :cond_12

    .line 43
    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :cond_0
    iget-boolean p2, v0, Lya/e;->l:Z

    .line 47
    .line 48
    if-nez p2, :cond_1e

    .line 49
    .line 50
    iget-boolean p2, v0, Lya/e;->n:Z

    .line 51
    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_1
    iget p2, v0, Lya/e;->p:I

    .line 57
    .line 58
    sub-int p2, v1, p2

    .line 59
    .line 60
    iget v3, v0, Lya/e;->q:I

    .line 61
    .line 62
    sub-int v3, v2, v3

    .line 63
    .line 64
    mul-int v7, p2, p2

    .line 65
    .line 66
    mul-int v8, v3, v3

    .line 67
    .line 68
    add-int/2addr v8, v7

    .line 69
    int-to-double v7, v8

    .line 70
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 71
    .line 72
    .line 73
    move-result-wide v7

    .line 74
    double-to-float v7, v7

    .line 75
    iget-boolean v8, v0, Lya/e;->o:Z

    .line 76
    .line 77
    const/high16 v9, 0x41700000    # 15.0f

    .line 78
    .line 79
    if-nez v8, :cond_6

    .line 80
    .line 81
    cmpl-float v8, v7, v9

    .line 82
    .line 83
    if-lez v8, :cond_2

    .line 84
    .line 85
    iget-object v8, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 86
    .line 87
    iget-object v8, v8, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 88
    .line 89
    invoke-virtual {v8, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    const/high16 v8, 0x42480000    # 50.0f

    .line 93
    .line 94
    cmpl-float v8, v7, v8

    .line 95
    .line 96
    if-lez v8, :cond_6

    .line 97
    .line 98
    iput-boolean v6, v0, Lya/e;->n:Z

    .line 99
    .line 100
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 103
    .line 104
    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-le p1, v1, :cond_4

    .line 116
    .line 117
    if-lez p2, :cond_3

    .line 118
    .line 119
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 120
    .line 121
    iget-object p2, v0, Lya/e;->d:Lz7/s;

    .line 122
    .line 123
    const-string v0, "6"

    .line 124
    .line 125
    invoke-virtual {p2, v0}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_5

    .line 133
    .line 134
    :cond_3
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 135
    .line 136
    iget-object p2, v0, Lya/e;->d:Lz7/s;

    .line 137
    .line 138
    const-string v0, "5"

    .line 139
    .line 140
    invoke-virtual {p2, v0}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_5

    .line 148
    .line 149
    :cond_4
    if-lez v3, :cond_5

    .line 150
    .line 151
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 152
    .line 153
    iget-object p2, v0, Lya/e;->d:Lz7/s;

    .line 154
    .line 155
    const-string v0, "4"

    .line 156
    .line 157
    invoke-virtual {p2, v0}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_5

    .line 165
    .line 166
    :cond_5
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 167
    .line 168
    iget-object p2, v0, Lya/e;->d:Lz7/s;

    .line 169
    .line 170
    const-string v0, "3"

    .line 171
    .line 172
    invoke-virtual {p2, v0}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_5

    .line 180
    .line 181
    :cond_6
    iget-boolean p2, v0, Lya/e;->o:Z

    .line 182
    .line 183
    if-eqz p2, :cond_1e

    .line 184
    .line 185
    cmpl-float p2, v7, v9

    .line 186
    .line 187
    if-lez p2, :cond_1e

    .line 188
    .line 189
    iget-boolean p2, v0, Lya/e;->m:Z

    .line 190
    .line 191
    if-nez p2, :cond_7

    .line 192
    .line 193
    iput-boolean v6, v0, Lya/e;->m:Z

    .line 194
    .line 195
    iget-object p2, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 196
    .line 197
    iget-object p2, p2, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 198
    .line 199
    invoke-virtual {p2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    .line 201
    .line 202
    :cond_7
    iget-boolean p2, v0, Lya/e;->I:Z

    .line 203
    .line 204
    if-eqz p2, :cond_c

    .line 205
    .line 206
    iget p2, v0, Lya/e;->x:I

    .line 207
    .line 208
    if-ge v1, p2, :cond_8

    .line 209
    .line 210
    iget v1, v0, Lya/e;->y:I

    .line 211
    .line 212
    neg-int v1, v1

    .line 213
    add-int/2addr v1, p2

    .line 214
    iput v1, v0, Lya/e;->r:I

    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_8
    iget-object v3, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 218
    .line 219
    iget-object v3, v3, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 220
    .line 221
    iget-object v3, v3, Ly3/a;->e:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v3, Landroid/graphics/Point;

    .line 224
    .line 225
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 226
    .line 227
    if-le v1, v3, :cond_9

    .line 228
    .line 229
    iget v1, v0, Lya/e;->y:I

    .line 230
    .line 231
    sub-int/2addr v3, v1

    .line 232
    add-int/2addr v3, p2

    .line 233
    iput v3, v0, Lya/e;->r:I

    .line 234
    .line 235
    goto :goto_0

    .line 236
    :cond_9
    iget v3, v0, Lya/e;->y:I

    .line 237
    .line 238
    sub-int/2addr v1, v3

    .line 239
    add-int/2addr v1, p2

    .line 240
    iput v1, v0, Lya/e;->r:I

    .line 241
    .line 242
    :goto_0
    if-ge v2, p2, :cond_a

    .line 243
    .line 244
    iget v1, v0, Lya/e;->y:I

    .line 245
    .line 246
    neg-int v1, v1

    .line 247
    add-int/2addr v1, p2

    .line 248
    iput v1, v0, Lya/e;->s:I

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_a
    iget-object v1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 252
    .line 253
    iget-object v1, v1, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 254
    .line 255
    iget-object v1, v1, Ly3/a;->e:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v1, Landroid/graphics/Point;

    .line 258
    .line 259
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 260
    .line 261
    if-le v2, v1, :cond_b

    .line 262
    .line 263
    iget v2, v0, Lya/e;->y:I

    .line 264
    .line 265
    sub-int/2addr v1, v2

    .line 266
    add-int/2addr v1, p2

    .line 267
    iput v1, v0, Lya/e;->s:I

    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_b
    iget v1, v0, Lya/e;->y:I

    .line 271
    .line 272
    sub-int/2addr v2, v1

    .line 273
    add-int/2addr v2, p2

    .line 274
    iput v2, v0, Lya/e;->s:I

    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_c
    iget p2, v0, Lya/e;->y:I

    .line 278
    .line 279
    if-gt v1, p2, :cond_d

    .line 280
    .line 281
    iget v1, v0, Lya/e;->x:I

    .line 282
    .line 283
    iput v1, v0, Lya/e;->r:I

    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_d
    iget-object v3, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 287
    .line 288
    iget-object v3, v3, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 289
    .line 290
    iget-object v3, v3, Ly3/a;->e:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v3, Landroid/graphics/Point;

    .line 293
    .line 294
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 295
    .line 296
    sub-int v4, v3, p2

    .line 297
    .line 298
    if-le v1, v4, :cond_e

    .line 299
    .line 300
    iget v1, v0, Lya/e;->v:I

    .line 301
    .line 302
    sub-int/2addr v3, v1

    .line 303
    iget v1, v0, Lya/e;->x:I

    .line 304
    .line 305
    add-int/2addr v3, v1

    .line 306
    iput v3, v0, Lya/e;->r:I

    .line 307
    .line 308
    goto :goto_1

    .line 309
    :cond_e
    sub-int/2addr v1, p2

    .line 310
    iget v3, v0, Lya/e;->x:I

    .line 311
    .line 312
    add-int/2addr v1, v3

    .line 313
    iput v1, v0, Lya/e;->r:I

    .line 314
    .line 315
    :goto_1
    if-gt v2, p2, :cond_f

    .line 316
    .line 317
    iget p2, v0, Lya/e;->x:I

    .line 318
    .line 319
    iput p2, v0, Lya/e;->s:I

    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_f
    iget-object v1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 323
    .line 324
    iget-object v1, v1, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 325
    .line 326
    iget-object v1, v1, Ly3/a;->e:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v1, Landroid/graphics/Point;

    .line 329
    .line 330
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 331
    .line 332
    sub-int v3, v1, p2

    .line 333
    .line 334
    if-le v2, v3, :cond_10

    .line 335
    .line 336
    iget p2, v0, Lya/e;->v:I

    .line 337
    .line 338
    sub-int/2addr v1, p2

    .line 339
    iget p2, v0, Lya/e;->x:I

    .line 340
    .line 341
    add-int/2addr v1, p2

    .line 342
    iput v1, v0, Lya/e;->s:I

    .line 343
    .line 344
    goto :goto_2

    .line 345
    :cond_10
    sub-int/2addr v2, p2

    .line 346
    iget p2, v0, Lya/e;->x:I

    .line 347
    .line 348
    add-int/2addr v2, p2

    .line 349
    iput v2, v0, Lya/e;->s:I

    .line 350
    .line 351
    :goto_2
    iget-object p2, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 352
    .line 353
    iget-object p2, p2, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 354
    .line 355
    iget-boolean v1, p2, Ly3/a;->a:Z

    .line 356
    .line 357
    if-eqz v1, :cond_11

    .line 358
    .line 359
    iget v1, v0, Lya/e;->r:I

    .line 360
    .line 361
    iget-object p2, p2, Ly3/a;->d:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast p2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 364
    .line 365
    iget v2, p2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->left:I

    .line 366
    .line 367
    sub-int/2addr v1, v2

    .line 368
    iput v1, v0, Lya/e;->r:I

    .line 369
    .line 370
    iget v1, v0, Lya/e;->s:I

    .line 371
    .line 372
    iget p2, p2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->top:I

    .line 373
    .line 374
    sub-int/2addr v1, p2

    .line 375
    iput v1, v0, Lya/e;->s:I

    .line 376
    .line 377
    :cond_11
    iget-object p2, v0, Lya/e;->j:Landroid/view/WindowManager$LayoutParams;

    .line 378
    .line 379
    iget v1, v0, Lya/e;->r:I

    .line 380
    .line 381
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 382
    .line 383
    iget v1, v0, Lya/e;->s:I

    .line 384
    .line 385
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 386
    .line 387
    iget-object v0, v0, Lya/e;->g:Landroid/view/WindowManager;

    .line 388
    .line 389
    invoke-interface {v0, p1, p2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_5

    .line 393
    .line 394
    :cond_12
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 395
    .line 396
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 397
    .line 398
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 399
    .line 400
    .line 401
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 402
    .line 403
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 404
    .line 405
    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    .line 407
    .line 408
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 409
    .line 410
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 411
    .line 412
    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0}, Lya/e;->c()V

    .line 416
    .line 417
    .line 418
    iget-boolean p1, v0, Lya/e;->l:Z

    .line 419
    .line 420
    if-eqz p1, :cond_13

    .line 421
    .line 422
    goto/16 :goto_5

    .line 423
    .line 424
    :cond_13
    iget p1, v0, Lya/e;->v:I

    .line 425
    .line 426
    invoke-virtual {v0, p1}, Lya/e;->f(I)V

    .line 427
    .line 428
    .line 429
    iget-boolean p1, v0, Lya/e;->l:Z

    .line 430
    .line 431
    if-nez p1, :cond_1e

    .line 432
    .line 433
    iget-boolean p1, v0, Lya/e;->n:Z

    .line 434
    .line 435
    if-eqz p1, :cond_14

    .line 436
    .line 437
    goto/16 :goto_5

    .line 438
    .line 439
    :cond_14
    iget-boolean p1, v0, Lya/e;->m:Z

    .line 440
    .line 441
    if-eqz p1, :cond_15

    .line 442
    .line 443
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 444
    .line 445
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 446
    .line 447
    new-instance p2, Lya/b;

    .line 448
    .line 449
    const/4 v1, 0x1

    .line 450
    invoke-direct {p2, v0, v1}, Lya/b;-><init>(Lya/e;I)V

    .line 451
    .line 452
    .line 453
    const-wide/16 v0, 0x96

    .line 454
    .line 455
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 456
    .line 457
    .line 458
    goto/16 :goto_5

    .line 459
    .line 460
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 461
    .line 462
    .line 463
    move-result-wide p1

    .line 464
    iget-wide v1, v0, Lya/e;->t:J

    .line 465
    .line 466
    sub-long/2addr p1, v1

    .line 467
    const-wide/16 v1, 0x12c

    .line 468
    .line 469
    cmp-long v3, p1, v1

    .line 470
    .line 471
    if-lez v3, :cond_16

    .line 472
    .line 473
    goto/16 :goto_5

    .line 474
    .line 475
    :cond_16
    iget-boolean p1, v0, Lya/e;->e:Z

    .line 476
    .line 477
    if-eqz p1, :cond_18

    .line 478
    .line 479
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 480
    .line 481
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 482
    .line 483
    iget-object p2, v0, Lya/e;->D:Lya/d;

    .line 484
    .line 485
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 486
    .line 487
    .line 488
    iget-wide v1, v0, Lya/e;->f:J

    .line 489
    .line 490
    const-wide/16 v3, 0x1f4

    .line 491
    .line 492
    cmp-long p1, v1, v7

    .line 493
    .line 494
    if-lez p1, :cond_17

    .line 495
    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 497
    .line 498
    .line 499
    move-result-wide v1

    .line 500
    iget-wide v9, v0, Lya/e;->f:J

    .line 501
    .line 502
    sub-long/2addr v1, v9

    .line 503
    cmp-long p1, v1, v3

    .line 504
    .line 505
    if-gez p1, :cond_17

    .line 506
    .line 507
    iput-wide v7, v0, Lya/e;->f:J

    .line 508
    .line 509
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 510
    .line 511
    iget-object p2, v0, Lya/e;->d:Lz7/s;

    .line 512
    .line 513
    const-string v1, "1"

    .line 514
    .line 515
    invoke-virtual {p2, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 516
    .line 517
    .line 518
    move-result-object p2

    .line 519
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 520
    .line 521
    .line 522
    goto :goto_3

    .line 523
    :cond_17
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 524
    .line 525
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 526
    .line 527
    invoke-virtual {p1, p2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 528
    .line 529
    .line 530
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 531
    .line 532
    .line 533
    move-result-wide p1

    .line 534
    iput-wide p1, v0, Lya/e;->f:J

    .line 535
    .line 536
    goto/16 :goto_5

    .line 537
    .line 538
    :cond_18
    iget-object p1, v0, Lya/e;->d:Lz7/s;

    .line 539
    .line 540
    const-string p2, "0"

    .line 541
    .line 542
    invoke-virtual {p1, p2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    iget-object p1, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 547
    .line 548
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 549
    .line 550
    .line 551
    move-result p1

    .line 552
    if-eqz p1, :cond_19

    .line 553
    .line 554
    goto :goto_5

    .line 555
    :cond_19
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 556
    .line 557
    iget-object v0, v0, Lya/e;->d:Lz7/s;

    .line 558
    .line 559
    invoke-virtual {v0, p2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 560
    .line 561
    .line 562
    move-result-object p2

    .line 563
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 564
    .line 565
    .line 566
    goto :goto_5

    .line 567
    :cond_1a
    const/4 p1, 0x0

    .line 568
    iput-boolean p1, v0, Lya/e;->l:Z

    .line 569
    .line 570
    iput-boolean p1, v0, Lya/e;->m:Z

    .line 571
    .line 572
    iput-boolean p1, v0, Lya/e;->n:Z

    .line 573
    .line 574
    iput-boolean p1, v0, Lya/e;->o:Z

    .line 575
    .line 576
    iput v1, v0, Lya/e;->p:I

    .line 577
    .line 578
    iput v2, v0, Lya/e;->q:I

    .line 579
    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 581
    .line 582
    .line 583
    move-result-wide p1

    .line 584
    iput-wide p1, v0, Lya/e;->t:J

    .line 585
    .line 586
    iget p1, v0, Lya/e;->w:I

    .line 587
    .line 588
    invoke-virtual {v0, p1}, Lya/e;->f(I)V

    .line 589
    .line 590
    .line 591
    iget-object p1, v0, Lya/e;->d:Lz7/s;

    .line 592
    .line 593
    const-string p2, "2"

    .line 594
    .line 595
    invoke-virtual {p1, p2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    iget-object p1, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 600
    .line 601
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 602
    .line 603
    .line 604
    move-result p1

    .line 605
    const-wide/16 v1, 0xc8

    .line 606
    .line 607
    if-eqz p1, :cond_1c

    .line 608
    .line 609
    iget-boolean p1, v0, Lya/e;->A:Z

    .line 610
    .line 611
    if-eqz p1, :cond_1b

    .line 612
    .line 613
    iget-boolean p1, v0, Lya/e;->B:Z

    .line 614
    .line 615
    if-nez p1, :cond_1d

    .line 616
    .line 617
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 618
    .line 619
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 620
    .line 621
    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 622
    .line 623
    .line 624
    goto :goto_4

    .line 625
    :cond_1b
    iget-boolean p1, v0, Lya/e;->B:Z

    .line 626
    .line 627
    if-nez p1, :cond_1d

    .line 628
    .line 629
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 630
    .line 631
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 632
    .line 633
    invoke-virtual {p1, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 634
    .line 635
    .line 636
    goto :goto_4

    .line 637
    :cond_1c
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 638
    .line 639
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 640
    .line 641
    const-wide/16 v7, 0x320

    .line 642
    .line 643
    invoke-virtual {p1, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 644
    .line 645
    .line 646
    iget-boolean p1, v0, Lya/e;->B:Z

    .line 647
    .line 648
    if-nez p1, :cond_1d

    .line 649
    .line 650
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 651
    .line 652
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 653
    .line 654
    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 655
    .line 656
    .line 657
    :cond_1d
    :goto_4
    iget-object p1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 658
    .line 659
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 660
    .line 661
    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 662
    .line 663
    .line 664
    :cond_1e
    :goto_5
    return v6

    .line 665
    :pswitch_0
    iget-object p1, p0, Lya/c;->b:Lya/e;

    .line 666
    .line 667
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 668
    .line 669
    .line 670
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    const/4 v1, 0x4

    .line 675
    if-eq v0, v1, :cond_1f

    .line 676
    .line 677
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 678
    .line 679
    .line 680
    move-result v0

    .line 681
    if-eqz v0, :cond_1f

    .line 682
    .line 683
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 684
    .line 685
    .line 686
    move-result p2

    .line 687
    const/4 v0, 0x2

    .line 688
    if-ne p2, v0, :cond_20

    .line 689
    .line 690
    :cond_1f
    invoke-virtual {p1}, Lya/e;->c()V

    .line 691
    .line 692
    .line 693
    :cond_20
    const/4 p1, 0x0

    .line 694
    return p1

    .line 695
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
