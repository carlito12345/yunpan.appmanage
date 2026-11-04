.class public final Lx9/f0;
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
    iput-object p1, p0, Lx9/f0;->h:Landroid/content/Context;

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
    .locals 10

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Lx9/w3;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    iget-boolean p2, p3, Lx9/w3;->i:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const v1, 0x7f0b0567

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    const p2, 0x7f080202

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1, v1, v0}, Lh6/a;->b(II)V

    .line 25
    .line 26
    .line 27
    :goto_0
    const p2, 0x7f0b04ca

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2, v0}, Lh6/a;->d(IZ)V

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0b0483

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lh6/a;->a(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/ImageView;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    const v2, 0x7f0b0484

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2}, Lh6/a;->a(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    const v3, 0x7f0b0482

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v3}, Lh6/a;->a(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroid/widget/ImageView;

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    iget-boolean v1, p3, Lx9/w3;->c:Z

    .line 71
    .line 72
    iget-object v4, p0, Lx9/f0;->h:Landroid/content/Context;

    .line 73
    .line 74
    const v5, 0x7f0b047e

    .line 75
    .line 76
    .line 77
    const-string v6, "file://"

    .line 78
    .line 79
    const-string v7, "  "

    .line 80
    .line 81
    const v8, 0x7f0b0486

    .line 82
    .line 83
    .line 84
    if-eqz v1, :cond_6

    .line 85
    .line 86
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 87
    .line 88
    const-string v1, "Download"

    .line 89
    .line 90
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_2

    .line 95
    .line 96
    sget-object p2, Lfa/g0;->a:Lfa/h0;

    .line 97
    .line 98
    invoke-virtual {p2}, Lfa/h0;->d()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iget-object v1, p3, Lx9/w3;->e:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_2

    .line 109
    .line 110
    const p2, 0x7f080255

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    const p2, 0x7f080250

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    .line 122
    .line 123
    :goto_1
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p1, v8, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object p2, p3, Lx9/w3;->h:Ljava/lang/String;

    .line 129
    .line 130
    iget-wide v1, p3, Lx9/w3;->d:J

    .line 131
    .line 132
    const-wide/16 v8, -0x2

    .line 133
    .line 134
    cmp-long v3, v1, v8

    .line 135
    .line 136
    if-nez v3, :cond_3

    .line 137
    .line 138
    const-string v1, "  \u65e0\u6743\u67e5\u770b"

    .line 139
    .line 140
    invoke-static {p2, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    goto :goto_2

    .line 145
    :cond_3
    const-wide/16 v8, -0x1

    .line 146
    .line 147
    cmp-long v3, v1, v8

    .line 148
    .line 149
    if-eqz v3, :cond_4

    .line 150
    .line 151
    invoke-static {p2, v7}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    iget-wide v1, p3, Lx9/w3;->d:J

    .line 156
    .line 157
    long-to-double v1, v1

    .line 158
    invoke-static {v1, v2}, Lif/a;->D0(D)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    :cond_4
    :goto_2
    iget-object v1, p3, Lx9/w3;->l:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_5

    .line 176
    .line 177
    invoke-static {v4}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 187
    .line 188
    iget-object v3, v3, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget-object v3, p3, Lx9/w3;->l:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v3, ".png"

    .line 199
    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    new-instance v2, Lo5/x;

    .line 212
    .line 213
    const/16 v3, 0x8

    .line 214
    .line 215
    invoke-direct {v2, v3}, Lo5/x;-><init>(I)V

    .line 216
    .line 217
    .line 218
    invoke-static {v2}, Lw5/e;->z(Lo5/x;)Lw5/e;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 227
    .line 228
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 229
    .line 230
    iget v2, v2, Lcom/yunpan/appmanage/util/k;->R:I

    .line 231
    .line 232
    invoke-virtual {v1, v2, v2}, Lw5/a;->o(II)Lw5/a;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    check-cast v1, Lcom/bumptech/glide/m;

    .line 237
    .line 238
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 239
    .line 240
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string p2, "    "

    .line 250
    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    iget-object p2, p3, Lx9/w3;->m:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    :cond_5
    invoke-virtual {p1, v5, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_4

    .line 267
    .line 268
    :cond_6
    iget-object v1, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {p1, v8, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    iget-object v8, p3, Lx9/w3;->h:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    iget-wide v7, p3, Lx9/w3;->d:J

    .line 287
    .line 288
    long-to-double v7, v7

    .line 289
    invoke-static {v7, v8}, Lif/a;->D0(D)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {p1, v5, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 301
    .line 302
    .line 303
    iget-object v1, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    iget-object v5, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 310
    .line 311
    const-string v7, "."

    .line 312
    .line 313
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    const/4 v8, -0x1

    .line 318
    if-eq v5, v8, :cond_7

    .line 319
    .line 320
    iget-object v1, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    :cond_7
    iget-object v5, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 327
    .line 328
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    const v7, 0x7f080260

    .line 333
    .line 334
    .line 335
    if-nez v5, :cond_8

    .line 336
    .line 337
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_4

    .line 341
    .line 342
    :cond_8
    iget-object v5, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 343
    .line 344
    invoke-static {v5}, Lif/a;->c0(Ljava/lang/String;)Z

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    if-eqz v5, :cond_a

    .line 349
    .line 350
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 351
    .line 352
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/w;->k0:Z

    .line 353
    .line 354
    const p2, 0x7f08020f

    .line 355
    .line 356
    .line 357
    if-eqz p1, :cond_9

    .line 358
    .line 359
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    .line 361
    .line 362
    goto/16 :goto_4

    .line 363
    .line 364
    :cond_9
    invoke-static {v4}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    new-instance v0, Lcom/bumptech/glide/n;

    .line 372
    .line 373
    invoke-direct {v0, v2}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 377
    .line 378
    .line 379
    invoke-static {v4}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    iget-object v1, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 402
    .line 403
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 404
    .line 405
    iget v0, v0, Lcom/yunpan/appmanage/util/k;->R:I

    .line 406
    .line 407
    invoke-virtual {p1, v0, v0}, Lw5/a;->o(II)Lw5/a;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    check-cast p1, Lcom/bumptech/glide/m;

    .line 412
    .line 413
    new-instance v0, Lla/a;

    .line 414
    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .line 419
    .line 420
    iget-object v3, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    iget-object p3, p3, Lx9/w3;->h:Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p3

    .line 434
    invoke-direct {v0, p3}, Lla/a;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p1, v0}, Lw5/a;->t(Lf5/f;)Lw5/a;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    check-cast p1, Lcom/bumptech/glide/m;

    .line 442
    .line 443
    invoke-virtual {p1, p2}, Lw5/a;->g(I)Lw5/a;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    check-cast p1, Lcom/bumptech/glide/m;

    .line 448
    .line 449
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 450
    .line 451
    .line 452
    goto/16 :goto_4

    .line 453
    .line 454
    :cond_a
    iget-object v4, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 455
    .line 456
    invoke-static {v4}, Lif/a;->X(Ljava/lang/String;)Z

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    if-eqz v4, :cond_d

    .line 461
    .line 462
    iget-wide v0, p3, Lx9/w3;->d:J

    .line 463
    .line 464
    const-wide/16 v4, 0x1

    .line 465
    .line 466
    cmp-long v2, v0, v4

    .line 467
    .line 468
    if-gez v2, :cond_b

    .line 469
    .line 470
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 471
    .line 472
    .line 473
    goto/16 :goto_4

    .line 474
    .line 475
    :cond_b
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 476
    .line 477
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->f0:I

    .line 478
    .line 479
    const/4 v1, 0x1

    .line 480
    if-gt v0, v1, :cond_c

    .line 481
    .line 482
    const-string v0, "\u5b89\u88c5"

    .line 483
    .line 484
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p1, p2, v1}, Lh6/a;->d(IZ)V

    .line 488
    .line 489
    .line 490
    :cond_c
    const p1, 0x7f08021e

    .line 491
    .line 492
    .line 493
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 494
    .line 495
    .line 496
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 497
    .line 498
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 499
    .line 500
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 501
    .line 502
    new-instance p2, La2/e0;

    .line 503
    .line 504
    const/16 v0, 0x12

    .line 505
    .line 506
    invoke-direct {p2, p0, p3, v3, v0}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 507
    .line 508
    .line 509
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 510
    .line 511
    .line 512
    goto/16 :goto_4

    .line 513
    .line 514
    :cond_d
    iget-object p1, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 515
    .line 516
    invoke-static {p1}, Lif/a;->f0(Ljava/lang/String;)Z

    .line 517
    .line 518
    .line 519
    move-result p1

    .line 520
    if-eqz p1, :cond_e

    .line 521
    .line 522
    const p1, 0x7f08029b

    .line 523
    .line 524
    .line 525
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_4

    .line 529
    .line 530
    :cond_e
    iget-object p1, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 531
    .line 532
    invoke-static {p1}, Lif/a;->j0(Ljava/lang/String;)Z

    .line 533
    .line 534
    .line 535
    move-result p1

    .line 536
    if-eqz p1, :cond_f

    .line 537
    .line 538
    const p1, 0x7f0802e5

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    .line 543
    .line 544
    const p1, 0x7f080226

    .line 545
    .line 546
    .line 547
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 548
    .line 549
    .line 550
    iget-object p1, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 551
    .line 552
    invoke-static {p1}, Lq4/a;->y(Ljava/lang/String;)Lmc/g;

    .line 553
    .line 554
    .line 555
    move-result-object p1

    .line 556
    new-instance p2, Lha/ze;

    .line 557
    .line 558
    const/4 p3, 0x6

    .line 559
    invoke-direct {p2, p0, v2, v3, p3}, Lha/ze;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 563
    .line 564
    .line 565
    goto/16 :goto_4

    .line 566
    .line 567
    :cond_f
    invoke-static {v1}, Lza/g;->g(Ljava/lang/String;)Z

    .line 568
    .line 569
    .line 570
    move-result p1

    .line 571
    if-eqz p1, :cond_10

    .line 572
    .line 573
    const p1, 0x7f0802b7

    .line 574
    .line 575
    .line 576
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_4

    .line 580
    .line 581
    :cond_10
    const-string p1, ".txt"

    .line 582
    .line 583
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 584
    .line 585
    .line 586
    move-result p1

    .line 587
    if-eqz p1, :cond_11

    .line 588
    .line 589
    const p1, 0x7f0802df

    .line 590
    .line 591
    .line 592
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 593
    .line 594
    .line 595
    goto/16 :goto_4

    .line 596
    .line 597
    :cond_11
    const-string p1, ".doc"

    .line 598
    .line 599
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 600
    .line 601
    .line 602
    move-result p1

    .line 603
    if-eqz p1, :cond_12

    .line 604
    .line 605
    const p1, 0x7f0800cd

    .line 606
    .line 607
    .line 608
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 609
    .line 610
    .line 611
    goto/16 :goto_4

    .line 612
    .line 613
    :cond_12
    const-string p1, ".docx"

    .line 614
    .line 615
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 616
    .line 617
    .line 618
    move-result p1

    .line 619
    if-eqz p1, :cond_13

    .line 620
    .line 621
    const p1, 0x7f0800ce

    .line 622
    .line 623
    .line 624
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 625
    .line 626
    .line 627
    goto/16 :goto_4

    .line 628
    .line 629
    :cond_13
    const-string p1, ".xls"

    .line 630
    .line 631
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 632
    .line 633
    .line 634
    move-result p1

    .line 635
    if-eqz p1, :cond_14

    .line 636
    .line 637
    const p1, 0x7f080311

    .line 638
    .line 639
    .line 640
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_4

    .line 644
    .line 645
    :cond_14
    const-string p1, ".xlsx"

    .line 646
    .line 647
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 648
    .line 649
    .line 650
    move-result p1

    .line 651
    if-eqz p1, :cond_15

    .line 652
    .line 653
    const p1, 0x7f080312

    .line 654
    .line 655
    .line 656
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 657
    .line 658
    .line 659
    goto/16 :goto_4

    .line 660
    .line 661
    :cond_15
    const-string p1, ".psd"

    .line 662
    .line 663
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 664
    .line 665
    .line 666
    move-result p1

    .line 667
    if-eqz p1, :cond_16

    .line 668
    .line 669
    const p1, 0x7f0801cf

    .line 670
    .line 671
    .line 672
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 673
    .line 674
    .line 675
    goto/16 :goto_4

    .line 676
    .line 677
    :cond_16
    const-string p1, ".iso"

    .line 678
    .line 679
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 680
    .line 681
    .line 682
    move-result p1

    .line 683
    if-eqz p1, :cond_17

    .line 684
    .line 685
    const p1, 0x7f08014e

    .line 686
    .line 687
    .line 688
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 689
    .line 690
    .line 691
    goto/16 :goto_4

    .line 692
    .line 693
    :cond_17
    const-string p1, ".csv"

    .line 694
    .line 695
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 696
    .line 697
    .line 698
    move-result p1

    .line 699
    if-eqz p1, :cond_18

    .line 700
    .line 701
    const p1, 0x7f080248

    .line 702
    .line 703
    .line 704
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 705
    .line 706
    .line 707
    goto/16 :goto_4

    .line 708
    .line 709
    :cond_18
    const-string p1, ".ttf"

    .line 710
    .line 711
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 712
    .line 713
    .line 714
    move-result p1

    .line 715
    if-eqz p1, :cond_19

    .line 716
    .line 717
    const p1, 0x7f08030a

    .line 718
    .line 719
    .line 720
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 721
    .line 722
    .line 723
    goto/16 :goto_4

    .line 724
    .line 725
    :cond_19
    const-string p1, ".dll"

    .line 726
    .line 727
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 728
    .line 729
    .line 730
    move-result p1

    .line 731
    if-eqz p1, :cond_1a

    .line 732
    .line 733
    const p1, 0x7f0800cc

    .line 734
    .line 735
    .line 736
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 737
    .line 738
    .line 739
    goto/16 :goto_4

    .line 740
    .line 741
    :cond_1a
    const-string p1, ".exe"

    .line 742
    .line 743
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 744
    .line 745
    .line 746
    move-result p1

    .line 747
    if-eqz p1, :cond_1b

    .line 748
    .line 749
    const p1, 0x7f0800d4

    .line 750
    .line 751
    .line 752
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 753
    .line 754
    .line 755
    goto/16 :goto_4

    .line 756
    .line 757
    :cond_1b
    const-string p1, ".xml"

    .line 758
    .line 759
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 760
    .line 761
    .line 762
    move-result p1

    .line 763
    if-eqz p1, :cond_1c

    .line 764
    .line 765
    const p1, 0x7f080313

    .line 766
    .line 767
    .line 768
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 769
    .line 770
    .line 771
    goto/16 :goto_4

    .line 772
    .line 773
    :cond_1c
    const-string p1, ".db"

    .line 774
    .line 775
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 776
    .line 777
    .line 778
    move-result p1

    .line 779
    if-eqz p1, :cond_1d

    .line 780
    .line 781
    const p1, 0x7f0800c3

    .line 782
    .line 783
    .line 784
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 785
    .line 786
    .line 787
    goto/16 :goto_4

    .line 788
    .line 789
    :cond_1d
    const-string p1, ".json"

    .line 790
    .line 791
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 792
    .line 793
    .line 794
    move-result p1

    .line 795
    if-eqz p1, :cond_1e

    .line 796
    .line 797
    const p1, 0x7f08014f

    .line 798
    .line 799
    .line 800
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 801
    .line 802
    .line 803
    goto/16 :goto_4

    .line 804
    .line 805
    :cond_1e
    const-string p1, ".log"

    .line 806
    .line 807
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 808
    .line 809
    .line 810
    move-result p1

    .line 811
    if-eqz p1, :cond_1f

    .line 812
    .line 813
    const p1, 0x7f080183

    .line 814
    .line 815
    .line 816
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 817
    .line 818
    .line 819
    goto/16 :goto_4

    .line 820
    .line 821
    :cond_1f
    const-string p1, ".asp"

    .line 822
    .line 823
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 824
    .line 825
    .line 826
    move-result p1

    .line 827
    if-eqz p1, :cond_20

    .line 828
    .line 829
    const p1, 0x7f080222

    .line 830
    .line 831
    .line 832
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 833
    .line 834
    .line 835
    goto/16 :goto_4

    .line 836
    .line 837
    :cond_20
    const-string p1, ".aspx"

    .line 838
    .line 839
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 840
    .line 841
    .line 842
    move-result p1

    .line 843
    if-eqz p1, :cond_21

    .line 844
    .line 845
    const p1, 0x7f080223

    .line 846
    .line 847
    .line 848
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 849
    .line 850
    .line 851
    goto/16 :goto_4

    .line 852
    .line 853
    :cond_21
    const-string p1, ".class"

    .line 854
    .line 855
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 856
    .line 857
    .line 858
    move-result p1

    .line 859
    if-eqz p1, :cond_22

    .line 860
    .line 861
    const p1, 0x7f08023b

    .line 862
    .line 863
    .line 864
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 865
    .line 866
    .line 867
    goto/16 :goto_4

    .line 868
    .line 869
    :cond_22
    const-string p1, ".css"

    .line 870
    .line 871
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 872
    .line 873
    .line 874
    move-result p1

    .line 875
    if-eqz p1, :cond_23

    .line 876
    .line 877
    const p1, 0x7f080247

    .line 878
    .line 879
    .line 880
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 881
    .line 882
    .line 883
    goto/16 :goto_4

    .line 884
    .line 885
    :cond_23
    const-string p1, ".dex"

    .line 886
    .line 887
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 888
    .line 889
    .line 890
    move-result p1

    .line 891
    if-nez p1, :cond_2b

    .line 892
    .line 893
    const-string p1, ".odex"

    .line 894
    .line 895
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 896
    .line 897
    .line 898
    move-result p1

    .line 899
    if-nez p1, :cond_2b

    .line 900
    .line 901
    const-string p1, ".vdex"

    .line 902
    .line 903
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 904
    .line 905
    .line 906
    move-result p1

    .line 907
    if-eqz p1, :cond_24

    .line 908
    .line 909
    goto :goto_3

    .line 910
    :cond_24
    const-string p1, ".html"

    .line 911
    .line 912
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 913
    .line 914
    .line 915
    move-result p1

    .line 916
    if-eqz p1, :cond_25

    .line 917
    .line 918
    const p1, 0x7f080279

    .line 919
    .line 920
    .line 921
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 922
    .line 923
    .line 924
    goto :goto_4

    .line 925
    :cond_25
    const-string p1, ".jar"

    .line 926
    .line 927
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 928
    .line 929
    .line 930
    move-result p1

    .line 931
    if-eqz p1, :cond_26

    .line 932
    .line 933
    const p1, 0x7f080282

    .line 934
    .line 935
    .line 936
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 937
    .line 938
    .line 939
    goto :goto_4

    .line 940
    :cond_26
    const-string p1, ".java"

    .line 941
    .line 942
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 943
    .line 944
    .line 945
    move-result p1

    .line 946
    if-eqz p1, :cond_27

    .line 947
    .line 948
    const p1, 0x7f080283

    .line 949
    .line 950
    .line 951
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 952
    .line 953
    .line 954
    goto :goto_4

    .line 955
    :cond_27
    const-string p1, ".js"

    .line 956
    .line 957
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 958
    .line 959
    .line 960
    move-result p1

    .line 961
    if-eqz p1, :cond_28

    .line 962
    .line 963
    const p1, 0x7f080287

    .line 964
    .line 965
    .line 966
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 967
    .line 968
    .line 969
    goto :goto_4

    .line 970
    :cond_28
    const-string p1, ".php"

    .line 971
    .line 972
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 973
    .line 974
    .line 975
    move-result p1

    .line 976
    if-eqz p1, :cond_29

    .line 977
    .line 978
    const p1, 0x7f0802a6

    .line 979
    .line 980
    .line 981
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 982
    .line 983
    .line 984
    goto :goto_4

    .line 985
    :cond_29
    const-string p1, ".py"

    .line 986
    .line 987
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 988
    .line 989
    .line 990
    move-result p1

    .line 991
    if-eqz p1, :cond_2a

    .line 992
    .line 993
    const p1, 0x7f0802aa

    .line 994
    .line 995
    .line 996
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 997
    .line 998
    .line 999
    goto :goto_4

    .line 1000
    :cond_2a
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1001
    .line 1002
    .line 1003
    goto :goto_4

    .line 1004
    :cond_2b
    :goto_3
    const p1, 0x7f08024f

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1008
    .line 1009
    .line 1010
    :goto_4
    return-void
.end method
