.class public final Lha/p0;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lha/p0;->b:I

    iput-object p2, p0, Lha/p0;->c:Ljava/lang/Object;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method

.method private final Y()V
    .locals 0

    .line 1
    return-void
.end method

.method private final Z()V
    .locals 0

    .line 1
    return-void
.end method

.method private final a0()V
    .locals 0

    .line 1
    return-void
.end method

.method private final b0()V
    .locals 0

    .line 1
    return-void
.end method

.method private final c0()V
    .locals 0

    .line 1
    return-void
.end method

.method private final d0()V
    .locals 0

    .line 1
    return-void
.end method

.method private final e0(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final f0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final g0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    const-string v0, "\u8fde\u63a5"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    const v3, 0x7f0802a0

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const-string v5, "\u5931\u8d25\uff1a"

    .line 11
    .line 12
    const/16 v6, 0x8

    .line 13
    .line 14
    iget-object v7, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 15
    .line 16
    iget v8, p0, Lha/p0;->b:I

    .line 17
    .line 18
    packed-switch v8, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    :pswitch_0
    return-void

    .line 22
    :pswitch_1
    check-cast v7, Lha/ff;

    .line 23
    .line 24
    iget-object v0, v7, Lha/ff;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    .line 26
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v7, p1, v3, v4}, Lha/ff;->b(Ljava/lang/String;IZ)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 66
    .line 67
    .line 68
    check-cast v7, Lha/ye;

    .line 69
    .line 70
    iget-object p1, v7, Lha/ye;->h:Landroid/widget/TextView;

    .line 71
    .line 72
    const-string v0, "\u767b\u5f55"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_3
    check-cast v7, Lha/w;

    .line 79
    .line 80
    iget-object v0, v7, Lha/w;->n:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Landroid/widget/TextView;

    .line 83
    .line 84
    const-string v1, "\u91cd\u65b0\u5c1d\u8bd5"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, v7, Lha/w;->j:Landroid/widget/TextView;

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff1a"

    .line 113
    .line 114
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 149
    .line 150
    .line 151
    check-cast v7, Lha/se;

    .line 152
    .line 153
    iget-object p1, v7, Lha/se;->l:Landroid/widget/TextView;

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_5
    check-cast v7, Lha/z6;

    .line 160
    .line 161
    iget-object v0, v7, Lha/z6;->j:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v0, Landroid/widget/TextView;

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, v7, Lha/z6;->k:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p1, Landroid/widget/LinearLayout;

    .line 179
    .line 180
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    :pswitch_6
    return-void

    .line 184
    :pswitch_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 201
    .line 202
    .line 203
    check-cast v7, Lha/s5;

    .line 204
    .line 205
    iget-object p1, v7, Lha/s5;->i:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast p1, Landroid/widget/TextView;

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :pswitch_8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 230
    .line 231
    .line 232
    check-cast v7, Lha/w;

    .line 233
    .line 234
    iget-object p1, v7, Lha/w;->j:Landroid/widget/TextView;

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :pswitch_9
    check-cast v7, Lha/vb;

    .line 241
    .line 242
    iget-object v0, v7, Lha/vb;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 243
    .line 244
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 245
    .line 246
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-virtual {v7, p1, v3, v4}, Lha/vb;->b(Ljava/lang/String;IZ)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :pswitch_a
    check-cast v7, Lha/nb;

    .line 268
    .line 269
    iget-object v0, v7, Lha/nb;->s:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 270
    .line 271
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 272
    .line 273
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {v7, p1, v3, v4}, Lha/nb;->b(Ljava/lang/String;IZ)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :pswitch_b
    check-cast v7, Lha/za;

    .line 295
    .line 296
    iget-object p1, v7, Lha/za;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 297
    .line 298
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :pswitch_c
    check-cast v7, Lha/k9;

    .line 306
    .line 307
    iget-object v0, v7, Lha/k9;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 308
    .line 309
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 310
    .line 311
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-virtual {v7, p1, v3, v4}, Lha/k9;->b(Ljava/lang/String;IZ)V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :pswitch_d
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 333
    .line 334
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    const-string v1, "\u51fa\u9519\uff1a"

    .line 338
    .line 339
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    return-void

    .line 357
    :pswitch_e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 374
    .line 375
    .line 376
    check-cast v7, Lha/s5;

    .line 377
    .line 378
    iget-object p1, v7, Lha/s5;->h:Landroid/widget/TextView;

    .line 379
    .line 380
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :pswitch_f
    check-cast v7, Lha/z5;

    .line 385
    .line 386
    iget-object p1, v7, Lha/z5;->h:Lcom/yunpan/appmanage/bean/FileAttributeBean;

    .line 387
    .line 388
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePath:Ljava/lang/String;

    .line 389
    .line 390
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 391
    .line 392
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    if-eqz p1, :cond_0

    .line 401
    .line 402
    const-string v2, "\u4e0d\u80fd\u4fee\u6539SD\u5361\u91cc\u7684\u6587\u4ef6\u6743\u9650"

    .line 403
    .line 404
    goto :goto_0

    .line 405
    :cond_0
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 406
    .line 407
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 408
    .line 409
    iget-object v0, p1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 410
    .line 411
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-nez v0, :cond_2

    .line 416
    .line 417
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 418
    .line 419
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-eqz v0, :cond_2

    .line 428
    .line 429
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    check-cast v0, Ljava/lang/String;

    .line 434
    .line 435
    iget-object v1, v7, Lha/z5;->h:Lcom/yunpan/appmanage/bean/FileAttributeBean;

    .line 436
    .line 437
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePath:Ljava/lang/String;

    .line 438
    .line 439
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    if-eqz v0, :cond_1

    .line 444
    .line 445
    const-string v2, "\u4e0d\u80fd\u4fee\u6539U\u76d8\u91cc\u7684\u6587\u4ef6\u6743\u9650"

    .line 446
    .line 447
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 448
    .line 449
    .line 450
    move-result p1

    .line 451
    if-eqz p1, :cond_4

    .line 452
    .line 453
    new-instance p1, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    const-string v0, "\u65e0\u6cd5\u4fee\u6539\u6b64"

    .line 456
    .line 457
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    iget-object v0, v7, Lha/z5;->h:Lcom/yunpan/appmanage/bean/FileAttributeBean;

    .line 461
    .line 462
    iget-boolean v0, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->isDirectory:Z

    .line 463
    .line 464
    if-eqz v0, :cond_3

    .line 465
    .line 466
    const-string v0, "\u76ee\u5f55"

    .line 467
    .line 468
    goto :goto_1

    .line 469
    :cond_3
    const-string v0, "\u6587\u4ef6"

    .line 470
    .line 471
    :goto_1
    const-string v1, "\u6743\u9650"

    .line 472
    .line 473
    invoke-static {v0, v1, p1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    :cond_4
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 481
    .line 482
    .line 483
    return-void

    .line 484
    :pswitch_10
    check-cast v7, Lha/b5;

    .line 485
    .line 486
    iget-object v0, v7, Lha/b5;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 487
    .line 488
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 489
    .line 490
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    invoke-virtual {v7, p1, v3, v4}, Lha/b5;->b(Ljava/lang/String;IZ)V

    .line 508
    .line 509
    .line 510
    return-void

    .line 511
    :pswitch_11
    check-cast v7, Lha/h4;

    .line 512
    .line 513
    iget-object v0, v7, Lha/h4;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 514
    .line 515
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 516
    .line 517
    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    invoke-virtual {v7, p1, v3, v4}, Lha/h4;->b(Ljava/lang/String;IZ)V

    .line 535
    .line 536
    .line 537
    return-void

    .line 538
    nop

    .line 539
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lha/p0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-void

    .line 7
    :pswitch_1
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lha/ff;

    .line 10
    .line 11
    iget-object v1, v0, Lha/ff;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    check-cast p1, Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    sub-int/2addr v1, v2

    .line 26
    :goto_0
    if-ltz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 33
    .line 34
    iget-boolean v3, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 35
    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    const p1, 0x7f08029f

    .line 51
    .line 52
    .line 53
    const-string v1, "\u6ca1\u6709\u5176\u5b83\u76ee\u5f55"

    .line 54
    .line 55
    invoke-virtual {v0, v1, p1, v2}, Lha/ff;->b(Ljava/lang/String;IZ)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-object v0, v0, Lha/ff;->k:Lx9/q5;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void

    .line 65
    :pswitch_2
    check-cast p1, Lcom/yunpan/appmanage/bean/DownProgressBean;

    .line 66
    .line 67
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lha/w;

    .line 70
    .line 71
    iget-object v1, v0, Lha/w;->m:Landroid/view/View;

    .line 72
    .line 73
    check-cast v1, Lcom/yunpan/appmanage/view/MyProgressViewTest;

    .line 74
    .line 75
    iget v2, p1, Lcom/yunpan/appmanage/bean/DownProgressBean;->bfb:I

    .line 76
    .line 77
    int-to-float v2, v2

    .line 78
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/view/MyProgressViewTest;->setCurrentCount(F)V

    .line 79
    .line 80
    .line 81
    iget-object v0, v0, Lha/w;->j:Landroid/widget/TextView;

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v2, "\u4e0b\u8f7d\u4e2d\uff1a"

    .line 86
    .line 87
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget v2, p1, Lcom/yunpan/appmanage/bean/DownProgressBean;->bfb:I

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v2, "%   "

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-wide v2, p1, Lcom/yunpan/appmanage/bean/DownProgressBean;->downSize:J

    .line 101
    .line 102
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_3
    instance-of v0, p1, Ljava/lang/Integer;

    .line 114
    .line 115
    iget-object v1, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v1, Lha/z6;

    .line 118
    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    iget-object v0, v1, Lha/z6;->i:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Lcom/yunpan/appmanage/view/MyProgressViewTest;

    .line 124
    .line 125
    check-cast p1, Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    int-to-float v2, v2

    .line 132
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/view/MyProgressViewTest;->setCurrentCount(F)V

    .line 133
    .line 134
    .line 135
    iget-object v0, v1, Lha/z6;->j:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Landroid/widget/TextView;

    .line 138
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p1, "%"

    .line 152
    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_3
    iget-object p1, v1, Lha/z6;->i:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p1, Lcom/yunpan/appmanage/view/MyProgressViewTest;

    .line 167
    .line 168
    const/high16 v0, 0x42c80000    # 100.0f

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Lcom/yunpan/appmanage/view/MyProgressViewTest;->setCurrentCount(F)V

    .line 171
    .line 172
    .line 173
    iget-object p1, v1, Lha/z6;->j:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p1, Landroid/widget/TextView;

    .line 176
    .line 177
    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u5b89\u88c5\u4e2d"

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    :goto_2
    return-void

    .line 183
    :pswitch_4
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v0, Lha/p0;

    .line 186
    .line 187
    iget-object v0, v0, Lha/p0;->c:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v0, Lha/z6;

    .line 190
    .line 191
    iget-object v0, v0, Lha/z6;->j:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v0, Landroid/widget/TextView;

    .line 194
    .line 195
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :pswitch_5
    check-cast p1, Lgh/a;

    .line 204
    .line 205
    new-instance v0, Lha/qd;

    .line 206
    .line 207
    iget-object v1, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v1, Lha/md;

    .line 210
    .line 211
    iget-object v2, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 212
    .line 213
    iget-object v3, v1, Lha/a4;->b:Landroid/content/Context;

    .line 214
    .line 215
    invoke-direct {v0, v2, v3, p1}, Lha/qd;-><init>(Landroid/app/Activity;Landroid/content/Context;Lgh/a;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Lha/md;->dismiss()V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :pswitch_6
    check-cast p1, Ljava/util/List;

    .line 226
    .line 227
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v0, Lha/vb;

    .line 230
    .line 231
    iget-object v1, v0, Lha/vb;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 232
    .line 233
    const/16 v2, 0x8

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_4

    .line 243
    .line 244
    const/4 p1, 0x1

    .line 245
    const v1, 0x7f08029f

    .line 246
    .line 247
    .line 248
    const-string v2, "\u6ca1\u6709\u5176\u5b83\u76ee\u5f55"

    .line 249
    .line 250
    invoke-virtual {v0, v2, v1, p1}, Lha/vb;->b(Ljava/lang/String;IZ)V

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_4
    iget-object v0, v0, Lha/vb;->m:Lx9/f0;

    .line 255
    .line 256
    invoke-virtual {v0, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 257
    .line 258
    .line 259
    :goto_3
    return-void

    .line 260
    :pswitch_7
    check-cast p1, Ljava/util/List;

    .line 261
    .line 262
    new-instance v0, Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    iget-object v2, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v2, Lha/tb;

    .line 278
    .line 279
    if-eqz v1, :cond_5

    .line 280
    .line 281
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    check-cast v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 286
    .line 287
    new-instance v3, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;

    .line 288
    .line 289
    iget-object v4, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 290
    .line 291
    iget-object v5, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 292
    .line 293
    iget-boolean v1, v1, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 294
    .line 295
    iget-object v2, v2, Lha/tb;->k:Ljava/util/Set;

    .line 296
    .line 297
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    invoke-direct {v3, v4, v5, v1, v2}, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_5
    :try_start_0
    iget-object p1, v2, Lha/tb;->h:Lx9/a1;

    .line 309
    .line 310
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .line 312
    .line 313
    :catch_0
    return-void

    .line 314
    :pswitch_8
    check-cast p1, Ljava/util/List;

    .line 315
    .line 316
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v0, Lha/nb;

    .line 319
    .line 320
    iget-object v1, v0, Lha/nb;->s:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 321
    .line 322
    const/16 v2, 0x8

    .line 323
    .line 324
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 325
    .line 326
    .line 327
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-eqz v1, :cond_6

    .line 332
    .line 333
    const/4 p1, 0x1

    .line 334
    const v1, 0x7f08029f

    .line 335
    .line 336
    .line 337
    const-string v2, "\u6ca1\u6709\u5176\u5b83\u76ee\u5f55"

    .line 338
    .line 339
    invoke-virtual {v0, v2, v1, p1}, Lha/nb;->b(Ljava/lang/String;IZ)V

    .line 340
    .line 341
    .line 342
    goto :goto_5

    .line 343
    :cond_6
    iget-object v0, v0, Lha/nb;->k:Lx9/e0;

    .line 344
    .line 345
    invoke-virtual {v0, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 346
    .line 347
    .line 348
    :goto_5
    return-void

    .line 349
    :pswitch_9
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v0, Lha/za;

    .line 352
    .line 353
    iget-object v1, v0, Lha/za;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 354
    .line 355
    const/16 v2, 0x8

    .line 356
    .line 357
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    .line 359
    .line 360
    iget-object v1, v0, Lha/za;->l:Lx9/x3;

    .line 361
    .line 362
    check-cast p1, Ljava/util/List;

    .line 363
    .line 364
    invoke-virtual {v1, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 365
    .line 366
    .line 367
    iget-object p1, v0, Lha/za;->l:Lx9/x3;

    .line 368
    .line 369
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    if-nez p1, :cond_7

    .line 374
    .line 375
    const-string p1, "\u6b64\u5e94\u7528\u65e0\u9700\u7ba1\u7406\u6743\u9650"

    .line 376
    .line 377
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 381
    .line 382
    .line 383
    :cond_7
    return-void

    .line 384
    :pswitch_a
    :try_start_1
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 385
    .line 386
    check-cast v0, Lha/ma;

    .line 387
    .line 388
    iget-object v0, v0, Lha/ma;->h:Lx9/q3;

    .line 389
    .line 390
    check-cast p1, Ljava/util/List;

    .line 391
    .line 392
    invoke-virtual {v0, p1}, Lc6/g;->E(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 393
    .line 394
    .line 395
    :catch_1
    return-void

    .line 396
    :pswitch_b
    instance-of v0, p1, Lcom/yunpan/appmanage/bean/LogcatBean;

    .line 397
    .line 398
    if-eqz v0, :cond_8

    .line 399
    .line 400
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v0, Lha/ba;

    .line 403
    .line 404
    iget-object v1, v0, Lha/ba;->i:Lx9/t0;

    .line 405
    .line 406
    check-cast p1, Lcom/yunpan/appmanage/bean/LogcatBean;

    .line 407
    .line 408
    invoke-virtual {v1, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    iget-object p1, v0, Lha/ba;->k:Landroid/widget/TextView;

    .line 412
    .line 413
    iget-object v0, v0, Lha/ba;->i:Lx9/t0;

    .line 414
    .line 415
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    .line 425
    .line 426
    :cond_8
    return-void

    .line 427
    :pswitch_c
    check-cast p1, Ljava/util/List;

    .line 428
    .line 429
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 430
    .line 431
    check-cast v0, Lha/k9;

    .line 432
    .line 433
    iget-object v1, v0, Lha/k9;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 434
    .line 435
    const/16 v2, 0x8

    .line 436
    .line 437
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 438
    .line 439
    .line 440
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-nez v1, :cond_9

    .line 445
    .line 446
    const/4 p1, 0x1

    .line 447
    const v1, 0x7f08029f

    .line 448
    .line 449
    .line 450
    const-string v2, "\u7a7a\u76ee\u5f55"

    .line 451
    .line 452
    invoke-virtual {v0, v2, v1, p1}, Lha/k9;->b(Ljava/lang/String;IZ)V

    .line 453
    .line 454
    .line 455
    goto :goto_6

    .line 456
    :cond_9
    iget-object v0, v0, Lha/k9;->j:Lx9/u2;

    .line 457
    .line 458
    invoke-virtual {v0, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 459
    .line 460
    .line 461
    :goto_6
    return-void

    .line 462
    :pswitch_d
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 463
    .line 464
    check-cast v0, Lha/j7;

    .line 465
    .line 466
    iget-object v0, v0, Lha/j7;->h:Landroid/widget/ImageView;

    .line 467
    .line 468
    check-cast p1, Landroid/graphics/Bitmap;

    .line 469
    .line 470
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 471
    .line 472
    .line 473
    return-void

    .line 474
    :pswitch_e
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast v0, Lx9/o2;

    .line 477
    .line 478
    check-cast p1, Lx9/k5;

    .line 479
    .line 480
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    return-void

    .line 484
    :pswitch_f
    instance-of v0, p1, Ljava/lang/String;

    .line 485
    .line 486
    if-eqz v0, :cond_a

    .line 487
    .line 488
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 489
    .line 490
    check-cast v0, Lha/n6;

    .line 491
    .line 492
    iget-object v0, v0, Lha/n6;->j:Lx9/b3;

    .line 493
    .line 494
    check-cast p1, Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    :cond_a
    return-void

    .line 500
    :pswitch_10
    check-cast p1, Ljava/util/List;

    .line 501
    .line 502
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 503
    .line 504
    check-cast v0, Lha/b5;

    .line 505
    .line 506
    iget-object v1, v0, Lha/b5;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 507
    .line 508
    const/16 v2, 0x8

    .line 509
    .line 510
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 511
    .line 512
    .line 513
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    if-eqz v1, :cond_b

    .line 518
    .line 519
    const/4 p1, 0x1

    .line 520
    const v1, 0x7f08029f

    .line 521
    .line 522
    .line 523
    const-string v2, "\u6ca1\u6709\u5176\u5b83\u76ee\u5f55"

    .line 524
    .line 525
    invoke-virtual {v0, v2, v1, p1}, Lha/b5;->b(Ljava/lang/String;IZ)V

    .line 526
    .line 527
    .line 528
    goto :goto_7

    .line 529
    :cond_b
    iget-object v0, v0, Lha/b5;->m:Lx9/e0;

    .line 530
    .line 531
    invoke-virtual {v0, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 532
    .line 533
    .line 534
    :goto_7
    return-void

    .line 535
    :pswitch_11
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v0, Lha/t4;

    .line 538
    .line 539
    iget-object v0, v0, Lha/t4;->j:Landroid/widget/TextView;

    .line 540
    .line 541
    check-cast p1, Ljava/lang/String;

    .line 542
    .line 543
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    .line 545
    .line 546
    return-void

    .line 547
    :pswitch_12
    check-cast p1, Ljava/util/List;

    .line 548
    .line 549
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 550
    .line 551
    check-cast v0, Lha/h4;

    .line 552
    .line 553
    iget-object v1, v0, Lha/h4;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 554
    .line 555
    const/16 v2, 0x8

    .line 556
    .line 557
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 558
    .line 559
    .line 560
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    if-nez v1, :cond_c

    .line 565
    .line 566
    const/4 p1, 0x1

    .line 567
    const v1, 0x7f08029f

    .line 568
    .line 569
    .line 570
    const-string v2, "\u6ca1\u6709\u5176\u5b83\u76ee\u5f55"

    .line 571
    .line 572
    invoke-virtual {v0, v2, v1, p1}, Lha/h4;->b(Ljava/lang/String;IZ)V

    .line 573
    .line 574
    .line 575
    goto :goto_8

    .line 576
    :cond_c
    iget-object v0, v0, Lha/h4;->k:Lx9/e0;

    .line 577
    .line 578
    invoke-virtual {v0, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 579
    .line 580
    .line 581
    :goto_8
    :pswitch_13
    return-void

    .line 582
    :pswitch_14
    :try_start_2
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 583
    .line 584
    check-cast v0, Lha/t2;

    .line 585
    .line 586
    iget-object v0, v0, Lha/t2;->h:Lx9/v;

    .line 587
    .line 588
    check-cast p1, Ljava/util/List;

    .line 589
    .line 590
    invoke-virtual {v0, p1}, Lc6/g;->E(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 591
    .line 592
    .line 593
    :catch_2
    return-void

    .line 594
    :pswitch_15
    :try_start_3
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast v0, Lha/q2;

    .line 597
    .line 598
    iget-object v0, v0, Lha/q2;->h:Lx9/v;

    .line 599
    .line 600
    check-cast p1, Ljava/util/List;

    .line 601
    .line 602
    invoke-virtual {v0, p1}, Lc6/g;->E(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 603
    .line 604
    .line 605
    :catch_3
    :pswitch_16
    return-void

    .line 606
    :pswitch_17
    check-cast p1, Ljava/util/List;

    .line 607
    .line 608
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 609
    .line 610
    .line 611
    move-result v0

    .line 612
    if-eqz v0, :cond_d

    .line 613
    .line 614
    const-string p1, "\u6ca1\u6709\u627e\u5230\u89c6\u9891\u6587\u4ef6"

    .line 615
    .line 616
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    goto :goto_9

    .line 620
    :cond_d
    new-instance v0, Lha/b6;

    .line 621
    .line 622
    iget-object v1, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 623
    .line 624
    check-cast v1, Lha/x0;

    .line 625
    .line 626
    iget-object v2, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 627
    .line 628
    iget-object v1, v1, Lha/a4;->b:Landroid/content/Context;

    .line 629
    .line 630
    new-instance v3, La1/d;

    .line 631
    .line 632
    const/16 v4, 0x8

    .line 633
    .line 634
    invoke-direct {v3, v4, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 635
    .line 636
    .line 637
    invoke-direct {v0, v2, v1, p1, v3}, Lha/b6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/a6;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 641
    .line 642
    .line 643
    :goto_9
    return-void

    .line 644
    :pswitch_18
    :try_start_4
    iget-object v0, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 645
    .line 646
    check-cast v0, Lha/r0;

    .line 647
    .line 648
    iget-object v0, v0, Lha/r0;->h:Lx9/v;

    .line 649
    .line 650
    check-cast p1, Ljava/util/List;

    .line 651
    .line 652
    invoke-virtual {v0, p1}, Lc6/g;->E(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 653
    .line 654
    .line 655
    :catch_4
    return-void

    .line 656
    nop

    .line 657
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
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
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lgc/b;)V
    .locals 1

    .line 1
    iget p1, p0, Lha/p0;->b:I

    .line 2
    .line 3
    sparse-switch p1, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :sswitch_0
    iget-object p1, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lha/p0;

    .line 10
    .line 11
    iget-object p1, p1, Lha/p0;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lha/z6;

    .line 14
    .line 15
    iget-object p1, p1, Lha/z6;->j:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Landroid/widget/TextView;

    .line 18
    .line 19
    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u5b89\u88c5\u4e2d"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :sswitch_1
    iget-object p1, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lha/za;

    .line 28
    .line 29
    iget-object p1, p1, Lha/za;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public onComplete()V
    .locals 9

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const-string v3, "\u8fde\u63a5\u6210\u529f"

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object v5, p0, Lha/p0;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iget v6, p0, Lha/p0;->b:I

    .line 11
    .line 12
    packed-switch v6, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    :pswitch_0
    return-void

    .line 16
    :pswitch_1
    check-cast v5, Lha/ye;

    .line 17
    .line 18
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 19
    .line 20
    .line 21
    const-string v0, "\u767b\u5f55\u6210\u529f"

    .line 22
    .line 23
    invoke-static {v0, v4}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v5, Lha/ye;->g:Lha/xe;

    .line 27
    .line 28
    invoke-interface {v0}, Lha/xe;->c()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    check-cast v5, Lha/w;

    .line 33
    .line 34
    iget-object v3, v5, Lha/w;->q:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    iget-object v6, v5, Lha/w;->l:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v6, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 41
    .line 42
    iget-object v6, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    const/16 v8, 0x50

    .line 49
    .line 50
    if-le v7, v8, :cond_0

    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    sub-int/2addr v7, v8

    .line 57
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    :cond_0
    iget-object v7, v5, Lha/w;->k:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v7, Lx9/n5;

    .line 68
    .line 69
    iget v7, v7, Lx9/n5;->a:I

    .line 70
    .line 71
    const-string v8, "/"

    .line 72
    .line 73
    if-eq v7, v2, :cond_1

    .line 74
    .line 75
    const/16 v2, 0x14

    .line 76
    .line 77
    if-eq v7, v2, :cond_1

    .line 78
    .line 79
    if-ne v7, v0, :cond_2

    .line 80
    .line 81
    :cond_1
    iget-object v0, v5, Lha/w;->l:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 84
    .line 85
    iget-boolean v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, ".rar"

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    invoke-static {v3, v8, v6}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_0
    const-string v2, "//"

    .line 118
    .line 119
    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v2, v5, Lha/w;->p:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v2, Lha/h2;

    .line 126
    .line 127
    iget-object v3, v2, Lha/h2;->c:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v3, Lua/i9;

    .line 130
    .line 131
    iget-boolean v2, v2, Lha/h2;->b:Z

    .line 132
    .line 133
    if-eqz v2, :cond_3

    .line 134
    .line 135
    invoke-virtual {v3, v0}, Lua/i9;->s(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    iget-object v0, v3, Lua/i9;->x:Lx9/g0;

    .line 140
    .line 141
    invoke-static {v0, v4}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lx9/w3;

    .line 146
    .line 147
    invoke-virtual {v3, v0, v1}, Lua/i9;->n(Lx9/w3;Z)V

    .line 148
    .line 149
    .line 150
    :goto_1
    invoke-virtual {v5}, Lha/w;->dismiss()V

    .line 151
    .line 152
    .line 153
    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 154
    .line 155
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_3
    check-cast v5, Lha/se;

    .line 160
    .line 161
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 162
    .line 163
    .line 164
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 165
    .line 166
    .line 167
    iget-object v0, v5, Lha/se;->h:Lha/re;

    .line 168
    .line 169
    invoke-interface {v0}, Lha/re;->a()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :pswitch_4
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 174
    .line 175
    iget v6, v3, Lcom/yunpan/appmanage/util/w;->T:I

    .line 176
    .line 177
    if-eq v6, v2, :cond_9

    .line 178
    .line 179
    iget v6, v3, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 180
    .line 181
    const/4 v7, 0x3

    .line 182
    if-ne v6, v7, :cond_4

    .line 183
    .line 184
    goto/16 :goto_3

    .line 185
    .line 186
    :cond_4
    iget-boolean v1, v3, Lcom/yunpan/appmanage/util/w;->y:Z

    .line 187
    .line 188
    check-cast v5, Lha/z6;

    .line 189
    .line 190
    if-nez v1, :cond_5

    .line 191
    .line 192
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-static {}, La2/w0;->Q()Z

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-eqz v6, :cond_5

    .line 202
    .line 203
    iget-boolean v6, v5, Lha/z6;->l:Z

    .line 204
    .line 205
    if-eqz v6, :cond_5

    .line 206
    .line 207
    iget-object v0, v5, Lha/z6;->h:Ljava/lang/String;

    .line 208
    .line 209
    new-instance v2, Lha/me;

    .line 210
    .line 211
    invoke-direct {v2, p0, v4}, Lha/me;-><init>(Lha/p0;I)V

    .line 212
    .line 213
    .line 214
    iput-object v2, v1, La2/w0;->d:Ljava/lang/Object;

    .line 215
    .line 216
    sget-object v2, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 217
    .line 218
    new-instance v3, Lfa/u;

    .line 219
    .line 220
    invoke-direct {v3, v1, v0, v4}, Lfa/u;-><init>(La2/w0;Ljava/lang/String;I)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_4

    .line 227
    .line 228
    :cond_5
    iget-boolean v1, v5, Lha/z6;->l:Z

    .line 229
    .line 230
    if-nez v1, :cond_6

    .line 231
    .line 232
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-static {}, La2/w0;->P()Z

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    if-eqz v6, :cond_6

    .line 242
    .line 243
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 244
    .line 245
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 246
    .line 247
    iget-boolean v6, v6, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 248
    .line 249
    if-eqz v6, :cond_6

    .line 250
    .line 251
    iget-object v0, v5, Lha/z6;->h:Ljava/lang/String;

    .line 252
    .line 253
    new-instance v3, Lha/me;

    .line 254
    .line 255
    invoke-direct {v3, p0, v2}, Lha/me;-><init>(Lha/p0;I)V

    .line 256
    .line 257
    .line 258
    iput-object v3, v1, La2/w0;->d:Ljava/lang/Object;

    .line 259
    .line 260
    sget-object v2, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 261
    .line 262
    new-instance v3, Lfa/u;

    .line 263
    .line 264
    invoke-direct {v3, v1, v0, v4}, Lfa/u;-><init>(La2/w0;Ljava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_6
    iget v1, v3, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 272
    .line 273
    if-eqz v1, :cond_8

    .line 274
    .line 275
    iget-boolean v1, v5, Lha/z6;->l:Z

    .line 276
    .line 277
    if-nez v1, :cond_7

    .line 278
    .line 279
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 280
    .line 281
    if-lt v1, v0, :cond_7

    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_7
    iget-object v0, v5, Lha/a4;->b:Landroid/content/Context;

    .line 285
    .line 286
    iget-object v1, v5, Lha/z6;->h:Ljava/lang/String;

    .line 287
    .line 288
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->I(Landroid/content/Context;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_8
    :goto_2
    const-string v0, "\u5b89\u88c5\u4e2d"

    .line 293
    .line 294
    invoke-static {v0, v4}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 295
    .line 296
    .line 297
    sget-object v0, Lma/h;->a:Lma/i;

    .line 298
    .line 299
    iget-object v1, v5, Lha/z6;->h:Ljava/lang/String;

    .line 300
    .line 301
    new-instance v2, Lha/jd;

    .line 302
    .line 303
    invoke-direct {v2, v4}, Lha/jd;-><init>(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v1, v2}, Lma/i;->c(Ljava/lang/String;Lma/g;)V

    .line 307
    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_9
    :goto_3
    new-instance v0, Lha/me;

    .line 311
    .line 312
    invoke-direct {v0, p0, v1}, Lha/me;-><init>(Lha/p0;I)V

    .line 313
    .line 314
    .line 315
    new-instance v2, Lmc/c;

    .line 316
    .line 317
    invoke-direct {v2, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 321
    .line 322
    invoke-virtual {v2, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    new-instance v1, Lha/p0;

    .line 335
    .line 336
    const/16 v2, 0x18

    .line 337
    .line 338
    invoke-direct {v1, v2, p0}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 342
    .line 343
    .line 344
    :goto_4
    :pswitch_5
    return-void

    .line 345
    :pswitch_6
    check-cast v5, Lha/s5;

    .line 346
    .line 347
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 348
    .line 349
    .line 350
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 351
    .line 352
    .line 353
    iget-object v0, v5, Lha/s5;->k:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v0, Lha/oc;

    .line 356
    .line 357
    invoke-interface {v0}, Lha/oc;->a()V

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :pswitch_7
    check-cast v5, Lha/w;

    .line 362
    .line 363
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 364
    .line 365
    .line 366
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 367
    .line 368
    .line 369
    iget-object v0, v5, Lha/w;->l:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v0, Lha/ic;

    .line 372
    .line 373
    invoke-interface {v0}, Lha/ic;->a()V

    .line 374
    .line 375
    .line 376
    :pswitch_8
    return-void

    .line 377
    :pswitch_9
    check-cast v5, Lha/ba;

    .line 378
    .line 379
    iget-object v0, v5, Lha/ba;->g:Landroid/widget/TextView;

    .line 380
    .line 381
    const-string v1, "\u5f00\u59cb\u76d1\u542c"

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    .line 385
    .line 386
    :pswitch_a
    return-void

    .line 387
    :pswitch_b
    check-cast v5, Lha/n6;

    .line 388
    .line 389
    iget-object v0, v5, Lha/n6;->h:Landroid/widget/TextView;

    .line 390
    .line 391
    const-string v1, "\u76d1\u542c\u65e5\u5fd7"

    .line 392
    .line 393
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    .line 395
    .line 396
    return-void

    .line 397
    :pswitch_c
    check-cast v5, Lha/s5;

    .line 398
    .line 399
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 400
    .line 401
    .line 402
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 403
    .line 404
    .line 405
    iget-object v0, v5, Lha/s5;->j:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v0, Lha/i6;

    .line 408
    .line 409
    invoke-interface {v0}, Lha/i6;->a()V

    .line 410
    .line 411
    .line 412
    return-void

    .line 413
    :pswitch_d
    const-string v0, "\u4fee\u6539\u5b8c\u6210"

    .line 414
    .line 415
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    check-cast v5, Lha/z5;

    .line 419
    .line 420
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 421
    .line 422
    .line 423
    :pswitch_e
    return-void

    .line 424
    :pswitch_f
    check-cast v5, Lha/j3;

    .line 425
    .line 426
    iget-object v0, v5, Lha/j3;->k:Landroid/widget/TextView;

    .line 427
    .line 428
    const-string v1, "\u6d4b\u8bd5\u901a\u9053"

    .line 429
    .line 430
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    return-void

    .line 434
    :pswitch_10
    check-cast v5, Lha/g1;

    .line 435
    .line 436
    iget-object v0, v5, Lha/g1;->i:Landroid/widget/TextView;

    .line 437
    .line 438
    const-string v1, "\u9010\u4e00\u6d4b\u8bd5\u5587\u53ed(\u8bf7\u4ed4\u7ec6\u8046\u542c\uff0c\u81ea\u884c\u7504\u522b)"

    .line 439
    .line 440
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    .line 442
    .line 443
    return-void

    .line 444
    nop

    .line 445
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
