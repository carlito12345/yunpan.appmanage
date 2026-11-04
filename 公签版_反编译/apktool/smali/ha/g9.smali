.class public final synthetic Lha/g9;
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
    iput p1, p0, Lha/g9;->a:I

    iput-object p2, p0, Lha/g9;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "\u8fde\u63a5\u4e2d"

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/16 v4, 0x29a

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    iget-object v8, v0, Lha/g9;->b:Ljava/lang/Object;

    .line 14
    .line 15
    iget v9, v0, Lha/g9;->a:I

    .line 16
    .line 17
    packed-switch v9, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    sget v1, Lcom/yunpan/appmanage/ui/ActivityAutoClickUsbSet;->E:I

    .line 21
    .line 22
    check-cast v8, Lcom/yunpan/appmanage/ui/ActivityAutoClickUsbSet;

    .line 23
    .line 24
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    sget v1, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->E:I

    .line 29
    .line 30
    check-cast v8, Lcom/yunpan/appmanage/ui/ActivityAutoClick;

    .line 31
    .line 32
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    sget v1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->K:I

    .line 37
    .line 38
    check-cast v8, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;

    .line 39
    .line 40
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_2
    sget v1, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->K:I

    .line 45
    .line 46
    check-cast v8, Landroid/widget/PopupMenu;

    .line 47
    .line 48
    invoke-virtual {v8}, Landroid/widget/PopupMenu;->show()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_3
    sget v1, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->K:I

    .line 53
    .line 54
    check-cast v8, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;

    .line 55
    .line 56
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_4
    sget v1, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->E:I

    .line 61
    .line 62
    check-cast v8, Lcom/yunpan/appmanage/ui/ActivityAppDetails;

    .line 63
    .line 64
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_5
    check-cast v8, Lq7/x;

    .line 69
    .line 70
    iget-object v1, v8, Lq7/x;->f:Landroid/widget/EditText;

    .line 71
    .line 72
    if-nez v1, :cond_0

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iget-object v2, v8, Lq7/x;->f:Landroid/widget/EditText;

    .line 80
    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    .line 88
    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    iget-object v2, v8, Lq7/x;->f:Landroid/widget/EditText;

    .line 92
    .line 93
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    iget-object v2, v8, Lq7/x;->f:Landroid/widget/EditText;

    .line 98
    .line 99
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    if-ltz v1, :cond_2

    .line 107
    .line 108
    iget-object v2, v8, Lq7/x;->f:Landroid/widget/EditText;

    .line 109
    .line 110
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-virtual {v8}, Lq7/q;->q()V

    .line 114
    .line 115
    .line 116
    :goto_1
    return-void

    .line 117
    :pswitch_6
    check-cast v8, Lq7/l;

    .line 118
    .line 119
    invoke-virtual {v8}, Lq7/l;->u()V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_7
    check-cast v8, Lq7/c;

    .line 124
    .line 125
    iget-object v1, v8, Lq7/c;->i:Landroid/widget/EditText;

    .line 126
    .line 127
    if-nez v1, :cond_3

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 137
    .line 138
    .line 139
    :cond_4
    invoke-virtual {v8}, Lq7/q;->q()V

    .line 140
    .line 141
    .line 142
    :goto_2
    return-void

    .line 143
    :pswitch_8
    check-cast v8, Lha/o1;

    .line 144
    .line 145
    iget-object v1, v8, Lha/o1;->h:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v1, Lua/i1;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_9
    check-cast v8, Lha/ye;

    .line 157
    .line 158
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-static {v4, v1}, Lcom/bumptech/glide/c;->i(ILandroid/view/View;)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v8, Lha/ye;->h:Landroid/widget/TextView;

    .line 165
    .line 166
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    const-string v2, "\u767b\u5f55\u4e2d"

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_5

    .line 181
    .line 182
    goto/16 :goto_4

    .line 183
    .line 184
    :cond_5
    iget-object v1, v8, Lha/ye;->h:Landroid/widget/TextView;

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v8, Lha/ye;->i:Landroid/widget/EditText;

    .line 190
    .line 191
    invoke-static {v1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    const-string v4, "\u767b\u5f55"

    .line 200
    .line 201
    if-eqz v2, :cond_6

    .line 202
    .line 203
    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u8d26\u53f7"

    .line 204
    .line 205
    invoke-static {v1, v6}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v8, Lha/ye;->h:Landroid/widget/TextView;

    .line 209
    .line 210
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_4

    .line 214
    .line 215
    :cond_6
    iget-object v2, v8, Lha/ye;->j:Landroid/widget/EditText;

    .line 216
    .line 217
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    if-eqz v9, :cond_7

    .line 230
    .line 231
    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    .line 232
    .line 233
    invoke-static {v1, v6}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 234
    .line 235
    .line 236
    iget-object v1, v8, Lha/ye;->h:Landroid/widget/TextView;

    .line 237
    .line 238
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_7
    iget-object v4, v8, Lha/ye;->m:Lx9/n5;

    .line 243
    .line 244
    iput-object v1, v4, Lx9/n5;->e:Ljava/lang/String;

    .line 245
    .line 246
    iput-object v2, v4, Lx9/n5;->f:Ljava/lang/String;

    .line 247
    .line 248
    iget v1, v4, Lx9/n5;->a:I

    .line 249
    .line 250
    if-ne v1, v6, :cond_8

    .line 251
    .line 252
    new-instance v1, Lba/f;

    .line 253
    .line 254
    invoke-direct {v1, v3, v4}, Lba/f;-><init>(ILx9/n5;)V

    .line 255
    .line 256
    .line 257
    new-instance v2, Lmc/c;

    .line 258
    .line 259
    invoke-direct {v2, v7, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 263
    .line 264
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    goto :goto_3

    .line 277
    :cond_8
    if-ne v1, v3, :cond_9

    .line 278
    .line 279
    new-instance v1, Lba/f;

    .line 280
    .line 281
    const/4 v2, 0x4

    .line 282
    invoke-direct {v1, v2, v4}, Lba/f;-><init>(ILx9/n5;)V

    .line 283
    .line 284
    .line 285
    new-instance v2, Lmc/c;

    .line 286
    .line 287
    invoke-direct {v2, v7, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 291
    .line 292
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    goto :goto_3

    .line 305
    :cond_9
    const/16 v2, 0x14

    .line 306
    .line 307
    if-ne v1, v2, :cond_a

    .line 308
    .line 309
    new-instance v1, Lba/f;

    .line 310
    .line 311
    const/4 v2, 0x6

    .line 312
    invoke-direct {v1, v2, v4}, Lba/f;-><init>(ILx9/n5;)V

    .line 313
    .line 314
    .line 315
    new-instance v2, Lmc/c;

    .line 316
    .line 317
    invoke-direct {v2, v7, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 321
    .line 322
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    :cond_a
    :goto_3
    if-nez v5, :cond_b

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_b
    new-instance v1, Lha/p0;

    .line 338
    .line 339
    const/16 v2, 0x1c

    .line 340
    .line 341
    invoke-direct {v1, v2, v8}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v5, v1}, Lec/b;->b(Lec/e;)V

    .line 345
    .line 346
    .line 347
    :goto_4
    return-void

    .line 348
    :pswitch_a
    check-cast v8, Lha/w;

    .line 349
    .line 350
    iget-object v1, v8, Lha/w;->n:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v1, Landroid/widget/TextView;

    .line 353
    .line 354
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    const-string v2, "\u53d6\u6d88\u4e0b\u8f7d"

    .line 363
    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    if-eqz v2, :cond_c

    .line 369
    .line 370
    invoke-virtual {v8}, Lha/w;->dismiss()V

    .line 371
    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_c
    const-string v2, "\u91cd\u65b0\u5c1d\u8bd5"

    .line 375
    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-eqz v1, :cond_d

    .line 381
    .line 382
    invoke-virtual {v8}, Lha/w;->a()V

    .line 383
    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_d
    invoke-virtual {v8}, Lha/w;->dismiss()V

    .line 387
    .line 388
    .line 389
    :goto_5
    return-void

    .line 390
    :pswitch_b
    check-cast v8, Lha/se;

    .line 391
    .line 392
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    invoke-static {v4, v1}, Lcom/bumptech/glide/c;->i(ILandroid/view/View;)V

    .line 396
    .line 397
    .line 398
    iget-object v1, v8, Lha/se;->l:Landroid/widget/TextView;

    .line 399
    .line 400
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-eqz v1, :cond_e

    .line 413
    .line 414
    goto :goto_6

    .line 415
    :cond_e
    iget-object v1, v8, Lha/se;->l:Landroid/widget/TextView;

    .line 416
    .line 417
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    .line 419
    .line 420
    iget-object v1, v8, Lha/se;->i:Landroid/widget/EditText;

    .line 421
    .line 422
    invoke-static {v1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    iget-object v2, v8, Lha/se;->g:Lx9/n5;

    .line 427
    .line 428
    iput-object v1, v2, Lx9/n5;->c:Ljava/lang/String;

    .line 429
    .line 430
    iget-object v1, v8, Lha/se;->j:Landroid/widget/EditText;

    .line 431
    .line 432
    invoke-static {v1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    iput-object v1, v2, Lx9/n5;->e:Ljava/lang/String;

    .line 437
    .line 438
    iget-object v1, v8, Lha/se;->k:Landroid/widget/EditText;

    .line 439
    .line 440
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    iput-object v1, v2, Lx9/n5;->f:Ljava/lang/String;

    .line 449
    .line 450
    new-instance v1, Lba/f;

    .line 451
    .line 452
    const/16 v3, 0x11

    .line 453
    .line 454
    invoke-direct {v1, v3, v2}, Lba/f;-><init>(ILx9/n5;)V

    .line 455
    .line 456
    .line 457
    new-instance v2, Lmc/c;

    .line 458
    .line 459
    invoke-direct {v2, v7, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 463
    .line 464
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    new-instance v2, Lha/p0;

    .line 477
    .line 478
    const/16 v3, 0x1a

    .line 479
    .line 480
    invoke-direct {v2, v3, v8}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 484
    .line 485
    .line 486
    :goto_6
    return-void

    .line 487
    :pswitch_c
    check-cast v8, Lha/ke;

    .line 488
    .line 489
    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 490
    .line 491
    .line 492
    return-void

    .line 493
    :pswitch_d
    check-cast v8, Lha/md;

    .line 494
    .line 495
    iget-boolean v1, v8, Lha/md;->k:Z

    .line 496
    .line 497
    if-eqz v1, :cond_f

    .line 498
    .line 499
    goto :goto_7

    .line 500
    :cond_f
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 501
    .line 502
    .line 503
    iput-boolean v6, v8, Lha/md;->k:Z

    .line 504
    .line 505
    new-instance v1, Lha/ld;

    .line 506
    .line 507
    invoke-direct {v1, v8}, Lha/ld;-><init>(Lha/md;)V

    .line 508
    .line 509
    .line 510
    new-instance v2, Lmc/c;

    .line 511
    .line 512
    invoke-direct {v2, v7, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 516
    .line 517
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    new-instance v2, Lha/p0;

    .line 530
    .line 531
    const/16 v3, 0x17

    .line 532
    .line 533
    invoke-direct {v2, v3, v8}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 537
    .line 538
    .line 539
    :goto_7
    return-void

    .line 540
    :pswitch_e
    check-cast v8, Lha/d2;

    .line 541
    .line 542
    iget-object v1, v8, Lha/d2;->h:Ljava/lang/Object;

    .line 543
    .line 544
    check-cast v1, Ljava/lang/String;

    .line 545
    .line 546
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 547
    .line 548
    .line 549
    move-result v1

    .line 550
    if-nez v1, :cond_11

    .line 551
    .line 552
    iget-object v1, v8, Lha/d2;->j:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast v1, Ljava/lang/String;

    .line 555
    .line 556
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    if-eqz v1, :cond_10

    .line 561
    .line 562
    goto :goto_8

    .line 563
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .line 567
    .line 568
    iget-object v2, v8, Lha/d2;->h:Ljava/lang/Object;

    .line 569
    .line 570
    check-cast v2, Ljava/lang/String;

    .line 571
    .line 572
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    const-string v2, "|"

    .line 576
    .line 577
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    iget-object v2, v8, Lha/d2;->j:Ljava/lang/Object;

    .line 581
    .line 582
    check-cast v2, Ljava/lang/String;

    .line 583
    .line 584
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    iget-object v2, v8, Lha/d2;->i:Ljava/lang/Object;

    .line 592
    .line 593
    check-cast v2, Lha/h8;

    .line 594
    .line 595
    invoke-virtual {v2, v1}, Lha/h8;->a(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 599
    .line 600
    .line 601
    goto :goto_9

    .line 602
    :cond_11
    :goto_8
    const-string v1, "\u8bf7\u9009\u62e9\u5e94\u7528"

    .line 603
    .line 604
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 605
    .line 606
    .line 607
    :goto_9
    return-void

    .line 608
    :pswitch_f
    check-cast v8, Lha/qc;

    .line 609
    .line 610
    invoke-virtual {v8}, Lha/qc;->dismiss()V

    .line 611
    .line 612
    .line 613
    return-void

    .line 614
    :pswitch_10
    check-cast v8, Lha/lc;

    .line 615
    .line 616
    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 617
    .line 618
    .line 619
    new-instance v1, Lha/z6;

    .line 620
    .line 621
    new-instance v2, Lha/kc;

    .line 622
    .line 623
    invoke-direct {v2, v8, v7}, Lha/kc;-><init>(Lha/lc;I)V

    .line 624
    .line 625
    .line 626
    iget-object v10, v8, Lha/a4;->a:Landroid/app/Activity;

    .line 627
    .line 628
    iget-object v11, v8, Lha/a4;->b:Landroid/content/Context;

    .line 629
    .line 630
    const-string v15, "\u4fdd\u5b58\u793a\u8303\u6587\u4ef6"

    .line 631
    .line 632
    const/16 v17, 0x0

    .line 633
    .line 634
    const-string v12, "\u70b9\u51fb\u3010\u4fdd\u5b58\u793a\u8303\u6587\u4ef6\u3011\uff0c\u4f1a\u5728\u3010\u5185\u90e8\u5b58\u50a8\u3011\u91cc\u4fdd\u5b58\u4e00\u4e2a\u5feb\u6377\u547d\u4ee4.txt\uff0c\u7136\u540e\u5728\u91cc\u9762\u76f4\u63a5\u4fee\u6539\u5373\u53ef"

    .line 635
    .line 636
    const-string v13, "\u8bf7\u52a1\u5fc5\u6839\u636e\u91cc\u9762\u7684\u683c\u5f0f\u6216\u8bf4\u660e\u8fdb\u884c\u7f16\u5199"

    .line 637
    .line 638
    const-string v14, "\u597d\u7684"

    .line 639
    .line 640
    move-object v9, v1

    .line 641
    move-object/from16 v16, v2

    .line 642
    .line 643
    invoke-direct/range {v9 .. v17}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;I)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 647
    .line 648
    .line 649
    return-void

    .line 650
    :pswitch_11
    check-cast v8, Lha/jc;

    .line 651
    .line 652
    invoke-virtual {v8}, Lha/jc;->dismiss()V

    .line 653
    .line 654
    .line 655
    return-void

    .line 656
    :pswitch_12
    check-cast v8, Lha/w;

    .line 657
    .line 658
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    .line 660
    .line 661
    invoke-static {v4, v1}, Lcom/bumptech/glide/c;->i(ILandroid/view/View;)V

    .line 662
    .line 663
    .line 664
    iget-object v1, v8, Lha/w;->j:Landroid/widget/TextView;

    .line 665
    .line 666
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result v1

    .line 678
    if-eqz v1, :cond_12

    .line 679
    .line 680
    goto :goto_a

    .line 681
    :cond_12
    iget-object v1, v8, Lha/w;->j:Landroid/widget/TextView;

    .line 682
    .line 683
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    .line 685
    .line 686
    iget-object v1, v8, Lha/w;->m:Landroid/view/View;

    .line 687
    .line 688
    check-cast v1, Landroid/widget/EditText;

    .line 689
    .line 690
    invoke-static {v1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    iget-object v2, v8, Lha/w;->k:Ljava/lang/Object;

    .line 695
    .line 696
    check-cast v2, Lx9/n5;

    .line 697
    .line 698
    iput-object v1, v2, Lx9/n5;->c:Ljava/lang/String;

    .line 699
    .line 700
    iget-object v1, v8, Lha/w;->n:Ljava/lang/Object;

    .line 701
    .line 702
    check-cast v1, Landroid/widget/EditText;

    .line 703
    .line 704
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    iput v1, v2, Lx9/n5;->d:I

    .line 721
    .line 722
    iget-object v1, v8, Lha/w;->p:Ljava/lang/Object;

    .line 723
    .line 724
    check-cast v1, Landroid/widget/EditText;

    .line 725
    .line 726
    invoke-static {v1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    iput-object v1, v2, Lx9/n5;->e:Ljava/lang/String;

    .line 731
    .line 732
    iget-object v1, v8, Lha/w;->q:Ljava/lang/Object;

    .line 733
    .line 734
    check-cast v1, Landroid/widget/EditText;

    .line 735
    .line 736
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    iput-object v1, v2, Lx9/n5;->f:Ljava/lang/String;

    .line 745
    .line 746
    new-instance v1, Lba/f;

    .line 747
    .line 748
    const/16 v3, 0xd

    .line 749
    .line 750
    invoke-direct {v1, v3, v2}, Lba/f;-><init>(ILx9/n5;)V

    .line 751
    .line 752
    .line 753
    new-instance v2, Lmc/c;

    .line 754
    .line 755
    invoke-direct {v2, v7, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 756
    .line 757
    .line 758
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 759
    .line 760
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 761
    .line 762
    .line 763
    move-result-object v1

    .line 764
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 765
    .line 766
    .line 767
    move-result-object v2

    .line 768
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    new-instance v2, Lha/p0;

    .line 773
    .line 774
    const/16 v3, 0x15

    .line 775
    .line 776
    invoke-direct {v2, v3, v8}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 780
    .line 781
    .line 782
    :goto_a
    return-void

    .line 783
    :pswitch_13
    check-cast v8, Lha/i;

    .line 784
    .line 785
    invoke-static {v8}, Lha/i;->a(Lha/i;)V

    .line 786
    .line 787
    .line 788
    return-void

    .line 789
    :pswitch_14
    check-cast v8, Lha/kb;

    .line 790
    .line 791
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    .line 793
    .line 794
    new-instance v1, Lha/fa;

    .line 795
    .line 796
    const/4 v2, 0x3

    .line 797
    new-array v2, v2, [Ljava/lang/String;

    .line 798
    .line 799
    const-string v4, "\u81ea\u52a8"

    .line 800
    .line 801
    aput-object v4, v2, v7

    .line 802
    .line 803
    const-string v4, "\u6a2a\u5c4f"

    .line 804
    .line 805
    aput-object v4, v2, v6

    .line 806
    .line 807
    const-string v4, "\u7ad6\u5c4f"

    .line 808
    .line 809
    aput-object v4, v2, v3

    .line 810
    .line 811
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 812
    .line 813
    .line 814
    move-result-object v13

    .line 815
    new-instance v14, Lha/jb;

    .line 816
    .line 817
    invoke-direct {v14, v8}, Lha/jb;-><init>(Lha/kb;)V

    .line 818
    .line 819
    .line 820
    iget-object v11, v8, Lha/a4;->b:Landroid/content/Context;

    .line 821
    .line 822
    const/4 v12, 0x0

    .line 823
    iget-object v10, v8, Lha/a4;->a:Landroid/app/Activity;

    .line 824
    .line 825
    move-object v9, v1

    .line 826
    invoke-direct/range {v9 .. v14}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 830
    .line 831
    .line 832
    return-void

    .line 833
    :pswitch_15
    check-cast v8, Lha/hb;

    .line 834
    .line 835
    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 836
    .line 837
    .line 838
    return-void

    .line 839
    :pswitch_16
    check-cast v8, Lha/fb;

    .line 840
    .line 841
    invoke-static {v8}, Lha/fb;->a(Lha/fb;)V

    .line 842
    .line 843
    .line 844
    return-void

    .line 845
    :pswitch_17
    check-cast v8, Lha/i;

    .line 846
    .line 847
    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 848
    .line 849
    .line 850
    return-void

    .line 851
    :pswitch_18
    check-cast v8, Lha/sa;

    .line 852
    .line 853
    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 854
    .line 855
    .line 856
    return-void

    .line 857
    :pswitch_19
    check-cast v8, Lha/ma;

    .line 858
    .line 859
    iput-object v5, v8, Lha/ma;->k:Lha/la;

    .line 860
    .line 861
    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 862
    .line 863
    .line 864
    return-void

    .line 865
    :pswitch_1a
    check-cast v8, Lha/v9;

    .line 866
    .line 867
    iget-object v1, v8, Lha/v9;->q:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 868
    .line 869
    iput-boolean v6, v1, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 870
    .line 871
    invoke-virtual {v8}, Lha/v9;->dismiss()V

    .line 872
    .line 873
    .line 874
    return-void

    .line 875
    :pswitch_1b
    check-cast v8, Lha/u9;

    .line 876
    .line 877
    invoke-virtual {v8}, Lha/u9;->a()V

    .line 878
    .line 879
    .line 880
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 881
    .line 882
    .line 883
    move-result-object v1

    .line 884
    const-string v2, "\u5173\u95ed\u5e94\u7528"

    .line 885
    .line 886
    invoke-virtual {v1, v2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 887
    .line 888
    .line 889
    return-void

    .line 890
    :pswitch_1c
    check-cast v8, Lha/i9;

    .line 891
    .line 892
    iget-object v1, v8, Lha/i9;->A:Lz7/s;

    .line 893
    .line 894
    const-string v2, "isOpen"

    .line 895
    .line 896
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 897
    .line 898
    .line 899
    move-result-object v3

    .line 900
    invoke-virtual {v3}, Lz7/p;->b()Z

    .line 901
    .line 902
    .line 903
    move-result v3

    .line 904
    iget-object v4, v8, Lha/i9;->i:Landroid/widget/ImageView;

    .line 905
    .line 906
    if-nez v3, :cond_13

    .line 907
    .line 908
    const v5, 0x7f080234

    .line 909
    .line 910
    .line 911
    goto :goto_b

    .line 912
    :cond_13
    const v5, 0x7f080237

    .line 913
    .line 914
    .line 915
    :goto_b
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 916
    .line 917
    .line 918
    xor-int/2addr v3, v6

    .line 919
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 920
    .line 921
    .line 922
    move-result-object v3

    .line 923
    invoke-virtual {v1, v2, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 924
    .line 925
    .line 926
    return-void

    .line 927
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
