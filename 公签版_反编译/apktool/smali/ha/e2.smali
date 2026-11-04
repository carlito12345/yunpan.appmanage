.class public final synthetic Lha/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/KeyEvent$Callback;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p3, p0, Lha/e2;->a:I

    iput-object p1, p0, Lha/e2;->b:Landroid/view/KeyEvent$Callback;

    iput-object p2, p0, Lha/e2;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    const/16 p1, 0x15

    .line 2
    .line 3
    const/16 v0, 0x13

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lha/e2;->c:Landroid/view/View;

    .line 7
    .line 8
    iget-object v3, p0, Lha/e2;->b:Landroid/view/KeyEvent$Callback;

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    const/16 v5, 0x14

    .line 12
    .line 13
    iget v6, p0, Lha/e2;->a:I

    .line 14
    .line 15
    packed-switch v6, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    sget p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->H:I

    .line 19
    .line 20
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    if-ne p2, v5, :cond_0

    .line 27
    .line 28
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 31
    .line 32
    .line 33
    :goto_0
    const/4 v1, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    if-ne p2, v0, :cond_1

    .line 36
    .line 37
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    return v1

    .line 44
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->K:I

    .line 45
    .line 46
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    if-ne p2, v5, :cond_3

    .line 52
    .line 53
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->F:Lx9/a0;

    .line 60
    .line 61
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-lez p1, :cond_2

    .line 66
    .line 67
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    if-ne p2, p1, :cond_4

    .line 75
    .line 76
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_4

    .line 81
    .line 82
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->H:Landroid/widget/EditText;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_4

    .line 93
    .line 94
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->H:Landroid/widget/EditText;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_4

    .line 105
    .line 106
    check-cast v2, Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    :goto_3
    return v1

    .line 113
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityApps;->L:I

    .line 114
    .line 115
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityApps;

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    if-ne p2, v5, :cond_6

    .line 121
    .line 122
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_5

    .line 127
    .line 128
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityApps;->F:Lx9/a0;

    .line 129
    .line 130
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-lez p1, :cond_5

    .line 135
    .line 136
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityApps;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 139
    .line 140
    .line 141
    :cond_5
    :goto_4
    const/4 v1, 0x1

    .line 142
    goto :goto_5

    .line 143
    :cond_6
    if-ne p2, p1, :cond_7

    .line 144
    .line 145
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_7

    .line 150
    .line 151
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityApps;->I:Landroid/widget/EditText;

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-nez p1, :cond_7

    .line 162
    .line 163
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityApps;->I:Landroid/widget/EditText;

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-nez p1, :cond_7

    .line 174
    .line 175
    check-cast v2, Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_7
    :goto_5
    return v1

    .line 182
    :pswitch_2
    check-cast v3, Lha/ke;

    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    if-ne p2, v5, :cond_9

    .line 188
    .line 189
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-nez p1, :cond_8

    .line 194
    .line 195
    const p1, 0x7f0b03f3

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 203
    .line 204
    .line 205
    :cond_8
    :goto_6
    const/4 v1, 0x1

    .line 206
    goto :goto_7

    .line 207
    :cond_9
    if-ne p2, v0, :cond_a

    .line 208
    .line 209
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-nez p1, :cond_8

    .line 214
    .line 215
    check-cast v2, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 216
    .line 217
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 218
    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_a
    :goto_7
    return v1

    .line 222
    :pswitch_3
    check-cast v3, Lha/ad;

    .line 223
    .line 224
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 228
    .line 229
    .line 230
    move-result p3

    .line 231
    if-ne p3, v4, :cond_f

    .line 232
    .line 233
    check-cast v2, Landroid/widget/TextView;

    .line 234
    .line 235
    iget-boolean p3, v3, Lha/ad;->b:Z

    .line 236
    .line 237
    const/4 v6, 0x4

    .line 238
    if-ne p2, v0, :cond_c

    .line 239
    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    iget-object p2, v3, Lha/ad;->c:Ljava/lang/String;

    .line 246
    .line 247
    const-string v0, "\u4e0a"

    .line 248
    .line 249
    invoke-static {p2, v0, p1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    iput-object p1, v3, Lha/ad;->c:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v3, v2}, Lha/ad;->b(Landroid/widget/TextView;)V

    .line 256
    .line 257
    .line 258
    if-nez p3, :cond_b

    .line 259
    .line 260
    iget-object p1, v3, Lha/ad;->c:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-lt p1, v6, :cond_b

    .line 267
    .line 268
    iget-object p1, v3, Lha/ad;->c:Ljava/lang/String;

    .line 269
    .line 270
    sget-object p2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 271
    .line 272
    iget-object p2, p2, Lcom/yunpan/appmanage/util/w;->j:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-eqz p1, :cond_b

    .line 279
    .line 280
    invoke-virtual {v3}, Lha/ad;->a()V

    .line 281
    .line 282
    .line 283
    :cond_b
    :goto_8
    const/4 v1, 0x1

    .line 284
    goto/16 :goto_9

    .line 285
    .line 286
    :cond_c
    if-ne p2, v5, :cond_d

    .line 287
    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    iget-object p2, v3, Lha/ad;->c:Ljava/lang/String;

    .line 294
    .line 295
    const-string v0, "\u4e0b"

    .line 296
    .line 297
    invoke-static {p2, v0, p1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    iput-object p1, v3, Lha/ad;->c:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v3, v2}, Lha/ad;->b(Landroid/widget/TextView;)V

    .line 304
    .line 305
    .line 306
    if-nez p3, :cond_b

    .line 307
    .line 308
    iget-object p1, v3, Lha/ad;->c:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    if-lt p1, v6, :cond_b

    .line 315
    .line 316
    iget-object p1, v3, Lha/ad;->c:Ljava/lang/String;

    .line 317
    .line 318
    sget-object p2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 319
    .line 320
    iget-object p2, p2, Lcom/yunpan/appmanage/util/w;->j:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    if-eqz p1, :cond_b

    .line 327
    .line 328
    invoke-virtual {v3}, Lha/ad;->a()V

    .line 329
    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_d
    if-ne p2, p1, :cond_e

    .line 333
    .line 334
    new-instance p1, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    iget-object p2, v3, Lha/ad;->c:Ljava/lang/String;

    .line 340
    .line 341
    const-string v0, "\u5de6"

    .line 342
    .line 343
    invoke-static {p2, v0, p1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    iput-object p1, v3, Lha/ad;->c:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {v3, v2}, Lha/ad;->b(Landroid/widget/TextView;)V

    .line 350
    .line 351
    .line 352
    if-nez p3, :cond_b

    .line 353
    .line 354
    iget-object p1, v3, Lha/ad;->c:Ljava/lang/String;

    .line 355
    .line 356
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    if-lt p1, v6, :cond_b

    .line 361
    .line 362
    iget-object p1, v3, Lha/ad;->c:Ljava/lang/String;

    .line 363
    .line 364
    sget-object p2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 365
    .line 366
    iget-object p2, p2, Lcom/yunpan/appmanage/util/w;->j:Ljava/lang/String;

    .line 367
    .line 368
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    if-eqz p1, :cond_b

    .line 373
    .line 374
    invoke-virtual {v3}, Lha/ad;->a()V

    .line 375
    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_e
    const/16 p1, 0x16

    .line 379
    .line 380
    if-ne p2, p1, :cond_f

    .line 381
    .line 382
    new-instance p1, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .line 386
    .line 387
    iget-object p2, v3, Lha/ad;->c:Ljava/lang/String;

    .line 388
    .line 389
    const-string v0, "\u53f3"

    .line 390
    .line 391
    invoke-static {p2, v0, p1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    iput-object p1, v3, Lha/ad;->c:Ljava/lang/String;

    .line 396
    .line 397
    invoke-virtual {v3, v2}, Lha/ad;->b(Landroid/widget/TextView;)V

    .line 398
    .line 399
    .line 400
    if-nez p3, :cond_b

    .line 401
    .line 402
    iget-object p1, v3, Lha/ad;->c:Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    if-lt p1, v6, :cond_b

    .line 409
    .line 410
    iget-object p1, v3, Lha/ad;->c:Ljava/lang/String;

    .line 411
    .line 412
    sget-object p2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 413
    .line 414
    iget-object p2, p2, Lcom/yunpan/appmanage/util/w;->j:Ljava/lang/String;

    .line 415
    .line 416
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result p1

    .line 420
    if-eqz p1, :cond_b

    .line 421
    .line 422
    invoke-virtual {v3}, Lha/ad;->a()V

    .line 423
    .line 424
    .line 425
    goto/16 :goto_8

    .line 426
    .line 427
    :cond_f
    :goto_9
    return v1

    .line 428
    :pswitch_4
    check-cast v3, Lha/fc;

    .line 429
    .line 430
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 434
    .line 435
    .line 436
    move-result p1

    .line 437
    if-nez p1, :cond_11

    .line 438
    .line 439
    if-ne p2, v5, :cond_10

    .line 440
    .line 441
    iget-object p1, v3, Lha/fc;->i:Landroid/widget/EditText;

    .line 442
    .line 443
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 444
    .line 445
    .line 446
    :goto_a
    const/4 v1, 0x1

    .line 447
    goto :goto_b

    .line 448
    :cond_10
    if-ne p2, v0, :cond_11

    .line 449
    .line 450
    check-cast v2, Landroid/widget/LinearLayout;

    .line 451
    .line 452
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 453
    .line 454
    .line 455
    goto :goto_a

    .line 456
    :cond_11
    :goto_b
    return v1

    .line 457
    :pswitch_5
    if-ne p2, v5, :cond_13

    .line 458
    .line 459
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 460
    .line 461
    .line 462
    move-result p1

    .line 463
    if-nez p1, :cond_12

    .line 464
    .line 465
    check-cast v3, Landroid/widget/TextView;

    .line 466
    .line 467
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 468
    .line 469
    .line 470
    :cond_12
    :goto_c
    const/4 v1, 0x1

    .line 471
    goto :goto_d

    .line 472
    :cond_13
    if-ne p2, v0, :cond_14

    .line 473
    .line 474
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 475
    .line 476
    .line 477
    move-result p1

    .line 478
    if-nez p1, :cond_12

    .line 479
    .line 480
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 481
    .line 482
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 483
    .line 484
    .line 485
    goto :goto_c

    .line 486
    :cond_14
    :goto_d
    return v1

    .line 487
    :pswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 488
    .line 489
    .line 490
    move-result p1

    .line 491
    if-ne p1, v4, :cond_18

    .line 492
    .line 493
    const/16 p1, 0x42

    .line 494
    .line 495
    if-eq p2, p1, :cond_16

    .line 496
    .line 497
    if-ne p2, v5, :cond_15

    .line 498
    .line 499
    goto :goto_e

    .line 500
    :cond_15
    if-ne p2, v0, :cond_17

    .line 501
    .line 502
    check-cast v2, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 503
    .line 504
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 505
    .line 506
    .line 507
    goto :goto_f

    .line 508
    :cond_16
    :goto_e
    check-cast v3, Landroid/widget/EditText;

    .line 509
    .line 510
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 511
    .line 512
    .line 513
    :cond_17
    :goto_f
    const/4 v1, 0x1

    .line 514
    :cond_18
    return v1

    .line 515
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
