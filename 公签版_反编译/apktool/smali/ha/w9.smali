.class public final synthetic Lha/w9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/ba;


# direct methods
.method public synthetic constructor <init>(Lha/ba;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/w9;->a:I

    iput-object p1, p0, Lha/w9;->b:Lha/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/16 v3, 0x13

    .line 7
    .line 8
    const/16 v4, 0xf

    .line 9
    .line 10
    const/4 v5, 0x4

    .line 11
    const-string v6, "0"

    .line 12
    .line 13
    const-string v7, "\u5f00\u59cb\u76d1\u542c"

    .line 14
    .line 15
    const/16 v8, 0x8

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    iget-object v10, v0, Lha/w9;->b:Lha/ba;

    .line 19
    .line 20
    iget v11, v0, Lha/w9;->a:I

    .line 21
    .line 22
    packed-switch v11, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    iget-object v1, v10, Lha/a4;->b:Landroid/content/Context;

    .line 26
    .line 27
    const-string v2, "\u8bf7\u6388\u4e88"

    .line 28
    .line 29
    iget-object v3, v10, Lha/ba;->g:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v7, "android.permission.READ_LOGS"

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    invoke-virtual {v3, v7, v11}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    new-instance v3, Lha/z6;

    .line 58
    .line 59
    iget-object v7, v10, Lha/a4;->a:Landroid/app/Activity;

    .line 60
    .line 61
    new-instance v11, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const v12, 0x7f13002f

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, "\u3010\u8bfb\u53d6\u7cfb\u7edf\u65e5\u5fd7\u3011\u6743\u9650"

    .line 81
    .line 82
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-string v11, ""

    .line 90
    .line 91
    invoke-direct {v3, v7, v1, v2, v11}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Lha/a4;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    :cond_0
    iget-object v1, v10, Lha/ba;->g:Landroid/widget/TextView;

    .line 99
    .line 100
    const-string v2, "\u505c\u6b62\u76d1\u542c"

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v10, Lha/ba;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 106
    .line 107
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v10, Lha/ba;->k:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v10, Lha/ba;->n:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 118
    .line 119
    .line 120
    iget-object v2, v10, Lha/ba;->i:Lx9/t0;

    .line 121
    .line 122
    invoke-virtual {v2, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v10, Lha/ba;->k:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v10, Lha/ba;->j:Lg0/e;

    .line 131
    .line 132
    iget-object v2, v10, Lha/ba;->p:Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    new-instance v3, Lma/b;

    .line 138
    .line 139
    invoke-direct {v3, v1, v5, v2}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    new-instance v1, Lmc/c;

    .line 143
    .line 144
    invoke-direct {v1, v9, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    sget-object v2, Lrc/f;->b:Lec/j;

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    new-instance v2, Lha/p0;

    .line 162
    .line 163
    invoke-direct {v2, v4, v10}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_1
    iget-object v1, v10, Lha/ba;->j:Lg0/e;

    .line 171
    .line 172
    invoke-virtual {v1}, Lg0/e;->k()V

    .line 173
    .line 174
    .line 175
    iget-object v1, v10, Lha/ba;->g:Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    :goto_0
    return-void

    .line 181
    :pswitch_0
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    new-array v6, v3, [Ljava/lang/String;

    .line 185
    .line 186
    const-string v7, "KeyCode"

    .line 187
    .line 188
    aput-object v7, v6, v9

    .line 189
    .line 190
    const-string v7, "keyCode"

    .line 191
    .line 192
    aput-object v7, v6, v2

    .line 193
    .line 194
    const-string v7, "event"

    .line 195
    .line 196
    const/4 v11, 0x2

    .line 197
    aput-object v7, v6, v11

    .line 198
    .line 199
    const-string v7, "InputCode"

    .line 200
    .line 201
    const/4 v11, 0x3

    .line 202
    aput-object v7, v6, v11

    .line 203
    .line 204
    const-string v7, "ACTION_"

    .line 205
    .line 206
    aput-object v7, v6, v5

    .line 207
    .line 208
    const-string v5, "keyEvent"

    .line 209
    .line 210
    const/4 v7, 0x5

    .line 211
    aput-object v5, v6, v7

    .line 212
    .line 213
    const-string v5, "function"

    .line 214
    .line 215
    const/4 v7, 0x6

    .line 216
    aput-object v5, v6, v7

    .line 217
    .line 218
    const-string v5, "functionId"

    .line 219
    .line 220
    const/4 v7, 0x7

    .line 221
    aput-object v5, v6, v7

    .line 222
    .line 223
    const-string v5, "action"

    .line 224
    .line 225
    aput-object v5, v6, v8

    .line 226
    .line 227
    const-string v5, "Door"

    .line 228
    .line 229
    const/16 v7, 0x9

    .line 230
    .line 231
    aput-object v5, v6, v7

    .line 232
    .line 233
    const-string v5, "door"

    .line 234
    .line 235
    const/16 v7, 0xa

    .line 236
    .line 237
    aput-object v5, v6, v7

    .line 238
    .line 239
    const-string v5, "downTime"

    .line 240
    .line 241
    const/16 v7, 0xb

    .line 242
    .line 243
    aput-object v5, v6, v7

    .line 244
    .line 245
    const-string v5, "CarServer"

    .line 246
    .line 247
    const/16 v7, 0xc

    .line 248
    .line 249
    aput-object v5, v6, v7

    .line 250
    .line 251
    const-string v5, "gear"

    .line 252
    .line 253
    const/16 v7, 0xd

    .line 254
    .line 255
    aput-object v5, v6, v7

    .line 256
    .line 257
    const-string v5, "Gear"

    .line 258
    .line 259
    const/16 v7, 0xe

    .line 260
    .line 261
    aput-object v5, v6, v7

    .line 262
    .line 263
    const-string v5, "lamp"

    .line 264
    .line 265
    aput-object v5, v6, v4

    .line 266
    .line 267
    const-string v4, "Lamp"

    .line 268
    .line 269
    const/16 v5, 0x10

    .line 270
    .line 271
    aput-object v4, v6, v5

    .line 272
    .line 273
    const-string v4, "ign"

    .line 274
    .line 275
    const/16 v5, 0x11

    .line 276
    .line 277
    aput-object v4, v6, v5

    .line 278
    .line 279
    const-string v4, "IGN"

    .line 280
    .line 281
    aput-object v4, v6, v1

    .line 282
    .line 283
    new-instance v4, Lha/fa;

    .line 284
    .line 285
    new-instance v5, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    .line 289
    .line 290
    :goto_1
    if-ge v9, v3, :cond_2

    .line 291
    .line 292
    aget-object v7, v6, v9

    .line 293
    .line 294
    invoke-static {v7, v5, v7, v9, v2}, Lg/b;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)I

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    goto :goto_1

    .line 299
    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 300
    .line 301
    .line 302
    move-result-object v15

    .line 303
    new-instance v2, Ld2/w;

    .line 304
    .line 305
    invoke-direct {v2, v10, v1, v6}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    iget-object v13, v10, Lha/a4;->b:Landroid/content/Context;

    .line 309
    .line 310
    const/4 v14, 0x0

    .line 311
    iget-object v12, v10, Lha/a4;->a:Landroid/app/Activity;

    .line 312
    .line 313
    move-object v11, v4

    .line 314
    move-object/from16 v16, v2

    .line 315
    .line 316
    invoke-direct/range {v11 .. v16}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4}, Lha/a4;->show()V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :pswitch_1
    iget-object v1, v10, Lha/ba;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 324
    .line 325
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-nez v1, :cond_3

    .line 330
    .line 331
    iget-object v1, v10, Lha/ba;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 332
    .line 333
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 334
    .line 335
    .line 336
    iget-object v1, v10, Lha/ba;->k:Landroid/widget/TextView;

    .line 337
    .line 338
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 339
    .line 340
    .line 341
    goto :goto_2

    .line 342
    :cond_3
    iget-object v1, v10, Lha/ba;->g:Landroid/widget/TextView;

    .line 343
    .line 344
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-nez v1, :cond_4

    .line 353
    .line 354
    const-string v1, "\u8bf7\u5148\u505c\u6b62\u76d1\u542c\u65e5\u5fd7"

    .line 355
    .line 356
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 357
    .line 358
    .line 359
    goto :goto_2

    .line 360
    :cond_4
    iget-object v1, v10, Lha/ba;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 361
    .line 362
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 363
    .line 364
    .line 365
    iget-object v1, v10, Lha/ba;->k:Landroid/widget/TextView;

    .line 366
    .line 367
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 368
    .line 369
    .line 370
    :goto_2
    return-void

    .line 371
    :pswitch_2
    invoke-virtual {v10}, Lha/ba;->dismiss()V

    .line 372
    .line 373
    .line 374
    return-void

    .line 375
    :pswitch_3
    iget-object v1, v10, Lha/ba;->n:Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 378
    .line 379
    .line 380
    iget-object v2, v10, Lha/ba;->i:Lx9/t0;

    .line 381
    .line 382
    invoke-virtual {v2, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 383
    .line 384
    .line 385
    iget-object v1, v10, Lha/ba;->k:Landroid/widget/TextView;

    .line 386
    .line 387
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    .line 389
    .line 390
    return-void

    .line 391
    :pswitch_4
    iget-object v1, v10, Lha/ba;->i:Lx9/t0;

    .line 392
    .line 393
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-nez v1, :cond_5

    .line 398
    .line 399
    const-string v1, "\u8bf7\u5148\u76d1\u542c\u65e5\u5fd7"

    .line 400
    .line 401
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_4

    .line 405
    .line 406
    :cond_5
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 407
    .line 408
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    const-string v3, "\u6ca1\u6709\u5185\u90e8\u5b58\u50a8\uff0c\u65e0\u6cd5\u4fdd\u5b58"

    .line 417
    .line 418
    if-eqz v2, :cond_6

    .line 419
    .line 420
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 421
    .line 422
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 423
    .line 424
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 425
    .line 426
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    if-eqz v2, :cond_6

    .line 431
    .line 432
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 433
    .line 434
    .line 435
    goto/16 :goto_4

    .line 436
    .line 437
    :cond_6
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 438
    .line 439
    const-string v4, "dd\u65e5HH\u65f6mm\u5206ss\u79d2"

    .line 440
    .line 441
    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    const-string v5, ".log"

    .line 453
    .line 454
    const-string v6, "\u65e5\u5fd7_"

    .line 455
    .line 456
    const-string v7, "/Download"

    .line 457
    .line 458
    if-nez v4, :cond_7

    .line 459
    .line 460
    new-instance v4, Ljava/io/File;

    .line 461
    .line 462
    new-instance v8, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .line 466
    .line 467
    invoke-static {v1, v8, v7}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    new-instance v8, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    new-instance v9, Ljava/util/Date;

    .line 477
    .line 478
    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v9

    .line 485
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v8

    .line 495
    invoke-direct {v4, v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    goto :goto_3

    .line 499
    :cond_7
    const/4 v4, 0x0

    .line 500
    :goto_3
    if-nez v4, :cond_8

    .line 501
    .line 502
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 503
    .line 504
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 505
    .line 506
    iget-object v8, v1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 507
    .line 508
    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    .line 509
    .line 510
    .line 511
    move-result v8

    .line 512
    if-nez v8, :cond_8

    .line 513
    .line 514
    new-instance v4, Ljava/io/File;

    .line 515
    .line 516
    new-instance v8, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .line 520
    .line 521
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 522
    .line 523
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    check-cast v1, Ljava/lang/String;

    .line 532
    .line 533
    invoke-static {v1, v7, v8}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    new-instance v7, Ljava/lang/StringBuilder;

    .line 538
    .line 539
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    new-instance v6, Ljava/util/Date;

    .line 543
    .line 544
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    :cond_8
    if-nez v4, :cond_9

    .line 565
    .line 566
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 567
    .line 568
    .line 569
    goto :goto_4

    .line 570
    :cond_9
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 575
    .line 576
    .line 577
    new-instance v1, Lha/z6;

    .line 578
    .line 579
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v15

    .line 583
    new-instance v2, Lha/y9;

    .line 584
    .line 585
    invoke-direct {v2, v10, v4}, Lha/y9;-><init>(Lha/ba;Ljava/io/File;)V

    .line 586
    .line 587
    .line 588
    iget-object v12, v10, Lha/a4;->a:Landroid/app/Activity;

    .line 589
    .line 590
    iget-object v13, v10, Lha/a4;->b:Landroid/content/Context;

    .line 591
    .line 592
    const-string v14, "\u4fdd\u5b58\u6587\u4ef6\u540d"

    .line 593
    .line 594
    const-string v16, "\u8bf7\u8f93\u5165\u6587\u4ef6\u540d"

    .line 595
    .line 596
    const-string v17, "\u786e\u5b9a"

    .line 597
    .line 598
    const-string v18, "\u53d6\u6d88"

    .line 599
    .line 600
    move-object v11, v1

    .line 601
    move-object/from16 v19, v2

    .line 602
    .line 603
    invoke-direct/range {v11 .. v19}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 607
    .line 608
    .line 609
    goto :goto_4

    .line 610
    :catch_1
    const-string v1, "\u4fdd\u5b58\u5931\u8d25"

    .line 611
    .line 612
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 613
    .line 614
    .line 615
    :goto_4
    return-void

    .line 616
    nop

    .line 617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
