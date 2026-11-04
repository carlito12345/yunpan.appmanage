.class public final synthetic Lha/l7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/m7;


# direct methods
.method public synthetic constructor <init>(Lha/m7;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/l7;->a:I

    iput-object p1, p0, Lha/l7;->b:Lha/m7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lha/l7;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lha/l7;->b:Lha/m7;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v2, Lz7/s;

    .line 14
    .line 15
    invoke-direct {v2}, Lz7/s;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lz7/o;

    .line 19
    .line 20
    invoke-direct {v3}, Lz7/o;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v4, v1, Lha/m7;->h:Landroid/widget/EditText;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-string v5, "\uff0c"

    .line 38
    .line 39
    const-string v6, ","

    .line 40
    .line 41
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    array-length v7, v4

    .line 50
    const-string v8, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u5750\u6807"

    .line 51
    .line 52
    const/4 v9, 0x2

    .line 53
    if-eq v7, v9, :cond_0

    .line 54
    .line 55
    invoke-static {v8}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_0
    new-instance v7, Lz7/s;

    .line 61
    .line 62
    invoke-direct {v7}, Lz7/s;-><init>()V

    .line 63
    .line 64
    .line 65
    const/4 v10, 0x0

    .line 66
    aget-object v11, v4, v10

    .line 67
    .line 68
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    const-string v12, "start_x"

    .line 77
    .line 78
    invoke-virtual {v7, v12, v11}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 79
    .line 80
    .line 81
    const/4 v11, 0x1

    .line 82
    aget-object v4, v4, v11

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const-string v13, "start_y"

    .line 93
    .line 94
    invoke-virtual {v7, v13, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 95
    .line 96
    .line 97
    iget-object v4, v1, Lha/m7;->i:Landroid/widget/EditText;

    .line 98
    .line 99
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    array-length v14, v4

    .line 120
    if-eq v14, v9, :cond_1

    .line 121
    .line 122
    invoke-static {v8}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_0

    .line 126
    .line 127
    :cond_1
    aget-object v14, v4, v10

    .line 128
    .line 129
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v14

    .line 133
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    const-string v15, "end_x"

    .line 138
    .line 139
    invoke-virtual {v7, v15, v14}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 140
    .line 141
    .line 142
    aget-object v4, v4, v11

    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    const-string v14, "end_y"

    .line 153
    .line 154
    invoke-virtual {v7, v14, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v7}, Lz7/o;->k(Lz7/p;)V

    .line 158
    .line 159
    .line 160
    iget-object v4, v1, Lha/m7;->v:Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 161
    .line 162
    iget v4, v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 163
    .line 164
    if-lez v4, :cond_4

    .line 165
    .line 166
    iget-object v4, v1, Lha/m7;->j:Landroid/widget/EditText;

    .line 167
    .line 168
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    array-length v7, v4

    .line 189
    if-eq v7, v9, :cond_2

    .line 190
    .line 191
    invoke-static {v8}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_2
    new-instance v7, Lz7/s;

    .line 197
    .line 198
    invoke-direct {v7}, Lz7/s;-><init>()V

    .line 199
    .line 200
    .line 201
    aget-object v16, v4, v10

    .line 202
    .line 203
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v16

    .line 207
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    invoke-virtual {v7, v12, v10}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 212
    .line 213
    .line 214
    aget-object v4, v4, v11

    .line 215
    .line 216
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-virtual {v7, v13, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 225
    .line 226
    .line 227
    iget-object v4, v1, Lha/m7;->k:Landroid/widget/EditText;

    .line 228
    .line 229
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    array-length v10, v4

    .line 250
    if-eq v10, v9, :cond_3

    .line 251
    .line 252
    invoke-static {v8}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_3
    const/4 v10, 0x0

    .line 258
    aget-object v16, v4, v10

    .line 259
    .line 260
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v10

    .line 264
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    invoke-virtual {v7, v15, v10}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 269
    .line 270
    .line 271
    aget-object v4, v4, v11

    .line 272
    .line 273
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-virtual {v7, v14, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3, v7}, Lz7/o;->k(Lz7/p;)V

    .line 285
    .line 286
    .line 287
    :cond_4
    iget-object v4, v1, Lha/m7;->v:Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 288
    .line 289
    iget v4, v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 290
    .line 291
    if-le v4, v11, :cond_7

    .line 292
    .line 293
    iget-object v4, v1, Lha/m7;->l:Landroid/widget/EditText;

    .line 294
    .line 295
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    array-length v7, v4

    .line 316
    if-eq v7, v9, :cond_5

    .line 317
    .line 318
    invoke-static {v8}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_0

    .line 322
    .line 323
    :cond_5
    new-instance v7, Lz7/s;

    .line 324
    .line 325
    invoke-direct {v7}, Lz7/s;-><init>()V

    .line 326
    .line 327
    .line 328
    const/4 v10, 0x0

    .line 329
    aget-object v16, v4, v10

    .line 330
    .line 331
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v10

    .line 335
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 336
    .line 337
    .line 338
    move-result-object v10

    .line 339
    invoke-virtual {v7, v12, v10}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 340
    .line 341
    .line 342
    aget-object v4, v4, v11

    .line 343
    .line 344
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {v7, v13, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 353
    .line 354
    .line 355
    iget-object v4, v1, Lha/m7;->m:Landroid/widget/EditText;

    .line 356
    .line 357
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    array-length v5, v4

    .line 378
    if-eq v5, v9, :cond_6

    .line 379
    .line 380
    invoke-static {v8}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 381
    .line 382
    .line 383
    goto :goto_0

    .line 384
    :cond_6
    const/4 v5, 0x0

    .line 385
    aget-object v5, v4, v5

    .line 386
    .line 387
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    invoke-virtual {v7, v15, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 396
    .line 397
    .line 398
    aget-object v4, v4, v11

    .line 399
    .line 400
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    invoke-virtual {v7, v14, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v3, v7}, Lz7/o;->k(Lz7/p;)V

    .line 412
    .line 413
    .line 414
    :cond_7
    iget-object v4, v1, Lha/m7;->n:Landroid/widget/EditText;

    .line 415
    .line 416
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    if-eqz v4, :cond_8

    .line 433
    .line 434
    const-string v1, "\u8bf7\u8f93\u5165\u6ed1\u52a8\u65f6\u957f"

    .line 435
    .line 436
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 437
    .line 438
    .line 439
    goto :goto_0

    .line 440
    :cond_8
    iget-object v4, v1, Lha/m7;->n:Landroid/widget/EditText;

    .line 441
    .line 442
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    const-string v5, "time"

    .line 459
    .line 460
    invoke-virtual {v2, v5, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 461
    .line 462
    .line 463
    const-string v4, "points"

    .line 464
    .line 465
    invoke-virtual {v2, v4, v3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 466
    .line 467
    .line 468
    iget-object v3, v1, Lha/m7;->g:Lha/p8;

    .line 469
    .line 470
    invoke-virtual {v3, v2}, Lha/p8;->k(Lz7/s;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 474
    .line 475
    .line 476
    :goto_0
    return-void

    .line 477
    :pswitch_0
    new-instance v1, Lha/ha;

    .line 478
    .line 479
    iget-object v2, v0, Lha/l7;->b:Lha/m7;

    .line 480
    .line 481
    iget-object v8, v2, Lha/m7;->w:Ljava/util/ArrayList;

    .line 482
    .line 483
    new-instance v9, La1/d;

    .line 484
    .line 485
    const/16 v3, 0x1d

    .line 486
    .line 487
    invoke-direct {v9, v3, v2}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    iget-object v6, v2, Lha/a4;->b:Landroid/content/Context;

    .line 491
    .line 492
    const/4 v7, 0x0

    .line 493
    iget-object v5, v2, Lha/a4;->a:Landroid/app/Activity;

    .line 494
    .line 495
    move-object v4, v1

    .line 496
    invoke-direct/range {v4 .. v9}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 500
    .line 501
    .line 502
    return-void

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
