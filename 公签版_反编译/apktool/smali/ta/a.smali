.class public final synthetic Lta/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/service/AccService;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/service/AccService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lta/a;->a:I

    iput-object p1, p0, Lta/a;->b:Lcom/yunpan/appmanage/service/AccService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 14

    .line 1
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/u;->a0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lta/a;->b:Lcom/yunpan/appmanage/service/AccService;

    .line 10
    .line 11
    const/16 v3, 0x10

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const-string v5, "android.widget.FrameLayout"

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_1
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-nez v7, :cond_2

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_2
    const-string v7, "\u59cb\u7ec8"

    .line 46
    .line 47
    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const/16 v8, 0x12

    .line 52
    .line 53
    if-eqz v7, :cond_3

    .line 54
    .line 55
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-nez v9, :cond_3

    .line 60
    .line 61
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    nop

    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    .line 73
    if-lt v7, v8, :cond_4

    .line 74
    .line 75
    invoke-static {v1}, Ltb/a;->m(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    if-eqz v7, :cond_4

    .line 80
    .line 81
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-nez v9, :cond_4

    .line 86
    .line 87
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    move-object v7, v4

    .line 95
    :goto_0
    const-string v9, "\u4ec5\u6b64\u4e00\u6b21"

    .line 96
    .line 97
    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    if-eqz v9, :cond_5

    .line 102
    .line 103
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    if-nez v10, :cond_5

    .line 108
    .line 109
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    check-cast v8, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    .line 118
    if-lt v9, v8, :cond_6

    .line 119
    .line 120
    invoke-static {v1}, Ltb/a;->o(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    if-eqz v8, :cond_6

    .line 125
    .line 126
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-nez v9, :cond_6

    .line 131
    .line 132
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    check-cast v8, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    move-object v8, v4

    .line 140
    :goto_1
    iget-object v9, v0, Lwa/u;->a0:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-eqz v1, :cond_a

    .line 147
    .line 148
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    if-nez v9, :cond_a

    .line 153
    .line 154
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 159
    .line 160
    if-eqz v7, :cond_7

    .line 161
    .line 162
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    iget-object v0, v0, Lwa/u;->a0:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_7

    .line 177
    .line 178
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 179
    .line 180
    .line 181
    goto/16 :goto_c

    .line 182
    .line 183
    :cond_7
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_8

    .line 188
    .line 189
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    if-nez v1, :cond_7

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_8
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 197
    .line 198
    .line 199
    if-eqz v7, :cond_9

    .line 200
    .line 201
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 202
    .line 203
    .line 204
    goto/16 :goto_c

    .line 205
    .line 206
    :cond_9
    if-eqz v8, :cond_a

    .line 207
    .line 208
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .line 210
    .line 211
    goto/16 :goto_c

    .line 212
    .line 213
    :cond_a
    :goto_2
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    if-nez v0, :cond_b

    .line 218
    .line 219
    goto/16 :goto_c

    .line 220
    .line 221
    :cond_b
    :try_start_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    if-nez v1, :cond_d

    .line 234
    .line 235
    :catch_1
    :cond_c
    :goto_3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_c

    .line 239
    .line 240
    :cond_d
    :try_start_2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    const/4 v2, 0x1

    .line 245
    if-ne v1, v2, :cond_e

    .line 246
    .line 247
    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    goto :goto_4

    .line 252
    :catchall_0
    move-exception v1

    .line 253
    goto/16 :goto_d

    .line 254
    .line 255
    :catch_2
    move-exception v1

    .line 256
    goto/16 :goto_b

    .line 257
    .line 258
    :cond_e
    move-object v1, v0

    .line 259
    :goto_4
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-ne v5, v2, :cond_f

    .line 264
    .line 265
    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    :cond_f
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    const/4 v7, 0x2

    .line 274
    if-lt v5, v7, :cond_c

    .line 275
    .line 276
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    const/4 v7, 0x6

    .line 281
    if-le v5, v7, :cond_10

    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_10
    move-object v7, v4

    .line 285
    move-object v8, v7

    .line 286
    move-object v9, v8

    .line 287
    move-object v10, v9

    .line 288
    const/4 v5, 0x0

    .line 289
    const/4 v11, 0x0

    .line 290
    :goto_5
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 291
    .line 292
    .line 293
    move-result v12

    .line 294
    if-ge v5, v12, :cond_16

    .line 295
    .line 296
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 297
    .line 298
    .line 299
    move-result-object v12

    .line 300
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 301
    .line 302
    .line 303
    move-result-object v12

    .line 304
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v12

    .line 308
    const-string v13, "android.widget.TextView"

    .line 309
    .line 310
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v13

    .line 314
    if-eqz v13, :cond_11

    .line 315
    .line 316
    if-nez v8, :cond_15

    .line 317
    .line 318
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    goto :goto_6

    .line 323
    :cond_11
    const-string v13, "android.widget.Button"

    .line 324
    .line 325
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v13

    .line 329
    if-eqz v13, :cond_13

    .line 330
    .line 331
    if-nez v10, :cond_12

    .line 332
    .line 333
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 334
    .line 335
    .line 336
    move-result-object v10

    .line 337
    if-eq v5, v2, :cond_15

    .line 338
    .line 339
    const/4 v11, 0x1

    .line 340
    goto :goto_6

    .line 341
    :cond_12
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 342
    .line 343
    .line 344
    move-result-object v9

    .line 345
    goto :goto_6

    .line 346
    :cond_13
    const-string v13, "android.widget.TabHost"

    .line 347
    .line 348
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v13

    .line 352
    if-nez v13, :cond_14

    .line 353
    .line 354
    const-string v13, "android.widget.ListView"

    .line 355
    .line 356
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v12

    .line 360
    if-eqz v12, :cond_15

    .line 361
    .line 362
    :cond_14
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    :cond_15
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_16
    if-nez v7, :cond_17

    .line 370
    .line 371
    goto/16 :goto_3

    .line 372
    .line 373
    :cond_17
    if-eqz v8, :cond_18

    .line 374
    .line 375
    if-eqz v9, :cond_18

    .line 376
    .line 377
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    sget-object v5, Lwa/t;->a:Lwa/u;

    .line 386
    .line 387
    iget-object v5, v5, Lwa/u;->Z:Ljava/lang/String;

    .line 388
    .line 389
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    if-eqz v1, :cond_18

    .line 394
    .line 395
    invoke-virtual {v9, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 396
    .line 397
    .line 398
    goto/16 :goto_3

    .line 399
    .line 400
    :cond_18
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-ne v1, v2, :cond_19

    .line 405
    .line 406
    invoke-virtual {v7, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    :cond_19
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-ne v1, v2, :cond_1a

    .line 415
    .line 416
    invoke-virtual {v7, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 417
    .line 418
    .line 419
    move-result-object v7

    .line 420
    :cond_1a
    const/4 v1, 0x0

    .line 421
    :goto_7
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    if-ge v1, v5, :cond_23

    .line 426
    .line 427
    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 432
    .line 433
    .line 434
    move-result v5

    .line 435
    if-eq v5, v2, :cond_1b

    .line 436
    .line 437
    goto :goto_9

    .line 438
    :cond_1b
    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    const-string v8, ".TextView"

    .line 455
    .line 456
    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 457
    .line 458
    .line 459
    move-result v5

    .line 460
    if-nez v5, :cond_1c

    .line 461
    .line 462
    goto/16 :goto_3

    .line 463
    .line 464
    :cond_1c
    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 481
    .line 482
    .line 483
    move-result v8

    .line 484
    if-eqz v8, :cond_1d

    .line 485
    .line 486
    goto/16 :goto_3

    .line 487
    .line 488
    :cond_1d
    const-string v8, "\u4e3b\u5c4f\u5e55"

    .line 489
    .line 490
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v8

    .line 494
    if-nez v8, :cond_1e

    .line 495
    .line 496
    const-string v8, "Home Screen"

    .line 497
    .line 498
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v8

    .line 502
    if-eqz v8, :cond_1f

    .line 503
    .line 504
    :cond_1e
    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    :cond_1f
    sget-object v8, Lwa/t;->a:Lwa/u;

    .line 509
    .line 510
    iget-object v8, v8, Lwa/u;->Z:Ljava/lang/String;

    .line 511
    .line 512
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v5

    .line 516
    if-eqz v5, :cond_22

    .line 517
    .line 518
    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 523
    .line 524
    .line 525
    if-eqz v10, :cond_21

    .line 526
    .line 527
    if-nez v11, :cond_20

    .line 528
    .line 529
    goto :goto_8

    .line 530
    :cond_20
    :try_start_3
    invoke-virtual {v10, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 531
    .line 532
    .line 533
    goto/16 :goto_3

    .line 534
    .line 535
    :cond_21
    :goto_8
    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 540
    .line 541
    .line 542
    goto/16 :goto_3

    .line 543
    .line 544
    :cond_22
    :goto_9
    add-int/lit8 v1, v1, 0x1

    .line 545
    .line 546
    goto :goto_7

    .line 547
    :cond_23
    if-eqz v4, :cond_26

    .line 548
    .line 549
    :try_start_4
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 550
    .line 551
    .line 552
    if-eqz v10, :cond_25

    .line 553
    .line 554
    if-nez v11, :cond_24

    .line 555
    .line 556
    goto :goto_a

    .line 557
    :cond_24
    :try_start_5
    invoke-virtual {v10, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 558
    .line 559
    .line 560
    goto/16 :goto_3

    .line 561
    .line 562
    :cond_25
    :goto_a
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 563
    .line 564
    .line 565
    goto/16 :goto_3

    .line 566
    .line 567
    :cond_26
    if-eqz v9, :cond_27

    .line 568
    .line 569
    :try_start_6
    invoke-virtual {v10, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 570
    .line 571
    .line 572
    goto/16 :goto_3

    .line 573
    .line 574
    :cond_27
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 575
    .line 576
    iget-object v1, v1, Lwa/u;->Z:Ljava/lang/String;

    .line 577
    .line 578
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    if-eqz v1, :cond_c

    .line 583
    .line 584
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 585
    .line 586
    .line 587
    move-result v2

    .line 588
    if-nez v2, :cond_c

    .line 589
    .line 590
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 595
    .line 596
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 601
    .line 602
    .line 603
    if-eqz v11, :cond_28

    .line 604
    .line 605
    if-eqz v9, :cond_28

    .line 606
    .line 607
    invoke-virtual {v9, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 608
    .line 609
    .line 610
    goto/16 :goto_3

    .line 611
    .line 612
    :cond_28
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 617
    .line 618
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 623
    .line 624
    .line 625
    goto/16 :goto_3

    .line 626
    .line 627
    :goto_b
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 628
    .line 629
    .line 630
    goto/16 :goto_3

    .line 631
    .line 632
    :goto_c
    return-void

    .line 633
    :goto_d
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 634
    .line 635
    .line 636
    goto :goto_f

    .line 637
    :goto_e
    throw v1

    .line 638
    :goto_f
    goto :goto_e
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x10

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Lta/a;->b:Lcom/yunpan/appmanage/service/AccService;

    .line 7
    .line 8
    iget v5, p0, Lta/a;->a:I

    .line 9
    .line 10
    packed-switch v5, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-static {v4}, Lnh/b;->O(Lcom/yunpan/appmanage/service/AccService;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    return-void

    .line 17
    :pswitch_0
    :try_start_1
    invoke-static {v4}, Lnh/b;->O(Lcom/yunpan/appmanage/service/AccService;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, v4, Lcom/yunpan/appmanage/service/AccService;->j:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance v1, Lta/a;

    .line 26
    .line 27
    const/16 v2, 0xc

    .line 28
    .line 29
    invoke-direct {v1, v4, v2}, Lta/a;-><init>(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v2, 0xc8

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    .line 36
    .line 37
    :catch_1
    :cond_0
    return-void

    .line 38
    :pswitch_1
    :try_start_2
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string v2, "\u5141\u8bb8\u8bbf\u95ee\u4e00\u6b21"

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 67
    .line 68
    .line 69
    :catch_2
    :cond_3
    :goto_0
    return-void

    .line 70
    :pswitch_2
    :try_start_3
    invoke-static {v4}, Lnh/b;->k(Lcom/yunpan/appmanage/service/AccService;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 71
    .line 72
    .line 73
    :catch_3
    return-void

    .line 74
    :pswitch_3
    invoke-direct {p0}, Lta/a;->a()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_4
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-nez v4, :cond_4

    .line 83
    .line 84
    goto/16 :goto_7

    .line 85
    .line 86
    :cond_4
    :try_start_4
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const-string v6, "android.widget.FrameLayout"

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100
    if-nez v5, :cond_6

    .line 101
    .line 102
    :catch_4
    :cond_5
    :goto_1
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_7

    .line 106
    .line 107
    :cond_6
    :try_start_5
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    const/4 v6, 0x2

    .line 112
    if-lt v5, v6, :cond_5

    .line 113
    .line 114
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    const/4 v6, 0x6

    .line 119
    if-le v5, v6, :cond_7

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_7
    move-object v6, v0

    .line 123
    move-object v7, v6

    .line 124
    const/4 v5, 0x0

    .line 125
    :goto_2
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-ge v5, v8, :cond_c

    .line 130
    .line 131
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    const-string v9, "android.widget.Button"

    .line 144
    .line 145
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    if-eqz v9, :cond_9

    .line 150
    .line 151
    if-nez v7, :cond_8

    .line 152
    .line 153
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    goto :goto_3

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    goto/16 :goto_8

    .line 160
    .line 161
    :catch_5
    move-exception v0

    .line 162
    goto/16 :goto_6

    .line 163
    .line 164
    :cond_8
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_9
    const-string v9, "android.widget.GridView"

    .line 169
    .line 170
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    if-nez v9, :cond_a

    .line 175
    .line 176
    const-string v9, "android.widget.ListView"

    .line 177
    .line 178
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-eqz v8, :cond_b

    .line 183
    .line 184
    :cond_a
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    :cond_b
    :goto_3
    add-int/2addr v5, v2

    .line 189
    goto :goto_2

    .line 190
    :cond_c
    if-nez v6, :cond_d

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_d
    const/4 v5, 0x0

    .line 194
    :goto_4
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-ge v5, v8, :cond_15

    .line 199
    .line 200
    invoke-virtual {v6, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    if-eq v8, v2, :cond_e

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_e
    invoke-virtual {v6, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    invoke-virtual {v8, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    const-string v9, ".TextView"

    .line 228
    .line 229
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    if-nez v8, :cond_f

    .line 234
    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :cond_f
    invoke-virtual {v6, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-virtual {v8, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-eqz v9, :cond_10

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_10
    const-string v9, "\u4e3b\u5c4f\u5e55"

    .line 261
    .line 262
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v9

    .line 266
    if-nez v9, :cond_11

    .line 267
    .line 268
    const-string v9, "Home Screen"

    .line 269
    .line 270
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v9

    .line 274
    if-eqz v9, :cond_12

    .line 275
    .line 276
    :cond_11
    invoke-virtual {v6, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    :cond_12
    sget-object v9, Lwa/t;->a:Lwa/u;

    .line 281
    .line 282
    iget-object v9, v9, Lwa/u;->Z:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    if-eqz v8, :cond_14

    .line 289
    .line 290
    invoke-virtual {v6, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 295
    .line 296
    .line 297
    if-nez v7, :cond_13

    .line 298
    .line 299
    goto/16 :goto_1

    .line 300
    .line 301
    :cond_13
    :try_start_6
    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 302
    .line 303
    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :cond_14
    :goto_5
    add-int/2addr v5, v2

    .line 307
    goto :goto_4

    .line 308
    :cond_15
    if-eqz v0, :cond_17

    .line 309
    .line 310
    :try_start_7
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 311
    .line 312
    .line 313
    if-nez v7, :cond_16

    .line 314
    .line 315
    goto/16 :goto_1

    .line 316
    .line 317
    :cond_16
    :try_start_8
    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 318
    .line 319
    .line 320
    goto/16 :goto_1

    .line 321
    .line 322
    :cond_17
    if-eqz v7, :cond_5

    .line 323
    .line 324
    :try_start_9
    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 325
    .line 326
    .line 327
    goto/16 :goto_1

    .line 328
    .line 329
    :goto_6
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 330
    .line 331
    .line 332
    goto/16 :goto_1

    .line 333
    .line 334
    :goto_7
    return-void

    .line 335
    :goto_8
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 336
    .line 337
    .line 338
    throw v0

    .line 339
    :pswitch_5
    :try_start_b
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    if-nez v0, :cond_18

    .line 344
    .line 345
    goto :goto_b

    .line 346
    :cond_18
    invoke-static {v0}, Ltb/a;->g(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    if-eqz v2, :cond_19

    .line 351
    .line 352
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-eqz v4, :cond_1a

    .line 357
    .line 358
    goto :goto_9

    .line 359
    :catch_6
    move-exception v0

    .line 360
    goto :goto_a

    .line 361
    :cond_19
    :goto_9
    const-string v2, "\u5141\u8bb8"

    .line 362
    .line 363
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    :cond_1a
    if-eqz v2, :cond_1c

    .line 368
    .line 369
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-eqz v0, :cond_1b

    .line 374
    .line 375
    goto :goto_b

    .line 376
    :cond_1b
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 381
    .line 382
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 383
    .line 384
    .line 385
    goto :goto_b

    .line 386
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 387
    .line 388
    .line 389
    :cond_1c
    :goto_b
    return-void

    .line 390
    :pswitch_6
    sget v0, Lcom/yunpan/appmanage/service/AccService;->U0:I

    .line 391
    .line 392
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    invoke-static {v4}, Lif/a;->G0(Lcom/yunpan/appmanage/service/AccService;)V

    .line 396
    .line 397
    .line 398
    return-void

    .line 399
    :pswitch_7
    sget v1, Lcom/yunpan/appmanage/service/AccService;->U0:I

    .line 400
    .line 401
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    invoke-static {}, Lya/h;->a()Lya/h;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {v1, v4}, Lya/h;->b(Lcom/yunpan/appmanage/service/AccService;)V

    .line 409
    .line 410
    .line 411
    invoke-static {}, Lya/e;->b()Lya/e;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    iput-object v4, v1, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 416
    .line 417
    const-string v2, "window"

    .line 418
    .line 419
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    check-cast v2, Landroid/view/WindowManager;

    .line 424
    .line 425
    iput-object v2, v1, Lya/e;->g:Landroid/view/WindowManager;

    .line 426
    .line 427
    iget-object v2, v1, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 428
    .line 429
    const-string v5, "MyFloatButton"

    .line 430
    .line 431
    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    iput-object v2, v1, Lya/e;->b:Landroid/content/SharedPreferences;

    .line 436
    .line 437
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    iput-object v2, v1, Lya/e;->c:Landroid/content/SharedPreferences$Editor;

    .line 442
    .line 443
    invoke-static {}, Lya/e;->b()Lya/e;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-virtual {v1}, Lya/e;->d()V

    .line 448
    .line 449
    .line 450
    sget-object v1, Lwa/y;->a:Lwa/z;

    .line 451
    .line 452
    iput-object v4, v1, Lwa/z;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 453
    .line 454
    iput-object v0, v1, Lwa/z;->c:Lv8/a;

    .line 455
    .line 456
    iput-object v0, v1, Lwa/z;->d:Lv8/a;

    .line 457
    .line 458
    iput v3, v1, Lwa/z;->e:I

    .line 459
    .line 460
    const-wide/16 v2, 0x0

    .line 461
    .line 462
    iput-wide v2, v1, Lwa/z;->g:J

    .line 463
    .line 464
    return-void

    .line 465
    :pswitch_8
    sget v0, Lcom/yunpan/appmanage/service/AccService;->U0:I

    .line 466
    .line 467
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    :try_start_c
    new-instance v0, Lcom/yunpan/appmanage/carsdk/x;

    .line 471
    .line 472
    invoke-direct {v0, v4}, Lcom/yunpan/appmanage/carsdk/x;-><init>(Lcom/yunpan/appmanage/service/AccService;)V

    .line 473
    .line 474
    .line 475
    iput-object v0, v4, Lcom/yunpan/appmanage/service/AccService;->d:Lcom/yunpan/appmanage/carsdk/x;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 476
    .line 477
    :catch_7
    return-void

    .line 478
    :pswitch_9
    iget-object v0, v4, Lcom/yunpan/appmanage/service/AccService;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 479
    .line 480
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 481
    .line 482
    .line 483
    invoke-static {}, Lya/e;->b()Lya/e;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-virtual {v0}, Lya/e;->e()V

    .line 488
    .line 489
    .line 490
    invoke-static {}, Lya/h;->a()Lya/h;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-virtual {v0}, Lya/h;->c()V

    .line 495
    .line 496
    .line 497
    :try_start_d
    invoke-static {}, Lv8/b;->a()V

    .line 498
    .line 499
    .line 500
    invoke-static {}, Lv8/b;->b()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 501
    .line 502
    .line 503
    :catch_8
    return-void

    .line 504
    :pswitch_a
    iget-object v0, v4, Lcom/yunpan/appmanage/service/AccService;->E:Ljava/lang/String;

    .line 505
    .line 506
    const-string v1, ".FallbackHome"

    .line 507
    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    if-eqz v0, :cond_1d

    .line 513
    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    const-string v1, "\u68c0\u6d4b\u5230\u65e0\u6cd5\u5f00\u673a\uff0c\u542f\u52a8\u5e94\u6025\u63aa\u65bd\uff1a\u6253\u5f00"

    .line 517
    .line 518
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    const v1, 0x7f13016f

    .line 522
    .line 523
    .line 524
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 536
    .line 537
    .line 538
    iget-object v0, v4, Lcom/yunpan/appmanage/service/AccService;->t0:Ljava/util/concurrent/ExecutorService;

    .line 539
    .line 540
    new-instance v1, Lta/a;

    .line 541
    .line 542
    const/4 v2, 0x5

    .line 543
    invoke-direct {v1, v4, v2}, Lta/a;-><init>(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 544
    .line 545
    .line 546
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 547
    .line 548
    .line 549
    :cond_1d
    return-void

    .line 550
    :pswitch_b
    sget v0, Lcom/yunpan/appmanage/service/AccService;->U0:I

    .line 551
    .line 552
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    .line 554
    .line 555
    const-string v0, "ACC_IS_RUNNING_YES"

    .line 556
    .line 557
    invoke-static {v4, v0}, Lta/m;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    :try_start_e
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    iget-boolean v0, v0, Lwa/s;->a:Z

    .line 565
    .line 566
    if-eqz v0, :cond_1e

    .line 567
    .line 568
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 569
    .line 570
    const/16 v1, 0x1a

    .line 571
    .line 572
    if-lt v0, v1, :cond_1e

    .line 573
    .line 574
    sget-object v0, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 575
    .line 576
    iput-object v4, v0, Lcom/yunpan/appmanage/carsdk/k0;->g:Ljava/lang/Object;

    .line 577
    .line 578
    new-instance v1, Landroid/os/HandlerThread;

    .line 579
    .line 580
    const-string v5, "MyCar"

    .line 581
    .line 582
    invoke-direct {v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/k0;->f:Ljava/lang/Object;

    .line 586
    .line 587
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 588
    .line 589
    .line 590
    new-instance v1, Landroid/os/Handler;

    .line 591
    .line 592
    iget-object v5, v0, Lcom/yunpan/appmanage/carsdk/k0;->f:Ljava/lang/Object;

    .line 593
    .line 594
    check-cast v5, Landroid/os/HandlerThread;

    .line 595
    .line 596
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 597
    .line 598
    .line 599
    move-result-object v5

    .line 600
    invoke-direct {v1, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 601
    .line 602
    .line 603
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/k0;->e:Ljava/lang/Object;

    .line 604
    .line 605
    invoke-virtual {v0}, Lcom/yunpan/appmanage/carsdk/k0;->a()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 606
    .line 607
    .line 608
    :catch_9
    :cond_1e
    :try_start_f
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    iget-object v0, v0, Lwa/s;->o:Ljava/util/HashMap;

    .line 613
    .line 614
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 615
    .line 616
    .line 617
    sget-object v0, Lfa/d;->a:Lfa/e;

    .line 618
    .line 619
    invoke-virtual {v0}, Lfa/e;->h()V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v4}, Lcom/yunpan/appmanage/service/AccService;->d()V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v4}, Lcom/yunpan/appmanage/service/AccService;->e()V

    .line 626
    .line 627
    .line 628
    invoke-static {v4}, Lq4/a;->t(Landroid/content/Context;)Lz7/s;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    const-string v1, "keys"

    .line 633
    .line 634
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 639
    .line 640
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 641
    .line 642
    .line 643
    move-result v0

    .line 644
    if-nez v0, :cond_1f

    .line 645
    .line 646
    new-instance v0, Lpa/h;

    .line 647
    .line 648
    invoke-direct {v0, v4}, Lpa/h;-><init>(Lcom/yunpan/appmanage/service/AccService;)V

    .line 649
    .line 650
    .line 651
    iput-object v0, v4, Lcom/yunpan/appmanage/service/AccService;->c:Lpa/h;

    .line 652
    .line 653
    invoke-virtual {v0}, Lpa/h;->a()V

    .line 654
    .line 655
    .line 656
    goto :goto_c

    .line 657
    :catch_a
    move-exception v0

    .line 658
    goto/16 :goto_f

    .line 659
    .line 660
    :cond_1f
    :goto_c
    invoke-virtual {v4}, Lcom/yunpan/appmanage/service/AccService;->f()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    .line 661
    .line 662
    .line 663
    :try_start_10
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    invoke-virtual {v4, v0, v1}, Lcom/yunpan/appmanage/service/AccService;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    .line 688
    .line 689
    .line 690
    :catch_b
    :try_start_11
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 691
    .line 692
    iget-boolean v0, v0, Lwa/u;->E:Z

    .line 693
    .line 694
    if-eqz v0, :cond_21

    .line 695
    .line 696
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 697
    .line 698
    const/16 v1, 0x15

    .line 699
    .line 700
    if-ge v0, v1, :cond_20

    .line 701
    .line 702
    goto :goto_d

    .line 703
    :cond_20
    new-instance v0, Lta/c;

    .line 704
    .line 705
    invoke-direct {v0, v4}, Lta/c;-><init>(Lcom/yunpan/appmanage/service/AccService;)V

    .line 706
    .line 707
    .line 708
    new-instance v1, Lmc/c;

    .line 709
    .line 710
    invoke-direct {v1, v3, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 711
    .line 712
    .line 713
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 714
    .line 715
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    new-instance v1, Lha/l2;

    .line 728
    .line 729
    const/16 v5, 0x1c

    .line 730
    .line 731
    invoke-direct {v1, v5}, Lha/l2;-><init>(I)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 735
    .line 736
    .line 737
    :cond_21
    :goto_d
    iget-object v0, v4, Lcom/yunpan/appmanage/service/AccService;->j:Landroid/os/Handler;

    .line 738
    .line 739
    iget-object v1, v4, Lcom/yunpan/appmanage/service/AccService;->y:Lta/f;

    .line 740
    .line 741
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 742
    .line 743
    .line 744
    invoke-static {v4}, Lpa/e;->b(Landroid/content/Context;)Z

    .line 745
    .line 746
    .line 747
    move-result v0

    .line 748
    if-eqz v0, :cond_22

    .line 749
    .line 750
    sget-object v0, Lpa/d;->a:Lpa/e;

    .line 751
    .line 752
    invoke-virtual {v0, v4}, Lpa/e;->a(Lcom/yunpan/appmanage/service/AccService;)V

    .line 753
    .line 754
    .line 755
    :cond_22
    invoke-static {v4}, Lcom/yunpan/appmanage/carsdk/e;->i(Landroid/content/Context;)V

    .line 756
    .line 757
    .line 758
    sget v0, Lcom/yunpan/appmanage/carsdk/m;->e:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    .line 759
    .line 760
    :try_start_12
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    const-string v1, "com.desay.svcarinfo"

    .line 765
    .line 766
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    .line 767
    .line 768
    .line 769
    goto :goto_e

    .line 770
    :catch_c
    nop

    .line 771
    const/4 v2, 0x0

    .line 772
    :goto_e
    if-eqz v2, :cond_23

    .line 773
    .line 774
    :try_start_13
    new-instance v0, Lcom/yunpan/appmanage/carsdk/m;

    .line 775
    .line 776
    invoke-direct {v0, v4}, Lcom/yunpan/appmanage/carsdk/m;-><init>(Lcom/yunpan/appmanage/service/AccService;)V

    .line 777
    .line 778
    .line 779
    iput-object v0, v4, Lcom/yunpan/appmanage/service/AccService;->e:Lcom/yunpan/appmanage/carsdk/m;

    .line 780
    .line 781
    :cond_23
    invoke-static {v4}, Lcom/yunpan/appmanage/carsdk/h0;->c(Landroid/content/Context;)Z

    .line 782
    .line 783
    .line 784
    move-result v0

    .line 785
    if-eqz v0, :cond_24

    .line 786
    .line 787
    sget-object v0, Lcom/yunpan/appmanage/carsdk/g0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 788
    .line 789
    invoke-virtual {v0, v4}, Lcom/yunpan/appmanage/carsdk/h0;->b(Lcom/yunpan/appmanage/service/AccService;)V

    .line 790
    .line 791
    .line 792
    :cond_24
    invoke-static {v4}, Lcom/yunpan/appmanage/carsdk/x;->i(Landroid/content/Context;)Z

    .line 793
    .line 794
    .line 795
    move-result v0

    .line 796
    if-eqz v0, :cond_25

    .line 797
    .line 798
    iget-object v0, v4, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 799
    .line 800
    new-instance v1, Lta/a;

    .line 801
    .line 802
    const/4 v2, 0x3

    .line 803
    invoke-direct {v1, v4, v2}, Lta/a;-><init>(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 804
    .line 805
    .line 806
    const-wide/16 v5, 0x378

    .line 807
    .line 808
    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 809
    .line 810
    .line 811
    :cond_25
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    const/16 v1, 0x66

    .line 816
    .line 817
    invoke-virtual {v0, v1}, Lwa/s;->i(I)V

    .line 818
    .line 819
    .line 820
    invoke-static {v4}, Ls1/g;->B(Landroid/content/Context;)Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    iput-object v0, v4, Lcom/yunpan/appmanage/service/AccService;->b:Ljava/lang/String;

    .line 825
    .line 826
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 827
    .line 828
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 829
    .line 830
    .line 831
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 832
    .line 833
    .line 834
    move-result-wide v0

    .line 835
    const-wide/32 v5, 0x186a0

    .line 836
    .line 837
    .line 838
    cmp-long v2, v0, v5

    .line 839
    .line 840
    if-gez v2, :cond_27

    .line 841
    .line 842
    :cond_26
    const-wide/16 v0, 0x3e8

    .line 843
    .line 844
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 845
    .line 846
    .line 847
    sget-object v0, Lfa/d;->a:Lfa/e;

    .line 848
    .line 849
    iget-boolean v0, v0, Lfa/e;->d:Z

    .line 850
    .line 851
    if-eqz v0, :cond_26

    .line 852
    .line 853
    const-wide/16 v0, 0x7d0

    .line 854
    .line 855
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 856
    .line 857
    .line 858
    :cond_27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 859
    .line 860
    const/16 v1, 0x18

    .line 861
    .line 862
    if-lt v0, v1, :cond_28

    .line 863
    .line 864
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 865
    .line 866
    iget-boolean v1, v0, Lfa/o0;->h:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    .line 867
    .line 868
    if-nez v1, :cond_28

    .line 869
    .line 870
    :try_start_14
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 871
    .line 872
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v1

    .line 876
    invoke-static {v1}, Lii/a;->a(Ljava/lang/String;)Z

    .line 877
    .line 878
    .line 879
    invoke-static {v3}, Lrikka/shizuku/ShizukuProvider;->a(Z)V

    .line 880
    .line 881
    .line 882
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 883
    .line 884
    invoke-static {v1}, Lrikka/shizuku/ShizukuProvider;->b(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v0}, Lfa/o0;->d()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    .line 888
    .line 889
    .line 890
    :catch_d
    :cond_28
    :try_start_15
    invoke-static {v4}, Lcom/yunpan/appmanage/carsdk/i;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    iput-object v0, v4, Lcom/yunpan/appmanage/service/AccService;->a:Ljava/lang/String;

    .line 895
    .line 896
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    iget-boolean v0, v0, Lwa/s;->a:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    .line 901
    .line 902
    if-eqz v0, :cond_29

    .line 903
    .line 904
    :try_start_16
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 905
    .line 906
    .line 907
    move-result-object v0

    .line 908
    const-string v1, "com.baidu.naviauto"

    .line 909
    .line 910
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 911
    .line 912
    .line 913
    new-instance v0, Lcom/yunpan/appmanage/carsdk/i;

    .line 914
    .line 915
    invoke-direct {v0}, Lcom/yunpan/appmanage/carsdk/i;-><init>()V

    .line 916
    .line 917
    .line 918
    iput-object v0, v4, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    .line 919
    .line 920
    invoke-virtual {v0, v4}, Lcom/yunpan/appmanage/carsdk/i;->a(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e

    .line 921
    .line 922
    .line 923
    :catch_e
    :cond_29
    :try_start_17
    iget-object v0, v4, Lcom/yunpan/appmanage/service/AccService;->l:Lta/e;

    .line 924
    .line 925
    new-instance v1, Lta/a;

    .line 926
    .line 927
    const/4 v2, 0x4

    .line 928
    invoke-direct {v1, v4, v2}, Lta/a;-><init>(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    .line 932
    .line 933
    .line 934
    goto :goto_10

    .line 935
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 936
    .line 937
    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    .line 939
    .line 940
    const-string v2, "\u62a5\u9519\uff1a"

    .line 941
    .line 942
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v2

    .line 949
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    .line 951
    .line 952
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v1

    .line 956
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 957
    .line 958
    .line 959
    :try_start_18
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    new-instance v1, Ljava/io/File;

    .line 964
    .line 965
    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 970
    .line 971
    .line 972
    move-result-object v2

    .line 973
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 974
    .line 975
    .line 976
    move-result-object v2

    .line 977
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 978
    .line 979
    .line 980
    move-result-object v2

    .line 981
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 982
    .line 983
    .line 984
    move-result-object v2

    .line 985
    new-instance v3, Ljava/lang/StringBuilder;

    .line 986
    .line 987
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 988
    .line 989
    .line 990
    const-string v4, "\u81ea\u52a8\u5316\u62a5\u9519_"

    .line 991
    .line 992
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 996
    .line 997
    .line 998
    move-result-wide v4

    .line 999
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    .line 1002
    const-string v4, ".txt"

    .line 1003
    .line 1004
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v3

    .line 1011
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1012
    .line 1013
    .line 1014
    new-instance v2, Ljava/io/FileOutputStream;

    .line 1015
    .line 1016
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1017
    .line 1018
    .line 1019
    sget-object v1, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1020
    .line 1021
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 1022
    .line 1023
    .line 1024
    move-result-object v0

    .line 1025
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_f

    .line 1029
    .line 1030
    .line 1031
    :catch_f
    :goto_10
    return-void

    .line 1032
    nop

    .line 1033
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
