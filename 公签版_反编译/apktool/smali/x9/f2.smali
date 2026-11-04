.class public final Lx9/f2;
.super Lc6/g;
.source "SourceFile"


# instance fields
.field public final h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx9/f2;->h:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    const p3, 0x7f0e0147

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p3, p2}, Lh6/a;-><init>(ILandroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method public final z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 11

    .line 1
    const/16 p2, 0x8

    .line 2
    .line 3
    check-cast p1, Lh6/a;

    .line 4
    .line 5
    check-cast p3, Lx9/w3;

    .line 6
    .line 7
    iget-boolean v0, p3, Lx9/w3;->i:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const v2, 0x7f0b0567

    .line 11
    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const v0, 0x7f080202

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v2, v0}, Lh6/a;->b(II)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1, v2, v1}, Lh6/a;->b(II)V

    .line 23
    .line 24
    .line 25
    :goto_0
    const v0, 0x7f0b04ca

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lh6/a;->d(IZ)V

    .line 29
    .line 30
    .line 31
    const v1, 0x7f0b0483

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lh6/a;->a(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/widget/ImageView;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    const v3, 0x7f0b0484

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v3}, Lh6/a;->a(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    const v4, 0x7f0b0482

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v4}, Lh6/a;->a(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroid/widget/ImageView;

    .line 64
    .line 65
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v5, p3, Lx9/w3;->c:Z

    .line 69
    .line 70
    iget-object v6, p0, Lx9/f2;->h:Landroid/content/Context;

    .line 71
    .line 72
    const v7, 0x7f0b047e

    .line 73
    .line 74
    .line 75
    const-string v8, "file://"

    .line 76
    .line 77
    const-string v9, "  "

    .line 78
    .line 79
    const v10, 0x7f0b0486

    .line 80
    .line 81
    .line 82
    if-eqz v5, :cond_4

    .line 83
    .line 84
    const v0, 0x7f080132

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1, v10, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p3, Lx9/w3;->h:Ljava/lang/String;

    .line 96
    .line 97
    iget-wide v2, p3, Lx9/w3;->d:J

    .line 98
    .line 99
    const-wide/16 v4, -0x2

    .line 100
    .line 101
    cmp-long v10, v2, v4

    .line 102
    .line 103
    if-nez v10, :cond_1

    .line 104
    .line 105
    const-string v2, "  \u65e0\u6743\u67e5\u770b"

    .line 106
    .line 107
    invoke-static {v0, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    goto :goto_1

    .line 112
    :cond_1
    const-wide/16 v4, -0x1

    .line 113
    .line 114
    cmp-long v10, v2, v4

    .line 115
    .line 116
    if-eqz v10, :cond_2

    .line 117
    .line 118
    invoke-static {v0, v9}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-wide v2, p3, Lx9/w3;->d:J

    .line 123
    .line 124
    long-to-double v2, v2

    .line 125
    invoke-static {v2, v3}, Lif/a;->D0(D)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :cond_2
    :goto_1
    iget-object v2, p3, Lx9/w3;->l:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_3

    .line 143
    .line 144
    invoke-static {v6}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    new-instance v3, Lcom/bumptech/glide/n;

    .line 152
    .line 153
    invoke-direct {v3, v1}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v6}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    sget-object v4, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 169
    .line 170
    iget-object v4, v4, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object v4, p3, Lx9/w3;->l:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v4, ".png"

    .line 181
    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    new-instance v3, Lo5/x;

    .line 194
    .line 195
    invoke-direct {v3, p2}, Lo5/x;-><init>(I)V

    .line 196
    .line 197
    .line 198
    invoke-static {v3}, Lw5/e;->z(Lo5/x;)Lw5/e;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-virtual {v2, p2}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 207
    .line 208
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 209
    .line 210
    iget v2, v2, Lcom/yunpan/appmanage/util/k;->R:I

    .line 211
    .line 212
    invoke-virtual {p2, v2, v2}, Lw5/a;->o(II)Lw5/a;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    check-cast p2, Lcom/bumptech/glide/m;

    .line 217
    .line 218
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 219
    .line 220
    .line 221
    new-instance p2, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v0, "    "

    .line 230
    .line 231
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget-object p3, p3, Lx9/w3;->m:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    :cond_3
    invoke-virtual {p1, v7, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_2

    .line 247
    .line 248
    :cond_4
    iget-object v5, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {p1, v10, v5}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    iget-object v10, p3, Lx9/w3;->h:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    iget-wide v9, p3, Lx9/w3;->d:J

    .line 267
    .line 268
    long-to-double v9, v9

    .line 269
    invoke-static {v9, v10}, Lif/a;->D0(D)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-virtual {p1, v7, v5}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    iget-object v5, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 284
    .line 285
    const-string v7, "."

    .line 286
    .line 287
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    const/4 v10, -0x1

    .line 292
    if-eq v9, v10, :cond_5

    .line 293
    .line 294
    iget-object v5, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    :cond_5
    iget-object v9, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    const v9, 0x7f080260

    .line 307
    .line 308
    .line 309
    if-nez v7, :cond_6

    .line 310
    .line 311
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_2

    .line 315
    .line 316
    :cond_6
    iget-object v7, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 317
    .line 318
    invoke-static {v7}, Lif/a;->c0(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    if-eqz v7, :cond_8

    .line 323
    .line 324
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 325
    .line 326
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/w;->k0:Z

    .line 327
    .line 328
    const p2, 0x7f08020f

    .line 329
    .line 330
    .line 331
    if-eqz p1, :cond_7

    .line 332
    .line 333
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_2

    .line 337
    .line 338
    :cond_7
    invoke-static {v6}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    new-instance v0, Lcom/bumptech/glide/n;

    .line 346
    .line 347
    invoke-direct {v0, v3}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 351
    .line 352
    .line 353
    invoke-static {v6}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget-object v1, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 376
    .line 377
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 378
    .line 379
    iget v0, v0, Lcom/yunpan/appmanage/util/k;->R:I

    .line 380
    .line 381
    invoke-virtual {p1, v0, v0}, Lw5/a;->o(II)Lw5/a;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    check-cast p1, Lcom/bumptech/glide/m;

    .line 386
    .line 387
    new-instance v0, Lla/a;

    .line 388
    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .line 393
    .line 394
    iget-object v2, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 395
    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    iget-object p3, p3, Lx9/w3;->h:Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object p3

    .line 408
    invoke-direct {v0, p3}, Lla/a;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1, v0}, Lw5/a;->t(Lf5/f;)Lw5/a;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    check-cast p1, Lcom/bumptech/glide/m;

    .line 416
    .line 417
    invoke-virtual {p1, p2}, Lw5/a;->g(I)Lw5/a;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    check-cast p1, Lcom/bumptech/glide/m;

    .line 422
    .line 423
    invoke-virtual {p1, v3}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 424
    .line 425
    .line 426
    goto/16 :goto_2

    .line 427
    .line 428
    :cond_8
    iget-object v6, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 429
    .line 430
    invoke-static {v6}, Lif/a;->X(Ljava/lang/String;)Z

    .line 431
    .line 432
    .line 433
    move-result v6

    .line 434
    if-eqz v6, :cond_a

    .line 435
    .line 436
    iget-wide v1, p3, Lx9/w3;->d:J

    .line 437
    .line 438
    const-wide/16 v5, 0x8

    .line 439
    .line 440
    cmp-long p2, v1, v5

    .line 441
    .line 442
    if-gez p2, :cond_9

    .line 443
    .line 444
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_2

    .line 448
    .line 449
    :cond_9
    const-string p2, "\u5b89\u88c5"

    .line 450
    .line 451
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 452
    .line 453
    .line 454
    const/4 p2, 0x1

    .line 455
    invoke-virtual {p1, v0, p2}, Lh6/a;->d(IZ)V

    .line 456
    .line 457
    .line 458
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 459
    .line 460
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 461
    .line 462
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 463
    .line 464
    new-instance p2, La2/e0;

    .line 465
    .line 466
    const/16 v0, 0x16

    .line 467
    .line 468
    invoke-direct {p2, p0, p3, v4, v0}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 469
    .line 470
    .line 471
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 472
    .line 473
    .line 474
    goto/16 :goto_2

    .line 475
    .line 476
    :cond_a
    iget-object p1, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 477
    .line 478
    invoke-static {p1}, Lif/a;->f0(Ljava/lang/String;)Z

    .line 479
    .line 480
    .line 481
    move-result p1

    .line 482
    if-eqz p1, :cond_b

    .line 483
    .line 484
    const p1, 0x7f08029b

    .line 485
    .line 486
    .line 487
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    .line 489
    .line 490
    goto/16 :goto_2

    .line 491
    .line 492
    :cond_b
    iget-object p1, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 493
    .line 494
    invoke-static {p1}, Lif/a;->j0(Ljava/lang/String;)Z

    .line 495
    .line 496
    .line 497
    move-result p1

    .line 498
    if-eqz p1, :cond_c

    .line 499
    .line 500
    const p1, 0x7f0802e5

    .line 501
    .line 502
    .line 503
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 504
    .line 505
    .line 506
    sget-object p1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 507
    .line 508
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    const v0, 0x7f080225

    .line 513
    .line 514
    .line 515
    invoke-static {p1, v0, v2}, Lo0/o;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 516
    .line 517
    .line 518
    move-result-object p1

    .line 519
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 520
    .line 521
    .line 522
    iget-object p1, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 523
    .line 524
    invoke-static {p1}, Lq4/a;->y(Ljava/lang/String;)Lmc/g;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    new-instance p3, Lha/ze;

    .line 529
    .line 530
    invoke-direct {p3, p0, v3, v4, p2}, Lha/ze;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {p1, p3}, Lec/b;->b(Lec/e;)V

    .line 534
    .line 535
    .line 536
    goto/16 :goto_2

    .line 537
    .line 538
    :cond_c
    invoke-static {v5}, Lza/g;->g(Ljava/lang/String;)Z

    .line 539
    .line 540
    .line 541
    move-result p1

    .line 542
    if-eqz p1, :cond_d

    .line 543
    .line 544
    const p1, 0x7f0802b7

    .line 545
    .line 546
    .line 547
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 548
    .line 549
    .line 550
    goto/16 :goto_2

    .line 551
    .line 552
    :cond_d
    const-string p1, ".txt"

    .line 553
    .line 554
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 555
    .line 556
    .line 557
    move-result p1

    .line 558
    if-eqz p1, :cond_e

    .line 559
    .line 560
    const p1, 0x7f0802df

    .line 561
    .line 562
    .line 563
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 564
    .line 565
    .line 566
    goto/16 :goto_2

    .line 567
    .line 568
    :cond_e
    const-string p1, ".doc"

    .line 569
    .line 570
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 571
    .line 572
    .line 573
    move-result p1

    .line 574
    if-eqz p1, :cond_f

    .line 575
    .line 576
    const p1, 0x7f0800cd

    .line 577
    .line 578
    .line 579
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 580
    .line 581
    .line 582
    goto/16 :goto_2

    .line 583
    .line 584
    :cond_f
    const-string p1, ".docx"

    .line 585
    .line 586
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 587
    .line 588
    .line 589
    move-result p1

    .line 590
    if-eqz p1, :cond_10

    .line 591
    .line 592
    const p1, 0x7f0800ce

    .line 593
    .line 594
    .line 595
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_2

    .line 599
    .line 600
    :cond_10
    const-string p1, ".xls"

    .line 601
    .line 602
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 603
    .line 604
    .line 605
    move-result p1

    .line 606
    if-eqz p1, :cond_11

    .line 607
    .line 608
    const p1, 0x7f080311

    .line 609
    .line 610
    .line 611
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 612
    .line 613
    .line 614
    goto/16 :goto_2

    .line 615
    .line 616
    :cond_11
    const-string p1, ".xlsx"

    .line 617
    .line 618
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 619
    .line 620
    .line 621
    move-result p1

    .line 622
    if-eqz p1, :cond_12

    .line 623
    .line 624
    const p1, 0x7f080312

    .line 625
    .line 626
    .line 627
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 628
    .line 629
    .line 630
    goto/16 :goto_2

    .line 631
    .line 632
    :cond_12
    const-string p1, ".csv"

    .line 633
    .line 634
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 635
    .line 636
    .line 637
    move-result p1

    .line 638
    if-eqz p1, :cond_13

    .line 639
    .line 640
    const p1, 0x7f080248

    .line 641
    .line 642
    .line 643
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_2

    .line 647
    .line 648
    :cond_13
    const-string p1, ".psd"

    .line 649
    .line 650
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 651
    .line 652
    .line 653
    move-result p1

    .line 654
    if-eqz p1, :cond_14

    .line 655
    .line 656
    const p1, 0x7f0801cf

    .line 657
    .line 658
    .line 659
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 660
    .line 661
    .line 662
    goto/16 :goto_2

    .line 663
    .line 664
    :cond_14
    const-string p1, ".iso"

    .line 665
    .line 666
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 667
    .line 668
    .line 669
    move-result p1

    .line 670
    if-eqz p1, :cond_15

    .line 671
    .line 672
    const p1, 0x7f08014e

    .line 673
    .line 674
    .line 675
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 676
    .line 677
    .line 678
    goto/16 :goto_2

    .line 679
    .line 680
    :cond_15
    const-string p1, ".ttf"

    .line 681
    .line 682
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 683
    .line 684
    .line 685
    move-result p1

    .line 686
    if-eqz p1, :cond_16

    .line 687
    .line 688
    const p1, 0x7f08030a

    .line 689
    .line 690
    .line 691
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 692
    .line 693
    .line 694
    goto/16 :goto_2

    .line 695
    .line 696
    :cond_16
    const-string p1, ".dll"

    .line 697
    .line 698
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 699
    .line 700
    .line 701
    move-result p1

    .line 702
    if-eqz p1, :cond_17

    .line 703
    .line 704
    const p1, 0x7f0800cc

    .line 705
    .line 706
    .line 707
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 708
    .line 709
    .line 710
    goto :goto_2

    .line 711
    :cond_17
    const-string p1, ".exe"

    .line 712
    .line 713
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 714
    .line 715
    .line 716
    move-result p1

    .line 717
    if-eqz p1, :cond_18

    .line 718
    .line 719
    const p1, 0x7f0800d4

    .line 720
    .line 721
    .line 722
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 723
    .line 724
    .line 725
    goto :goto_2

    .line 726
    :cond_18
    const-string p1, ".xml"

    .line 727
    .line 728
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 729
    .line 730
    .line 731
    move-result p1

    .line 732
    if-eqz p1, :cond_19

    .line 733
    .line 734
    const p1, 0x7f080313

    .line 735
    .line 736
    .line 737
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 738
    .line 739
    .line 740
    goto :goto_2

    .line 741
    :cond_19
    const-string p1, ".db"

    .line 742
    .line 743
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 744
    .line 745
    .line 746
    move-result p1

    .line 747
    if-eqz p1, :cond_1a

    .line 748
    .line 749
    const p1, 0x7f0800c3

    .line 750
    .line 751
    .line 752
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 753
    .line 754
    .line 755
    goto :goto_2

    .line 756
    :cond_1a
    const-string p1, ".json"

    .line 757
    .line 758
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 759
    .line 760
    .line 761
    move-result p1

    .line 762
    if-eqz p1, :cond_1b

    .line 763
    .line 764
    const p1, 0x7f08014f

    .line 765
    .line 766
    .line 767
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 768
    .line 769
    .line 770
    goto :goto_2

    .line 771
    :cond_1b
    const-string p1, ".log"

    .line 772
    .line 773
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 774
    .line 775
    .line 776
    move-result p1

    .line 777
    if-eqz p1, :cond_1c

    .line 778
    .line 779
    const p1, 0x7f080183

    .line 780
    .line 781
    .line 782
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 783
    .line 784
    .line 785
    goto :goto_2

    .line 786
    :cond_1c
    const-string p1, ".gj"

    .line 787
    .line 788
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 789
    .line 790
    .line 791
    move-result p1

    .line 792
    if-eqz p1, :cond_1d

    .line 793
    .line 794
    const p1, 0x7f08021f

    .line 795
    .line 796
    .line 797
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 798
    .line 799
    .line 800
    goto :goto_2

    .line 801
    :cond_1d
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 802
    .line 803
    .line 804
    :goto_2
    return-void
.end method
