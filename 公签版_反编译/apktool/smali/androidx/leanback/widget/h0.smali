.class public final Landroidx/leanback/widget/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/h0;->a:I

    iput-object p2, p0, Landroidx/leanback/widget/h0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    iget-object v4, p0, Landroidx/leanback/widget/h0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iget v5, p0, Landroidx/leanback/widget/h0;->a:I

    .line 8
    .line 9
    packed-switch v5, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v4, Landroidx/appcompat/widget/Toolbar;

    .line 13
    .line 14
    iget-object p1, v4, Landroidx/appcompat/widget/Toolbar;->O:Lw/i3;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, p1, Lw/i3;->b:Lv/m;

    .line 20
    .line 21
    :goto_0
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Lv/m;->collapseActionView()Z

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void

    .line 27
    :pswitch_0
    check-cast v4, Lu/a;

    .line 28
    .line 29
    invoke-virtual {v4}, Lu/a;->a()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_1
    check-cast v4, Landroidx/media3/ui/TrackSelectionView;

    .line 34
    .line 35
    iget-object v0, v4, Landroidx/media3/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    .line 36
    .line 37
    iget-object v2, v4, Landroidx/media3/ui/TrackSelectionView;->g:Ljava/util/HashMap;

    .line 38
    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    iput-boolean v3, v4, Landroidx/media3/ui/TrackSelectionView;->l:Z

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_2
    iget-object v0, v4, Landroidx/media3/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    .line 49
    .line 50
    if-ne p1, v0, :cond_3

    .line 51
    .line 52
    iput-boolean v1, v4, Landroidx/media3/ui/TrackSelectionView;->l:Z

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_3
    iput-boolean v1, v4, Landroidx/media3/ui/TrackSelectionView;->l:Z

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    check-cast v0, Lv3/n0;

    .line 69
    .line 70
    iget-object v5, v0, Lv3/n0;->a:Lr1/w0;

    .line 71
    .line 72
    iget-object v6, v5, Lr1/w0;->b:Lr1/r0;

    .line 73
    .line 74
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Lr1/s0;

    .line 79
    .line 80
    iget v0, v0, Lv3/n0;->b:I

    .line 81
    .line 82
    if-nez v7, :cond_5

    .line 83
    .line 84
    iget-boolean p1, v4, Landroidx/media3/ui/TrackSelectionView;->i:Z

    .line 85
    .line 86
    if-nez p1, :cond_4

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_4

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 95
    .line 96
    .line 97
    :cond_4
    new-instance p1, Lr1/s0;

    .line 98
    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct {p1, v6, v0}, Lr1/s0;-><init>(Lr1/r0;Ljava/util/List;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    .line 115
    .line 116
    iget-object v7, v7, Lr1/s0;->b:Lu7/g0;

    .line 117
    .line 118
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    .line 120
    .line 121
    check-cast p1, Landroid/widget/CheckedTextView;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    iget-boolean v7, v4, Landroidx/media3/ui/TrackSelectionView;->h:Z

    .line 128
    .line 129
    if-eqz v7, :cond_6

    .line 130
    .line 131
    iget-boolean v5, v5, Lr1/w0;->c:Z

    .line 132
    .line 133
    if-eqz v5, :cond_6

    .line 134
    .line 135
    const/4 v5, 0x1

    .line 136
    goto :goto_1

    .line 137
    :cond_6
    const/4 v5, 0x0

    .line 138
    :goto_1
    if-nez v5, :cond_7

    .line 139
    .line 140
    iget-boolean v7, v4, Landroidx/media3/ui/TrackSelectionView;->i:Z

    .line 141
    .line 142
    if-eqz v7, :cond_8

    .line 143
    .line 144
    iget-object v7, v4, Landroidx/media3/ui/TrackSelectionView;->f:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-le v7, v3, :cond_8

    .line 151
    .line 152
    :cond_7
    const/4 v1, 0x1

    .line 153
    :cond_8
    if-eqz p1, :cond_a

    .line 154
    .line 155
    if-eqz v1, :cond_a

    .line 156
    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_9

    .line 169
    .line 170
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_9
    new-instance p1, Lr1/s0;

    .line 175
    .line 176
    invoke-direct {p1, v6, v8}, Lr1/s0;-><init>(Lr1/r0;Ljava/util/List;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_a
    if-nez p1, :cond_c

    .line 184
    .line 185
    if-eqz v5, :cond_b

    .line 186
    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    new-instance p1, Lr1/s0;

    .line 195
    .line 196
    invoke-direct {p1, v6, v8}, Lr1/s0;-><init>(Lr1/r0;Ljava/util/List;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_b
    new-instance p1, Lr1/s0;

    .line 204
    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v0}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-direct {p1, v6, v0}, Lr1/s0;-><init>(Lr1/r0;Ljava/util/List;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    :cond_c
    :goto_2
    invoke-virtual {v4}, Landroidx/media3/ui/TrackSelectionView;->a()V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :pswitch_2
    check-cast v4, Lq/e;

    .line 224
    .line 225
    iget-object v0, v4, Lq/e;->h:Landroid/widget/Button;

    .line 226
    .line 227
    if-ne p1, v0, :cond_d

    .line 228
    .line 229
    iget-object v0, v4, Lq/e;->j:Landroid/os/Message;

    .line 230
    .line 231
    if-eqz v0, :cond_d

    .line 232
    .line 233
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    goto :goto_3

    .line 238
    :cond_d
    iget-object v0, v4, Lq/e;->k:Landroid/widget/Button;

    .line 239
    .line 240
    if-ne p1, v0, :cond_e

    .line 241
    .line 242
    iget-object v0, v4, Lq/e;->m:Landroid/os/Message;

    .line 243
    .line 244
    if-eqz v0, :cond_e

    .line 245
    .line 246
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    goto :goto_3

    .line 251
    :cond_e
    iget-object v0, v4, Lq/e;->n:Landroid/widget/Button;

    .line 252
    .line 253
    if-ne p1, v0, :cond_f

    .line 254
    .line 255
    iget-object p1, v4, Lq/e;->p:Landroid/os/Message;

    .line 256
    .line 257
    if-eqz p1, :cond_f

    .line 258
    .line 259
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    :cond_f
    :goto_3
    if-eqz v2, :cond_10

    .line 264
    .line 265
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 266
    .line 267
    .line 268
    :cond_10
    iget-object p1, v4, Lq/e;->D:Lcom/yunpan/appmanage/carsdk/u;

    .line 269
    .line 270
    iget-object v0, v4, Lq/e;->b:Lq/g;

    .line 271
    .line 272
    invoke-virtual {p1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :pswitch_3
    sget-object p1, Lfa/g0;->a:Lfa/h0;

    .line 281
    .line 282
    invoke-virtual {p1}, Lfa/h0;->d()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-nez v0, :cond_11

    .line 291
    .line 292
    new-instance v0, Lx9/w3;

    .line 293
    .line 294
    invoke-virtual {p1}, Lfa/h0;->d()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    const-string v1, "\u5185\u90e8\u5b58\u50a8"

    .line 299
    .line 300
    invoke-direct {v0, v1, p1}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_11
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 305
    .line 306
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 307
    .line 308
    iget-object v0, p1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-eqz v0, :cond_12

    .line 315
    .line 316
    const-string p1, "\u6ca1\u6709\u5185\u90e8\u5b58\u50a8\u4e5f\u6ca1\u6709U\u76d8\uff0c\u65e0\u6cd5\u9009\u62e9\u5bc6\u94a5\u6587\u4ef6"

    .line 317
    .line 318
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_12
    new-instance v0, Lx9/w3;

    .line 323
    .line 324
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 325
    .line 326
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    check-cast p1, Ljava/lang/String;

    .line 335
    .line 336
    const-string v1, "U\u76d8"

    .line 337
    .line 338
    invoke-direct {v0, v1, p1}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    :goto_4
    new-instance p1, Lha/k9;

    .line 342
    .line 343
    check-cast v4, Lha/w;

    .line 344
    .line 345
    iget-object v1, v4, Lha/a4;->a:Landroid/app/Activity;

    .line 346
    .line 347
    iget-object v2, v4, Lha/a4;->b:Landroid/content/Context;

    .line 348
    .line 349
    invoke-direct {p1, v1, v2}, Lha/k9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 350
    .line 351
    .line 352
    new-instance v1, Lh5/m;

    .line 353
    .line 354
    const/16 v2, 0x10

    .line 355
    .line 356
    invoke-direct {v1, v2, p0}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 360
    .line 361
    .line 362
    iput-object v1, p1, Lha/k9;->p:Lh5/m;

    .line 363
    .line 364
    iget-object v1, p1, Lha/k9;->h:Lx9/g0;

    .line 365
    .line 366
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p1}, Lha/k9;->a()V

    .line 370
    .line 371
    .line 372
    :goto_5
    return-void

    .line 373
    :pswitch_4
    new-instance p1, Lha/fa;

    .line 374
    .line 375
    check-cast v4, Lha/fc;

    .line 376
    .line 377
    iget-object v5, v4, Lha/a4;->a:Landroid/app/Activity;

    .line 378
    .line 379
    iget-object v4, v4, Lha/a4;->b:Landroid/content/Context;

    .line 380
    .line 381
    const/4 v2, 0x4

    .line 382
    new-array v2, v2, [Ljava/lang/String;

    .line 383
    .line 384
    const-string v6, "\u7ba1\u5bb6\u5b89\u88c5\u5668"

    .line 385
    .line 386
    aput-object v6, v2, v1

    .line 387
    .line 388
    const-string v1, "\u7cfb\u7edf\u5b89\u88c5\u5668"

    .line 389
    .line 390
    aput-object v1, v2, v3

    .line 391
    .line 392
    const-string v1, "\u6307\u5b9a\u5b89\u88c5\u5668"

    .line 393
    .line 394
    aput-object v1, v2, v0

    .line 395
    .line 396
    const-string v0, "\u7531\u6253\u5f00\u65b9\u5f0f"

    .line 397
    .line 398
    const/4 v1, 0x3

    .line 399
    aput-object v0, v2, v1

    .line 400
    .line 401
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 402
    .line 403
    .line 404
    move-result-object v6

    .line 405
    new-instance v7, Lh5/m;

    .line 406
    .line 407
    const/16 v0, 0xf

    .line 408
    .line 409
    invoke-direct {v7, v0, p0}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    const/4 v0, 0x0

    .line 413
    move-object v2, p1

    .line 414
    move-object v3, v5

    .line 415
    move-object v5, v0

    .line 416
    invoke-direct/range {v2 .. v7}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 420
    .line 421
    .line 422
    return-void

    .line 423
    :pswitch_5
    check-cast v4, Lcom/google/android/material/datepicker/k;

    .line 424
    .line 425
    iget p1, v4, Lcom/google/android/material/datepicker/k;->e:I

    .line 426
    .line 427
    if-ne p1, v0, :cond_13

    .line 428
    .line 429
    invoke-virtual {v4, v3}, Lcom/google/android/material/datepicker/k;->h(I)V

    .line 430
    .line 431
    .line 432
    goto :goto_6

    .line 433
    :cond_13
    if-ne p1, v3, :cond_14

    .line 434
    .line 435
    invoke-virtual {v4, v0}, Lcom/google/android/material/datepicker/k;->h(I)V

    .line 436
    .line 437
    .line 438
    :cond_14
    :goto_6
    return-void

    .line 439
    :pswitch_6
    check-cast v4, Landroidx/leanback/widget/SearchBar;

    .line 440
    .line 441
    iget-boolean p1, v4, Landroidx/leanback/widget/SearchBar;->x:Z

    .line 442
    .line 443
    if-eqz p1, :cond_15

    .line 444
    .line 445
    invoke-virtual {v4}, Landroidx/leanback/widget/SearchBar;->b()V

    .line 446
    .line 447
    .line 448
    goto :goto_7

    .line 449
    :cond_15
    invoke-virtual {v4}, Landroidx/leanback/widget/SearchBar;->a()V

    .line 450
    .line 451
    .line 452
    :goto_7
    return-void

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
