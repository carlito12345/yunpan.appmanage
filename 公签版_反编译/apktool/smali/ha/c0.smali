.class public final synthetic Lha/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/c0;->a:I

    iput-object p1, p0, Lha/c0;->b:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    const/16 v2, 0x42

    .line 6
    .line 7
    const/16 v3, 0x13

    .line 8
    .line 9
    const/16 v4, 0x14

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    iget-object v7, p0, Lha/c0;->b:Landroid/view/KeyEvent$Callback;

    .line 14
    .line 15
    iget v8, p0, Lha/c0;->a:I

    .line 16
    .line 17
    packed-switch v8, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    sget p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissanSet;->E:I

    .line 21
    .line 22
    check-cast v7, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissanSet;

    .line 23
    .line 24
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    if-ne p2, v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissanSet;->D:Landroid/widget/EditText;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 38
    .line 39
    .line 40
    :cond_0
    const/4 v5, 0x1

    .line 41
    :cond_1
    return v5

    .line 42
    :pswitch_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->H:I

    .line 43
    .line 44
    check-cast v7, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;

    .line 45
    .line 46
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    if-ne p2, v4, :cond_3

    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->D:Landroid/widget/EditText;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 60
    .line 61
    .line 62
    :cond_2
    const/4 v5, 0x1

    .line 63
    :cond_3
    return v5

    .line 64
    :pswitch_1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapAccSet;->E:I

    .line 65
    .line 66
    check-cast v7, Lcom/yunpan/appmanage/ui/ActivityKeyMapAccSet;

    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    if-ne p2, v4, :cond_5

    .line 72
    .line 73
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_4

    .line 78
    .line 79
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityKeyMapAccSet;->D:Landroid/widget/EditText;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 82
    .line 83
    .line 84
    :cond_4
    const/4 v5, 0x1

    .line 85
    :cond_5
    return v5

    .line 86
    :pswitch_2
    sget p1, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 87
    .line 88
    check-cast v7, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    if-ne p2, v4, :cond_7

    .line 94
    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_6

    .line 100
    .line 101
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 104
    .line 105
    .line 106
    :cond_6
    :goto_0
    const/4 v5, 0x1

    .line 107
    goto :goto_1

    .line 108
    :cond_7
    if-ne p2, v3, :cond_8

    .line 109
    .line 110
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_6

    .line 115
    .line 116
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string p2, "up"

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_8
    if-ne p2, v2, :cond_9

    .line 127
    .line 128
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_6

    .line 133
    .line 134
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 135
    .line 136
    invoke-virtual {p1, v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 137
    .line 138
    .line 139
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_9
    if-ne p2, v1, :cond_a

    .line 146
    .line 147
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-nez p1, :cond_a

    .line 152
    .line 153
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->H:Landroid/widget/EditText;

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-nez p1, :cond_a

    .line 164
    .line 165
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->H:Landroid/widget/EditText;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-nez p1, :cond_a

    .line 176
    .line 177
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getItemCount()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-lez p1, :cond_a

    .line 184
    .line 185
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_a
    :goto_1
    return v5

    .line 192
    :pswitch_3
    sget p3, Lcom/yunpan/appmanage/ui/ActivityClean;->M:I

    .line 193
    .line 194
    check-cast v7, Lcom/yunpan/appmanage/ui/ActivityClean;

    .line 195
    .line 196
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    const/16 p3, 0x12d

    .line 200
    .line 201
    if-ne p2, v3, :cond_b

    .line 202
    .line 203
    invoke-static {p3, p1}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 204
    .line 205
    .line 206
    :goto_2
    const/4 v5, 0x1

    .line 207
    goto :goto_3

    .line 208
    :cond_b
    const/16 v2, 0x12e

    .line 209
    .line 210
    if-ne p2, v4, :cond_c

    .line 211
    .line 212
    invoke-static {v2, p1}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_c
    if-ne p2, v1, :cond_e

    .line 217
    .line 218
    iget-object p2, v7, Lcom/yunpan/appmanage/ui/ActivityClean;->E:Lx9/t0;

    .line 219
    .line 220
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 221
    .line 222
    .line 223
    move-result p2

    .line 224
    if-lez p2, :cond_d

    .line 225
    .line 226
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityClean;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_d
    invoke-static {p3, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_e
    if-ne p2, v0, :cond_f

    .line 237
    .line 238
    invoke-static {v2, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_f
    :goto_3
    return v5

    .line 243
    :pswitch_4
    if-ne p2, v4, :cond_11

    .line 244
    .line 245
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-nez p1, :cond_10

    .line 250
    .line 251
    check-cast v7, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 252
    .line 253
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 254
    .line 255
    .line 256
    :cond_10
    :goto_4
    const/4 v5, 0x1

    .line 257
    goto :goto_5

    .line 258
    :cond_11
    if-ne p2, v3, :cond_12

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_12
    :goto_5
    return v5

    .line 262
    :pswitch_5
    check-cast v7, Lha/ge;

    .line 263
    .line 264
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    if-eq p2, v4, :cond_13

    .line 268
    .line 269
    if-ne p2, v2, :cond_15

    .line 270
    .line 271
    :cond_13
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    if-nez p1, :cond_14

    .line 276
    .line 277
    iget-object p1, v7, Lha/ge;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 278
    .line 279
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 280
    .line 281
    .line 282
    :cond_14
    const/4 v5, 0x1

    .line 283
    :cond_15
    return v5

    .line 284
    :pswitch_6
    check-cast v7, Lha/nb;

    .line 285
    .line 286
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-nez p1, :cond_19

    .line 294
    .line 295
    if-ne p2, v3, :cond_17

    .line 296
    .line 297
    iget-object p1, v7, Lha/nb;->k:Lx9/e0;

    .line 298
    .line 299
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    if-lez p1, :cond_16

    .line 304
    .line 305
    iget-object p1, v7, Lha/nb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 306
    .line 307
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 308
    .line 309
    .line 310
    goto/16 :goto_7

    .line 311
    .line 312
    :cond_16
    iget-object p1, v7, Lha/nb;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 313
    .line 314
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 315
    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_17
    if-ne p2, v1, :cond_18

    .line 319
    .line 320
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 321
    .line 322
    iget-object p2, v7, Lha/nb;->v:Landroid/widget/EditText;

    .line 323
    .line 324
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 329
    .line 330
    .line 331
    iget-object p2, v7, Lha/nb;->v:Landroid/widget/EditText;

    .line 332
    .line 333
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    iget-object p1, v7, Lha/nb;->v:Landroid/widget/EditText;

    .line 344
    .line 345
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    if-nez p1, :cond_19

    .line 354
    .line 355
    iget-object p1, v7, Lha/nb;->v:Landroid/widget/EditText;

    .line 356
    .line 357
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    if-nez p1, :cond_19

    .line 366
    .line 367
    iget-object p1, v7, Lha/nb;->n:Landroid/widget/TextView;

    .line 368
    .line 369
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 370
    .line 371
    .line 372
    :goto_6
    const/4 v5, 0x1

    .line 373
    goto :goto_7

    .line 374
    :cond_18
    if-ne p2, v0, :cond_19

    .line 375
    .line 376
    iget-object p1, v7, Lha/nb;->v:Landroid/widget/EditText;

    .line 377
    .line 378
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 383
    .line 384
    .line 385
    move-result p1

    .line 386
    iget-object p2, v7, Lha/nb;->v:Landroid/widget/EditText;

    .line 387
    .line 388
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 389
    .line 390
    .line 391
    move-result-object p2

    .line 392
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 393
    .line 394
    .line 395
    move-result p2

    .line 396
    if-ne p1, p2, :cond_19

    .line 397
    .line 398
    iget-object p1, v7, Lha/nb;->v:Landroid/widget/EditText;

    .line 399
    .line 400
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    iget-object p2, v7, Lha/nb;->v:Landroid/widget/EditText;

    .line 409
    .line 410
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 411
    .line 412
    .line 413
    move-result-object p2

    .line 414
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 415
    .line 416
    .line 417
    move-result p2

    .line 418
    if-ne p1, p2, :cond_19

    .line 419
    .line 420
    iget-object p1, v7, Lha/nb;->l:Landroid/widget/TextView;

    .line 421
    .line 422
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 423
    .line 424
    .line 425
    goto :goto_6

    .line 426
    :cond_19
    :goto_7
    return v5

    .line 427
    :pswitch_7
    check-cast v7, Lha/r7;

    .line 428
    .line 429
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    if-ne p2, v4, :cond_1a

    .line 433
    .line 434
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    if-ne p1, v6, :cond_1a

    .line 439
    .line 440
    iget-object p1, v7, Lha/r7;->i:Lx9/r2;

    .line 441
    .line 442
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 443
    .line 444
    .line 445
    move-result p1

    .line 446
    if-lez p1, :cond_1a

    .line 447
    .line 448
    goto :goto_8

    .line 449
    :cond_1a
    const/4 v5, 0x1

    .line 450
    :goto_8
    return v5

    .line 451
    :pswitch_8
    check-cast v7, Lha/f7;

    .line 452
    .line 453
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 457
    .line 458
    .line 459
    move-result p1

    .line 460
    if-nez p1, :cond_1b

    .line 461
    .line 462
    if-ne p2, v4, :cond_1b

    .line 463
    .line 464
    iget-object p1, v7, Lha/f7;->h:Landroid/widget/EditText;

    .line 465
    .line 466
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 471
    .line 472
    .line 473
    move-result p1

    .line 474
    iget-object p2, v7, Lha/f7;->h:Landroid/widget/EditText;

    .line 475
    .line 476
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 477
    .line 478
    .line 479
    move-result-object p2

    .line 480
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 481
    .line 482
    .line 483
    move-result p2

    .line 484
    if-ne p2, p1, :cond_1b

    .line 485
    .line 486
    iget-object p2, v7, Lha/f7;->h:Landroid/widget/EditText;

    .line 487
    .line 488
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 489
    .line 490
    .line 491
    move-result-object p2

    .line 492
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 493
    .line 494
    .line 495
    move-result p2

    .line 496
    if-ne p2, p1, :cond_1b

    .line 497
    .line 498
    iget-object p1, v7, Lha/f7;->j:Landroid/widget/TextView;

    .line 499
    .line 500
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 501
    .line 502
    .line 503
    const/4 v5, 0x1

    .line 504
    :cond_1b
    return v5

    .line 505
    :pswitch_9
    check-cast v7, Lha/z5;

    .line 506
    .line 507
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 508
    .line 509
    .line 510
    if-ne p2, v4, :cond_1d

    .line 511
    .line 512
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 513
    .line 514
    .line 515
    move-result p1

    .line 516
    if-nez p1, :cond_1c

    .line 517
    .line 518
    iget-object p1, v7, Lha/z5;->l:Landroid/widget/LinearLayout;

    .line 519
    .line 520
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 521
    .line 522
    .line 523
    :cond_1c
    :goto_9
    const/4 v5, 0x1

    .line 524
    goto :goto_a

    .line 525
    :cond_1d
    if-ne p2, v3, :cond_1e

    .line 526
    .line 527
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 528
    .line 529
    .line 530
    move-result p1

    .line 531
    if-nez p1, :cond_1c

    .line 532
    .line 533
    iget-object p1, v7, Lha/z5;->x:Landroid/widget/CheckBox;

    .line 534
    .line 535
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 536
    .line 537
    .line 538
    goto :goto_9

    .line 539
    :cond_1e
    if-ne p2, v2, :cond_1f

    .line 540
    .line 541
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 542
    .line 543
    .line 544
    move-result p1

    .line 545
    if-nez p1, :cond_1c

    .line 546
    .line 547
    iget-object p1, v7, Lha/z5;->l:Landroid/widget/LinearLayout;

    .line 548
    .line 549
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 550
    .line 551
    .line 552
    goto :goto_9

    .line 553
    :cond_1f
    if-ne p2, v0, :cond_20

    .line 554
    .line 555
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 556
    .line 557
    .line 558
    move-result p1

    .line 559
    if-nez p1, :cond_20

    .line 560
    .line 561
    iget-object p1, v7, Lha/z5;->B:Landroid/widget/EditText;

    .line 562
    .line 563
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 564
    .line 565
    .line 566
    move-result-object p1

    .line 567
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 568
    .line 569
    .line 570
    move-result p1

    .line 571
    iget-object p2, v7, Lha/z5;->B:Landroid/widget/EditText;

    .line 572
    .line 573
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 574
    .line 575
    .line 576
    move-result-object p2

    .line 577
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 578
    .line 579
    .line 580
    move-result p2

    .line 581
    if-ne p1, p2, :cond_20

    .line 582
    .line 583
    iget-object p1, v7, Lha/z5;->l:Landroid/widget/LinearLayout;

    .line 584
    .line 585
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 586
    .line 587
    .line 588
    :cond_20
    :goto_a
    return v5

    .line 589
    :pswitch_a
    check-cast v7, Lha/o5;

    .line 590
    .line 591
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    if-ne p2, v4, :cond_23

    .line 595
    .line 596
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 597
    .line 598
    .line 599
    move-result p1

    .line 600
    if-nez p1, :cond_22

    .line 601
    .line 602
    iget-object p1, v7, Lha/o5;->h:Ljava/lang/String;

    .line 603
    .line 604
    invoke-static {p1}, Lif/a;->X(Ljava/lang/String;)Z

    .line 605
    .line 606
    .line 607
    move-result p1

    .line 608
    if-eqz p1, :cond_21

    .line 609
    .line 610
    iget-object p1, v7, Lha/o5;->k:Landroid/widget/LinearLayout;

    .line 611
    .line 612
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 613
    .line 614
    .line 615
    goto :goto_b

    .line 616
    :cond_21
    iget-object p1, v7, Lha/o5;->j:Landroid/widget/LinearLayout;

    .line 617
    .line 618
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 619
    .line 620
    .line 621
    :cond_22
    :goto_b
    const/4 v5, 0x1

    .line 622
    goto :goto_c

    .line 623
    :cond_23
    if-ne p2, v3, :cond_24

    .line 624
    .line 625
    goto :goto_b

    .line 626
    :cond_24
    :goto_c
    return v5

    .line 627
    :pswitch_b
    check-cast v7, Lha/f0;

    .line 628
    .line 629
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    .line 631
    .line 632
    if-ne p2, v3, :cond_26

    .line 633
    .line 634
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 635
    .line 636
    .line 637
    move-result p1

    .line 638
    if-nez p1, :cond_25

    .line 639
    .line 640
    iget-object p1, v7, Lha/f0;->k:Landroid/widget/TextView;

    .line 641
    .line 642
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 643
    .line 644
    .line 645
    :cond_25
    const/4 v5, 0x1

    .line 646
    :cond_26
    return v5

    .line 647
    :pswitch_data_0
    .packed-switch 0x0
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
