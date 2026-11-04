.class public final synthetic Lc6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lc6/c;->a:I

    iput-object p1, p0, Lc6/c;->b:Ljava/lang/Object;

    iput-object p3, p0, Lc6/c;->c:Ljava/lang/Object;

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
    const-string v2, ">"

    .line 4
    .line 5
    const-string v3, "|"

    .line 6
    .line 7
    const-string v4, "<"

    .line 8
    .line 9
    const-string v5, "\""

    .line 10
    .line 11
    const-string v6, "\\"

    .line 12
    .line 13
    const-string v7, "?"

    .line 14
    .line 15
    const-string v8, "*"

    .line 16
    .line 17
    const-string v9, ":"

    .line 18
    .line 19
    const-string v10, "/"

    .line 20
    .line 21
    const-string v11, "\u0661"

    .line 22
    .line 23
    const-string v12, "str1"

    .line 24
    .line 25
    const-string v13, "\uff1a"

    .line 26
    .line 27
    const-string v14, "name"

    .line 28
    .line 29
    const-string v15, "gnType"

    .line 30
    .line 31
    const-string v1, "keyType"

    .line 32
    .line 33
    const v16, 0x7f080237

    .line 34
    .line 35
    .line 36
    move-object/from16 v17, v2

    .line 37
    .line 38
    iget-object v2, v0, Lc6/c;->c:Ljava/lang/Object;

    .line 39
    .line 40
    move-object/from16 v18, v3

    .line 41
    .line 42
    iget-object v3, v0, Lc6/c;->b:Ljava/lang/Object;

    .line 43
    .line 44
    move-object/from16 v19, v4

    .line 45
    .line 46
    iget v4, v0, Lc6/c;->a:I

    .line 47
    .line 48
    packed-switch v4, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    sget v1, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->F:I

    .line 52
    .line 53
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    const-string v1, "\u6b64\u529f\u80fd\u4e0d\u652f\u6301\u9065\u63a7\u5668\u70b9\u51fb"

    .line 67
    .line 68
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const/4 v1, -0x1

    .line 73
    invoke-virtual {v3, v1}, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->y(I)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void

    .line 77
    :pswitch_0
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityFloatButton;

    .line 78
    .line 79
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 80
    .line 81
    const-string v4, "isOpen"

    .line 82
    .line 83
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v5}, Lz7/p;->b()Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    const/4 v6, 0x1

    .line 92
    xor-int/2addr v5, v6

    .line 93
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v1, v4, v5}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v3, Lda/g;->A:Lda/g;

    .line 101
    .line 102
    iget-object v5, v3, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 103
    .line 104
    invoke-static {v1, v5}, Lq4/a;->O(Landroid/content/Context;Lz7/s;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 108
    .line 109
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_1

    .line 118
    .line 119
    const v1, 0x7f080234

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    const v1, 0x7f080237

    .line 124
    .line 125
    .line 126
    :goto_1
    check-cast v2, Landroid/widget/ImageView;

    .line 127
    .line 128
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :pswitch_1
    sget v1, Lcom/yunpan/appmanage/ui/ActivityAutoClickUsbSet;->E:I

    .line 133
    .line 134
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityAutoClickUsbSet;

    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 140
    .line 141
    iget-boolean v4, v1, Lwa/u;->W:Z

    .line 142
    .line 143
    const/4 v5, 0x1

    .line 144
    xor-int/2addr v4, v5

    .line 145
    :try_start_0
    iput-boolean v4, v1, Lwa/u;->W:Z

    .line 146
    .line 147
    iget-object v5, v1, Lwa/u;->b:Lz7/s;

    .line 148
    .line 149
    const-string v6, "AutoClick_USB_OTG_AUTHORIZED_BOOTSTART"

    .line 150
    .line 151
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v5, v6, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    .line 158
    :catch_0
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 159
    .line 160
    .line 161
    iget-object v1, v3, Lda/g;->A:Lda/g;

    .line 162
    .line 163
    invoke-static {v1}, Lta/m;->e(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 167
    .line 168
    iget-boolean v1, v1, Lwa/u;->W:Z

    .line 169
    .line 170
    if-eqz v1, :cond_2

    .line 171
    .line 172
    const v1, 0x7f080234

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_2
    const v1, 0x7f080237

    .line 177
    .line 178
    .line 179
    :goto_2
    check-cast v2, Landroid/widget/ImageView;

    .line 180
    .line 181
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_2
    check-cast v3, Lha/o1;

    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    check-cast v2, Landroid/widget/EditText;

    .line 191
    .line 192
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    iget-object v2, v3, Lha/o1;->h:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v2, Lua/i1;

    .line 203
    .line 204
    iget v4, v2, Lua/i1;->a:I

    .line 205
    .line 206
    packed-switch v4, :pswitch_data_1

    .line 207
    .line 208
    .line 209
    iget-object v2, v2, Lua/i1;->b:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v2, Lha/l4;

    .line 212
    .line 213
    iget-object v4, v2, Lha/l4;->e:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v4, Lua/i9;

    .line 216
    .line 217
    iget v2, v2, Lha/l4;->c:I

    .line 218
    .line 219
    invoke-virtual {v4, v2, v1}, Lua/i9;->p(ILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :pswitch_3
    iget-object v2, v2, Lua/i1;->b:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v2, Lha/h3;

    .line 226
    .line 227
    iget-object v2, v2, Lha/h3;->d:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v2, Lua/q8;

    .line 230
    .line 231
    invoke-virtual {v2, v1}, Lua/q8;->q(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :goto_3
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :pswitch_4
    check-cast v3, Landroid/widget/EditText;

    .line 239
    .line 240
    const-string v1, ""

    .line 241
    .line 242
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    check-cast v2, Landroid/widget/EditText;

    .line 246
    .line 247
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :pswitch_5
    check-cast v3, Lha/vc;

    .line 252
    .line 253
    iget-object v4, v3, Lha/vc;->i:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-eqz v4, :cond_3

    .line 260
    .line 261
    const-string v1, "\u8bf7\u9009\u62e9\u5e94\u7528"

    .line 262
    .line 263
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_3
    check-cast v2, Landroid/widget/EditText;

    .line 268
    .line 269
    invoke-static {v2}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    if-nez v4, :cond_4

    .line 278
    .line 279
    const-string v4, ","

    .line 280
    .line 281
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    array-length v4, v4

    .line 286
    const/4 v5, 0x4

    .line 287
    if-eq v4, v5, :cond_4

    .line 288
    .line 289
    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u5750\u6807"

    .line 290
    .line 291
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_4
    iget-object v4, v3, Lha/vc;->i:Ljava/lang/String;

    .line 296
    .line 297
    iget-object v5, v3, Lha/vc;->h:Lha/h8;

    .line 298
    .line 299
    iget v6, v5, Lha/h8;->b:I

    .line 300
    .line 301
    iget v7, v5, Lha/h8;->c:I

    .line 302
    .line 303
    iget-object v8, v5, Lha/h8;->d:Ljava/lang/String;

    .line 304
    .line 305
    iget-object v5, v5, Lha/h8;->e:Lea/e;

    .line 306
    .line 307
    :try_start_1
    new-instance v9, Lz7/s;

    .line 308
    .line 309
    invoke-direct {v9}, Lz7/s;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    invoke-virtual {v9, v1, v6}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 317
    .line 318
    .line 319
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v9, v15, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 324
    .line 325
    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const-string v6, " \uff08"

    .line 341
    .line 342
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    const-string v6, ")"

    .line 349
    .line 350
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {v9, v14, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v9, v12, v4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    const-string v1, "str2"

    .line 364
    .line 365
    invoke-virtual {v9, v1, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-interface {v5, v9}, Lea/e;->k(Lz7/s;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 369
    .line 370
    .line 371
    :catch_1
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 372
    .line 373
    .line 374
    :goto_4
    return-void

    .line 375
    :pswitch_6
    check-cast v3, Lha/vc;

    .line 376
    .line 377
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    new-instance v1, Lha/r0;

    .line 381
    .line 382
    new-instance v4, Ld2/w;

    .line 383
    .line 384
    check-cast v2, Landroid/widget/TextView;

    .line 385
    .line 386
    const/16 v5, 0x19

    .line 387
    .line 388
    invoke-direct {v4, v3, v5, v2}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    iget-object v2, v3, Lha/a4;->a:Landroid/app/Activity;

    .line 392
    .line 393
    iget-object v3, v3, Lha/a4;->b:Landroid/content/Context;

    .line 394
    .line 395
    const/4 v5, 0x1

    .line 396
    invoke-direct {v1, v2, v3, v5, v4}, Lha/r0;-><init>(Landroid/app/Activity;Landroid/content/Context;ILha/q0;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :pswitch_7
    check-cast v3, Lha/o1;

    .line 404
    .line 405
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    check-cast v2, Landroid/widget/EditText;

    .line 409
    .line 410
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-eqz v2, :cond_5

    .line 423
    .line 424
    const-string v1, "\u5173\u952e\u5b57\u4e0d\u80fd\u4e3a\u7a7a"

    .line 425
    .line 426
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 427
    .line 428
    .line 429
    goto :goto_6

    .line 430
    :cond_5
    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    if-nez v2, :cond_7

    .line 435
    .line 436
    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    if-nez v2, :cond_7

    .line 441
    .line 442
    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    if-nez v2, :cond_7

    .line 447
    .line 448
    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-nez v2, :cond_7

    .line 453
    .line 454
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    if-nez v2, :cond_7

    .line 459
    .line 460
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-nez v2, :cond_7

    .line 465
    .line 466
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    if-nez v2, :cond_7

    .line 471
    .line 472
    move-object/from16 v4, v19

    .line 473
    .line 474
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    if-nez v2, :cond_7

    .line 479
    .line 480
    move-object/from16 v12, v18

    .line 481
    .line 482
    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    if-nez v2, :cond_7

    .line 487
    .line 488
    move-object/from16 v13, v17

    .line 489
    .line 490
    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    if-eqz v2, :cond_6

    .line 495
    .line 496
    goto :goto_5

    .line 497
    :cond_6
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 498
    .line 499
    .line 500
    iget-object v2, v3, Lha/o1;->h:Ljava/lang/Object;

    .line 501
    .line 502
    check-cast v2, Lua/g6;

    .line 503
    .line 504
    iget-object v3, v2, Lua/g6;->c:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast v3, Lua/q8;

    .line 507
    .line 508
    iget-object v2, v2, Lua/g6;->b:Ljava/lang/Object;

    .line 509
    .line 510
    check-cast v2, Ljava/util/ArrayList;

    .line 511
    .line 512
    const/4 v4, 0x1

    .line 513
    invoke-virtual {v3, v4, v1, v2}, Lua/q8;->A(ZLjava/lang/String;Ljava/util/ArrayList;)V

    .line 514
    .line 515
    .line 516
    goto :goto_6

    .line 517
    :cond_7
    :goto_5
    const-string v1, "\u5173\u952e\u5b57\u4e0d\u80fd\u5e26\u6709\u7279\u6b8a\u7b26\u53f7\uff01"

    .line 518
    .line 519
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 520
    .line 521
    .line 522
    :goto_6
    return-void

    .line 523
    :pswitch_8
    move-object/from16 v13, v17

    .line 524
    .line 525
    move-object/from16 v12, v18

    .line 526
    .line 527
    move-object/from16 v4, v19

    .line 528
    .line 529
    check-cast v3, Lha/hb;

    .line 530
    .line 531
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 535
    .line 536
    .line 537
    check-cast v2, Landroid/widget/EditText;

    .line 538
    .line 539
    invoke-static {v2}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 544
    .line 545
    .line 546
    move-result v2

    .line 547
    if-eqz v2, :cond_8

    .line 548
    .line 549
    const-string v1, "\u6587\u4ef6\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    .line 550
    .line 551
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 552
    .line 553
    .line 554
    goto/16 :goto_a

    .line 555
    .line 556
    :cond_8
    iget-object v2, v3, Lha/hb;->g:Lx9/w3;

    .line 557
    .line 558
    iget-object v14, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v14

    .line 564
    if-eqz v14, :cond_9

    .line 565
    .line 566
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 567
    .line 568
    .line 569
    :cond_9
    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 570
    .line 571
    .line 572
    move-result v11

    .line 573
    if-nez v11, :cond_e

    .line 574
    .line 575
    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 576
    .line 577
    .line 578
    move-result v11

    .line 579
    if-nez v11, :cond_e

    .line 580
    .line 581
    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 582
    .line 583
    .line 584
    move-result v9

    .line 585
    if-nez v9, :cond_e

    .line 586
    .line 587
    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 588
    .line 589
    .line 590
    move-result v8

    .line 591
    if-nez v8, :cond_e

    .line 592
    .line 593
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 594
    .line 595
    .line 596
    move-result v7

    .line 597
    if-nez v7, :cond_e

    .line 598
    .line 599
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 600
    .line 601
    .line 602
    move-result v6

    .line 603
    if-nez v6, :cond_e

    .line 604
    .line 605
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 606
    .line 607
    .line 608
    move-result v5

    .line 609
    if-nez v5, :cond_e

    .line 610
    .line 611
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 612
    .line 613
    .line 614
    move-result v4

    .line 615
    if-nez v4, :cond_e

    .line 616
    .line 617
    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 618
    .line 619
    .line 620
    move-result v4

    .line 621
    if-nez v4, :cond_e

    .line 622
    .line 623
    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 624
    .line 625
    .line 626
    move-result v4

    .line 627
    if-eqz v4, :cond_a

    .line 628
    .line 629
    goto :goto_9

    .line 630
    :cond_a
    iget v4, v3, Lha/hb;->i:I

    .line 631
    .line 632
    if-eqz v4, :cond_c

    .line 633
    .line 634
    const/4 v5, 0x1

    .line 635
    if-ne v4, v5, :cond_b

    .line 636
    .line 637
    goto :goto_7

    .line 638
    :cond_b
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 639
    .line 640
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 641
    .line 642
    new-instance v5, Ld2/w;

    .line 643
    .line 644
    const/16 v6, 0x16

    .line 645
    .line 646
    invoke-direct {v5, v3, v6, v1}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 647
    .line 648
    .line 649
    iput-object v5, v4, La2/w0;->c:Ljava/lang/Object;

    .line 650
    .line 651
    sget-object v3, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 652
    .line 653
    new-instance v5, La2/e0;

    .line 654
    .line 655
    const/16 v6, 0x8

    .line 656
    .line 657
    invoke-direct {v5, v4, v2, v1, v6}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 658
    .line 659
    .line 660
    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 661
    .line 662
    .line 663
    goto :goto_a

    .line 664
    :cond_c
    :goto_7
    sget-object v5, Lfa/b0;->a:La2/w0;

    .line 665
    .line 666
    new-instance v6, Ljava/lang/StringBuilder;

    .line 667
    .line 668
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 669
    .line 670
    .line 671
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 672
    .line 673
    invoke-static {v6, v2, v10, v1}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    const/4 v2, 0x1

    .line 678
    if-ne v4, v2, :cond_d

    .line 679
    .line 680
    const/4 v4, 0x1

    .line 681
    goto :goto_8

    .line 682
    :cond_d
    const/4 v4, 0x0

    .line 683
    :goto_8
    new-instance v6, Lha/p7;

    .line 684
    .line 685
    const/16 v7, 0xb

    .line 686
    .line 687
    invoke-direct {v6, v7, v3}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 688
    .line 689
    .line 690
    iput-object v6, v5, La2/w0;->c:Ljava/lang/Object;

    .line 691
    .line 692
    sget-object v3, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 693
    .line 694
    new-instance v6, Lfa/s;

    .line 695
    .line 696
    invoke-direct {v6, v5, v1, v4, v2}, Lfa/s;-><init>(La2/w0;Ljava/lang/String;ZI)V

    .line 697
    .line 698
    .line 699
    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 700
    .line 701
    .line 702
    goto :goto_a

    .line 703
    :cond_e
    :goto_9
    const-string v1, "\u6587\u4ef6\u540d\u4e0d\u80fd\u5e26\u6709\u7279\u6b8a\u7b26\u53f7"

    .line 704
    .line 705
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 706
    .line 707
    .line 708
    :goto_a
    return-void

    .line 709
    :pswitch_9
    check-cast v3, Lha/fb;

    .line 710
    .line 711
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 712
    .line 713
    .line 714
    check-cast v2, Landroid/widget/LinearLayout;

    .line 715
    .line 716
    const/16 v1, 0x8

    .line 717
    .line 718
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 719
    .line 720
    .line 721
    new-instance v1, Lfg/b;

    .line 722
    .line 723
    new-instance v2, Lha/db;

    .line 724
    .line 725
    const/4 v4, 0x0

    .line 726
    invoke-direct {v2, v4, v3}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 727
    .line 728
    .line 729
    const/4 v3, 0x1

    .line 730
    invoke-direct {v1, v2, v3}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 734
    .line 735
    .line 736
    return-void

    .line 737
    :pswitch_a
    check-cast v3, Lha/oa;

    .line 738
    .line 739
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 740
    .line 741
    .line 742
    check-cast v2, Landroid/widget/CheckBox;

    .line 743
    .line 744
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 745
    .line 746
    .line 747
    move-result v1

    .line 748
    if-eqz v1, :cond_10

    .line 749
    .line 750
    iget-object v1, v3, Lha/oa;->h:Ljava/lang/String;

    .line 751
    .line 752
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 753
    .line 754
    .line 755
    move-result v1

    .line 756
    if-nez v1, :cond_f

    .line 757
    .line 758
    const-string v1, "\u8bbe\u4e3a\u9ed8\u8ba4\u6253\u5f00"

    .line 759
    .line 760
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    .line 762
    .line 763
    goto :goto_b

    .line 764
    :cond_f
    const-string v1, "\u6b64\u6587\u4ef6\u65e0\u540e\u7f00\uff0c\u65e0\u6cd5\u8bbe\u9ed8\u8ba4"

    .line 765
    .line 766
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 767
    .line 768
    .line 769
    const/4 v1, 0x0

    .line 770
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 771
    .line 772
    .line 773
    goto :goto_b

    .line 774
    :cond_10
    const-string v1, "\u9009\u62e9\u6253\u5f00\u65b9\u5f0f"

    .line 775
    .line 776
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    .line 778
    .line 779
    :goto_b
    return-void

    .line 780
    :pswitch_b
    check-cast v3, Lha/ba;

    .line 781
    .line 782
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    .line 784
    .line 785
    check-cast v2, Landroid/widget/TextView;

    .line 786
    .line 787
    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    .line 788
    .line 789
    .line 790
    move-result v1

    .line 791
    if-eqz v1, :cond_11

    .line 792
    .line 793
    const-string v1, "\u7981\u6b62\u9065\u63a7\u5668\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 794
    .line 795
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 796
    .line 797
    .line 798
    goto/16 :goto_d

    .line 799
    .line 800
    :cond_11
    iget-object v1, v3, Lha/ba;->g:Landroid/widget/TextView;

    .line 801
    .line 802
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    const-string v2, "\u5f00\u59cb\u76d1\u542c"

    .line 807
    .line 808
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    move-result v1

    .line 812
    if-nez v1, :cond_12

    .line 813
    .line 814
    const-string v1, "\u8bf7\u5148\u505c\u6b62\u76d1\u542c\u65e5\u5fd7"

    .line 815
    .line 816
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 817
    .line 818
    .line 819
    goto :goto_d

    .line 820
    :cond_12
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    iget-object v2, v3, Lha/a4;->b:Landroid/content/Context;

    .line 825
    .line 826
    invoke-static {v2, v1}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 827
    .line 828
    .line 829
    move-result v1

    .line 830
    if-nez v1, :cond_13

    .line 831
    .line 832
    invoke-static {v2}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 833
    .line 834
    .line 835
    move-result-object v1

    .line 836
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 837
    .line 838
    .line 839
    move-result-object v2

    .line 840
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    new-instance v2, Lg2/c;

    .line 845
    .line 846
    const/16 v3, 0x12

    .line 847
    .line 848
    invoke-direct {v2, v3}, Lg2/c;-><init>(I)V

    .line 849
    .line 850
    .line 851
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 852
    .line 853
    .line 854
    goto :goto_d

    .line 855
    :cond_13
    iget-object v1, v3, Lha/ba;->n:Ljava/util/ArrayList;

    .line 856
    .line 857
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 858
    .line 859
    .line 860
    iget-object v2, v3, Lha/ba;->i:Lx9/t0;

    .line 861
    .line 862
    invoke-virtual {v2, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 863
    .line 864
    .line 865
    iget-object v1, v3, Lha/ba;->k:Landroid/widget/TextView;

    .line 866
    .line 867
    const-string v2, "0"

    .line 868
    .line 869
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    .line 871
    .line 872
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 873
    .line 874
    new-instance v2, Lv8/a;

    .line 875
    .line 876
    invoke-direct {v2, v1}, Lv8/a;-><init>(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 877
    .line 878
    .line 879
    const v1, 0x7f0e0212

    .line 880
    .line 881
    .line 882
    invoke-virtual {v2, v1}, Lv8/a;->j(I)V

    .line 883
    .line 884
    .line 885
    const-string v1, "LogcatDialog"

    .line 886
    .line 887
    iput-object v1, v2, Lv8/a;->h:Ljava/lang/String;

    .line 888
    .line 889
    const/16 v1, 0x100

    .line 890
    .line 891
    invoke-virtual {v2, v1}, Lv8/a;->a(I)V

    .line 892
    .line 893
    .line 894
    const/16 v1, 0x200

    .line 895
    .line 896
    invoke-virtual {v2, v1}, Lv8/a;->a(I)V

    .line 897
    .line 898
    .line 899
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 900
    .line 901
    const/16 v4, 0x1c

    .line 902
    .line 903
    if-lt v1, v4, :cond_14

    .line 904
    .line 905
    const/4 v1, 0x1

    .line 906
    goto :goto_c

    .line 907
    :cond_14
    const/4 v1, 0x0

    .line 908
    :goto_c
    invoke-virtual {v2, v1}, Lv8/a;->l(I)V

    .line 909
    .line 910
    .line 911
    new-instance v1, Lw8/b;

    .line 912
    .line 913
    const/4 v4, 0x0

    .line 914
    invoke-direct {v1, v4}, Lw8/b;-><init>(I)V

    .line 915
    .line 916
    .line 917
    invoke-virtual {v2, v1}, Lv8/a;->q(Lw8/b;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v2}, Lv8/a;->p()V

    .line 921
    .line 922
    .line 923
    new-instance v1, Lha/x9;

    .line 924
    .line 925
    invoke-direct {v1, v3}, Lha/x9;-><init>(Lha/ba;)V

    .line 926
    .line 927
    .line 928
    const v3, 0x7f0b03d2

    .line 929
    .line 930
    .line 931
    invoke-virtual {v2, v3, v1}, Lv8/a;->m(ILv8/c;)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v2}, Lv8/a;->d()V

    .line 935
    .line 936
    .line 937
    :goto_d
    return-void

    .line 938
    :pswitch_c
    check-cast v3, Lha/o1;

    .line 939
    .line 940
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 941
    .line 942
    .line 943
    check-cast v2, Landroid/widget/EditText;

    .line 944
    .line 945
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v2

    .line 957
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 958
    .line 959
    .line 960
    move-result v2

    .line 961
    const/4 v4, 0x1

    .line 962
    if-eq v2, v4, :cond_15

    .line 963
    .line 964
    const-string v1, "\u8bf7\u8f93\u5165\u8f66\u67b6\u53f7(VIN)\u6700\u540e\u4e00\u4f4d"

    .line 965
    .line 966
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 967
    .line 968
    .line 969
    goto :goto_f

    .line 970
    :cond_15
    iget-object v2, v3, Lha/o1;->h:Ljava/lang/Object;

    .line 971
    .line 972
    check-cast v2, Lha/o;

    .line 973
    .line 974
    if-eqz v2, :cond_17

    .line 975
    .line 976
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v1

    .line 980
    sget v4, Lcom/yunpan/appmanage/ui/ActivityNezha;->F:I

    .line 981
    .line 982
    iget-object v4, v2, Lha/o;->c:Ljava/lang/Object;

    .line 983
    .line 984
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityNezha;

    .line 985
    .line 986
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 987
    .line 988
    .line 989
    sget-object v5, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 990
    .line 991
    iput-object v1, v5, Lcom/yunpan/appmanage/util/w;->U:Ljava/lang/String;

    .line 992
    .line 993
    :try_start_2
    iget-object v6, v5, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 994
    .line 995
    const-string v7, "Nezha_VIN"

    .line 996
    .line 997
    invoke-virtual {v6, v7, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 998
    .line 999
    .line 1000
    :catch_2
    invoke-virtual {v5}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 1001
    .line 1002
    .line 1003
    invoke-static {}, Lcom/yunpan/appmanage/ui/ActivityNezha;->y()Z

    .line 1004
    .line 1005
    .line 1006
    move-result v1

    .line 1007
    if-eqz v1, :cond_16

    .line 1008
    .line 1009
    iget-object v1, v4, Lcom/yunpan/appmanage/ui/ActivityNezha;->D:Lx9/k3;

    .line 1010
    .line 1011
    iget v2, v2, Lha/o;->b:I

    .line 1012
    .line 1013
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v1

    .line 1017
    check-cast v1, Lx9/l3;

    .line 1018
    .line 1019
    const v5, 0x7f080234

    .line 1020
    .line 1021
    .line 1022
    iput v5, v1, Lx9/l3;->a:I

    .line 1023
    .line 1024
    iget-object v1, v4, Lcom/yunpan/appmanage/ui/ActivityNezha;->D:Lx9/k3;

    .line 1025
    .line 1026
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 1027
    .line 1028
    .line 1029
    const-string v1, "\u8bbe\u7f6e\u6210\u529f"

    .line 1030
    .line 1031
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    goto :goto_e

    .line 1035
    :cond_16
    const-string v1, "\u8bbe\u7f6e\u5931\u8d25"

    .line 1036
    .line 1037
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    :cond_17
    :goto_e
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1041
    .line 1042
    .line 1043
    :goto_f
    return-void

    .line 1044
    :pswitch_d
    check-cast v3, Lha/o1;

    .line 1045
    .line 1046
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1047
    .line 1048
    .line 1049
    check-cast v2, Landroid/widget/EditText;

    .line 1050
    .line 1051
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v1

    .line 1055
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v1

    .line 1059
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v1

    .line 1063
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 1064
    .line 1065
    .line 1066
    move-result v2

    .line 1067
    if-eqz v2, :cond_18

    .line 1068
    .line 1069
    const-string v1, "\u8bf7\u8f93\u5165"

    .line 1070
    .line 1071
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1072
    .line 1073
    .line 1074
    goto :goto_10

    .line 1075
    :cond_18
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1076
    .line 1077
    .line 1078
    move-result v1

    .line 1079
    const/4 v2, 0x1

    .line 1080
    if-ge v1, v2, :cond_19

    .line 1081
    .line 1082
    const-string v1, "\u65e0\u8bed\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01"

    .line 1083
    .line 1084
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1085
    .line 1086
    .line 1087
    goto :goto_10

    .line 1088
    :cond_19
    iget-object v2, v3, Lha/o1;->h:Ljava/lang/Object;

    .line 1089
    .line 1090
    check-cast v2, Lha/c9;

    .line 1091
    .line 1092
    if-eqz v2, :cond_1a

    .line 1093
    .line 1094
    iget-object v4, v2, Lha/c9;->a:Lha/e9;

    .line 1095
    .line 1096
    iget-object v5, v4, Lha/e9;->G:Lx9/y0;

    .line 1097
    .line 1098
    iget v2, v2, Lha/c9;->b:I

    .line 1099
    .line 1100
    invoke-virtual {v5, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v5

    .line 1104
    check-cast v5, Lx9/x0;

    .line 1105
    .line 1106
    iget-object v6, v4, Lha/e9;->G:Lx9/y0;

    .line 1107
    .line 1108
    invoke-virtual {v6, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v6

    .line 1112
    check-cast v6, Lx9/x0;

    .line 1113
    .line 1114
    iget-boolean v6, v6, Lx9/x0;->b:Z

    .line 1115
    .line 1116
    const/4 v7, 0x1

    .line 1117
    xor-int/2addr v6, v7

    .line 1118
    iput-boolean v6, v5, Lx9/x0;->b:Z

    .line 1119
    .line 1120
    iget-object v5, v4, Lha/e9;->G:Lx9/y0;

    .line 1121
    .line 1122
    invoke-virtual {v5, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v5

    .line 1126
    check-cast v5, Lx9/x0;

    .line 1127
    .line 1128
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    .line 1136
    const-string v7, "\u79d2\u5185\u4ec5\u89e6\u53d1\u4e00\u6b21"

    .line 1137
    .line 1138
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v6

    .line 1145
    iput-object v6, v5, Lx9/x0;->a:Ljava/lang/String;

    .line 1146
    .line 1147
    iget-object v5, v4, Lha/e9;->G:Lx9/y0;

    .line 1148
    .line 1149
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 1150
    .line 1151
    .line 1152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v1

    .line 1156
    iget-object v2, v4, Lha/e9;->A:Lz7/s;

    .line 1157
    .line 1158
    const-string v5, "OutTimeOneMap"

    .line 1159
    .line 1160
    invoke-virtual {v2, v5, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1161
    .line 1162
    .line 1163
    new-instance v1, Lha/z6;

    .line 1164
    .line 1165
    iget-object v2, v4, Lha/a4;->a:Landroid/app/Activity;

    .line 1166
    .line 1167
    iget-object v4, v4, Lha/a4;->b:Landroid/content/Context;

    .line 1168
    .line 1169
    const-string v5, "\u7279\u6b8a\u7528\u5904\uff1a\u67d0\u4e9b\u65f6\u5019\u627e\u4e0d\u5230\u552f\u4e00\u7684\u65e5\u5fd7\u65f6\uff01\u6bd4\u5982\uff1a\u67d0\u4e9b\u64cd\u4f5c\u4f1a\u51fa\u73b0\u591a\u6761\u76f8\u540c\u7684\u65e5\u5fd7\uff0c\u800c\u6211\u4eec\u521a\u597d\u5c31\u9700\u8981\u8fd9\u6761\u65e5\u5fd7\u65f6\uff0c\u90a3\u4e48\u52fe\u9009\u6b64\u9879\u53ef\u89e3\u51b3\u89e6\u53d1\u591a\u6b21\u7684\u70e6\u607c"

    .line 1170
    .line 1171
    const-string v6, "\u6ce8\uff1a\u6b64\u529f\u80fd\u4ec5\u76f8\u5bf9\u4e8e\uff08\u5355\u51fb\u64cd\u4f5c\uff09"

    .line 1172
    .line 1173
    invoke-direct {v1, v2, v4, v5, v6}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 1177
    .line 1178
    .line 1179
    :cond_1a
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1180
    .line 1181
    .line 1182
    :goto_10
    return-void

    .line 1183
    :pswitch_e
    check-cast v3, Lha/o1;

    .line 1184
    .line 1185
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1186
    .line 1187
    .line 1188
    check-cast v2, Landroid/widget/EditText;

    .line 1189
    .line 1190
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v1

    .line 1194
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v1

    .line 1198
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v1

    .line 1202
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 1203
    .line 1204
    .line 1205
    move-result v2

    .line 1206
    if-eqz v2, :cond_1b

    .line 1207
    .line 1208
    const-string v1, "\u8bf7\u8f93\u5165"

    .line 1209
    .line 1210
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1211
    .line 1212
    .line 1213
    goto :goto_11

    .line 1214
    :cond_1b
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1215
    .line 1216
    .line 1217
    move-result v1

    .line 1218
    const/4 v2, 0x1

    .line 1219
    if-ge v1, v2, :cond_1c

    .line 1220
    .line 1221
    const-string v1, "\u65e0\u8bed\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01"

    .line 1222
    .line 1223
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1224
    .line 1225
    .line 1226
    goto :goto_11

    .line 1227
    :cond_1c
    iget-object v2, v3, Lha/o1;->h:Ljava/lang/Object;

    .line 1228
    .line 1229
    check-cast v2, Lha/n7;

    .line 1230
    .line 1231
    if-eqz v2, :cond_1d

    .line 1232
    .line 1233
    invoke-interface {v2, v1}, Lha/n7;->h(I)V

    .line 1234
    .line 1235
    .line 1236
    :cond_1d
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1237
    .line 1238
    .line 1239
    :goto_11
    return-void

    .line 1240
    :pswitch_f
    check-cast v3, Lha/k7;

    .line 1241
    .line 1242
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1243
    .line 1244
    .line 1245
    check-cast v2, Landroid/widget/EditText;

    .line 1246
    .line 1247
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v2

    .line 1251
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v2

    .line 1255
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v2

    .line 1259
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1260
    .line 1261
    .line 1262
    move-result v4

    .line 1263
    if-eqz v4, :cond_1e

    .line 1264
    .line 1265
    const-string v1, "\u4e0d\u80fd\u4e3a\u7a7a"

    .line 1266
    .line 1267
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1268
    .line 1269
    .line 1270
    goto/16 :goto_13

    .line 1271
    .line 1272
    :cond_1e
    iget-object v4, v3, Lha/k7;->g:Lha/h8;

    .line 1273
    .line 1274
    iget-boolean v5, v3, Lha/k7;->j:Z

    .line 1275
    .line 1276
    iget v6, v4, Lha/h8;->a:I

    .line 1277
    .line 1278
    packed-switch v6, :pswitch_data_2

    .line 1279
    .line 1280
    .line 1281
    iget v5, v4, Lha/h8;->b:I

    .line 1282
    .line 1283
    iget v6, v4, Lha/h8;->c:I

    .line 1284
    .line 1285
    iget-object v7, v4, Lha/h8;->d:Ljava/lang/String;

    .line 1286
    .line 1287
    iget-object v4, v4, Lha/h8;->e:Lea/e;

    .line 1288
    .line 1289
    :try_start_3
    new-instance v8, Lz7/s;

    .line 1290
    .line 1291
    invoke-direct {v8}, Lz7/s;-><init>()V

    .line 1292
    .line 1293
    .line 1294
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v5

    .line 1298
    invoke-virtual {v8, v1, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1299
    .line 1300
    .line 1301
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v1

    .line 1305
    invoke-virtual {v8, v15, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1306
    .line 1307
    .line 1308
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1309
    .line 1310
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v1

    .line 1326
    invoke-virtual {v8, v14, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    .line 1328
    .line 1329
    invoke-virtual {v8, v12, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    .line 1331
    .line 1332
    invoke-interface {v4, v8}, Lea/e;->k(Lz7/s;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1333
    .line 1334
    .line 1335
    goto :goto_12

    .line 1336
    :pswitch_10
    iget v6, v4, Lha/h8;->b:I

    .line 1337
    .line 1338
    iget v7, v4, Lha/h8;->c:I

    .line 1339
    .line 1340
    iget-object v8, v4, Lha/h8;->d:Ljava/lang/String;

    .line 1341
    .line 1342
    iget-object v4, v4, Lha/h8;->e:Lea/e;

    .line 1343
    .line 1344
    :try_start_4
    new-instance v9, Lz7/s;

    .line 1345
    .line 1346
    invoke-direct {v9}, Lz7/s;-><init>()V

    .line 1347
    .line 1348
    .line 1349
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v6

    .line 1353
    invoke-virtual {v9, v1, v6}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1354
    .line 1355
    .line 1356
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v1

    .line 1360
    invoke-virtual {v9, v15, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1361
    .line 1362
    .line 1363
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1364
    .line 1365
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v1

    .line 1381
    invoke-virtual {v9, v14, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {v9, v12, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    .line 1386
    .line 1387
    const-string v1, "isBfb"

    .line 1388
    .line 1389
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v2

    .line 1393
    invoke-virtual {v9, v1, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1394
    .line 1395
    .line 1396
    invoke-interface {v4, v9}, Lea/e;->k(Lz7/s;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1397
    .line 1398
    .line 1399
    :catch_3
    :goto_12
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1400
    .line 1401
    .line 1402
    :goto_13
    return-void

    .line 1403
    :pswitch_11
    const v5, 0x7f080234

    .line 1404
    .line 1405
    .line 1406
    check-cast v3, Lha/k7;

    .line 1407
    .line 1408
    iget-boolean v1, v3, Lha/k7;->j:Z

    .line 1409
    .line 1410
    const/4 v4, 0x1

    .line 1411
    xor-int/2addr v4, v1

    .line 1412
    iput-boolean v4, v3, Lha/k7;->j:Z

    .line 1413
    .line 1414
    if-nez v1, :cond_1f

    .line 1415
    .line 1416
    goto :goto_14

    .line 1417
    :cond_1f
    const v5, 0x7f080237

    .line 1418
    .line 1419
    .line 1420
    :goto_14
    check-cast v2, Landroid/widget/ImageView;

    .line 1421
    .line 1422
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1423
    .line 1424
    .line 1425
    return-void

    .line 1426
    :pswitch_12
    check-cast v3, Lha/o1;

    .line 1427
    .line 1428
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1429
    .line 1430
    .line 1431
    check-cast v2, Landroid/widget/EditText;

    .line 1432
    .line 1433
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v1

    .line 1437
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v1

    .line 1441
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v1

    .line 1445
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 1446
    .line 1447
    .line 1448
    move-result v2

    .line 1449
    if-eqz v2, :cond_20

    .line 1450
    .line 1451
    const-string v1, "\u4e0d\u80fd\u4e3a\u7a7a"

    .line 1452
    .line 1453
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1454
    .line 1455
    .line 1456
    goto :goto_15

    .line 1457
    :cond_20
    iget-object v2, v3, Lha/o1;->h:Ljava/lang/Object;

    .line 1458
    .line 1459
    check-cast v2, Lha/h7;

    .line 1460
    .line 1461
    invoke-interface {v2, v1}, Lha/h7;->a(Ljava/lang/String;)V

    .line 1462
    .line 1463
    .line 1464
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1465
    .line 1466
    .line 1467
    :goto_15
    return-void

    .line 1468
    :pswitch_13
    move-object/from16 v13, v17

    .line 1469
    .line 1470
    move-object/from16 v12, v18

    .line 1471
    .line 1472
    move-object/from16 v4, v19

    .line 1473
    .line 1474
    check-cast v3, Lha/z6;

    .line 1475
    .line 1476
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1477
    .line 1478
    .line 1479
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 1480
    .line 1481
    .line 1482
    check-cast v2, Landroid/widget/EditText;

    .line 1483
    .line 1484
    invoke-static {v2}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v1

    .line 1488
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 1489
    .line 1490
    .line 1491
    move-result v2

    .line 1492
    if-eqz v2, :cond_21

    .line 1493
    .line 1494
    const-string v1, "\u4e0d\u80fd\u4e3a\u7a7a"

    .line 1495
    .line 1496
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1497
    .line 1498
    .line 1499
    goto :goto_16

    .line 1500
    :cond_21
    iget-boolean v2, v3, Lha/z6;->l:Z

    .line 1501
    .line 1502
    if-eqz v2, :cond_23

    .line 1503
    .line 1504
    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1505
    .line 1506
    .line 1507
    move-result v2

    .line 1508
    if-nez v2, :cond_22

    .line 1509
    .line 1510
    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1511
    .line 1512
    .line 1513
    move-result v2

    .line 1514
    if-nez v2, :cond_22

    .line 1515
    .line 1516
    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1517
    .line 1518
    .line 1519
    move-result v2

    .line 1520
    if-nez v2, :cond_22

    .line 1521
    .line 1522
    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1523
    .line 1524
    .line 1525
    move-result v2

    .line 1526
    if-nez v2, :cond_22

    .line 1527
    .line 1528
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1529
    .line 1530
    .line 1531
    move-result v2

    .line 1532
    if-nez v2, :cond_22

    .line 1533
    .line 1534
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1535
    .line 1536
    .line 1537
    move-result v2

    .line 1538
    if-nez v2, :cond_22

    .line 1539
    .line 1540
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1541
    .line 1542
    .line 1543
    move-result v2

    .line 1544
    if-nez v2, :cond_22

    .line 1545
    .line 1546
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1547
    .line 1548
    .line 1549
    move-result v2

    .line 1550
    if-nez v2, :cond_22

    .line 1551
    .line 1552
    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1553
    .line 1554
    .line 1555
    move-result v2

    .line 1556
    if-nez v2, :cond_22

    .line 1557
    .line 1558
    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1559
    .line 1560
    .line 1561
    move-result v2

    .line 1562
    if-eqz v2, :cond_23

    .line 1563
    .line 1564
    :cond_22
    const-string v1, "\u4e0d\u80fd\u5e26\u6709\u7279\u6b8a\u7b26\u53f7"

    .line 1565
    .line 1566
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1567
    .line 1568
    .line 1569
    goto :goto_16

    .line 1570
    :cond_23
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1571
    .line 1572
    .line 1573
    iget-object v2, v3, Lha/z6;->m:Ljava/lang/Object;

    .line 1574
    .line 1575
    check-cast v2, Lha/y6;

    .line 1576
    .line 1577
    const/4 v3, 0x1

    .line 1578
    invoke-interface {v2, v1, v3}, Lha/y6;->n(Ljava/lang/String;Z)V

    .line 1579
    .line 1580
    .line 1581
    :goto_16
    return-void

    .line 1582
    :pswitch_14
    check-cast v3, Lha/o1;

    .line 1583
    .line 1584
    iget-object v1, v3, Lha/o1;->h:Ljava/lang/Object;

    .line 1585
    .line 1586
    check-cast v1, Lh2/d;

    .line 1587
    .line 1588
    if-eqz v1, :cond_24

    .line 1589
    .line 1590
    check-cast v2, Landroid/widget/EditText;

    .line 1591
    .line 1592
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v2

    .line 1596
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v2

    .line 1600
    iget-object v4, v1, Lh2/d;->b:Ljava/lang/Object;

    .line 1601
    .line 1602
    check-cast v4, Lua/x7;

    .line 1603
    .line 1604
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1605
    .line 1606
    .line 1607
    sget-object v5, Lfa/a;->b:Lfa/e0;

    .line 1608
    .line 1609
    iput-object v2, v5, Lfa/e0;->g:Ljava/lang/String;

    .line 1610
    .line 1611
    iget-object v2, v1, Lh2/d;->d:Ljava/lang/Object;

    .line 1612
    .line 1613
    check-cast v2, Landroid/hardware/usb/UsbInterface;

    .line 1614
    .line 1615
    iget-boolean v5, v1, Lh2/d;->a:Z

    .line 1616
    .line 1617
    iget-object v1, v1, Lh2/d;->c:Ljava/lang/Object;

    .line 1618
    .line 1619
    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 1620
    .line 1621
    invoke-virtual {v4, v1, v2, v5}, Lua/x7;->o(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Z)V

    .line 1622
    .line 1623
    .line 1624
    :cond_24
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1625
    .line 1626
    .line 1627
    return-void

    .line 1628
    :pswitch_15
    check-cast v3, Lha/o1;

    .line 1629
    .line 1630
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1631
    .line 1632
    .line 1633
    check-cast v2, Landroid/widget/EditText;

    .line 1634
    .line 1635
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v1

    .line 1639
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v1

    .line 1643
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 1644
    .line 1645
    .line 1646
    move-result v2

    .line 1647
    if-eqz v2, :cond_25

    .line 1648
    .line 1649
    const-string v1, "5555"

    .line 1650
    .line 1651
    :cond_25
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1652
    .line 1653
    .line 1654
    move-result v1

    .line 1655
    const/16 v2, 0x7d0

    .line 1656
    .line 1657
    if-ge v1, v2, :cond_26

    .line 1658
    .line 1659
    const-string v1, "\u8bf7\u8bbe\u7f6e\u5927\u4e8e 2000 \u7684\u7aef\u53e3\u53f7"

    .line 1660
    .line 1661
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1662
    .line 1663
    .line 1664
    goto :goto_17

    .line 1665
    :cond_26
    const/high16 v2, 0x10000

    .line 1666
    .line 1667
    if-le v1, v2, :cond_27

    .line 1668
    .line 1669
    const-string v1, "\u8bf7\u52ff\u6076\u610f\u4fee\u6539"

    .line 1670
    .line 1671
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1672
    .line 1673
    .line 1674
    goto :goto_17

    .line 1675
    :cond_27
    iget-object v2, v3, Lha/o1;->h:Ljava/lang/Object;

    .line 1676
    .line 1677
    check-cast v2, Lha/pa;

    .line 1678
    .line 1679
    if-eqz v2, :cond_28

    .line 1680
    .line 1681
    iget-object v2, v2, Lha/pa;->a:Lha/sa;

    .line 1682
    .line 1683
    invoke-virtual {v2, v1}, Lha/sa;->a(I)V

    .line 1684
    .line 1685
    .line 1686
    :cond_28
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1687
    .line 1688
    .line 1689
    :goto_17
    return-void

    .line 1690
    :pswitch_16
    check-cast v3, Lha/n6;

    .line 1691
    .line 1692
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1693
    .line 1694
    .line 1695
    check-cast v2, Landroid/widget/TextView;

    .line 1696
    .line 1697
    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    .line 1698
    .line 1699
    .line 1700
    move-result v1

    .line 1701
    if-eqz v1, :cond_29

    .line 1702
    .line 1703
    const-string v1, "\u7981\u6b62\u9065\u63a7\u5668\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 1704
    .line 1705
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1706
    .line 1707
    .line 1708
    goto :goto_18

    .line 1709
    :cond_29
    iget-object v1, v3, Lha/n6;->h:Landroid/widget/TextView;

    .line 1710
    .line 1711
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v1

    .line 1715
    const-string v2, "\u76d1\u542c\u65e5\u5fd7"

    .line 1716
    .line 1717
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1718
    .line 1719
    .line 1720
    move-result v1

    .line 1721
    if-nez v1, :cond_2a

    .line 1722
    .line 1723
    const-string v1, "\u8bf7\u5148\u505c\u6b62\u76d1\u542c\u65e5\u5fd7"

    .line 1724
    .line 1725
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 1726
    .line 1727
    .line 1728
    goto :goto_18

    .line 1729
    :cond_2a
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1730
    .line 1731
    .line 1732
    move-result-object v1

    .line 1733
    iget-object v2, v3, Lha/a4;->b:Landroid/content/Context;

    .line 1734
    .line 1735
    invoke-static {v2, v1}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 1736
    .line 1737
    .line 1738
    move-result v1

    .line 1739
    if-nez v1, :cond_2b

    .line 1740
    .line 1741
    invoke-static {v2}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 1742
    .line 1743
    .line 1744
    move-result-object v1

    .line 1745
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v2

    .line 1749
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v1

    .line 1753
    new-instance v2, Lg2/c;

    .line 1754
    .line 1755
    const/16 v3, 0x9

    .line 1756
    .line 1757
    invoke-direct {v2, v3}, Lg2/c;-><init>(I)V

    .line 1758
    .line 1759
    .line 1760
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 1761
    .line 1762
    .line 1763
    goto :goto_18

    .line 1764
    :cond_2b
    new-instance v1, Lha/da;

    .line 1765
    .line 1766
    new-instance v4, Lha/l6;

    .line 1767
    .line 1768
    const/4 v5, 0x1

    .line 1769
    invoke-direct {v4, v3, v5}, Lha/l6;-><init>(Lha/n6;I)V

    .line 1770
    .line 1771
    .line 1772
    iget-object v3, v3, Lha/a4;->a:Landroid/app/Activity;

    .line 1773
    .line 1774
    invoke-direct {v1, v3, v2, v4}, Lha/da;-><init>(Landroid/app/Activity;Landroid/content/Context;Lha/l6;)V

    .line 1775
    .line 1776
    .line 1777
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 1778
    .line 1779
    .line 1780
    :goto_18
    return-void

    .line 1781
    :pswitch_17
    new-instance v1, Lha/j6;

    .line 1782
    .line 1783
    check-cast v3, Lha/e5;

    .line 1784
    .line 1785
    iget-object v4, v3, Lha/a4;->a:Landroid/app/Activity;

    .line 1786
    .line 1787
    iget-object v3, v3, Lha/a4;->b:Landroid/content/Context;

    .line 1788
    .line 1789
    invoke-direct {v1, v4, v3}, Lha/j6;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 1790
    .line 1791
    .line 1792
    new-instance v3, La1/d;

    .line 1793
    .line 1794
    check-cast v2, Landroid/widget/TextView;

    .line 1795
    .line 1796
    const/16 v4, 0x13

    .line 1797
    .line 1798
    invoke-direct {v3, v4, v2}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 1799
    .line 1800
    .line 1801
    invoke-virtual {v1, v3}, Lha/j6;->a(Lea/c;)V

    .line 1802
    .line 1803
    .line 1804
    return-void

    .line 1805
    :pswitch_18
    check-cast v3, Lha/o1;

    .line 1806
    .line 1807
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1808
    .line 1809
    .line 1810
    check-cast v2, Landroid/widget/EditText;

    .line 1811
    .line 1812
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v1

    .line 1816
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1817
    .line 1818
    .line 1819
    move-result-object v1

    .line 1820
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 1821
    .line 1822
    .line 1823
    move-result v2

    .line 1824
    if-eqz v2, :cond_2c

    .line 1825
    .line 1826
    const-string v1, "960"

    .line 1827
    .line 1828
    :cond_2c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1829
    .line 1830
    .line 1831
    move-result v1

    .line 1832
    const/16 v2, 0xf0

    .line 1833
    .line 1834
    if-lt v1, v2, :cond_2f

    .line 1835
    .line 1836
    const/16 v2, 0x1388

    .line 1837
    .line 1838
    if-le v1, v2, :cond_2d

    .line 1839
    .line 1840
    goto :goto_19

    .line 1841
    :cond_2d
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 1842
    .line 1843
    iget v4, v2, Lcom/yunpan/appmanage/util/w;->r:I

    .line 1844
    .line 1845
    if-ne v4, v1, :cond_2e

    .line 1846
    .line 1847
    const-string v1, "\u503c\u4e00\u6837\uff0c\u65e0\u66f4\u6539"

    .line 1848
    .line 1849
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1850
    .line 1851
    .line 1852
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1853
    .line 1854
    .line 1855
    goto :goto_1a

    .line 1856
    :cond_2e
    iput v1, v2, Lcom/yunpan/appmanage/util/w;->r:I

    .line 1857
    .line 1858
    :try_start_5
    iget-object v4, v2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1859
    .line 1860
    const-string v5, "AutoSizeWidthDp"

    .line 1861
    .line 1862
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1863
    .line 1864
    .line 1865
    move-result-object v1

    .line 1866
    invoke-virtual {v4, v5, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1867
    .line 1868
    .line 1869
    :catch_4
    invoke-virtual {v2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 1870
    .line 1871
    .line 1872
    new-instance v1, Lha/z6;

    .line 1873
    .line 1874
    new-instance v13, Lh5/m;

    .line 1875
    .line 1876
    const/4 v2, 0x5

    .line 1877
    invoke-direct {v13, v2, v3}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 1878
    .line 1879
    .line 1880
    const-string v9, "\u4fee\u6539\u540e\u9700\u8981\u91cd\u542f\u672c\u5e94\u7528\u65b9\u53ef\u751f\u6548"

    .line 1881
    .line 1882
    const-string v10, ""

    .line 1883
    .line 1884
    iget-object v7, v3, Lha/a4;->a:Landroid/app/Activity;

    .line 1885
    .line 1886
    iget-object v8, v3, Lha/a4;->b:Landroid/content/Context;

    .line 1887
    .line 1888
    const-string v11, "\u5173\u95ed\u5e94\u7528"

    .line 1889
    .line 1890
    const-string v12, ""

    .line 1891
    .line 1892
    move-object v6, v1

    .line 1893
    invoke-direct/range {v6 .. v13}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 1894
    .line 1895
    .line 1896
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 1897
    .line 1898
    .line 1899
    goto :goto_1a

    .line 1900
    :cond_2f
    :goto_19
    const-string v1, "\u8bf7\u52ff\u6076\u610f\u4fee\u6539"

    .line 1901
    .line 1902
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1903
    .line 1904
    .line 1905
    :goto_1a
    return-void

    .line 1906
    :pswitch_19
    new-instance v1, Lha/ie;

    .line 1907
    .line 1908
    check-cast v3, Lha/r3;

    .line 1909
    .line 1910
    iget-object v4, v3, Lha/r3;->D:Ljava/util/ArrayList;

    .line 1911
    .line 1912
    new-instance v5, Ld2/w;

    .line 1913
    .line 1914
    check-cast v2, Landroid/widget/TextView;

    .line 1915
    .line 1916
    const/16 v6, 0xb

    .line 1917
    .line 1918
    invoke-direct {v5, v3, v6, v2}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1919
    .line 1920
    .line 1921
    iget-object v2, v3, Lha/a4;->a:Landroid/app/Activity;

    .line 1922
    .line 1923
    iget-object v3, v3, Lha/a4;->b:Landroid/content/Context;

    .line 1924
    .line 1925
    invoke-direct {v1, v2, v3, v4, v5}, Lha/ie;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/he;)V

    .line 1926
    .line 1927
    .line 1928
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 1929
    .line 1930
    .line 1931
    return-void

    .line 1932
    :pswitch_1a
    new-instance v1, Lha/ie;

    .line 1933
    .line 1934
    check-cast v3, Lha/j3;

    .line 1935
    .line 1936
    iget-object v4, v3, Lha/j3;->F:Ljava/util/ArrayList;

    .line 1937
    .line 1938
    new-instance v5, Ld2/w;

    .line 1939
    .line 1940
    check-cast v2, Landroid/widget/TextView;

    .line 1941
    .line 1942
    const/16 v6, 0xa

    .line 1943
    .line 1944
    invoke-direct {v5, v3, v6, v2}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1945
    .line 1946
    .line 1947
    iget-object v2, v3, Lha/a4;->a:Landroid/app/Activity;

    .line 1948
    .line 1949
    iget-object v3, v3, Lha/a4;->b:Landroid/content/Context;

    .line 1950
    .line 1951
    invoke-direct {v1, v2, v3, v4, v5}, Lha/ie;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/he;)V

    .line 1952
    .line 1953
    .line 1954
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 1955
    .line 1956
    .line 1957
    return-void

    .line 1958
    :pswitch_1b
    const v5, 0x7f080234

    .line 1959
    .line 1960
    .line 1961
    check-cast v3, Lha/x0;

    .line 1962
    .line 1963
    iget-boolean v1, v3, Lha/x0;->k:Z

    .line 1964
    .line 1965
    const/4 v4, 0x1

    .line 1966
    xor-int/2addr v4, v1

    .line 1967
    iput-boolean v4, v3, Lha/x0;->k:Z

    .line 1968
    .line 1969
    if-nez v1, :cond_30

    .line 1970
    .line 1971
    goto :goto_1b

    .line 1972
    :cond_30
    const v5, 0x7f080237

    .line 1973
    .line 1974
    .line 1975
    :goto_1b
    check-cast v2, Landroid/widget/ImageView;

    .line 1976
    .line 1977
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1978
    .line 1979
    .line 1980
    return-void

    .line 1981
    :pswitch_1c
    new-instance v1, Lha/ie;

    .line 1982
    .line 1983
    check-cast v3, Lha/x0;

    .line 1984
    .line 1985
    iget-object v4, v3, Lha/x0;->v:Ljava/util/ArrayList;

    .line 1986
    .line 1987
    new-instance v5, Ld2/w;

    .line 1988
    .line 1989
    check-cast v2, Landroid/widget/TextView;

    .line 1990
    .line 1991
    const/16 v6, 0x8

    .line 1992
    .line 1993
    invoke-direct {v5, v3, v6, v2}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1994
    .line 1995
    .line 1996
    iget-object v2, v3, Lha/a4;->a:Landroid/app/Activity;

    .line 1997
    .line 1998
    iget-object v3, v3, Lha/a4;->b:Landroid/content/Context;

    .line 1999
    .line 2000
    invoke-direct {v1, v2, v3, v4, v5}, Lha/ie;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/he;)V

    .line 2001
    .line 2002
    .line 2003
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 2004
    .line 2005
    .line 2006
    return-void

    .line 2007
    :pswitch_1d
    check-cast v3, Lha/i;

    .line 2008
    .line 2009
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2010
    .line 2011
    .line 2012
    sget-object v1, Lfa/h;->a:Lfa/j;

    .line 2013
    .line 2014
    invoke-virtual {v1}, Lfa/j;->i()Z

    .line 2015
    .line 2016
    .line 2017
    move-result v1

    .line 2018
    if-nez v1, :cond_33

    .line 2019
    .line 2020
    sget-object v1, Lfa/l;->a:Lfa/m;

    .line 2021
    .line 2022
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 2023
    .line 2024
    .line 2025
    move-result v1

    .line 2026
    if-eqz v1, :cond_31

    .line 2027
    .line 2028
    goto :goto_1c

    .line 2029
    :cond_31
    new-instance v8, Ljava/util/ArrayList;

    .line 2030
    .line 2031
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2032
    .line 2033
    .line 2034
    const-string v1, "\u4f7f\u7528\u901a\u77e5\u680f\u8f93\u5165"

    .line 2035
    .line 2036
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2037
    .line 2038
    .line 2039
    const-string v1, "\u624b\u52a8\u5c0f\u7a97\u53e3\u8f93\u5165"

    .line 2040
    .line 2041
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2042
    .line 2043
    .line 2044
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2045
    .line 2046
    const/16 v4, 0x18

    .line 2047
    .line 2048
    if-le v1, v4, :cond_32

    .line 2049
    .line 2050
    const-string v1, "\u5f00\u53d1\u8005\u9009\u9879(\u5c0f\u7a97\u60ac\u6d6e)"

    .line 2051
    .line 2052
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2053
    .line 2054
    .line 2055
    :cond_32
    new-instance v1, Lha/ja;

    .line 2056
    .line 2057
    new-instance v9, Lha/c;

    .line 2058
    .line 2059
    invoke-direct {v9, v3}, Lha/c;-><init>(Lha/i;)V

    .line 2060
    .line 2061
    .line 2062
    iget-object v5, v3, Lha/a4;->a:Landroid/app/Activity;

    .line 2063
    .line 2064
    iget-object v6, v3, Lha/a4;->b:Landroid/content/Context;

    .line 2065
    .line 2066
    move-object v7, v2

    .line 2067
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2068
    .line 2069
    move-object v4, v1

    .line 2070
    invoke-direct/range {v4 .. v9}, Lha/ja;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;Lha/ia;)V

    .line 2071
    .line 2072
    .line 2073
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 2074
    .line 2075
    .line 2076
    goto :goto_1d

    .line 2077
    :cond_33
    :goto_1c
    const-string v1, "adb\u5df2\u8fde\u63a5"

    .line 2078
    .line 2079
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 2080
    .line 2081
    .line 2082
    :goto_1d
    return-void

    .line 2083
    :pswitch_1e
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2084
    .line 2085
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 2086
    .line 2087
    .line 2088
    move-result v1

    .line 2089
    const/4 v3, -0x1

    .line 2090
    if-ne v1, v3, :cond_34

    .line 2091
    .line 2092
    goto :goto_1e

    .line 2093
    :cond_34
    invoke-static/range {p1 .. p1}, Lue/d;->b(Ljava/lang/Object;)V

    .line 2094
    .line 2095
    .line 2096
    check-cast v2, Lc6/g;

    .line 2097
    .line 2098
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2099
    .line 2100
    .line 2101
    iget-object v3, v2, Lc6/g;->e:Lc6/e;

    .line 2102
    .line 2103
    if-eqz v3, :cond_35

    .line 2104
    .line 2105
    move-object/from16 v4, p1

    .line 2106
    .line 2107
    invoke-interface {v3, v2, v4, v1}, Lc6/e;->x(Lc6/g;Landroid/view/View;I)V

    .line 2108
    .line 2109
    .line 2110
    :cond_35
    :goto_1e
    return-void

    .line 2111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2112
    .line 2113
    .line 2114
    .line 2115
    .line 2116
    .line 2117
    .line 2118
    .line 2119
    .line 2120
    .line 2121
    .line 2122
    .line 2123
    .line 2124
    .line 2125
    .line 2126
    .line 2127
    .line 2128
    .line 2129
    .line 2130
    .line 2131
    .line 2132
    .line 2133
    .line 2134
    .line 2135
    .line 2136
    .line 2137
    .line 2138
    .line 2139
    .line 2140
    .line 2141
    .line 2142
    .line 2143
    .line 2144
    .line 2145
    .line 2146
    .line 2147
    .line 2148
    .line 2149
    .line 2150
    .line 2151
    .line 2152
    .line 2153
    .line 2154
    .line 2155
    .line 2156
    .line 2157
    .line 2158
    .line 2159
    .line 2160
    .line 2161
    .line 2162
    .line 2163
    .line 2164
    .line 2165
    .line 2166
    .line 2167
    .line 2168
    .line 2169
    .line 2170
    .line 2171
    .line 2172
    .line 2173
    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_3
    .end packed-switch

    .line 2174
    .line 2175
    .line 2176
    .line 2177
    .line 2178
    .line 2179
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_10
    .end packed-switch
.end method
