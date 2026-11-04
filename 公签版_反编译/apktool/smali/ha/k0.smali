.class public final synthetic Lha/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lea/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/m0;


# direct methods
.method public synthetic constructor <init>(Lha/m0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/k0;->a:I

    iput-object p1, p0, Lha/k0;->b:Lha/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Lz7/s;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lha/k0;->b:Lha/m0;

    .line 2
    .line 3
    iget-object v0, v0, Lha/m0;->l:Lx9/t2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 10

    .line 1
    const/4 p1, 0x3

    .line 2
    iget-object p2, p0, Lha/k0;->b:Lha/m0;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    iget v3, p0, Lha/k0;->a:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v3, p2, Lha/m0;->l:Lx9/t2;

    .line 13
    .line 14
    invoke-virtual {v3, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lz7/s;

    .line 19
    .line 20
    const-string v4, "gnType"

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ne v3, p1, :cond_1

    .line 31
    .line 32
    new-instance p1, Lha/fa;

    .line 33
    .line 34
    new-array v3, v1, [Ljava/lang/String;

    .line 35
    .line 36
    const-string v4, "\u5220\u9664"

    .line 37
    .line 38
    aput-object v4, v3, v0

    .line 39
    .line 40
    const-string v4, "\u7f16\u8f91"

    .line 41
    .line 42
    aput-object v4, v3, v2

    .line 43
    .line 44
    new-instance v4, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    if-ge v0, v1, :cond_0

    .line 50
    .line 51
    aget-object v5, v3, v0

    .line 52
    .line 53
    invoke-static {v5, v4, v5, v0, v2}, Lg/b;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    new-instance v9, Lha/l0;

    .line 63
    .line 64
    invoke-direct {v9, p2, p3}, Lha/l0;-><init>(Lha/m0;I)V

    .line 65
    .line 66
    .line 67
    iget-object v6, p2, Lha/a4;->b:Landroid/content/Context;

    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    iget-object v5, p2, Lha/a4;->a:Landroid/app/Activity;

    .line 71
    .line 72
    move-object v4, p1

    .line 73
    invoke-direct/range {v4 .. v9}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget-object p1, p2, Lha/m0;->l:Lx9/t2;

    .line 81
    .line 82
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-ne p1, v2, :cond_2

    .line 87
    .line 88
    iget-object p1, p2, Lha/m0;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object p1, p2, Lha/m0;->l:Lx9/t2;

    .line 94
    .line 95
    invoke-virtual {p1, p3}, Lc6/g;->C(I)V

    .line 96
    .line 97
    .line 98
    :goto_1
    return-void

    .line 99
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    if-nez p3, :cond_4

    .line 103
    .line 104
    iget-boolean p1, p2, Lha/m0;->p:Z

    .line 105
    .line 106
    xor-int/2addr p1, v2

    .line 107
    iput-boolean p1, p2, Lha/m0;->p:Z

    .line 108
    .line 109
    iget-object p1, p2, Lha/m0;->j:Lx9/t0;

    .line 110
    .line 111
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 116
    .line 117
    iget-boolean p2, p2, Lha/m0;->p:Z

    .line 118
    .line 119
    if-eqz p2, :cond_3

    .line 120
    .line 121
    const p2, 0x7f080234

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_3
    const p2, 0x7f080237

    .line 126
    .line 127
    .line 128
    :goto_2
    iput p2, v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;->resId:I

    .line 129
    .line 130
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_7

    .line 134
    .line 135
    :cond_4
    if-eq p3, v2, :cond_11

    .line 136
    .line 137
    if-eq p3, v1, :cond_11

    .line 138
    .line 139
    if-ne p3, p1, :cond_5

    .line 140
    .line 141
    goto/16 :goto_6

    .line 142
    .line 143
    :cond_5
    iget-object p1, p2, Lha/m0;->n:Lua/q3;

    .line 144
    .line 145
    const/4 v3, 0x4

    .line 146
    const-string v4, "maps"

    .line 147
    .line 148
    const/4 v5, -0x1

    .line 149
    if-ne p3, v3, :cond_f

    .line 150
    .line 151
    iget-object p3, p2, Lha/m0;->h:Landroid/widget/EditText;

    .line 152
    .line 153
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p3

    .line 161
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result p3

    .line 169
    if-eqz p3, :cond_6

    .line 170
    .line 171
    const-string p1, "\u8bf7\u8f93\u5165\u5907\u6ce8\u540d"

    .line 172
    .line 173
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_7

    .line 177
    .line 178
    :cond_6
    iget-object p3, p2, Lha/m0;->l:Lx9/t2;

    .line 179
    .line 180
    invoke-virtual {p3}, Lc6/g;->b()I

    .line 181
    .line 182
    .line 183
    move-result p3

    .line 184
    if-nez p3, :cond_7

    .line 185
    .line 186
    const-string p1, "\u8bf7\u6dfb\u52a0\u81f3\u5c11\u4e00\u4e2a\u64cd\u4f5c"

    .line 187
    .line 188
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_7

    .line 192
    .line 193
    :cond_7
    iget-boolean p3, p2, Lha/m0;->p:Z

    .line 194
    .line 195
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 196
    .line 197
    .line 198
    move-result-object p3

    .line 199
    iget-object v3, p2, Lha/m0;->m:Lz7/s;

    .line 200
    .line 201
    const-string v6, "isOpen"

    .line 202
    .line 203
    invoke-virtual {v3, v6, p3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 204
    .line 205
    .line 206
    iget-object p3, p2, Lha/m0;->h:Landroid/widget/EditText;

    .line 207
    .line 208
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 209
    .line 210
    .line 211
    move-result-object p3

    .line 212
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p3

    .line 216
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p3

    .line 220
    const-string v6, "eventName"

    .line 221
    .line 222
    invoke-virtual {v3, v6, p3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    new-instance p3, Lz7/o;

    .line 226
    .line 227
    invoke-direct {p3}, Lz7/o;-><init>()V

    .line 228
    .line 229
    .line 230
    new-instance v6, Lz7/o;

    .line 231
    .line 232
    invoke-direct {v6}, Lz7/o;-><init>()V

    .line 233
    .line 234
    .line 235
    new-instance v7, Lz7/o;

    .line 236
    .line 237
    invoke-direct {v7}, Lz7/o;-><init>()V

    .line 238
    .line 239
    .line 240
    :goto_3
    iget-object v8, p2, Lha/m0;->l:Lx9/t2;

    .line 241
    .line 242
    invoke-virtual {v8}, Lc6/g;->b()I

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    if-ge v0, v8, :cond_b

    .line 247
    .line 248
    iget-object v8, p2, Lha/m0;->l:Lx9/t2;

    .line 249
    .line 250
    invoke-virtual {v8, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    check-cast v8, Lz7/s;

    .line 255
    .line 256
    const-string v9, "keyType"

    .line 257
    .line 258
    invoke-virtual {v8, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    invoke-virtual {v8}, Lz7/p;->e()I

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    if-nez v8, :cond_8

    .line 267
    .line 268
    iget-object v8, p2, Lha/m0;->l:Lx9/t2;

    .line 269
    .line 270
    invoke-virtual {v8, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    check-cast v8, Lz7/p;

    .line 275
    .line 276
    invoke-virtual {p3, v8}, Lz7/o;->k(Lz7/p;)V

    .line 277
    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_8
    iget-object v8, p2, Lha/m0;->l:Lx9/t2;

    .line 281
    .line 282
    invoke-virtual {v8, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    check-cast v8, Lz7/s;

    .line 287
    .line 288
    invoke-virtual {v8, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    invoke-virtual {v8}, Lz7/p;->e()I

    .line 293
    .line 294
    .line 295
    move-result v8

    .line 296
    if-ne v8, v2, :cond_9

    .line 297
    .line 298
    iget-object v8, p2, Lha/m0;->l:Lx9/t2;

    .line 299
    .line 300
    invoke-virtual {v8, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v8

    .line 304
    check-cast v8, Lz7/p;

    .line 305
    .line 306
    invoke-virtual {v6, v8}, Lz7/o;->k(Lz7/p;)V

    .line 307
    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_9
    iget-object v8, p2, Lha/m0;->l:Lx9/t2;

    .line 311
    .line 312
    invoke-virtual {v8, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    check-cast v8, Lz7/s;

    .line 317
    .line 318
    invoke-virtual {v8, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    invoke-virtual {v8}, Lz7/p;->e()I

    .line 323
    .line 324
    .line 325
    move-result v8

    .line 326
    if-ne v8, v1, :cond_a

    .line 327
    .line 328
    iget-object v8, p2, Lha/m0;->l:Lx9/t2;

    .line 329
    .line 330
    invoke-virtual {v8, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v8

    .line 334
    check-cast v8, Lz7/p;

    .line 335
    .line 336
    invoke-virtual {v7, v8}, Lz7/o;->k(Lz7/p;)V

    .line 337
    .line 338
    .line 339
    :cond_a
    :goto_4
    add-int/2addr v0, v2

    .line 340
    goto :goto_3

    .line 341
    :cond_b
    const-string v0, "click"

    .line 342
    .line 343
    invoke-virtual {v3, v0, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 344
    .line 345
    .line 346
    iget-object p3, v7, Lz7/o;->a:Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 349
    .line 350
    .line 351
    move-result p3

    .line 352
    if-nez p3, :cond_c

    .line 353
    .line 354
    const-string p3, "longClick"

    .line 355
    .line 356
    invoke-virtual {v3, p3, v7}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 357
    .line 358
    .line 359
    :cond_c
    iget-object p3, v6, Lz7/o;->a:Ljava/util/ArrayList;

    .line 360
    .line 361
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 362
    .line 363
    .line 364
    move-result p3

    .line 365
    if-nez p3, :cond_d

    .line 366
    .line 367
    const-string p3, "doubleClick"

    .line 368
    .line 369
    invoke-virtual {v3, p3, v6}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 370
    .line 371
    .line 372
    :cond_d
    iget-object p3, p1, Lua/q3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;

    .line 373
    .line 374
    iget p1, p1, Lua/q3;->a:I

    .line 375
    .line 376
    if-ne p1, v5, :cond_e

    .line 377
    .line 378
    iget-object p1, p3, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->F:Lx9/s2;

    .line 379
    .line 380
    invoke-virtual {p1, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    iget-object p1, p3, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 384
    .line 385
    invoke-virtual {p1, v4}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-virtual {p1, v3}, Lz7/o;->k(Lz7/p;)V

    .line 390
    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_e
    iget-object v0, p3, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->F:Lx9/s2;

    .line 394
    .line 395
    invoke-virtual {v0, p1, v3}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    iget-object v0, p3, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 399
    .line 400
    invoke-virtual {v0, v4}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v0, p1, v3}, Lz7/o;->o(ILz7/p;)V

    .line 405
    .line 406
    .line 407
    :goto_5
    sget p1, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->K:I

    .line 408
    .line 409
    iget-object p1, p3, Lda/g;->A:Lda/g;

    .line 410
    .line 411
    iget-object p3, p3, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 412
    .line 413
    invoke-static {p1, p3}, Lq4/a;->T(Landroid/content/Context;Lz7/s;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 417
    .line 418
    .line 419
    goto :goto_7

    .line 420
    :cond_f
    const/4 v0, 0x5

    .line 421
    if-ne p3, v0, :cond_12

    .line 422
    .line 423
    iget p3, p1, Lua/q3;->a:I

    .line 424
    .line 425
    if-eq p3, v5, :cond_10

    .line 426
    .line 427
    iget-object p1, p1, Lua/q3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;

    .line 428
    .line 429
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->F:Lx9/s2;

    .line 430
    .line 431
    invoke-virtual {v0, p3}, Lc6/g;->C(I)V

    .line 432
    .line 433
    .line 434
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 435
    .line 436
    invoke-virtual {v0, v4}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {v0, p3}, Lz7/o;->n(I)V

    .line 441
    .line 442
    .line 443
    iget-object p3, p1, Lda/g;->A:Lda/g;

    .line 444
    .line 445
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 446
    .line 447
    invoke-static {p3, p1}, Lq4/a;->T(Landroid/content/Context;Lz7/s;)V

    .line 448
    .line 449
    .line 450
    :cond_10
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 451
    .line 452
    .line 453
    goto :goto_7

    .line 454
    :cond_11
    :goto_6
    sub-int/2addr p3, v2

    .line 455
    new-instance p1, Lha/k0;

    .line 456
    .line 457
    invoke-direct {p1, p2, v1}, Lha/k0;-><init>(Lha/m0;I)V

    .line 458
    .line 459
    .line 460
    iget-object v1, p2, Lha/a4;->a:Landroid/app/Activity;

    .line 461
    .line 462
    iget-object p2, p2, Lha/a4;->b:Landroid/content/Context;

    .line 463
    .line 464
    invoke-static {v1, p2, p3, v0, p1}, Lha/t8;->a(Landroid/app/Activity;Landroid/content/Context;IZLea/e;)V

    .line 465
    .line 466
    .line 467
    :cond_12
    :goto_7
    return-void

    .line 468
    nop

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
