.class public final Lvb/p;
.super Lub/b;
.source "SourceFile"


# instance fields
.field public final p:Ldb/p;

.field public final q:Landroid/view/View;

.field public final r:Lcom/yunpan/appmanage/carsdk/k0;

.field public final s:I

.field public t:Lmb/b;

.field public v:Lie/b;


# direct methods
.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V
    .locals 8

    .line 1
    const-string v0, "editor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x6

    .line 7
    invoke-direct {p0, p1, v0}, Lub/b;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;I)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ldb/p;

    .line 11
    .line 12
    iget-object v1, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ldb/p;-><init>(Ldb/p;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lvb/p;->p:Ldb/p;

    .line 18
    .line 19
    new-instance v1, Lcom/yunpan/appmanage/carsdk/k0;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {v1, v2}, Lcom/yunpan/appmanage/carsdk/k0;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lvb/p;->r:Lcom/yunpan/appmanage/carsdk/k0;

    .line 26
    .line 27
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/16 v1, 0xaf

    .line 32
    .line 33
    int-to-float v1, v1

    .line 34
    mul-float p1, p1, v1

    .line 35
    .line 36
    float-to-int p1, p1

    .line 37
    iput p1, p0, Lvb/p;->s:I

    .line 38
    .line 39
    new-instance p1, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v1, Lie/b;

    .line 50
    .line 51
    invoke-direct {v1, p1, p1}, Lie/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lvb/p;->v:Lie/b;

    .line 55
    .line 56
    iget-object p1, p0, Lvb/p;->r:Lcom/yunpan/appmanage/carsdk/k0;

    .line 57
    .line 58
    const-string v1, "value"

    .line 59
    .line 60
    invoke-static {p1, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lvb/p;->q:Landroid/view/View;

    .line 64
    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    iget-object v1, p0, Lvb/p;->r:Lcom/yunpan/appmanage/carsdk/k0;

    .line 68
    .line 69
    if-ne v1, p1, :cond_0

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_0
    iput-object p1, p0, Lvb/p;->r:Lcom/yunpan/appmanage/carsdk/k0;

    .line 74
    .line 75
    iput-object p0, p1, Lcom/yunpan/appmanage/carsdk/k0;->b:Ljava/lang/Object;

    .line 76
    .line 77
    iget-object v1, p0, Lub/b;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v2, "from(...)"

    .line 88
    .line 89
    invoke-static {v1, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p1, Lcom/yunpan/appmanage/carsdk/k0;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Lvb/p;

    .line 95
    .line 96
    const/4 v3, 0x0

    .line 97
    if-eqz v2, :cond_d

    .line 98
    .line 99
    iget-object v2, v2, Lub/b;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 100
    .line 101
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const v4, 0x7f0e0076

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v4, "inflate(...)"

    .line 113
    .line 114
    invoke-static {v1, v4}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iput-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 118
    .line 119
    invoke-static {v1}, Lua/t7;->q(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v1, Landroid/view/View;

    .line 125
    .line 126
    const-string v4, "root"

    .line 127
    .line 128
    if-eqz v1, :cond_c

    .line 129
    .line 130
    new-instance v5, Lvb/e;

    .line 131
    .line 132
    invoke-direct {v5, p1}, Lvb/e;-><init>(Lcom/yunpan/appmanage/carsdk/k0;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v1, Landroid/view/View;

    .line 141
    .line 142
    if-eqz v1, :cond_b

    .line 143
    .line 144
    const v5, 0x7f0b00e0

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    const-string v5, "findViewById(...)"

    .line 152
    .line 153
    invoke-static {v1, v5}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    check-cast v1, Landroid/widget/TextView;

    .line 157
    .line 158
    iput-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 159
    .line 160
    iget-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v1, Landroid/view/View;

    .line 163
    .line 164
    if-eqz v1, :cond_a

    .line 165
    .line 166
    const v6, 0x7f0b00e1

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v1, v5}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    check-cast v1, Landroid/widget/TextView;

    .line 177
    .line 178
    iput-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->e:Ljava/lang/Object;

    .line 179
    .line 180
    iget-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v1, Landroid/view/View;

    .line 183
    .line 184
    if-eqz v1, :cond_9

    .line 185
    .line 186
    const v6, 0x7f0b00e3

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {v1, v5}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    check-cast v1, Landroid/widget/TextView;

    .line 197
    .line 198
    iput-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->f:Ljava/lang/Object;

    .line 199
    .line 200
    iget-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v1, Landroid/view/View;

    .line 203
    .line 204
    if-eqz v1, :cond_8

    .line 205
    .line 206
    const v6, 0x7f0b00e2

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v1, v5}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    check-cast v1, Landroid/widget/TextView;

    .line 217
    .line 218
    iput-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->g:Ljava/lang/Object;

    .line 219
    .line 220
    iget-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v1, Landroid/view/View;

    .line 223
    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    const v6, 0x7f0b00de

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-static {v1, v5}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    check-cast v1, Landroid/view/ViewGroup;

    .line 237
    .line 238
    iput-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->h:Ljava/lang/Object;

    .line 239
    .line 240
    iget-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v1, Landroid/view/View;

    .line 243
    .line 244
    if-eqz v1, :cond_6

    .line 245
    .line 246
    const v6, 0x7f0b00df

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-static {v1, v5}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    check-cast v1, Landroid/view/ViewGroup;

    .line 257
    .line 258
    iput-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->i:Ljava/lang/Object;

    .line 259
    .line 260
    iget-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->f:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v1, Landroid/widget/TextView;

    .line 263
    .line 264
    if-eqz v1, :cond_5

    .line 265
    .line 266
    new-instance v5, Lvb/f;

    .line 267
    .line 268
    invoke-direct {v5, p1}, Lvb/f;-><init>(Lcom/yunpan/appmanage/carsdk/k0;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    iget-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->g:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v1, Landroid/widget/TextView;

    .line 277
    .line 278
    const-string v5, "moreActionText"

    .line 279
    .line 280
    if-eqz v1, :cond_4

    .line 281
    .line 282
    sget-object v6, Lcb/a;->a:Landroid/util/SparseIntArray;

    .line 283
    .line 284
    const v7, 0x7f130162

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    if-nez v6, :cond_1

    .line 292
    .line 293
    goto :goto_0

    .line 294
    :cond_1
    move v7, v6

    .line 295
    :goto_0
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 296
    .line 297
    .line 298
    iget-object v1, p1, Lcom/yunpan/appmanage/carsdk/k0;->g:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v1, Landroid/widget/TextView;

    .line 301
    .line 302
    if-eqz v1, :cond_3

    .line 303
    .line 304
    new-instance v5, Lvb/f;

    .line 305
    .line 306
    invoke-direct {v5, p1, v2}, Lvb/f;-><init>(Lcom/yunpan/appmanage/carsdk/k0;Landroid/content/Context;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    .line 311
    .line 312
    iget-object p1, p1, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast p1, Landroid/view/View;

    .line 315
    .line 316
    if-eqz p1, :cond_2

    .line 317
    .line 318
    iput-object p1, p0, Lvb/p;->q:Landroid/view/View;

    .line 319
    .line 320
    iget-object v1, p0, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 321
    .line 322
    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0}, Lvb/p;->d()V

    .line 326
    .line 327
    .line 328
    :goto_1
    iget-object p1, p0, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 329
    .line 330
    const v1, 0x7f140501

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 334
    .line 335
    .line 336
    new-instance p1, Lvb/o;

    .line 337
    .line 338
    const/4 v1, 0x0

    .line 339
    invoke-direct {p1, p0, v1}, Lvb/o;-><init>(Lvb/p;I)V

    .line 340
    .line 341
    .line 342
    const-class v1, Ldb/x;

    .line 343
    .line 344
    invoke-virtual {v0, v1, p1}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 345
    .line 346
    .line 347
    new-instance p1, Lvb/o;

    .line 348
    .line 349
    const/4 v1, 0x1

    .line 350
    invoke-direct {p1, p0, v1}, Lvb/o;-><init>(Lvb/p;I)V

    .line 351
    .line 352
    .line 353
    const-class v1, Ldb/w;

    .line 354
    .line 355
    invoke-virtual {v0, v1, p1}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 356
    .line 357
    .line 358
    new-instance p1, Lua/g8;

    .line 359
    .line 360
    const/16 v1, 0x8

    .line 361
    .line 362
    invoke-direct {p1, v1, p0}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    new-instance v1, Lua/g6;

    .line 366
    .line 367
    const/16 v2, 0x8

    .line 368
    .line 369
    invoke-direct {v1, p0, v2, p1}, Lua/g6;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    const-class p1, Ldb/s;

    .line 373
    .line 374
    invoke-virtual {v0, p1, v1}, Ldb/p;->e(Ljava/lang/Class;Ldb/n;)Ldb/z;

    .line 375
    .line 376
    .line 377
    new-instance p1, Lvb/o;

    .line 378
    .line 379
    const/4 v1, 0x2

    .line 380
    invoke-direct {p1, p0, v1}, Lvb/o;-><init>(Lvb/p;I)V

    .line 381
    .line 382
    .line 383
    const-class v1, Ldb/c;

    .line 384
    .line 385
    invoke-virtual {v0, v1, p1}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 386
    .line 387
    .line 388
    new-instance p1, Lvb/o;

    .line 389
    .line 390
    const/4 v1, 0x3

    .line 391
    invoke-direct {p1, p0, v1}, Lvb/o;-><init>(Lvb/p;I)V

    .line 392
    .line 393
    .line 394
    const-class v1, Ldb/a0;

    .line 395
    .line 396
    invoke-virtual {v0, v1, p1}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 397
    .line 398
    .line 399
    new-instance p1, Lvb/o;

    .line 400
    .line 401
    const/4 v1, 0x4

    .line 402
    invoke-direct {p1, p0, v1}, Lvb/o;-><init>(Lvb/p;I)V

    .line 403
    .line 404
    .line 405
    const-class v1, Ldb/g;

    .line 406
    .line 407
    invoke-virtual {v0, v1, p1}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 408
    .line 409
    .line 410
    new-instance p1, Lvb/o;

    .line 411
    .line 412
    const/4 v1, 0x5

    .line 413
    invoke-direct {p1, p0, v1}, Lvb/o;-><init>(Lvb/p;I)V

    .line 414
    .line 415
    .line 416
    const-class v1, Ldb/l;

    .line 417
    .line 418
    invoke-virtual {v0, v1, p1}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 419
    .line 420
    .line 421
    iget-object p1, p0, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 422
    .line 423
    new-instance v0, Lvb/n;

    .line 424
    .line 425
    invoke-direct {v0, p0}, Lvb/n;-><init>(Lvb/p;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p0}, Lvb/p;->d()V

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :cond_2
    invoke-static {v4}, Lue/d;->g(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    throw v3

    .line 439
    :cond_3
    invoke-static {v5}, Lue/d;->g(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw v3

    .line 443
    :cond_4
    invoke-static {v5}, Lue/d;->g(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw v3

    .line 447
    :cond_5
    const-string p1, "quickfixText"

    .line 448
    .line 449
    invoke-static {p1}, Lue/d;->g(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    throw v3

    .line 453
    :cond_6
    invoke-static {v4}, Lue/d;->g(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    throw v3

    .line 457
    :cond_7
    invoke-static {v4}, Lue/d;->g(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    throw v3

    .line 461
    :cond_8
    invoke-static {v4}, Lue/d;->g(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    throw v3

    .line 465
    :cond_9
    invoke-static {v4}, Lue/d;->g(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    throw v3

    .line 469
    :cond_a
    invoke-static {v4}, Lue/d;->g(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    throw v3

    .line 473
    :cond_b
    invoke-static {v4}, Lue/d;->g(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    throw v3

    .line 477
    :cond_c
    invoke-static {v4}, Lue/d;->g(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    throw v3

    .line 481
    :cond_d
    const-string p1, "window"

    .line 482
    .line 483
    invoke-static {p1}, Lue/d;->g(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw v3
.end method

.method public static final e(Lvb/p;Ldb/s;)V
    .locals 2

    .line 1
    iget-object v0, p1, Ldb/k;->d:Landroid/view/MotionEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p1, p1, Ldb/k;->d:Landroid/view/MotionEvent;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v1, Lie/b;

    .line 22
    .line 23
    invoke-direct {v1, v0, p1}, Lie/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lvb/p;->v:Lie/b;

    .line 27
    .line 28
    return-void
.end method

.method public static f(Lvb/p;Lua/g8;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lub/b;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lub/b;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 7
    .line 8
    const-wide/16 v0, 0x3e8

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->Y(Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Lub/b;->b()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lvb/p;->r:Lcom/yunpan/appmanage/carsdk/k0;

    .line 2
    .line 3
    iget-object v1, p0, Lub/b;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "getColorScheme(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Lcom/yunpan/appmanage/carsdk/k0;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Lvb/p;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_5

    .line 23
    .line 24
    iget-object v2, v2, Lub/b;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 25
    .line 26
    const-string v4, "getEditor(...)"

    .line 27
    .line 28
    invoke-static {v2, v4}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v4, v0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v4, Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v4, :cond_4

    .line 36
    .line 37
    const/16 v5, 0x36

    .line 38
    .line 39
    iget-object v1, v1, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 40
    .line 41
    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v4, v0, Lcom/yunpan/appmanage/carsdk/k0;->e:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Landroid/widget/TextView;

    .line 51
    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    const/16 v5, 0x37

    .line 55
    .line 56
    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v4, v0, Lcom/yunpan/appmanage/carsdk/k0;->f:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v4, Landroid/widget/TextView;

    .line 66
    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    const/16 v5, 0x38

    .line 70
    .line 71
    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .line 77
    .line 78
    iget-object v4, v0, Lcom/yunpan/appmanage/carsdk/k0;->g:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v4, Landroid/widget/TextView;

    .line 81
    .line 82
    if-eqz v4, :cond_1

    .line 83
    .line 84
    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    .line 92
    .line 93
    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    const/4 v5, 0x5

    .line 101
    int-to-float v5, v5

    .line 102
    mul-float v2, v2, v5

    .line 103
    .line 104
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 105
    .line 106
    .line 107
    const/16 v2, 0x35

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Landroid/view/View;

    .line 119
    .line 120
    if-eqz v0, :cond_0

    .line 121
    .line 122
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_0
    const-string v0, "root"

    .line 127
    .line 128
    invoke-static {v0}, Lue/d;->g(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v3

    .line 132
    :cond_1
    const-string v0, "moreActionText"

    .line 133
    .line 134
    invoke-static {v0}, Lue/d;->g(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v3

    .line 138
    :cond_2
    const-string v0, "quickfixText"

    .line 139
    .line 140
    invoke-static {v0}, Lue/d;->g(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v3

    .line 144
    :cond_3
    const-string v0, "detailMessageText"

    .line 145
    .line 146
    invoke-static {v0}, Lue/d;->g(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v3

    .line 150
    :cond_4
    const-string v0, "briefMessageText"

    .line 151
    .line 152
    invoke-static {v0}, Lue/d;->g(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v3

    .line 156
    :cond_5
    const-string v0, "window"

    .line 157
    .line 158
    invoke-static {v0}, Lue/d;->g(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v3
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lvb/p;->p:Ldb/p;

    .line 2
    .line 3
    iget-boolean v0, v0, Ldb/p;->f:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lub/b;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 9
    .line 10
    const-string v1, "getEditor(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->p1:Lvb/k;

    .line 16
    .line 17
    const-string v1, "getComponent(...)"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lvb/p;->b()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    invoke-static {v0, v0}, Lue/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    iget-object v1, p0, Lvb/p;->r:Lcom/yunpan/appmanage/carsdk/k0;

    .line 43
    .line 44
    iget-object v2, v1, Lcom/yunpan/appmanage/carsdk/k0;->e:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz v2, :cond_6

    .line 49
    .line 50
    const/16 v3, 0x8

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v1, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Landroid/widget/TextView;

    .line 58
    .line 59
    if-eqz v2, :cond_5

    .line 60
    .line 61
    const-string v4, ""

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, v1, Lcom/yunpan/appmanage/carsdk/k0;->i:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v2, Landroid/view/ViewGroup;

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v1, Lcom/yunpan/appmanage/carsdk/k0;->g:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lvb/p;->b()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    const-string v1, "moreActionText"

    .line 89
    .line 90
    invoke-static {v1}, Lue/d;->g(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_4
    const-string v1, "quickfixPanel"

    .line 95
    .line 96
    invoke-static {v1}, Lue/d;->g(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :cond_5
    const-string v1, "briefMessageText"

    .line 101
    .line 102
    invoke-static {v1}, Lue/d;->g(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_6
    const-string v1, "detailMessageText"

    .line 107
    .line 108
    invoke-static {v1}, Lue/d;->g(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0
.end method
