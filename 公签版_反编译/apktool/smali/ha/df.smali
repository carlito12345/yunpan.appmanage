.class public final synthetic Lha/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/ff;


# direct methods
.method public synthetic constructor <init>(Lha/ff;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/df;->a:I

    iput-object p1, p0, Lha/df;->b:Lha/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    iget p1, p0, Lha/df;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/df;->b:Lha/ff;

    .line 7
    .line 8
    iget-object v0, p1, Lha/ff;->i:Lx9/a6;

    .line 9
    .line 10
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    iget-object v1, p1, Lha/ff;->s:Lx9/n5;

    .line 18
    .line 19
    iget v1, v1, Lx9/n5;->a:I

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const-string p1, "\u5f53\u524d\u4f4d\u7f6e\u65e0\u6cd5\u65b0\u5efa\u76ee\u5f55"

    .line 40
    .line 41
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v9, Lha/z6;

    .line 46
    .line 47
    new-instance v8, Lha/ef;

    .line 48
    .line 49
    const/4 v0, 0x4

    .line 50
    invoke-direct {v8, p1, v0}, Lha/ef;-><init>(Lha/ff;I)V

    .line 51
    .line 52
    .line 53
    const-string v4, ""

    .line 54
    .line 55
    const-string v5, "\u8bf7\u8f93\u5165\u6587\u4ef6\u5939\u540d\u79f0"

    .line 56
    .line 57
    iget-object v1, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 58
    .line 59
    iget-object v2, p1, Lha/a4;->b:Landroid/content/Context;

    .line 60
    .line 61
    const-string v3, "\u65b0\u5efa\u6587\u4ef6\u5939"

    .line 62
    .line 63
    const-string v6, "\u786e\u5b9a"

    .line 64
    .line 65
    const-string v7, "\u53d6\u6d88"

    .line 66
    .line 67
    move-object v0, v9

    .line 68
    invoke-direct/range {v0 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9}, Lha/a4;->show()V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object p1, p0, Lha/df;->b:Lha/ff;

    .line 76
    .line 77
    iget-object v0, p1, Lha/ff;->i:Lx9/a6;

    .line 78
    .line 79
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/4 v2, 0x1

    .line 84
    if-ne v1, v2, :cond_1

    .line 85
    .line 86
    iget-object v1, p1, Lha/ff;->s:Lx9/n5;

    .line 87
    .line 88
    iget v1, v1, Lx9/n5;->a:I

    .line 89
    .line 90
    const/4 v3, 0x3

    .line 91
    if-ne v1, v3, :cond_1

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_1

    .line 107
    .line 108
    const-string p1, "\u4e0d\u80fd\u9009\u5f53\u524d\u4f4d\u7f6e"

    .line 109
    .line 110
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_6

    .line 114
    .line 115
    :cond_1
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-lez v1, :cond_18

    .line 120
    .line 121
    iget-object v1, p1, Lha/ff;->t:Lua/t8;

    .line 122
    .line 123
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    sub-int/2addr v3, v2

    .line 128
    invoke-virtual {v0, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 133
    .line 134
    iget v2, v1, Lua/t8;->a:I

    .line 135
    .line 136
    packed-switch v2, :pswitch_data_1

    .line 137
    .line 138
    .line 139
    iget-object v2, v1, Lua/t8;->b:Lua/i9;

    .line 140
    .line 141
    iget-object v3, v2, Lua/i9;->j:Lx9/o5;

    .line 142
    .line 143
    iget v4, v2, Lua/i9;->T:I

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Lx9/n5;

    .line 150
    .line 151
    iget-object v4, v2, Lua/i9;->q:Lx9/y5;

    .line 152
    .line 153
    iget v1, v1, Lua/t8;->c:I

    .line 154
    .line 155
    invoke-virtual {v4, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    check-cast v4, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 160
    .line 161
    iget-object v5, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 162
    .line 163
    iget-object v6, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    const-string v6, "\u8b66\u544a\uff1a\u8bf7\u4e0d\u8981\u79fb\u52a8\u5230\u540c\u4e00\u4e2a\u76ee\u5f55\u4e0b"

    .line 170
    .line 171
    if-eqz v5, :cond_2

    .line 172
    .line 173
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_5

    .line 177
    .line 178
    :cond_2
    iget v5, v3, Lx9/n5;->a:I

    .line 179
    .line 180
    const/4 v7, 0x2

    .line 181
    if-le v5, v7, :cond_3

    .line 182
    .line 183
    iget-object v5, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 184
    .line 185
    iget-object v8, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-eqz v5, :cond_3

    .line 192
    .line 193
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_5

    .line 197
    .line 198
    :cond_3
    iget v5, v3, Lx9/n5;->a:I

    .line 199
    .line 200
    const/4 v6, 0x1

    .line 201
    if-ne v5, v6, :cond_4

    .line 202
    .line 203
    new-instance v5, Lba/d;

    .line 204
    .line 205
    const/4 v6, 0x1

    .line 206
    invoke-direct {v5, v3, v4, v0, v6}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 207
    .line 208
    .line 209
    new-instance v0, Lmc/c;

    .line 210
    .line 211
    const/4 v3, 0x0

    .line 212
    invoke-direct {v0, v3, v5}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 216
    .line 217
    invoke-virtual {v0, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {v0, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    goto/16 :goto_1

    .line 230
    .line 231
    :cond_4
    if-ne v5, v7, :cond_5

    .line 232
    .line 233
    new-instance v5, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    new-instance v4, Lba/a;

    .line 242
    .line 243
    const/4 v6, 0x2

    .line 244
    invoke-direct {v4, v3, v5, v0, v6}, Lba/a;-><init>(Lx9/n5;Ljava/util/ArrayList;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 245
    .line 246
    .line 247
    new-instance v0, Lmc/c;

    .line 248
    .line 249
    const/4 v3, 0x0

    .line 250
    invoke-direct {v0, v3, v4}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 254
    .line 255
    invoke-virtual {v0, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-virtual {v0, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_5
    const/16 v6, 0x14

    .line 270
    .line 271
    if-ne v5, v6, :cond_6

    .line 272
    .line 273
    new-instance v5, Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    new-instance v4, Lba/a;

    .line 282
    .line 283
    const/4 v6, 0x4

    .line 284
    invoke-direct {v4, v3, v5, v0, v6}, Lba/a;-><init>(Lx9/n5;Ljava/util/ArrayList;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 285
    .line 286
    .line 287
    new-instance v0, Lmc/c;

    .line 288
    .line 289
    const/4 v3, 0x0

    .line 290
    invoke-direct {v0, v3, v4}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 294
    .line 295
    invoke-virtual {v0, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-virtual {v0, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :cond_6
    const/16 v6, 0x15

    .line 310
    .line 311
    if-ne v5, v6, :cond_7

    .line 312
    .line 313
    new-instance v5, Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    new-instance v4, Lba/a;

    .line 322
    .line 323
    invoke-direct {v4, v5, v0, v3}, Lba/a;-><init>(Ljava/util/ArrayList;Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;)V

    .line 324
    .line 325
    .line 326
    new-instance v0, Lmc/c;

    .line 327
    .line 328
    const/4 v3, 0x0

    .line 329
    invoke-direct {v0, v3, v4}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 333
    .line 334
    invoke-virtual {v0, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-virtual {v0, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    goto/16 :goto_1

    .line 347
    .line 348
    :cond_7
    const/4 v6, 0x3

    .line 349
    if-ne v5, v6, :cond_8

    .line 350
    .line 351
    new-instance v5, Lba/d;

    .line 352
    .line 353
    const/4 v6, 0x7

    .line 354
    invoke-direct {v5, v3, v4, v0, v6}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 355
    .line 356
    .line 357
    new-instance v0, Lmc/c;

    .line 358
    .line 359
    const/4 v3, 0x0

    .line 360
    invoke-direct {v0, v3, v5}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 364
    .line 365
    invoke-virtual {v0, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-virtual {v0, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    goto/16 :goto_1

    .line 378
    .line 379
    :cond_8
    const/4 v6, 0x4

    .line 380
    if-ne v5, v6, :cond_9

    .line 381
    .line 382
    new-instance v5, Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    new-instance v4, Lba/a;

    .line 391
    .line 392
    const/4 v6, 0x5

    .line 393
    invoke-direct {v4, v3, v5, v0, v6}, Lba/a;-><init>(Lx9/n5;Ljava/util/ArrayList;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 394
    .line 395
    .line 396
    new-instance v0, Lmc/c;

    .line 397
    .line 398
    const/4 v3, 0x0

    .line 399
    invoke-direct {v0, v3, v4}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 403
    .line 404
    invoke-virtual {v0, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-virtual {v0, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    goto :goto_1

    .line 417
    :cond_9
    const/4 v6, 0x5

    .line 418
    if-ne v5, v6, :cond_a

    .line 419
    .line 420
    new-instance v5, Ljava/util/ArrayList;

    .line 421
    .line 422
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    new-instance v4, Lba/a;

    .line 429
    .line 430
    const/4 v6, 0x6

    .line 431
    invoke-direct {v4, v3, v5, v0, v6}, Lba/a;-><init>(Lx9/n5;Ljava/util/ArrayList;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 432
    .line 433
    .line 434
    new-instance v0, Lmc/c;

    .line 435
    .line 436
    const/4 v3, 0x0

    .line 437
    invoke-direct {v0, v3, v4}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 441
    .line 442
    invoke-virtual {v0, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    invoke-virtual {v0, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    goto :goto_1

    .line 455
    :cond_a
    const/4 v6, 0x6

    .line 456
    if-ne v5, v6, :cond_b

    .line 457
    .line 458
    new-instance v5, Ljava/util/ArrayList;

    .line 459
    .line 460
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    new-instance v4, Lba/f;

    .line 467
    .line 468
    const/16 v6, 0xf

    .line 469
    .line 470
    invoke-direct {v4, v3, v5, v0, v6}, Lba/f;-><init>(Lx9/n5;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 471
    .line 472
    .line 473
    new-instance v0, Lmc/c;

    .line 474
    .line 475
    const/4 v3, 0x0

    .line 476
    invoke-direct {v0, v3, v4}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 480
    .line 481
    invoke-virtual {v0, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    invoke-virtual {v0, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    goto :goto_1

    .line 494
    :cond_b
    const/4 v6, 0x7

    .line 495
    if-ne v5, v6, :cond_18

    .line 496
    .line 497
    new-instance v5, Lba/d;

    .line 498
    .line 499
    const/16 v6, 0xc

    .line 500
    .line 501
    invoke-direct {v5, v3, v0, v4, v6}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 502
    .line 503
    .line 504
    new-instance v0, Lmc/c;

    .line 505
    .line 506
    const/4 v3, 0x0

    .line 507
    invoke-direct {v0, v3, v5}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 511
    .line 512
    invoke-virtual {v0, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    invoke-virtual {v0, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    :goto_1
    new-instance v3, Lua/z8;

    .line 525
    .line 526
    const/4 v4, 0x1

    .line 527
    invoke-direct {v3, v2, v1, v4}, Lua/z8;-><init>(Lua/i9;II)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0, v3}, Lec/b;->b(Lec/e;)V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_5

    .line 534
    .line 535
    :pswitch_1
    iget-object v2, v1, Lua/t8;->b:Lua/i9;

    .line 536
    .line 537
    iget-object v3, v2, Lua/i9;->j:Lx9/o5;

    .line 538
    .line 539
    iget v4, v2, Lua/i9;->T:I

    .line 540
    .line 541
    invoke-virtual {v3, v4}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    check-cast v3, Lx9/n5;

    .line 546
    .line 547
    iget-object v4, v2, Lua/i9;->q:Lx9/y5;

    .line 548
    .line 549
    iget v1, v1, Lua/t8;->c:I

    .line 550
    .line 551
    invoke-virtual {v4, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 556
    .line 557
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 558
    .line 559
    iget-object v5, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 560
    .line 561
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v4

    .line 565
    if-eqz v4, :cond_c

    .line 566
    .line 567
    const-string v0, "\u8b66\u544a\uff1a\u8bf7\u4e0d\u8981\u5728\u79fb\u52a8\u5230\u540c\u4e00\u4e2a\u76ee\u5f55\u4e0b"

    .line 568
    .line 569
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    goto/16 :goto_5

    .line 573
    .line 574
    :cond_c
    iget v4, v3, Lx9/n5;->a:I

    .line 575
    .line 576
    const-string v5, "\u8b66\u544a\uff1a\u8bf7\u4e0d\u8981\u590d\u5236\u5230\u540c\u4e00\u4e2a\u76ee\u5f55\u4e0b"

    .line 577
    .line 578
    const/16 v6, 0x15

    .line 579
    .line 580
    const/4 v7, 0x7

    .line 581
    const/4 v8, 0x3

    .line 582
    const/4 v9, 0x2

    .line 583
    const/4 v10, 0x1

    .line 584
    if-eq v4, v10, :cond_12

    .line 585
    .line 586
    if-eq v4, v9, :cond_12

    .line 587
    .line 588
    if-eq v4, v8, :cond_12

    .line 589
    .line 590
    if-eq v4, v7, :cond_12

    .line 591
    .line 592
    if-ne v4, v6, :cond_d

    .line 593
    .line 594
    goto/16 :goto_3

    .line 595
    .line 596
    :cond_d
    const/4 v6, 0x6

    .line 597
    const/4 v7, 0x5

    .line 598
    const/4 v8, 0x4

    .line 599
    if-eq v4, v8, :cond_e

    .line 600
    .line 601
    if-eq v4, v7, :cond_e

    .line 602
    .line 603
    if-ne v4, v6, :cond_18

    .line 604
    .line 605
    :cond_e
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 606
    .line 607
    iget-object v9, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 608
    .line 609
    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 610
    .line 611
    .line 612
    move-result v4

    .line 613
    if-eqz v4, :cond_f

    .line 614
    .line 615
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    goto/16 :goto_5

    .line 619
    .line 620
    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    .line 621
    .line 622
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    new-instance v1, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 629
    .line 630
    invoke-direct {v1}, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;-><init>()V

    .line 631
    .line 632
    .line 633
    iput-object v3, v1, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 634
    .line 635
    iput-object v4, v1, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->paths:Ljava/util/List;

    .line 636
    .line 637
    new-instance v5, Ljava/io/File;

    .line 638
    .line 639
    const/4 v9, 0x0

    .line 640
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    check-cast v4, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 645
    .line 646
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 647
    .line 648
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v4

    .line 655
    iput-object v4, v1, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 656
    .line 657
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 658
    .line 659
    iput-object v0, v1, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 660
    .line 661
    iget v0, v3, Lx9/n5;->a:I

    .line 662
    .line 663
    if-ne v0, v8, :cond_10

    .line 664
    .line 665
    new-instance v0, Lqa/d;

    .line 666
    .line 667
    const/4 v3, 0x1

    .line 668
    invoke-direct {v0, v1, v3}, Lqa/d;-><init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;I)V

    .line 669
    .line 670
    .line 671
    new-instance v3, Lmc/c;

    .line 672
    .line 673
    const/4 v4, 0x0

    .line 674
    invoke-direct {v3, v4, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 675
    .line 676
    .line 677
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 678
    .line 679
    invoke-virtual {v3, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 684
    .line 685
    .line 686
    move-result-object v3

    .line 687
    invoke-virtual {v0, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    goto :goto_2

    .line 692
    :cond_10
    if-ne v0, v7, :cond_11

    .line 693
    .line 694
    new-instance v0, Lqa/d;

    .line 695
    .line 696
    const/4 v3, 0x3

    .line 697
    invoke-direct {v0, v1, v3}, Lqa/d;-><init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;I)V

    .line 698
    .line 699
    .line 700
    new-instance v3, Lmc/c;

    .line 701
    .line 702
    const/4 v4, 0x0

    .line 703
    invoke-direct {v3, v4, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 704
    .line 705
    .line 706
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 707
    .line 708
    invoke-virtual {v3, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 713
    .line 714
    .line 715
    move-result-object v3

    .line 716
    invoke-virtual {v0, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    goto :goto_2

    .line 721
    :cond_11
    if-ne v0, v6, :cond_18

    .line 722
    .line 723
    new-instance v0, Lqa/d;

    .line 724
    .line 725
    const/4 v3, 0x5

    .line 726
    invoke-direct {v0, v1, v3}, Lqa/d;-><init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;I)V

    .line 727
    .line 728
    .line 729
    new-instance v3, Lmc/c;

    .line 730
    .line 731
    const/4 v4, 0x0

    .line 732
    invoke-direct {v3, v4, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 733
    .line 734
    .line 735
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 736
    .line 737
    invoke-virtual {v3, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 742
    .line 743
    .line 744
    move-result-object v3

    .line 745
    invoke-virtual {v0, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    :goto_2
    new-instance v3, Lha/v9;

    .line 750
    .line 751
    iget-object v4, v2, Lda/h;->f:Landroid/app/Activity;

    .line 752
    .line 753
    iget-object v5, v2, Lda/h;->e:Landroid/content/Context;

    .line 754
    .line 755
    invoke-direct {v3, v4, v5}, Lha/v9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 756
    .line 757
    .line 758
    const-string v4, "\u6b63\u5728\u590d\u5236"

    .line 759
    .line 760
    invoke-virtual {v3, v4, v1}, Lha/v9;->c(Ljava/lang/String;Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;)V

    .line 761
    .line 762
    .line 763
    new-instance v4, Lha/ze;

    .line 764
    .line 765
    const/4 v5, 0x4

    .line 766
    invoke-direct {v4, v2, v3, v1, v5}, Lha/ze;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v0, v4}, Lec/b;->b(Lec/e;)V

    .line 770
    .line 771
    .line 772
    goto/16 :goto_5

    .line 773
    .line 774
    :cond_12
    :goto_3
    if-ne v4, v10, :cond_13

    .line 775
    .line 776
    const-string v0, "\u84dd\u594f\u4e91\u6ca1\u6709\u590d\u5236\u529f\u80fd"

    .line 777
    .line 778
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    goto/16 :goto_5

    .line 782
    .line 783
    :cond_13
    if-ne v4, v9, :cond_14

    .line 784
    .line 785
    new-instance v4, Ljava/util/ArrayList;

    .line 786
    .line 787
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    new-instance v1, Lba/a;

    .line 794
    .line 795
    const/4 v5, 0x3

    .line 796
    invoke-direct {v1, v3, v4, v0, v5}, Lba/a;-><init>(Lx9/n5;Ljava/util/ArrayList;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 797
    .line 798
    .line 799
    new-instance v0, Lmc/c;

    .line 800
    .line 801
    const/4 v3, 0x0

    .line 802
    invoke-direct {v0, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 803
    .line 804
    .line 805
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 806
    .line 807
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    goto :goto_4

    .line 820
    :cond_14
    if-ne v4, v6, :cond_15

    .line 821
    .line 822
    new-instance v4, Ljava/util/ArrayList;

    .line 823
    .line 824
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    new-instance v1, Lba/a;

    .line 831
    .line 832
    const/4 v5, 0x1

    .line 833
    invoke-direct {v1, v3, v4, v0, v5}, Lba/a;-><init>(Lx9/n5;Ljava/util/ArrayList;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 834
    .line 835
    .line 836
    new-instance v0, Lmc/c;

    .line 837
    .line 838
    const/4 v3, 0x0

    .line 839
    invoke-direct {v0, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 840
    .line 841
    .line 842
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 843
    .line 844
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 849
    .line 850
    .line 851
    move-result-object v1

    .line 852
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    goto :goto_4

    .line 857
    :cond_15
    if-ne v4, v8, :cond_17

    .line 858
    .line 859
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 860
    .line 861
    iget-object v6, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 862
    .line 863
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 864
    .line 865
    .line 866
    move-result v4

    .line 867
    if-eqz v4, :cond_16

    .line 868
    .line 869
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    goto :goto_5

    .line 873
    :cond_16
    new-instance v4, Lba/d;

    .line 874
    .line 875
    const/16 v5, 0x8

    .line 876
    .line 877
    invoke-direct {v4, v3, v1, v0, v5}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 878
    .line 879
    .line 880
    new-instance v0, Lmc/c;

    .line 881
    .line 882
    const/4 v1, 0x0

    .line 883
    invoke-direct {v0, v1, v4}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 884
    .line 885
    .line 886
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 887
    .line 888
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    goto :goto_4

    .line 901
    :cond_17
    if-ne v4, v7, :cond_18

    .line 902
    .line 903
    new-instance v4, Lba/d;

    .line 904
    .line 905
    const/16 v5, 0xa

    .line 906
    .line 907
    invoke-direct {v4, v3, v0, v1, v5}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 908
    .line 909
    .line 910
    new-instance v0, Lmc/c;

    .line 911
    .line 912
    const/4 v1, 0x0

    .line 913
    invoke-direct {v0, v1, v4}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 914
    .line 915
    .line 916
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 917
    .line 918
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 923
    .line 924
    .line 925
    move-result-object v1

    .line 926
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 927
    .line 928
    .line 929
    move-result-object v0

    .line 930
    :goto_4
    iget-object v1, v2, Lua/i9;->h:Lha/u9;

    .line 931
    .line 932
    const-string v3, "\u590d\u5236\u4e2d"

    .line 933
    .line 934
    invoke-virtual {v1, v3}, Lha/u9;->c(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    new-instance v1, Lua/a9;

    .line 938
    .line 939
    const/4 v3, 0x0

    .line 940
    invoke-direct {v1, v2, v3}, Lua/a9;-><init>(Lua/i9;I)V

    .line 941
    .line 942
    .line 943
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 944
    .line 945
    .line 946
    :cond_18
    :goto_5
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 947
    .line 948
    .line 949
    :goto_6
    return-void

    .line 950
    :pswitch_2
    iget-object p1, p0, Lha/df;->b:Lha/ff;

    .line 951
    .line 952
    invoke-virtual {p1}, Lha/ff;->a()V

    .line 953
    .line 954
    .line 955
    return-void

    .line 956
    nop

    .line 957
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
