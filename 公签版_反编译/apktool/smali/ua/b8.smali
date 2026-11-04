.class public final synthetic Lua/b8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lua/q8;


# direct methods
.method public synthetic constructor <init>(Lua/q8;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/b8;->a:I

    iput-object p1, p0, Lua/b8;->b:Lua/q8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "\u8bf7\u5148\u6253\u5f00\u5185\u90e8\u5b58\u50a8 \u6216 U\u76d8"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Lua/b8;->b:Lua/q8;

    .line 8
    .line 9
    iget v5, p0, Lua/b8;->a:I

    .line 10
    .line 11
    packed-switch v5, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, v4, Lua/q8;->l:Lx9/g0;

    .line 21
    .line 22
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->showShort(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, v4, Lua/q8;->l:Lx9/g0;

    .line 33
    .line 34
    invoke-static {p1, v3}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lx9/w3;

    .line 39
    .line 40
    iget-object v0, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const-string p1, "\u975e\u76ee\u5f55\u65e0\u9700\u7edf\u8ba1"

    .line 49
    .line 50
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 55
    .line 56
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    iget-object v1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    invoke-virtual {v4}, Lua/q8;->u()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 83
    .line 84
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 85
    .line 86
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_4

    .line 93
    .line 94
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Ljava/lang/String;

    .line 111
    .line 112
    iget-object v2, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    invoke-virtual {v4}, Lua/q8;->u()V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    const-string p1, "\u53ea\u5141\u8bb8\u7edf\u8ba1\u3010\u5185\u90e8\u5b58\u50a8\u3011\u3010U\u76d8\u3011\u4e0b\u7684\u76ee\u5f55"

    .line 125
    .line 126
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    :goto_0
    return-void

    .line 130
    :pswitch_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-static {p1}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, v4, Lua/q8;->l:Lx9/g0;

    .line 137
    .line 138
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_5

    .line 143
    .line 144
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->showShort(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    iget-object p1, v4, Lua/q8;->l:Lx9/g0;

    .line 149
    .line 150
    invoke-static {p1, v3}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lx9/w3;

    .line 155
    .line 156
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_6

    .line 163
    .line 164
    const-string p1, "\u5f53\u524d\u76ee\u5f55\u662f\u4e34\u65f6\u76ee\u5f55\uff0c\u65e0\u6cd5\u5728\u8fd9\u65b0\u5efa\u6587\u4ef6\u6216\u76ee\u5f55"

    .line 165
    .line 166
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_6
    new-instance p1, Landroid/widget/PopupMenu;

    .line 171
    .line 172
    iget-object v0, v4, Lda/h;->e:Landroid/content/Context;

    .line 173
    .line 174
    iget-object v1, v4, Lua/q8;->v:Landroid/widget/LinearLayout;

    .line 175
    .line 176
    invoke-direct {p1, v0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const v1, 0x7f100004

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 191
    .line 192
    .line 193
    new-instance v0, Lha/y2;

    .line 194
    .line 195
    const/4 v1, 0x3

    .line 196
    invoke-direct {v0, v4, v1}, Lha/y2;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    .line 203
    .line 204
    .line 205
    :goto_1
    return-void

    .line 206
    :pswitch_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-static {p1}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 210
    .line 211
    .line 212
    iget-object p1, v4, Lua/q8;->l:Lx9/g0;

    .line 213
    .line 214
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-nez p1, :cond_7

    .line 219
    .line 220
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->showShort(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_2

    .line 224
    .line 225
    :cond_7
    iget-object p1, v4, Lua/q8;->n:Lx9/n;

    .line 226
    .line 227
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    const/4 v2, 0x2

    .line 232
    if-ge p1, v2, :cond_8

    .line 233
    .line 234
    const-string p1, "\u6587\u4ef6\u4e0d\u8db3\uff0c\u65e0\u6cd5\u591a\u9009"

    .line 235
    .line 236
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_2

    .line 240
    .line 241
    :cond_8
    iget-object p1, v4, Lua/q8;->l:Lx9/g0;

    .line 242
    .line 243
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-ne p1, v3, :cond_9

    .line 248
    .line 249
    iget-object p1, v4, Lua/q8;->l:Lx9/g0;

    .line 250
    .line 251
    invoke-virtual {p1, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Lx9/w3;

    .line 256
    .line 257
    iget-object v1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_9

    .line 264
    .line 265
    iget-object p1, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 266
    .line 267
    const-string v1, "\u6536\u85cf\u680f"

    .line 268
    .line 269
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-eqz p1, :cond_9

    .line 274
    .line 275
    const-string p1, "\u6536\u85cf\u680f\u4e0d\u652f\u6301\u591a\u9009"

    .line 276
    .line 277
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_9
    iput-boolean v3, v4, Lua/q8;->p:Z

    .line 282
    .line 283
    iget-object p1, v4, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 284
    .line 285
    iget-object v1, v4, Lua/q8;->j:Lx9/i3;

    .line 286
    .line 287
    invoke-virtual {p1, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 288
    .line 289
    .line 290
    iget-object p1, v4, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 291
    .line 292
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 293
    .line 294
    .line 295
    iget-object p1, v4, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 296
    .line 297
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 298
    .line 299
    .line 300
    iget-object p1, v4, Lua/q8;->K:Landroid/widget/TextView;

    .line 301
    .line 302
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 303
    .line 304
    .line 305
    iget-object p1, v4, Lua/q8;->q:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 306
    .line 307
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 311
    .line 312
    iget-object p1, p1, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    const-string v0, "\u4f20\u9001"

    .line 319
    .line 320
    const/4 v1, 0x7

    .line 321
    if-nez p1, :cond_a

    .line 322
    .line 323
    iget-object p1, v4, Lua/q8;->l:Lx9/g0;

    .line 324
    .line 325
    invoke-static {p1, v3}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    check-cast p1, Lx9/w3;

    .line 330
    .line 331
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 332
    .line 333
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->b(Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    if-eqz p1, :cond_a

    .line 338
    .line 339
    iget-object p1, v4, Lua/q8;->j:Lx9/i3;

    .line 340
    .line 341
    invoke-virtual {p1, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    check-cast p1, Lx9/w3;

    .line 346
    .line 347
    iget-object p1, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    if-nez p1, :cond_b

    .line 354
    .line 355
    iget-object p1, v4, Lua/q8;->j:Lx9/i3;

    .line 356
    .line 357
    new-instance v2, Lx9/w3;

    .line 358
    .line 359
    const-string v3, ""

    .line 360
    .line 361
    invoke-direct {v2, v0, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1, v1, v2}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    goto :goto_2

    .line 368
    :cond_a
    iget-object p1, v4, Lua/q8;->j:Lx9/i3;

    .line 369
    .line 370
    invoke-virtual {p1, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    check-cast p1, Lx9/w3;

    .line 375
    .line 376
    iget-object p1, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    if-eqz p1, :cond_b

    .line 383
    .line 384
    iget-object p1, v4, Lua/q8;->j:Lx9/i3;

    .line 385
    .line 386
    invoke-virtual {p1, v1}, Lc6/g;->C(I)V

    .line 387
    .line 388
    .line 389
    :cond_b
    :goto_2
    return-void

    .line 390
    :pswitch_2
    iget-object p1, v4, Lua/q8;->L:Ljava/util/ArrayList;

    .line 391
    .line 392
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    if-eqz p1, :cond_c

    .line 397
    .line 398
    iget-object p1, v4, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 399
    .line 400
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 401
    .line 402
    .line 403
    iget-object p1, v4, Lua/q8;->K:Landroid/widget/TextView;

    .line 404
    .line 405
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 406
    .line 407
    .line 408
    const-string p1, "\u526a\u5207\u677f\u4e3a\u7a7a,\u8bf7\u5148\u526a\u5207\u6216\u590d\u5236\u6587\u4ef6"

    .line 409
    .line 410
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 411
    .line 412
    .line 413
    goto :goto_4

    .line 414
    :cond_c
    iget-object p1, v4, Lua/q8;->l:Lx9/g0;

    .line 415
    .line 416
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 417
    .line 418
    .line 419
    move-result p1

    .line 420
    if-eqz p1, :cond_e

    .line 421
    .line 422
    iget-object p1, v4, Lua/q8;->l:Lx9/g0;

    .line 423
    .line 424
    invoke-static {p1, v3}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    check-cast p1, Lx9/w3;

    .line 429
    .line 430
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 431
    .line 432
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 433
    .line 434
    .line 435
    move-result p1

    .line 436
    if-eqz p1, :cond_d

    .line 437
    .line 438
    goto :goto_3

    .line 439
    :cond_d
    iget-object p1, v4, Lua/q8;->l:Lx9/g0;

    .line 440
    .line 441
    invoke-static {p1, v3}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    check-cast p1, Lx9/w3;

    .line 446
    .line 447
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 448
    .line 449
    invoke-virtual {v4, p1}, Lua/q8;->r(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    goto :goto_4

    .line 453
    :cond_e
    :goto_3
    const-string p1, "\u5f53\u524d\u76ee\u5f55\u4e0d\u5b58\u5728\uff0c\u65e0\u6cd5\u7c98\u8d34\u5728\u6b64\u5904"

    .line 454
    .line 455
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 456
    .line 457
    .line 458
    :goto_4
    return-void

    .line 459
    :pswitch_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 463
    .line 464
    iget v0, p1, Lcom/yunpan/appmanage/util/w;->f0:I

    .line 465
    .line 466
    add-int/2addr v0, v3

    .line 467
    const/4 v2, 0x5

    .line 468
    if-le v0, v2, :cond_f

    .line 469
    .line 470
    goto :goto_5

    .line 471
    :cond_f
    move v1, v0

    .line 472
    :goto_5
    iput v1, p1, Lcom/yunpan/appmanage/util/w;->f0:I

    .line 473
    .line 474
    const-string v0, "mFileListStyle"

    .line 475
    .line 476
    :try_start_0
    iget-object v2, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 477
    .line 478
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    invoke-virtual {v2, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .line 484
    .line 485
    :catch_0
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v4}, Lua/q8;->B()V

    .line 489
    .line 490
    .line 491
    return-void

    .line 492
    :pswitch_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    invoke-static {p1}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 496
    .line 497
    .line 498
    iget-object p1, v4, Lua/q8;->l:Lx9/g0;

    .line 499
    .line 500
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 501
    .line 502
    .line 503
    move-result p1

    .line 504
    if-nez p1, :cond_10

    .line 505
    .line 506
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->showShort(Ljava/lang/CharSequence;)V

    .line 507
    .line 508
    .line 509
    goto :goto_6

    .line 510
    :cond_10
    iget-object p1, v4, Lua/q8;->l:Lx9/g0;

    .line 511
    .line 512
    invoke-static {p1, v3}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    check-cast p1, Lx9/w3;

    .line 517
    .line 518
    iget-object v0, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 519
    .line 520
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 521
    .line 522
    .line 523
    move-result v0

    .line 524
    if-nez v0, :cond_13

    .line 525
    .line 526
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 527
    .line 528
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->d()Ljava/util/ArrayList;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 537
    .line 538
    .line 539
    move-result v1

    .line 540
    if-eqz v1, :cond_12

    .line 541
    .line 542
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    check-cast v1, Lx9/w3;

    .line 547
    .line 548
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 549
    .line 550
    iget-object v2, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 551
    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    move-result v1

    .line 556
    if-eqz v1, :cond_11

    .line 557
    .line 558
    const-string p1, "\u5df2\u5b58\u5728"

    .line 559
    .line 560
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 561
    .line 562
    .line 563
    goto :goto_6

    .line 564
    :cond_12
    new-instance v9, Lha/z6;

    .line 565
    .line 566
    iget-object v1, v4, Lda/h;->f:Landroid/app/Activity;

    .line 567
    .line 568
    iget-object v2, v4, Lda/h;->e:Landroid/content/Context;

    .line 569
    .line 570
    iget-object v5, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 571
    .line 572
    new-instance v8, Lua/g6;

    .line 573
    .line 574
    const/4 v0, 0x4

    .line 575
    invoke-direct {v8, v4, v0, p1}, Lua/g6;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 576
    .line 577
    .line 578
    const-string v6, "\u786e\u5b9a"

    .line 579
    .line 580
    const-string v7, "\u53d6\u6d88"

    .line 581
    .line 582
    const-string v3, "\u8bbe\u7f6e\u5907\u6ce8\u540d"

    .line 583
    .line 584
    const-string p1, "\u8bf7\u8f93\u5165\u5907\u6ce8(\u9ed8\u8ba4\u4e3a\u76ee\u5f55\u540d)"

    .line 585
    .line 586
    move-object v0, v9

    .line 587
    move-object v4, v5

    .line 588
    move-object v5, p1

    .line 589
    invoke-direct/range {v0 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v9}, Lha/a4;->show()V

    .line 593
    .line 594
    .line 595
    goto :goto_6

    .line 596
    :cond_13
    const-string p1, "\u5f53\u524d\u4f4d\u7f6e\u4e0d\u662f\u76ee\u5f55\uff0c\u65e0\u6cd5\u6dfb\u52a0\u5230\u6536\u85cf\u680f"

    .line 597
    .line 598
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 599
    .line 600
    .line 601
    :goto_6
    return-void

    .line 602
    :pswitch_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    const/16 v0, 0x8ae

    .line 606
    .line 607
    invoke-static {v0, p1}, Lcom/bumptech/glide/c;->i(ILandroid/view/View;)V

    .line 608
    .line 609
    .line 610
    iget-object p1, v4, Lua/q8;->l:Lx9/g0;

    .line 611
    .line 612
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 613
    .line 614
    .line 615
    move-result p1

    .line 616
    if-nez p1, :cond_14

    .line 617
    .line 618
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->showShort(Ljava/lang/CharSequence;)V

    .line 619
    .line 620
    .line 621
    goto :goto_7

    .line 622
    :cond_14
    iget-object p1, v4, Lua/q8;->l:Lx9/g0;

    .line 623
    .line 624
    invoke-static {p1, v3}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object p1

    .line 628
    check-cast p1, Lx9/w3;

    .line 629
    .line 630
    iget-object v0, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 631
    .line 632
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    if-eqz v0, :cond_15

    .line 637
    .line 638
    const-string p1, "\u975e\u76ee\u5f55\u65e0\u9700\u5237\u65b0"

    .line 639
    .line 640
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showShort(Ljava/lang/CharSequence;)V

    .line 641
    .line 642
    .line 643
    goto :goto_7

    .line 644
    :cond_15
    invoke-virtual {v4, p1, v3}, Lua/q8;->v(Lx9/w3;Z)V

    .line 645
    .line 646
    .line 647
    :goto_7
    return-void

    .line 648
    nop

    .line 649
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
