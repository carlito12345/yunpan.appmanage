.class public final synthetic Lua/c8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/y6;
.implements Lha/gb;
.implements Lfa/w;


# instance fields
.field public final synthetic a:Lua/q8;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lua/q8;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/c8;->a:Lua/q8;

    iput p2, p0, Lua/c8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx9/w3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/c8;->a:Lua/q8;

    .line 2
    .line 3
    iget-object v0, v0, Lua/q8;->n:Lx9/n;

    .line 4
    .line 5
    iget v1, p0, Lua/c8;->b:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 13

    .line 1
    const/4 v0, 0x4

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lua/c8;->a:Lua/q8;

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v4, "\u6253\u5f00"

    .line 11
    .line 12
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    iget-object p1, v3, Lua/q8;->B:Lx9/w3;

    .line 20
    .line 21
    iget-boolean v0, p1, Lx9/w3;->c:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1b

    .line 24
    .line 25
    iget-object v0, v3, Lua/q8;->l:Lx9/g0;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v3, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 33
    .line 34
    .line 35
    iget-object p1, v3, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 36
    .line 37
    iget-object v0, v3, Lua/q8;->l:Lx9/g0;

    .line 38
    .line 39
    invoke-static {v0, v2, p1}, Lg/b;->x(Lx9/g0;ILcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, v3, Lua/q8;->B:Lx9/w3;

    .line 43
    .line 44
    invoke-virtual {v3, p1, v5}, Lua/q8;->v(Lx9/w3;Z)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_8

    .line 48
    .line 49
    :cond_0
    const-string v4, "\u6d4f\u89c8"

    .line 50
    .line 51
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    iget v6, p0, Lua/c8;->b:I

    .line 56
    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    new-instance p1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    :goto_0
    iget-object v1, v3, Lua/q8;->n:Lx9/n;

    .line 66
    .line 67
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-ge v5, v1, :cond_2

    .line 72
    .line 73
    iget-object v1, v3, Lua/q8;->n:Lx9/n;

    .line 74
    .line 75
    invoke-virtual {v1, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lx9/w3;

    .line 80
    .line 81
    iget-object v1, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1}, Lif/a;->c0(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    iget-object v1, v3, Lua/q8;->n:Lx9/n;

    .line 90
    .line 91
    invoke-virtual {v1, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lx9/w3;

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    if-ne v5, v6, :cond_1

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    sub-int/2addr v0, v2

    .line 107
    :cond_1
    add-int/2addr v5, v2

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 110
    .line 111
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 112
    .line 113
    new-instance v2, Lcom/yunpan/appmanage/bean/ImageData;

    .line 114
    .line 115
    invoke-direct {v2, v0, p1}, Lcom/yunpan/appmanage/bean/ImageData;-><init>(ILjava/util/List;)V

    .line 116
    .line 117
    .line 118
    iput-object v2, v1, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 119
    .line 120
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityImage;

    .line 121
    .line 122
    invoke-virtual {v3, p1}, Lda/h;->l(Ljava/lang/Class;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_8

    .line 126
    .line 127
    :cond_3
    const-string v4, "\u6539\u540d"

    .line 128
    .line 129
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_4

    .line 134
    .line 135
    new-instance p1, Lha/hb;

    .line 136
    .line 137
    iget-object v8, v3, Lda/h;->f:Landroid/app/Activity;

    .line 138
    .line 139
    iget-object v9, v3, Lda/h;->e:Landroid/content/Context;

    .line 140
    .line 141
    iget-object v10, v3, Lua/q8;->B:Lx9/w3;

    .line 142
    .line 143
    new-instance v12, Lua/c8;

    .line 144
    .line 145
    invoke-direct {v12, v3, v6}, Lua/c8;-><init>(Lua/q8;I)V

    .line 146
    .line 147
    .line 148
    const/4 v11, 0x2

    .line 149
    move-object v7, p1

    .line 150
    invoke-direct/range {v7 .. v12}, Lha/hb;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/w3;ILha/gb;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_8

    .line 157
    .line 158
    :cond_4
    const-string v4, "\u590d\u5236"

    .line 159
    .line 160
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    iget-object v7, v3, Lua/q8;->L:Ljava/util/ArrayList;

    .line 165
    .line 166
    if-nez v4, :cond_1a

    .line 167
    .line 168
    const-string v4, "\u526a\u5207"

    .line 169
    .line 170
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_5

    .line 175
    .line 176
    goto/16 :goto_7

    .line 177
    .line 178
    :cond_5
    const-string v4, "\u590d\u5236\u5230"

    .line 179
    .line 180
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    const-string v8, ""

    .line 185
    .line 186
    const-string v9, "/"

    .line 187
    .line 188
    if-nez v4, :cond_13

    .line 189
    .line 190
    const-string v4, "\u526a\u5207\u5230"

    .line 191
    .line 192
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_6

    .line 197
    .line 198
    goto/16 :goto_6

    .line 199
    .line 200
    :cond_6
    const-string v4, "\u538b\u7f29"

    .line 201
    .line 202
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_7

    .line 207
    .line 208
    invoke-virtual {v3, v5}, Lua/q8;->o(Z)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_8

    .line 212
    .line 213
    :cond_7
    const-string v4, "\u89e3\u538b"

    .line 214
    .line 215
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-eqz v4, :cond_8

    .line 220
    .line 221
    const/4 p1, 0x0

    .line 222
    invoke-virtual {v3, p1}, Lua/q8;->q(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_8

    .line 226
    .line 227
    :cond_8
    const-string v4, "\u4f20\u9001"

    .line 228
    .line 229
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-eqz v4, :cond_b

    .line 234
    .line 235
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 236
    .line 237
    iget-object v0, p1, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-ne v0, v2, :cond_a

    .line 244
    .line 245
    iget-object p1, p1, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    check-cast v0, Lcom/yunpan/appmanage/util/d;

    .line 252
    .line 253
    iget-object v0, v0, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 254
    .line 255
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 256
    .line 257
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 258
    .line 259
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->i0:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_9

    .line 266
    .line 267
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    const-string v0, "\u672a\u627e\u5230\u8def\u7531\u5668\u4e2d\u5176\u5b83\u8bbe\u5907\n\u9700\u53cc\u65b9\u90fd\u6253\u5f00"

    .line 273
    .line 274
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object v0, v3, Lda/h;->e:Landroid/content/Context;

    .line 278
    .line 279
    const v1, 0x7f13016f

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v0, "\u65b9\u53ef\u4f7f\u7528\u4f20\u9001\u529f\u80fd"

    .line 290
    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_8

    .line 302
    .line 303
    :cond_9
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    check-cast p1, Lcom/yunpan/appmanage/util/d;

    .line 308
    .line 309
    iget-object p1, p1, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v3, p1}, Lua/q8;->E(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_8

    .line 315
    .line 316
    :cond_a
    new-instance p1, Lha/r7;

    .line 317
    .line 318
    iget-object v0, v3, Lda/h;->f:Landroid/app/Activity;

    .line 319
    .line 320
    iget-object v2, v3, Lda/h;->e:Landroid/content/Context;

    .line 321
    .line 322
    new-instance v4, Lua/d8;

    .line 323
    .line 324
    invoke-direct {v4, v3, v1}, Lua/d8;-><init>(Lua/q8;I)V

    .line 325
    .line 326
    .line 327
    invoke-direct {p1, v0, v2, v4}, Lha/r7;-><init>(Landroid/app/Activity;Landroid/content/Context;Lua/d8;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_8

    .line 334
    .line 335
    :cond_b
    const-string v1, "\u5b89\u88c5"

    .line 336
    .line 337
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-nez v1, :cond_12

    .line 342
    .line 343
    const-string v1, "\u91cd\u88c5"

    .line 344
    .line 345
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_c

    .line 350
    .line 351
    goto/16 :goto_5

    .line 352
    .line 353
    :cond_c
    const-string v1, "\u5220\u9664"

    .line 354
    .line 355
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-eqz v1, :cond_d

    .line 360
    .line 361
    iget-object p1, v3, Lua/q8;->g:Lha/u9;

    .line 362
    .line 363
    const-string v1, "\u5220\u9664\u4e2d"

    .line 364
    .line 365
    invoke-virtual {p1, v1}, Lha/u9;->c(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 369
    .line 370
    iget-object v1, v3, Lua/q8;->B:Lx9/w3;

    .line 371
    .line 372
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 373
    .line 374
    new-instance v2, Lua/c8;

    .line 375
    .line 376
    invoke-direct {v2, v3, v6}, Lua/c8;-><init>(Lua/q8;I)V

    .line 377
    .line 378
    .line 379
    iput-object v2, p1, La2/w0;->c:Ljava/lang/Object;

    .line 380
    .line 381
    sget-object v2, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 382
    .line 383
    new-instance v3, Lfa/u;

    .line 384
    .line 385
    invoke-direct {v3, p1, v1, v0}, Lfa/u;-><init>(La2/w0;Ljava/lang/String;I)V

    .line 386
    .line 387
    .line 388
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_8

    .line 392
    .line 393
    :cond_d
    const-string v0, "\u76ee\u5f55"

    .line 394
    .line 395
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result p1

    .line 399
    if-eqz p1, :cond_1b

    .line 400
    .line 401
    iget-object p1, v3, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 402
    .line 403
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 404
    .line 405
    .line 406
    iget-object p1, v3, Lua/q8;->l:Lx9/g0;

    .line 407
    .line 408
    new-instance v0, Ljava/util/ArrayList;

    .line 409
    .line 410
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 414
    .line 415
    .line 416
    iget-object p1, v3, Lua/q8;->B:Lx9/w3;

    .line 417
    .line 418
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 419
    .line 420
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 421
    .line 422
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    const-string v4, "/storage/emulated/0"

    .line 427
    .line 428
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    if-eqz v1, :cond_f

    .line 449
    .line 450
    iget-object v1, v3, Lua/q8;->l:Lx9/g0;

    .line 451
    .line 452
    new-instance v4, Lx9/w3;

    .line 453
    .line 454
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v6

    .line 458
    const-string v7, "\u5185\u90e8\u5b58\u50a8"

    .line 459
    .line 460
    invoke-direct {v4, v7, v6, v2}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {p1, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    if-nez v0, :cond_11

    .line 479
    .line 480
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    const/4 v0, 0x0

    .line 489
    :goto_1
    array-length v1, p1

    .line 490
    if-ge v0, v1, :cond_11

    .line 491
    .line 492
    move-object v4, v8

    .line 493
    const/4 v1, 0x0

    .line 494
    :goto_2
    if-gt v1, v0, :cond_e

    .line 495
    .line 496
    invoke-static {v4, v9}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    aget-object v6, p1, v1

    .line 501
    .line 502
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    add-int/2addr v1, v2

    .line 510
    goto :goto_2

    .line 511
    :cond_e
    iget-object v1, v3, Lua/q8;->l:Lx9/g0;

    .line 512
    .line 513
    new-instance v6, Lx9/w3;

    .line 514
    .line 515
    aget-object v7, p1, v0

    .line 516
    .line 517
    new-instance v10, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    sget-object v11, Lfa/g0;->a:Lfa/h0;

    .line 523
    .line 524
    invoke-static {v11, v10, v4}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v4

    .line 528
    invoke-direct {v6, v7, v4, v2}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v1, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    add-int/2addr v0, v2

    .line 535
    goto :goto_1

    .line 536
    :cond_f
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object p1

    .line 544
    const/4 v0, 0x0

    .line 545
    :goto_3
    array-length v1, p1

    .line 546
    if-ge v0, v1, :cond_11

    .line 547
    .line 548
    move-object v4, v8

    .line 549
    const/4 v1, 0x0

    .line 550
    :goto_4
    if-gt v1, v0, :cond_10

    .line 551
    .line 552
    invoke-static {v4, v9}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    move-result-object v4

    .line 556
    aget-object v6, p1, v1

    .line 557
    .line 558
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    add-int/2addr v1, v2

    .line 566
    goto :goto_4

    .line 567
    :cond_10
    iget-object v1, v3, Lua/q8;->l:Lx9/g0;

    .line 568
    .line 569
    new-instance v6, Lx9/w3;

    .line 570
    .line 571
    aget-object v7, p1, v0

    .line 572
    .line 573
    invoke-static {v9, v4}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v4

    .line 577
    invoke-direct {v6, v7, v4, v2}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v1, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 581
    .line 582
    .line 583
    add-int/2addr v0, v2

    .line 584
    goto :goto_3

    .line 585
    :cond_11
    iget-object p1, v3, Lua/q8;->l:Lx9/g0;

    .line 586
    .line 587
    invoke-static {p1, v2}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object p1

    .line 591
    check-cast p1, Lx9/w3;

    .line 592
    .line 593
    invoke-virtual {v3, p1, v5}, Lua/q8;->v(Lx9/w3;Z)V

    .line 594
    .line 595
    .line 596
    iget-object p1, v3, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 597
    .line 598
    iget-object v0, v3, Lua/q8;->l:Lx9/g0;

    .line 599
    .line 600
    invoke-static {v0, v2, p1}, Lg/b;->x(Lx9/g0;ILcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    .line 601
    .line 602
    .line 603
    iget-object p1, v3, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 604
    .line 605
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 606
    .line 607
    .line 608
    goto/16 :goto_8

    .line 609
    .line 610
    :cond_12
    :goto_5
    iget-object p1, v3, Lda/h;->f:Landroid/app/Activity;

    .line 611
    .line 612
    iget-object v0, v3, Lda/h;->e:Landroid/content/Context;

    .line 613
    .line 614
    iget-object v1, v3, Lua/q8;->g:Lha/u9;

    .line 615
    .line 616
    iget-object v2, v3, Lua/q8;->B:Lx9/w3;

    .line 617
    .line 618
    invoke-static {p1, v0, v1, v2}, Landroid/support/v4/media/session/b;->s(Landroid/app/Activity;Landroid/content/Context;Lha/u9;Lx9/w3;)V

    .line 619
    .line 620
    .line 621
    goto/16 :goto_8

    .line 622
    .line 623
    :cond_13
    :goto_6
    iget-object v0, v3, Lua/q8;->K:Landroid/widget/TextView;

    .line 624
    .line 625
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 626
    .line 627
    .line 628
    iget-object v0, v3, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 629
    .line 630
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 634
    .line 635
    .line 636
    iget-object v0, v3, Lua/q8;->B:Lx9/w3;

    .line 637
    .line 638
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    new-instance v0, Lha/b5;

    .line 642
    .line 643
    iget-object v1, v3, Lda/h;->f:Landroid/app/Activity;

    .line 644
    .line 645
    iget-object v2, v3, Lda/h;->e:Landroid/content/Context;

    .line 646
    .line 647
    invoke-direct {v0, v1, v2}, Lha/b5;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 648
    .line 649
    .line 650
    new-instance v1, Lua/g6;

    .line 651
    .line 652
    const/4 v2, 0x5

    .line 653
    invoke-direct {v1, v3, v2, p1}, Lua/g6;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 657
    .line 658
    .line 659
    iput-object v1, v0, Lha/b5;->v:Lua/g6;

    .line 660
    .line 661
    iget-object v1, v0, Lha/b5;->g:Landroid/widget/TextView;

    .line 662
    .line 663
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    .line 665
    .line 666
    iget-object p1, v0, Lha/b5;->w:Landroid/content/SharedPreferences;

    .line 667
    .line 668
    const-string v1, "lastDirPath"

    .line 669
    .line 670
    invoke-interface {p1, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object p1

    .line 674
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 675
    .line 676
    .line 677
    move-result v1

    .line 678
    iget-object v2, v0, Lha/b5;->k:Lx9/g0;

    .line 679
    .line 680
    if-nez v1, :cond_19

    .line 681
    .line 682
    iget-object v1, v0, Lha/b5;->w:Landroid/content/SharedPreferences;

    .line 683
    .line 684
    const-string v3, "lastRootDirName"

    .line 685
    .line 686
    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    iget-object v3, v0, Lha/b5;->w:Landroid/content/SharedPreferences;

    .line 691
    .line 692
    const-string v4, "lastRootDirPath"

    .line 693
    .line 694
    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v3

    .line 698
    const-string v4, "\u7cfb\u7edf\u6839"

    .line 699
    .line 700
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result v6

    .line 704
    if-eqz v6, :cond_16

    .line 705
    .line 706
    new-instance v1, Ljava/io/File;

    .line 707
    .line 708
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    :cond_14
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object p1

    .line 715
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    move-result p1

    .line 719
    if-nez p1, :cond_15

    .line 720
    .line 721
    new-instance p1, Lx9/w3;

    .line 722
    .line 723
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v3

    .line 727
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v6

    .line 731
    invoke-direct {p1, v3, v6}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v2, v5, p1}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    if-nez v1, :cond_14

    .line 742
    .line 743
    :cond_15
    new-instance p1, Lx9/w3;

    .line 744
    .line 745
    invoke-direct {p1, v4, v9}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v2, v5, p1}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v0}, Lha/b5;->a()V

    .line 752
    .line 753
    .line 754
    goto/16 :goto_8

    .line 755
    .line 756
    :cond_16
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 757
    .line 758
    .line 759
    move-result v4

    .line 760
    if-eqz v4, :cond_19

    .line 761
    .line 762
    new-instance v4, Ljava/io/File;

    .line 763
    .line 764
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    :cond_17
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object p1

    .line 771
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    move-result p1

    .line 775
    if-nez p1, :cond_18

    .line 776
    .line 777
    new-instance p1, Lx9/w3;

    .line 778
    .line 779
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v6

    .line 783
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v7

    .line 787
    invoke-direct {p1, v6, v7}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v2, v5, p1}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 794
    .line 795
    .line 796
    move-result-object v4

    .line 797
    if-nez v4, :cond_17

    .line 798
    .line 799
    :cond_18
    new-instance p1, Lx9/w3;

    .line 800
    .line 801
    invoke-direct {p1, v1, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {v2, v5, p1}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v0}, Lha/b5;->a()V

    .line 808
    .line 809
    .line 810
    goto :goto_8

    .line 811
    :cond_19
    iget-object p1, v0, Lha/b5;->i:Lx9/g2;

    .line 812
    .line 813
    invoke-virtual {p1, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object p1

    .line 817
    check-cast p1, Lx9/w3;

    .line 818
    .line 819
    invoke-virtual {v2, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v0}, Lha/b5;->a()V

    .line 823
    .line 824
    .line 825
    goto :goto_8

    .line 826
    :cond_1a
    :goto_7
    iget-object v1, v3, Lua/q8;->K:Landroid/widget/TextView;

    .line 827
    .line 828
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 829
    .line 830
    .line 831
    iget-object v1, v3, Lua/q8;->K:Landroid/widget/TextView;

    .line 832
    .line 833
    const-string v2, "\u5df2"

    .line 834
    .line 835
    const-string v4, "\uff1a"

    .line 836
    .line 837
    invoke-static {v2, p1, v4}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    move-result-object p1

    .line 841
    iget-object v2, v3, Lua/q8;->B:Lx9/w3;

    .line 842
    .line 843
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 844
    .line 845
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object p1

    .line 852
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    .line 854
    .line 855
    iget-object p1, v3, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 856
    .line 857
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 861
    .line 862
    .line 863
    iget-object p1, v3, Lua/q8;->B:Lx9/w3;

    .line 864
    .line 865
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    .line 867
    .line 868
    iget-object p1, v3, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 869
    .line 870
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 871
    .line 872
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v1

    .line 876
    const/4 v2, 0x2

    .line 877
    new-array v2, v2, [F

    .line 878
    .line 879
    fill-array-data v2, :array_0

    .line 880
    .line 881
    .line 882
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 883
    .line 884
    .line 885
    move-result-object p1

    .line 886
    const/16 v1, 0x1f4

    .line 887
    .line 888
    int-to-long v1, v1

    .line 889
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 890
    .line 891
    .line 892
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    .line 893
    .line 894
    int-to-float v0, v0

    .line 895
    invoke-direct {v1, v0}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 902
    .line 903
    .line 904
    :cond_1b
    :goto_8
    return-void

    .line 905
    :array_0
    .array-data 4
        0x0
        0x41a00000    # 20.0f
    .end array-data
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lua/c8;->a:Lua/q8;

    .line 3
    .line 4
    iget-object v2, v1, Lua/q8;->g:Lha/u9;

    .line 5
    .line 6
    invoke-virtual {v2}, Lha/u9;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v2, v1, Lua/q8;->B:Lx9/w3;

    .line 10
    .line 11
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v2}, Lua/q8;->w(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object v2, v1, Lua/q8;->B:Lx9/w3;

    .line 20
    .line 21
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v2, v1, Lua/q8;->B:Lx9/w3;

    .line 30
    .line 31
    iget-boolean v2, v2, Lx9/w3;->c:Z

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 36
    .line 37
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->f0:Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    new-instance v3, Lcom/yunpan/appmanage/util/z;

    .line 42
    .line 43
    new-instance v4, Ljava/io/File;

    .line 44
    .line 45
    iget-object v5, v1, Lua/q8;->B:Lx9/w3;

    .line 46
    .line 47
    iget-object v5, v5, Lx9/w3;->b:Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v3, v4}, Lcom/yunpan/appmanage/util/z;-><init>(Ljava/io/File;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 60
    .line 61
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 62
    .line 63
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 64
    .line 65
    new-instance v3, Lua/g8;

    .line 66
    .line 67
    invoke-direct {v3, v0, v1}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 74
    .line 75
    iget-object p1, v1, Lua/q8;->n:Lx9/n;

    .line 76
    .line 77
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/4 p2, 0x1

    .line 82
    if-ne p1, p2, :cond_2

    .line 83
    .line 84
    iget-object p1, v1, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 87
    .line 88
    .line 89
    const p1, 0x7f08029f

    .line 90
    .line 91
    .line 92
    const-string v0, "\u6ca1\u6709\u6587\u4ef6"

    .line 93
    .line 94
    invoke-virtual {v1, v0, p1, p2}, Lua/q8;->C(Ljava/lang/String;IZ)V

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object p1, v1, Lua/q8;->n:Lx9/n;

    .line 98
    .line 99
    iget p2, p0, Lua/c8;->b:I

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Lc6/g;->C(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v1, "\u5220\u9664\u5931\u8d25\uff1a"

    .line 108
    .line 109
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 120
    .line 121
    .line 122
    :goto_1
    return-void
.end method

.method public n(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lua/c8;->a:Lua/q8;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lua/c8;->b:I

    .line 7
    .line 8
    const-string v2, "CollDirs"

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    iget-object p2, v0, Lua/q8;->B:Lx9/w3;

    .line 19
    .line 20
    iput-object p1, p2, Lx9/w3;->a:Ljava/lang/String;

    .line 21
    .line 22
    :cond_0
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 23
    .line 24
    iget-object p2, v0, Lua/q8;->B:Lx9/w3;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string v3, "file_name"

    .line 30
    .line 31
    :try_start_0
    iget-object v4, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 32
    .line 33
    invoke-virtual {v4, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Lz7/p;->f()Lz7/o;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4, v1}, Lz7/o;->l(I)Lz7/p;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v5, v3}, Lz7/s;->r(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p2, Lx9/w3;->a:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v5, v3, p2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v1, v5}, Lz7/o;->o(ILz7/p;)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 61
    .line 62
    invoke-virtual {p2, v2, v4}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    :catch_0
    iget-object p1, v0, Lua/q8;->n:Lx9/n;

    .line 69
    .line 70
    iget-object p2, v0, Lua/q8;->B:Lx9/w3;

    .line 71
    .line 72
    invoke-virtual {p1, v1, p2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_1
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    :try_start_1
    iget-object p2, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 82
    .line 83
    invoke-virtual {p2, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Lz7/p;->f()Lz7/o;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p2, v1}, Lz7/o;->n(I)V

    .line 92
    .line 93
    .line 94
    iget-object v3, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 95
    .line 96
    invoke-virtual {v3, v2, p2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_1
    nop

    .line 104
    :goto_0
    iget-object p1, v0, Lua/q8;->n:Lx9/n;

    .line 105
    .line 106
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    const/4 p2, 0x1

    .line 111
    if-ne p1, p2, :cond_4

    .line 112
    .line 113
    iget-object p1, v0, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 116
    .line 117
    .line 118
    const/4 p1, 0x0

    .line 119
    :goto_1
    iget-object v2, v0, Lua/q8;->i:Lx9/n4;

    .line 120
    .line 121
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-ge p1, v2, :cond_3

    .line 126
    .line 127
    iget-object v2, v0, Lua/q8;->i:Lx9/n4;

    .line 128
    .line 129
    invoke-virtual {v2, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Lx9/w3;

    .line 134
    .line 135
    iget-object v2, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 136
    .line 137
    const-string v3, "\u6536\u85cf\u680f"

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_2

    .line 144
    .line 145
    iget-object v2, v0, Lua/q8;->i:Lx9/n4;

    .line 146
    .line 147
    invoke-virtual {v2, p1}, Lc6/g;->C(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    :goto_2
    iget-object p1, v0, Lua/q8;->l:Lx9/g0;

    .line 155
    .line 156
    new-instance v2, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 162
    .line 163
    .line 164
    const p1, 0x7f08029f

    .line 165
    .line 166
    .line 167
    const-string v2, "\u6536\u85cf\u680f\u4e3a\u7a7a"

    .line 168
    .line 169
    invoke-virtual {v0, v2, p1, p2}, Lua/q8;->C(Ljava/lang/String;IZ)V

    .line 170
    .line 171
    .line 172
    :cond_4
    iget-object p1, v0, Lua/q8;->n:Lx9/n;

    .line 173
    .line 174
    invoke-virtual {p1, v1}, Lc6/g;->C(I)V

    .line 175
    .line 176
    .line 177
    :goto_3
    return-void
.end method
