.class public final Lx9/y5;
.super Lc6/g;
.source "SourceFile"


# instance fields
.field public final h:Lcom/yunpan/appmanage/carsdk/u;

.field public final i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yunpan/appmanage/carsdk/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx9/y5;->i:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lx9/y5;->h:Lcom/yunpan/appmanage/carsdk/u;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    const p3, 0x7f0e0151

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
    .locals 7

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    check-cast p1, Lh6/a;

    .line 4
    .line 5
    move-object v4, p3

    .line 6
    check-cast v4, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 7
    .line 8
    const p3, 0x7f0b0482

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lh6/a;->a(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    move-object v3, p3

    .line 16
    check-cast v3, Landroid/widget/ImageView;

    .line 17
    .line 18
    iget-object p3, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v3, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    iget-object p3, p0, Lx9/y5;->i:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {p3}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/bumptech/glide/n;

    .line 37
    .line 38
    invoke-direct {v1, v3}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, v1}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 42
    .line 43
    .line 44
    const p3, 0x7f0b0486

    .line 45
    .line 46
    .line 47
    iget-object v1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, p3, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, "  "

    .line 63
    .line 64
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->size_txt:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    const v1, 0x7f0b047e

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1, p3}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    const p3, 0x7f0b0567

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p3}, Lh6/a;->a(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Landroid/widget/ImageView;

    .line 90
    .line 91
    iget-boolean p3, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->isSelect:Z

    .line 92
    .line 93
    if-eqz p3, :cond_0

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    const p3, 0x7f0800bd

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    const/16 p3, 0x8

    .line 106
    .line 107
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    :goto_0
    iget-boolean p1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 111
    .line 112
    if-eqz p1, :cond_1

    .line 113
    .line 114
    const p1, 0x7f080132

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_6

    .line 121
    .line 122
    :cond_1
    iget-object p1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {p1}, Lif/a;->X(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_2

    .line 129
    .line 130
    const p1, 0x7f08021e

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    iget-object p1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {p1}, Lif/a;->c0(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_3

    .line 144
    .line 145
    const p1, 0x7f08020f

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_3
    iget-object p1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {p1}, Lif/a;->j0(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_4

    .line 159
    .line 160
    const p1, 0x7f0802e5

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_4
    iget-object p1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {p1}, Lif/a;->f0(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_5

    .line 174
    .line 175
    const p1, 0x7f08029b

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_5
    iget-object p1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {p1}, Lza/g;->g(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_6

    .line 189
    .line 190
    const p1, 0x7f0802b7

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_6
    const p1, 0x7f08025f

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    .line 202
    .line 203
    :goto_1
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 204
    .line 205
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 206
    .line 207
    iget-object p3, p1, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 208
    .line 209
    iget p3, p3, Lx9/n5;->a:I

    .line 210
    .line 211
    const-string v1, "/"

    .line 212
    .line 213
    const-string v2, ""

    .line 214
    .line 215
    if-ne p3, p2, :cond_7

    .line 216
    .line 217
    iget-object p1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 218
    .line 219
    invoke-static {p1}, Lif/a;->X(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_d

    .line 224
    .line 225
    :try_start_0
    iget-object p1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 226
    .line 227
    const-string p2, "ico"

    .line 228
    .line 229
    invoke-virtual {p1, p2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_2

    .line 238
    :catch_0
    nop

    .line 239
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-nez p1, :cond_d

    .line 244
    .line 245
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 246
    .line 247
    iget-object p2, p1, Lcom/yunpan/appmanage/util/k;->Y:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 250
    .line 251
    .line 252
    move-result p2

    .line 253
    if-nez p2, :cond_d

    .line 254
    .line 255
    const-string p2, "https://image.woozooo.com/image/ico/"

    .line 256
    .line 257
    const-string p3, "?x-oss-process=image/auto-orient,1/resize,m_fill,w_100,h_100/format,png"

    .line 258
    .line 259
    invoke-static {p2, v2, p3}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    new-instance p3, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    iget-object v0, p1, Lcom/yunpan/appmanage/util/k;->Y:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 274
    .line 275
    iget-object p1, p1, Lx9/n5;->g:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    iget-object p1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-static {p2, p1}, Lqf/c;->V(Ljava/lang/String;Ljava/lang/String;)Lmc/g;

    .line 293
    .line 294
    .line 295
    move-result-object p2

    .line 296
    new-instance p3, Lha/ze;

    .line 297
    .line 298
    const/16 v0, 0x9

    .line 299
    .line 300
    invoke-direct {p3, v3, v4, p1, v0}, Lha/ze;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2, p3}, Lec/b;->b(Lec/e;)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_6

    .line 307
    .line 308
    :cond_7
    const/4 v5, 0x2

    .line 309
    if-ne p3, v5, :cond_8

    .line 310
    .line 311
    :try_start_1
    iget-object p1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 312
    .line 313
    const-string p2, "DownloadUrl"

    .line 314
    .line 315
    invoke-virtual {p1, p2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 323
    goto :goto_3

    .line 324
    :catch_1
    nop

    .line 325
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    if-nez p1, :cond_d

    .line 330
    .line 331
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 332
    .line 333
    iget-object p2, p1, Lcom/yunpan/appmanage/util/k;->Y:Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 336
    .line 337
    .line 338
    move-result p2

    .line 339
    if-nez p2, :cond_d

    .line 340
    .line 341
    new-instance p2, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    iget-object p3, p1, Lcom/yunpan/appmanage/util/k;->Y:Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 352
    .line 353
    iget-object p1, p1, Lx9/n5;->g:Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    iget-object p1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    invoke-static {v2, v5}, Lqf/c;->V(Ljava/lang/String;Ljava/lang/String;)Lmc/g;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    new-instance p2, Lx9/x5;

    .line 375
    .line 376
    const/4 v6, 0x0

    .line 377
    move-object v1, p2

    .line 378
    move-object v2, p0

    .line 379
    invoke-direct/range {v1 .. v6}, Lx9/x5;-><init>(Lx9/y5;Landroid/widget/ImageView;Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_6

    .line 386
    .line 387
    :cond_8
    const/16 v5, 0x14

    .line 388
    .line 389
    if-ne p3, v5, :cond_9

    .line 390
    .line 391
    :try_start_2
    iget-object p1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 392
    .line 393
    const-string p2, "fileIcon"

    .line 394
    .line 395
    invoke-virtual {p1, p2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 403
    goto :goto_4

    .line 404
    :catch_2
    nop

    .line 405
    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 406
    .line 407
    .line 408
    move-result p1

    .line 409
    if-nez p1, :cond_d

    .line 410
    .line 411
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 412
    .line 413
    iget-object p2, p1, Lcom/yunpan/appmanage/util/k;->Y:Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 416
    .line 417
    .line 418
    move-result p2

    .line 419
    if-nez p2, :cond_d

    .line 420
    .line 421
    new-instance p2, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    iget-object p3, p1, Lcom/yunpan/appmanage/util/k;->Y:Ljava/lang/String;

    .line 427
    .line 428
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 432
    .line 433
    iget-object p1, p1, Lx9/n5;->g:Ljava/lang/String;

    .line 434
    .line 435
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    iget-object p1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    invoke-static {v2, v5}, Lqf/c;->V(Ljava/lang/String;Ljava/lang/String;)Lmc/g;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    new-instance p2, Lx9/x5;

    .line 455
    .line 456
    const/4 v6, 0x1

    .line 457
    move-object v1, p2

    .line 458
    move-object v2, p0

    .line 459
    invoke-direct/range {v1 .. v6}, Lx9/x5;-><init>(Lx9/y5;Landroid/widget/ImageView;Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;I)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 463
    .line 464
    .line 465
    goto/16 :goto_6

    .line 466
    .line 467
    :cond_9
    const/16 v5, 0x15

    .line 468
    .line 469
    if-ne p3, v5, :cond_a

    .line 470
    .line 471
    :try_start_3
    iget-object p1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 472
    .line 473
    const-string p2, "thumbnail"

    .line 474
    .line 475
    invoke-virtual {p1, p2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 483
    goto :goto_5

    .line 484
    :catch_3
    nop

    .line 485
    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 486
    .line 487
    .line 488
    move-result p1

    .line 489
    if-nez p1, :cond_d

    .line 490
    .line 491
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 492
    .line 493
    iget-object p2, p1, Lcom/yunpan/appmanage/util/k;->Y:Ljava/lang/String;

    .line 494
    .line 495
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 496
    .line 497
    .line 498
    move-result p2

    .line 499
    if-nez p2, :cond_d

    .line 500
    .line 501
    new-instance p2, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .line 505
    .line 506
    iget-object p3, p1, Lcom/yunpan/appmanage/util/k;->Y:Ljava/lang/String;

    .line 507
    .line 508
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 512
    .line 513
    iget-object p1, p1, Lx9/n5;->g:Ljava/lang/String;

    .line 514
    .line 515
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    iget-object p1, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 522
    .line 523
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    invoke-static {v2, v5}, Lqf/c;->V(Ljava/lang/String;Ljava/lang/String;)Lmc/g;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    new-instance p2, Lx9/x5;

    .line 535
    .line 536
    const/4 v6, 0x2

    .line 537
    move-object v1, p2

    .line 538
    move-object v2, p0

    .line 539
    invoke-direct/range {v1 .. v6}, Lx9/x5;-><init>(Lx9/y5;Landroid/widget/ImageView;Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;I)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 543
    .line 544
    .line 545
    goto :goto_6

    .line 546
    :cond_a
    iget-object p3, p1, Lcom/yunpan/appmanage/util/k;->Y:Ljava/lang/String;

    .line 547
    .line 548
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 549
    .line 550
    .line 551
    move-result p3

    .line 552
    if-nez p3, :cond_d

    .line 553
    .line 554
    iget-object p3, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 555
    .line 556
    invoke-static {p3}, Lif/a;->c0(Ljava/lang/String;)Z

    .line 557
    .line 558
    .line 559
    move-result p3

    .line 560
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 561
    .line 562
    if-eqz p3, :cond_c

    .line 563
    .line 564
    iget-wide p2, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 565
    .line 566
    const-wide/32 v1, 0x9c4000

    .line 567
    .line 568
    .line 569
    cmp-long v5, p2, v1

    .line 570
    .line 571
    if-lez v5, :cond_b

    .line 572
    .line 573
    goto :goto_6

    .line 574
    :cond_b
    new-instance p2, Lx9/v5;

    .line 575
    .line 576
    invoke-direct {p2, p0, v4, v3, v0}, Lx9/v5;-><init>(Lx9/y5;Lcom/yunpan/appmanage/bean/WpPathBean;Landroid/widget/ImageView;I)V

    .line 577
    .line 578
    .line 579
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 580
    .line 581
    .line 582
    goto :goto_6

    .line 583
    :cond_c
    iget-object p3, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 584
    .line 585
    invoke-static {p3}, Lif/a;->j0(Ljava/lang/String;)Z

    .line 586
    .line 587
    .line 588
    move-result p3

    .line 589
    if-eqz p3, :cond_d

    .line 590
    .line 591
    new-instance p3, Lx9/v5;

    .line 592
    .line 593
    invoke-direct {p3, p0, v4, v3, p2}, Lx9/v5;-><init>(Lx9/y5;Lcom/yunpan/appmanage/bean/WpPathBean;Landroid/widget/ImageView;I)V

    .line 594
    .line 595
    .line 596
    invoke-interface {p1, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 597
    .line 598
    .line 599
    :cond_d
    :goto_6
    return-void
.end method
