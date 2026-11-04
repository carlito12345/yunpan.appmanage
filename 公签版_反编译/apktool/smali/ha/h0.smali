.class public final synthetic Lha/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/i0;


# direct methods
.method public synthetic constructor <init>(Lha/i0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/h0;->a:I

    iput-object p1, p0, Lha/h0;->b:Lha/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lha/h0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/h0;->b:Lha/i0;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lz7/s;

    .line 12
    .line 13
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "extraType"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "extraName"

    .line 27
    .line 28
    const-string v2, "putStringExtra"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "name"

    .line 34
    .line 35
    const-string v2, ""

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "value"

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p1, Lha/i0;->j:Lx9/g;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p1, Lha/i0;->p:Landroidx/core/widget/NestedScrollView;

    .line 51
    .line 52
    new-instance v1, La2/h;

    .line 53
    .line 54
    const/16 v2, 0x16

    .line 55
    .line 56
    invoke-direct {v1, v2, p1}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_0
    iget-object p1, p0, Lha/h0;->b:Lha/i0;

    .line 64
    .line 65
    iget-object v0, p1, Lha/i0;->y:Landroid/widget/EditText;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    const-string v0, "0"

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p1, Lha/i0;->y:Landroid/widget/EditText;

    .line 89
    .line 90
    invoke-static {v0}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    new-instance v1, Lha/j0;

    .line 103
    .line 104
    new-instance v2, Lha/g0;

    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    invoke-direct {v2, p1, v3}, Lha/g0;-><init>(Lha/i0;I)V

    .line 108
    .line 109
    .line 110
    iget-object v3, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 111
    .line 112
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 113
    .line 114
    invoke-direct {v1, v3, p1, v0, v2}, Lha/j0;-><init>(Landroid/app/Activity;Landroid/content/Context;ILha/g0;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_1
    new-instance p1, Lha/z6;

    .line 122
    .line 123
    iget-object v0, p0, Lha/h0;->b:Lha/i0;

    .line 124
    .line 125
    iget-object v1, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 126
    .line 127
    const-string v2, "\u7528\u9014\uff1aintent.setData(Uri.parse(\"\u60a8\u7684\u5185\u5bb9\"))"

    .line 128
    .line 129
    const-string v3, ""

    .line 130
    .line 131
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 132
    .line 133
    invoke-direct {p1, v1, v0, v2, v3}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :pswitch_2
    new-instance p1, Lha/z6;

    .line 141
    .line 142
    iget-object v0, p0, Lha/h0;->b:Lha/i0;

    .line 143
    .line 144
    iget-object v1, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 145
    .line 146
    const-string v2, "\u7528\u9014\uff1aintent.addCategory()\n\n\u591a\u4e2a\u7684\u8bdd\uff0c\u8bf7\u7528\u9017\u53f7\u5206\u5f00"

    .line 147
    .line 148
    const-string v3, ""

    .line 149
    .line 150
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 151
    .line 152
    invoke-direct {p1, v1, v0, v2, v3}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_3
    iget-object p1, p0, Lha/h0;->b:Lha/i0;

    .line 160
    .line 161
    iget-object v0, p1, Lha/i0;->r:Landroid/widget/EditText;

    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_1

    .line 180
    .line 181
    const-string p1, "\u8bf7\u8f93\u5165 action"

    .line 182
    .line 183
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_2

    .line 187
    .line 188
    :cond_1
    iget-object v0, p1, Lha/i0;->q:Landroid/widget/EditText;

    .line 189
    .line 190
    invoke-static {v0}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_2

    .line 199
    .line 200
    const-string p1, "\u8bf7\u8f93\u5165\u529f\u80fd\u5907\u6ce8\u540d\u79f0"

    .line 201
    .line 202
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_2

    .line 206
    .line 207
    :cond_2
    new-instance v1, Lz7/s;

    .line 208
    .line 209
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v2, "name"

    .line 213
    .line 214
    invoke-virtual {v1, v2, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p1, Lha/i0;->g:Lz7/s;

    .line 218
    .line 219
    iget-object v2, v0, Lz7/s;->a:Lb8/n;

    .line 220
    .line 221
    const-string v3, "keyType"

    .line 222
    .line 223
    invoke-virtual {v2, v3}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_3

    .line 228
    .line 229
    invoke-virtual {v0, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v1, v3, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 242
    .line 243
    .line 244
    const-string v2, "gnType"

    .line 245
    .line 246
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v1, v2, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 259
    .line 260
    .line 261
    :cond_3
    iget-object v0, p1, Lha/i0;->l:Lx9/i4;

    .line 262
    .line 263
    invoke-virtual {v0}, Lx9/i4;->F()I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    const-string v2, "sendMode"

    .line 272
    .line 273
    invoke-virtual {v1, v2, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 274
    .line 275
    .line 276
    iget-object v0, p1, Lha/i0;->n:Lx9/i4;

    .line 277
    .line 278
    invoke-virtual {v0}, Lx9/i4;->F()I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    const-string v2, "sendType"

    .line 287
    .line 288
    invoke-virtual {v1, v2, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 289
    .line 290
    .line 291
    iget-object v0, p1, Lha/i0;->r:Landroid/widget/EditText;

    .line 292
    .line 293
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    const-string v2, "action"

    .line 306
    .line 307
    invoke-virtual {v1, v2, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iget-object v0, p1, Lha/i0;->s:Landroid/widget/EditText;

    .line 311
    .line 312
    invoke-static {v0}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-nez v2, :cond_4

    .line 321
    .line 322
    const-string v2, "category"

    .line 323
    .line 324
    invoke-virtual {v1, v2, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    :cond_4
    iget-object v0, p1, Lha/i0;->t:Landroid/widget/EditText;

    .line 328
    .line 329
    invoke-static {v0}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-nez v2, :cond_5

    .line 338
    .line 339
    const-string v2, "data"

    .line 340
    .line 341
    invoke-virtual {v1, v2, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :cond_5
    iget-object v0, p1, Lha/i0;->v:Landroid/widget/EditText;

    .line 345
    .line 346
    invoke-static {v0}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-nez v2, :cond_6

    .line 355
    .line 356
    const-string v2, "dataType"

    .line 357
    .line 358
    invoke-virtual {v1, v2, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    :cond_6
    iget-object v0, p1, Lha/i0;->w:Landroid/widget/EditText;

    .line 362
    .line 363
    invoke-static {v0}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    if-nez v2, :cond_7

    .line 372
    .line 373
    const-string v2, "package"

    .line 374
    .line 375
    invoke-virtual {v1, v2, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    :cond_7
    iget-object v0, p1, Lha/i0;->x:Landroid/widget/EditText;

    .line 379
    .line 380
    invoke-static {v0}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-nez v2, :cond_8

    .line 389
    .line 390
    const-string v2, "class"

    .line 391
    .line 392
    invoke-virtual {v1, v2, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    :cond_8
    iget-object v0, p1, Lha/i0;->y:Landroid/widget/EditText;

    .line 396
    .line 397
    invoke-static {v0}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-nez v2, :cond_9

    .line 406
    .line 407
    const-string v2, "flags"

    .line 408
    .line 409
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {v1, v2, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 414
    .line 415
    .line 416
    :cond_9
    iget-object v0, p1, Lha/i0;->j:Lx9/g;

    .line 417
    .line 418
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    if-lez v0, :cond_b

    .line 423
    .line 424
    new-instance v0, Lz7/o;

    .line 425
    .line 426
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 427
    .line 428
    .line 429
    iget-object v2, p1, Lha/i0;->j:Lx9/g;

    .line 430
    .line 431
    invoke-virtual {v2}, Lc6/g;->v()Ljava/util/List;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    if-eqz v3, :cond_a

    .line 444
    .line 445
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    check-cast v3, Lz7/s;

    .line 450
    .line 451
    invoke-virtual {v0, v3}, Lz7/o;->k(Lz7/p;)V

    .line 452
    .line 453
    .line 454
    goto :goto_1

    .line 455
    :cond_a
    const-string v2, "extras"

    .line 456
    .line 457
    invoke-virtual {v1, v2, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 458
    .line 459
    .line 460
    :cond_b
    iget-object v0, p1, Lha/i0;->h:Lea/e;

    .line 461
    .line 462
    invoke-interface {v0, v1}, Lea/e;->k(Lz7/s;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 466
    .line 467
    .line 468
    :goto_2
    return-void

    .line 469
    :pswitch_4
    iget-object p1, p0, Lha/h0;->b:Lha/i0;

    .line 470
    .line 471
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 472
    .line 473
    .line 474
    return-void

    .line 475
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
