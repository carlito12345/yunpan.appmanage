.class public final synthetic Lya/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lya/h;


# direct methods
.method public synthetic constructor <init>(Lya/h;I)V
    .locals 0

    .line 1
    iput p2, p0, Lya/f;->a:I

    iput-object p1, p0, Lya/f;->b:Lya/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lya/f;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lya/f;->b:Lya/h;

    .line 9
    .line 10
    iget-object v2, v1, Lya/h;->i:Landroid/view/WindowManager$LayoutParams;

    .line 11
    .line 12
    iget-object v3, v1, Lya/h;->b:Lz7/s;

    .line 13
    .line 14
    const-string v4, "rightSize"

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 25
    .line 26
    iget-object v2, v1, Lya/h;->c:Landroid/view/WindowManager;

    .line 27
    .line 28
    iget-object v3, v1, Lya/h;->h:Landroid/view/View;

    .line 29
    .line 30
    iget-object v1, v1, Lya/h;->i:Landroid/view/WindowManager$LayoutParams;

    .line 31
    .line 32
    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    iget-object v1, v0, Lya/f;->b:Lya/h;

    .line 37
    .line 38
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 39
    .line 40
    iget v3, v1, Lya/h;->l:I

    .line 41
    .line 42
    int-to-float v3, v3

    .line 43
    iget v1, v1, Lya/h;->m:I

    .line 44
    .line 45
    int-to-float v1, v1

    .line 46
    const-wide/16 v4, 0x32

    .line 47
    .line 48
    invoke-static {v2, v3, v1, v4, v5}, Lwa/b;->a(Lcom/yunpan/appmanage/service/AccService;FFJ)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_1
    iget-object v1, v0, Lya/f;->b:Lya/h;

    .line 53
    .line 54
    iget-object v2, v1, Lya/h;->g:Landroid/view/WindowManager$LayoutParams;

    .line 55
    .line 56
    iget-object v3, v1, Lya/h;->b:Lz7/s;

    .line 57
    .line 58
    const-string v4, "rightSize"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 69
    .line 70
    iget-object v2, v1, Lya/h;->c:Landroid/view/WindowManager;

    .line 71
    .line 72
    iget-object v3, v1, Lya/h;->f:Landroid/view/View;

    .line 73
    .line 74
    iget-object v1, v1, Lya/h;->g:Landroid/view/WindowManager$LayoutParams;

    .line 75
    .line 76
    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_2
    iget-object v1, v0, Lya/f;->b:Lya/h;

    .line 81
    .line 82
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 83
    .line 84
    iget v3, v1, Lya/h;->l:I

    .line 85
    .line 86
    int-to-float v3, v3

    .line 87
    iget v1, v1, Lya/h;->m:I

    .line 88
    .line 89
    int-to-float v1, v1

    .line 90
    const-wide/16 v4, 0x32

    .line 91
    .line 92
    invoke-static {v2, v3, v1, v4, v5}, Lwa/b;->a(Lcom/yunpan/appmanage/service/AccService;FFJ)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_3
    iget-object v1, v0, Lya/f;->b:Lya/h;

    .line 97
    .line 98
    iget-object v2, v1, Lya/h;->e:Landroid/view/WindowManager$LayoutParams;

    .line 99
    .line 100
    iget-object v3, v1, Lya/h;->b:Lz7/s;

    .line 101
    .line 102
    const-string v4, "leftSize"

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 113
    .line 114
    iget-object v2, v1, Lya/h;->c:Landroid/view/WindowManager;

    .line 115
    .line 116
    iget-object v3, v1, Lya/h;->d:Landroid/view/View;

    .line 117
    .line 118
    iget-object v1, v1, Lya/h;->e:Landroid/view/WindowManager$LayoutParams;

    .line 119
    .line 120
    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :pswitch_4
    iget-object v1, v0, Lya/f;->b:Lya/h;

    .line 125
    .line 126
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 127
    .line 128
    iget v3, v1, Lya/h;->l:I

    .line 129
    .line 130
    int-to-float v3, v3

    .line 131
    iget v1, v1, Lya/h;->m:I

    .line 132
    .line 133
    int-to-float v1, v1

    .line 134
    const-wide/16 v4, 0x32

    .line 135
    .line 136
    invoke-static {v2, v3, v1, v4, v5}, Lwa/b;->a(Lcom/yunpan/appmanage/service/AccService;FFJ)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :pswitch_5
    iget-object v1, v0, Lya/f;->b:Lya/h;

    .line 141
    .line 142
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 143
    .line 144
    const-string v3, "window"

    .line 145
    .line 146
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Landroid/view/WindowManager;

    .line 151
    .line 152
    iput-object v2, v1, Lya/h;->c:Landroid/view/WindowManager;

    .line 153
    .line 154
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 155
    .line 156
    const-string v3, "effect"

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    iput v2, v1, Lya/h;->o:I

    .line 167
    .line 168
    const/4 v3, 0x1

    .line 169
    if-ne v2, v3, :cond_0

    .line 170
    .line 171
    new-instance v2, Lwa/a;

    .line 172
    .line 173
    iget-object v4, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 174
    .line 175
    iget-object v5, v1, Lya/h;->c:Landroid/view/WindowManager;

    .line 176
    .line 177
    invoke-direct {v2, v4, v5}, Lwa/a;-><init>(Lcom/yunpan/appmanage/service/AccService;Landroid/view/WindowManager;)V

    .line 178
    .line 179
    .line 180
    iput-object v2, v1, Lya/h;->w:Lwa/a;

    .line 181
    .line 182
    :cond_0
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 183
    .line 184
    iget-object v2, v2, Lz7/s;->a:Lb8/n;

    .line 185
    .line 186
    const-string v4, "upTrigger"

    .line 187
    .line 188
    invoke-virtual {v2, v4}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_1

    .line 193
    .line 194
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 195
    .line 196
    invoke-virtual {v2, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    iput-boolean v2, v1, Lya/h;->p:Z

    .line 205
    .line 206
    :cond_1
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 207
    .line 208
    iget-object v2, v2, Lz7/s;->a:Lb8/n;

    .line 209
    .line 210
    const-string v4, "leftTop"

    .line 211
    .line 212
    invoke-virtual {v2, v4}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_2

    .line 217
    .line 218
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 219
    .line 220
    invoke-virtual {v2, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    iput v2, v1, Lya/h;->q:I

    .line 229
    .line 230
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 231
    .line 232
    const-string v4, "leftBottom"

    .line 233
    .line 234
    invoke-virtual {v2, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    iput v2, v1, Lya/h;->r:I

    .line 243
    .line 244
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 245
    .line 246
    const-string v4, "rightTop"

    .line 247
    .line 248
    invoke-virtual {v2, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    iput v2, v1, Lya/h;->s:I

    .line 257
    .line 258
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 259
    .line 260
    const-string v4, "rightBottom"

    .line 261
    .line 262
    invoke-virtual {v2, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    iput v2, v1, Lya/h;->t:I

    .line 271
    .line 272
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 273
    .line 274
    const-string v4, "bottomLeft"

    .line 275
    .line 276
    invoke-virtual {v2, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    iput v2, v1, Lya/h;->u:I

    .line 285
    .line 286
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 287
    .line 288
    const-string v4, "bottomRight"

    .line 289
    .line 290
    invoke-virtual {v2, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    iput v2, v1, Lya/h;->v:I

    .line 299
    .line 300
    :cond_2
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 301
    .line 302
    const-string v4, "leftOn"

    .line 303
    .line 304
    invoke-virtual {v2, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    const/16 v4, 0x1c

    .line 313
    .line 314
    const/16 v14, 0x16

    .line 315
    .line 316
    const-string v15, "#60000000"

    .line 317
    .line 318
    const/4 v12, 0x0

    .line 319
    const-string v11, "showView"

    .line 320
    .line 321
    const/4 v10, 0x0

    .line 322
    if-eqz v2, :cond_6

    .line 323
    .line 324
    new-instance v2, Landroid/view/View;

    .line 325
    .line 326
    iget-object v6, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 327
    .line 328
    invoke-direct {v2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 329
    .line 330
    .line 331
    iput-object v2, v1, Lya/h;->d:Landroid/view/View;

    .line 332
    .line 333
    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 334
    .line 335
    .line 336
    iget-object v2, v1, Lya/h;->d:Landroid/view/View;

    .line 337
    .line 338
    invoke-virtual {v2, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 339
    .line 340
    .line 341
    iget-object v2, v1, Lya/h;->d:Landroid/view/View;

    .line 342
    .line 343
    invoke-virtual {v2, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 344
    .line 345
    .line 346
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 347
    .line 348
    invoke-virtual {v2, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-eqz v2, :cond_3

    .line 357
    .line 358
    iget-object v2, v1, Lya/h;->d:Landroid/view/View;

    .line 359
    .line 360
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 365
    .line 366
    .line 367
    goto :goto_0

    .line 368
    :cond_3
    iget-object v2, v1, Lya/h;->d:Landroid/view/View;

    .line 369
    .line 370
    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 371
    .line 372
    .line 373
    iget-object v2, v1, Lya/h;->d:Landroid/view/View;

    .line 374
    .line 375
    invoke-virtual {v2, v12, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 376
    .line 377
    .line 378
    :goto_0
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 379
    .line 380
    iget-object v6, v1, Lya/h;->b:Lz7/s;

    .line 381
    .line 382
    const-string v7, "leftSize"

    .line 383
    .line 384
    invoke-virtual {v6, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    invoke-virtual {v6}, Lz7/p;->e()I

    .line 389
    .line 390
    .line 391
    move-result v17

    .line 392
    iget-object v6, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 393
    .line 394
    iget-object v6, v6, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 395
    .line 396
    iget-object v6, v6, Ly3/a;->e:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast v6, Landroid/graphics/Point;

    .line 399
    .line 400
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 401
    .line 402
    iget v7, v1, Lya/h;->q:I

    .line 403
    .line 404
    sub-int/2addr v6, v7

    .line 405
    iget v7, v1, Lya/h;->r:I

    .line 406
    .line 407
    sub-int v18, v6, v7

    .line 408
    .line 409
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 410
    .line 411
    if-lt v6, v14, :cond_4

    .line 412
    .line 413
    const/16 v19, 0x7f0

    .line 414
    .line 415
    goto :goto_1

    .line 416
    :cond_4
    const/16 v19, 0x7d2

    .line 417
    .line 418
    :goto_1
    const/16 v20, 0x328

    .line 419
    .line 420
    const/16 v21, -0x3

    .line 421
    .line 422
    move-object/from16 v16, v2

    .line 423
    .line 424
    invoke-direct/range {v16 .. v21}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 425
    .line 426
    .line 427
    iput-object v2, v1, Lya/h;->e:Landroid/view/WindowManager$LayoutParams;

    .line 428
    .line 429
    if-lt v6, v4, :cond_5

    .line 430
    .line 431
    invoke-static {v2}, Landroidx/emoji2/text/b;->x(Landroid/view/WindowManager$LayoutParams;)V

    .line 432
    .line 433
    .line 434
    :cond_5
    iget-object v2, v1, Lya/h;->e:Landroid/view/WindowManager$LayoutParams;

    .line 435
    .line 436
    const v6, 0x800033

    .line 437
    .line 438
    .line 439
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 440
    .line 441
    iget-object v6, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 442
    .line 443
    iget-object v6, v6, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 444
    .line 445
    iget-object v6, v6, Ly3/a;->d:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v6, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 448
    .line 449
    iget v7, v6, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->left:I

    .line 450
    .line 451
    neg-int v7, v7

    .line 452
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 453
    .line 454
    iget v7, v1, Lya/h;->q:I

    .line 455
    .line 456
    iget v6, v6, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->top:I

    .line 457
    .line 458
    sub-int/2addr v7, v6

    .line 459
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 460
    .line 461
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 462
    .line 463
    invoke-direct {v8, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 464
    .line 465
    .line 466
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 467
    .line 468
    invoke-direct {v9, v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 469
    .line 470
    .line 471
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 472
    .line 473
    const-string v6, "leftSplit"

    .line 474
    .line 475
    invoke-virtual {v2, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 484
    .line 485
    invoke-direct {v7, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 486
    .line 487
    .line 488
    iget-object v6, v1, Lya/h;->d:Landroid/view/View;

    .line 489
    .line 490
    new-instance v5, Lya/g;

    .line 491
    .line 492
    const/16 v17, 0x0

    .line 493
    .line 494
    move-object v13, v6

    .line 495
    move-object v6, v5

    .line 496
    move-object/from16 v19, v7

    .line 497
    .line 498
    move-object v7, v1

    .line 499
    move-object v4, v10

    .line 500
    move v10, v2

    .line 501
    move-object v2, v11

    .line 502
    move-object/from16 v11, v19

    .line 503
    .line 504
    const/4 v14, 0x0

    .line 505
    move/from16 v12, v17

    .line 506
    .line 507
    invoke-direct/range {v6 .. v12}, Lya/g;-><init>(Lya/h;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/concurrent/atomic/AtomicInteger;I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v13, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 511
    .line 512
    .line 513
    goto :goto_2

    .line 514
    :cond_6
    move-object v4, v10

    .line 515
    move-object v2, v11

    .line 516
    const/4 v14, 0x0

    .line 517
    :goto_2
    iget-object v5, v1, Lya/h;->b:Lz7/s;

    .line 518
    .line 519
    const-string v6, "rightOn"

    .line 520
    .line 521
    invoke-virtual {v5, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 522
    .line 523
    .line 524
    move-result-object v5

    .line 525
    invoke-virtual {v5}, Lz7/p;->b()Z

    .line 526
    .line 527
    .line 528
    move-result v5

    .line 529
    if-eqz v5, :cond_c

    .line 530
    .line 531
    new-instance v5, Landroid/view/View;

    .line 532
    .line 533
    iget-object v6, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 534
    .line 535
    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 536
    .line 537
    .line 538
    iput-object v5, v1, Lya/h;->f:Landroid/view/View;

    .line 539
    .line 540
    invoke-virtual {v5, v3}, Landroid/view/View;->setClickable(Z)V

    .line 541
    .line 542
    .line 543
    iget-object v5, v1, Lya/h;->f:Landroid/view/View;

    .line 544
    .line 545
    invoke-virtual {v5, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 546
    .line 547
    .line 548
    iget-object v5, v1, Lya/h;->f:Landroid/view/View;

    .line 549
    .line 550
    invoke-virtual {v5, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 551
    .line 552
    .line 553
    iget-object v5, v1, Lya/h;->b:Lz7/s;

    .line 554
    .line 555
    invoke-virtual {v5, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 556
    .line 557
    .line 558
    move-result-object v5

    .line 559
    invoke-virtual {v5}, Lz7/p;->b()Z

    .line 560
    .line 561
    .line 562
    move-result v5

    .line 563
    if-eqz v5, :cond_7

    .line 564
    .line 565
    iget-object v5, v1, Lya/h;->f:Landroid/view/View;

    .line 566
    .line 567
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 568
    .line 569
    .line 570
    move-result v6

    .line 571
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 572
    .line 573
    .line 574
    goto :goto_3

    .line 575
    :cond_7
    iget-object v5, v1, Lya/h;->f:Landroid/view/View;

    .line 576
    .line 577
    invoke-virtual {v5, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 578
    .line 579
    .line 580
    iget-object v5, v1, Lya/h;->f:Landroid/view/View;

    .line 581
    .line 582
    invoke-virtual {v5, v14, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 583
    .line 584
    .line 585
    :goto_3
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    .line 586
    .line 587
    iget-object v6, v1, Lya/h;->b:Lz7/s;

    .line 588
    .line 589
    const-string v7, "rightSize"

    .line 590
    .line 591
    invoke-virtual {v6, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 592
    .line 593
    .line 594
    move-result-object v6

    .line 595
    invoke-virtual {v6}, Lz7/p;->e()I

    .line 596
    .line 597
    .line 598
    move-result v7

    .line 599
    iget-object v6, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 600
    .line 601
    iget-object v6, v6, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 602
    .line 603
    iget-object v6, v6, Ly3/a;->e:Ljava/lang/Object;

    .line 604
    .line 605
    check-cast v6, Landroid/graphics/Point;

    .line 606
    .line 607
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 608
    .line 609
    iget v8, v1, Lya/h;->s:I

    .line 610
    .line 611
    sub-int/2addr v6, v8

    .line 612
    iget v8, v1, Lya/h;->t:I

    .line 613
    .line 614
    sub-int v8, v6, v8

    .line 615
    .line 616
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 617
    .line 618
    const/16 v6, 0x16

    .line 619
    .line 620
    if-lt v12, v6, :cond_8

    .line 621
    .line 622
    const/16 v9, 0x7f0

    .line 623
    .line 624
    goto :goto_4

    .line 625
    :cond_8
    const/16 v9, 0x7d2

    .line 626
    .line 627
    :goto_4
    const/16 v10, 0x328

    .line 628
    .line 629
    const/4 v11, -0x3

    .line 630
    move-object v6, v5

    .line 631
    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 632
    .line 633
    .line 634
    iput-object v5, v1, Lya/h;->g:Landroid/view/WindowManager$LayoutParams;

    .line 635
    .line 636
    const/16 v6, 0x1c

    .line 637
    .line 638
    if-lt v12, v6, :cond_9

    .line 639
    .line 640
    invoke-static {v5}, Landroidx/emoji2/text/b;->x(Landroid/view/WindowManager$LayoutParams;)V

    .line 641
    .line 642
    .line 643
    :cond_9
    iget-object v5, v1, Lya/h;->g:Landroid/view/WindowManager$LayoutParams;

    .line 644
    .line 645
    const v6, 0x800035

    .line 646
    .line 647
    .line 648
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 649
    .line 650
    iget-object v6, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 651
    .line 652
    iget-object v6, v6, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 653
    .line 654
    iget-boolean v7, v6, Ly3/a;->a:Z

    .line 655
    .line 656
    iget-object v6, v6, Ly3/a;->d:Ljava/lang/Object;

    .line 657
    .line 658
    check-cast v6, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 659
    .line 660
    if-eqz v7, :cond_a

    .line 661
    .line 662
    iget v8, v6, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->right:I

    .line 663
    .line 664
    neg-int v12, v8

    .line 665
    goto :goto_5

    .line 666
    :cond_a
    const/4 v12, 0x0

    .line 667
    :goto_5
    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 668
    .line 669
    if-eqz v7, :cond_b

    .line 670
    .line 671
    iget v7, v1, Lya/h;->s:I

    .line 672
    .line 673
    iget v6, v6, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->top:I

    .line 674
    .line 675
    sub-int/2addr v7, v6

    .line 676
    goto :goto_6

    .line 677
    :cond_b
    iget v7, v1, Lya/h;->s:I

    .line 678
    .line 679
    :goto_6
    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 680
    .line 681
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 682
    .line 683
    invoke-direct {v8, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 684
    .line 685
    .line 686
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 687
    .line 688
    invoke-direct {v9, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 689
    .line 690
    .line 691
    iget-object v5, v1, Lya/h;->b:Lz7/s;

    .line 692
    .line 693
    const-string v6, "rightSplit"

    .line 694
    .line 695
    invoke-virtual {v5, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 696
    .line 697
    .line 698
    move-result-object v5

    .line 699
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 700
    .line 701
    .line 702
    move-result v10

    .line 703
    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 704
    .line 705
    invoke-direct {v11, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 706
    .line 707
    .line 708
    iget-object v5, v1, Lya/h;->f:Landroid/view/View;

    .line 709
    .line 710
    new-instance v13, Lya/g;

    .line 711
    .line 712
    const/4 v12, 0x2

    .line 713
    move-object v6, v13

    .line 714
    move-object v7, v1

    .line 715
    invoke-direct/range {v6 .. v12}, Lya/g;-><init>(Lya/h;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/concurrent/atomic/AtomicInteger;I)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v5, v13}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 719
    .line 720
    .line 721
    :cond_c
    iget-object v5, v1, Lya/h;->b:Lz7/s;

    .line 722
    .line 723
    const-string v6, "bottomOn"

    .line 724
    .line 725
    invoke-virtual {v5, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 726
    .line 727
    .line 728
    move-result-object v5

    .line 729
    invoke-virtual {v5}, Lz7/p;->b()Z

    .line 730
    .line 731
    .line 732
    move-result v5

    .line 733
    if-eqz v5, :cond_10

    .line 734
    .line 735
    new-instance v5, Landroid/view/View;

    .line 736
    .line 737
    iget-object v6, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 738
    .line 739
    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 740
    .line 741
    .line 742
    iput-object v5, v1, Lya/h;->h:Landroid/view/View;

    .line 743
    .line 744
    invoke-virtual {v5, v3}, Landroid/view/View;->setClickable(Z)V

    .line 745
    .line 746
    .line 747
    iget-object v5, v1, Lya/h;->h:Landroid/view/View;

    .line 748
    .line 749
    invoke-virtual {v5, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 750
    .line 751
    .line 752
    iget-object v5, v1, Lya/h;->h:Landroid/view/View;

    .line 753
    .line 754
    invoke-virtual {v5, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 755
    .line 756
    .line 757
    iget-object v3, v1, Lya/h;->b:Lz7/s;

    .line 758
    .line 759
    invoke-virtual {v3, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 760
    .line 761
    .line 762
    move-result-object v2

    .line 763
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 764
    .line 765
    .line 766
    move-result v2

    .line 767
    if-eqz v2, :cond_d

    .line 768
    .line 769
    iget-object v2, v1, Lya/h;->h:Landroid/view/View;

    .line 770
    .line 771
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 772
    .line 773
    .line 774
    move-result v3

    .line 775
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 776
    .line 777
    .line 778
    goto :goto_7

    .line 779
    :cond_d
    iget-object v2, v1, Lya/h;->h:Landroid/view/View;

    .line 780
    .line 781
    invoke-virtual {v2, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 782
    .line 783
    .line 784
    iget-object v2, v1, Lya/h;->h:Landroid/view/View;

    .line 785
    .line 786
    invoke-virtual {v2, v14, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 787
    .line 788
    .line 789
    :goto_7
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 790
    .line 791
    iget-object v3, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 792
    .line 793
    iget-object v3, v3, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 794
    .line 795
    iget-object v3, v3, Ly3/a;->e:Ljava/lang/Object;

    .line 796
    .line 797
    check-cast v3, Landroid/graphics/Point;

    .line 798
    .line 799
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 800
    .line 801
    iget v4, v1, Lya/h;->u:I

    .line 802
    .line 803
    sub-int/2addr v3, v4

    .line 804
    iget v4, v1, Lya/h;->v:I

    .line 805
    .line 806
    sub-int v6, v3, v4

    .line 807
    .line 808
    iget-object v3, v1, Lya/h;->b:Lz7/s;

    .line 809
    .line 810
    const-string v4, "bottomSize"

    .line 811
    .line 812
    invoke-virtual {v3, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 813
    .line 814
    .line 815
    move-result-object v3

    .line 816
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 817
    .line 818
    .line 819
    move-result v7

    .line 820
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 821
    .line 822
    const/16 v4, 0x16

    .line 823
    .line 824
    if-lt v3, v4, :cond_e

    .line 825
    .line 826
    const/16 v8, 0x7f0

    .line 827
    .line 828
    goto :goto_8

    .line 829
    :cond_e
    const/16 v8, 0x7d2

    .line 830
    .line 831
    :goto_8
    const/16 v9, 0x328

    .line 832
    .line 833
    const/4 v10, -0x3

    .line 834
    move-object v5, v2

    .line 835
    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 836
    .line 837
    .line 838
    iput-object v2, v1, Lya/h;->i:Landroid/view/WindowManager$LayoutParams;

    .line 839
    .line 840
    const/16 v4, 0x1c

    .line 841
    .line 842
    if-lt v3, v4, :cond_f

    .line 843
    .line 844
    invoke-static {v2}, Landroidx/emoji2/text/b;->x(Landroid/view/WindowManager$LayoutParams;)V

    .line 845
    .line 846
    .line 847
    :cond_f
    iget-object v2, v1, Lya/h;->i:Landroid/view/WindowManager$LayoutParams;

    .line 848
    .line 849
    const v3, 0x800053

    .line 850
    .line 851
    .line 852
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 853
    .line 854
    iget v3, v1, Lya/h;->u:I

    .line 855
    .line 856
    iget-object v4, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 857
    .line 858
    iget-object v4, v4, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 859
    .line 860
    iget-object v4, v4, Ly3/a;->d:Ljava/lang/Object;

    .line 861
    .line 862
    check-cast v4, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 863
    .line 864
    iget v5, v4, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->left:I

    .line 865
    .line 866
    sub-int/2addr v3, v5

    .line 867
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 868
    .line 869
    iget v3, v4, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->bottom:I

    .line 870
    .line 871
    neg-int v3, v3

    .line 872
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 873
    .line 874
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 875
    .line 876
    invoke-direct {v8, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 877
    .line 878
    .line 879
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 880
    .line 881
    invoke-direct {v9, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 882
    .line 883
    .line 884
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 885
    .line 886
    const-string v3, "bottomSplit"

    .line 887
    .line 888
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 893
    .line 894
    .line 895
    move-result v10

    .line 896
    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 897
    .line 898
    invoke-direct {v11, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 899
    .line 900
    .line 901
    iget-object v2, v1, Lya/h;->h:Landroid/view/View;

    .line 902
    .line 903
    new-instance v3, Lya/g;

    .line 904
    .line 905
    const/4 v12, 0x1

    .line 906
    move-object v6, v3

    .line 907
    move-object v7, v1

    .line 908
    invoke-direct/range {v6 .. v12}, Lya/g;-><init>(Lya/h;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/concurrent/atomic/AtomicInteger;I)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 912
    .line 913
    .line 914
    :cond_10
    iget-object v2, v1, Lya/h;->d:Landroid/view/View;

    .line 915
    .line 916
    if-eqz v2, :cond_11

    .line 917
    .line 918
    iget-object v3, v1, Lya/h;->c:Landroid/view/WindowManager;

    .line 919
    .line 920
    iget-object v4, v1, Lya/h;->e:Landroid/view/WindowManager$LayoutParams;

    .line 921
    .line 922
    invoke-interface {v3, v2, v4}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    .line 924
    .line 925
    :cond_11
    iget-object v2, v1, Lya/h;->f:Landroid/view/View;

    .line 926
    .line 927
    if-eqz v2, :cond_12

    .line 928
    .line 929
    iget-object v3, v1, Lya/h;->c:Landroid/view/WindowManager;

    .line 930
    .line 931
    iget-object v4, v1, Lya/h;->g:Landroid/view/WindowManager$LayoutParams;

    .line 932
    .line 933
    invoke-interface {v3, v2, v4}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 934
    .line 935
    .line 936
    :cond_12
    iget-object v2, v1, Lya/h;->h:Landroid/view/View;

    .line 937
    .line 938
    if-eqz v2, :cond_13

    .line 939
    .line 940
    iget-object v3, v1, Lya/h;->c:Landroid/view/WindowManager;

    .line 941
    .line 942
    iget-object v1, v1, Lya/h;->i:Landroid/view/WindowManager$LayoutParams;

    .line 943
    .line 944
    invoke-interface {v3, v2, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    .line 946
    .line 947
    :cond_13
    return-void

    .line 948
    nop

    .line 949
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
