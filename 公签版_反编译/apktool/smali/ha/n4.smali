.class public final synthetic Lha/n4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/q4;


# direct methods
.method public synthetic constructor <init>(Lha/q4;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/n4;->a:I

    iput-object p1, p0, Lha/n4;->b:Lha/q4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lha/n4;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lha/n4;->b:Lha/q4;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/text/DecimalFormat;

    .line 14
    .line 15
    const-string v3, "0.00"

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, v1, Lha/a4;->b:Landroid/content/Context;

    .line 21
    .line 22
    const-string v4, "activity"

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/app/ActivityManager;

    .line 29
    .line 30
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    .line 31
    .line 32
    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 36
    .line 37
    .line 38
    iget-wide v5, v4, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 39
    .line 40
    iget-wide v7, v4, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 41
    .line 42
    long-to-double v9, v5

    .line 43
    invoke-static {v9, v10}, Lif/a;->D0(D)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    long-to-double v9, v7

    .line 47
    invoke-static {v9, v10}, Lif/a;->D0(D)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    new-instance v9, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v10, "\u5185\u5b58\u4f7f\u7528\uff1a"

    .line 53
    .line 54
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sub-long v7, v5, v7

    .line 58
    .line 59
    long-to-float v7, v7

    .line 60
    const/high16 v8, 0x42c80000    # 100.0f

    .line 61
    .line 62
    mul-float v7, v7, v8

    .line 63
    .line 64
    long-to-float v5, v5

    .line 65
    div-float/2addr v7, v5

    .line 66
    float-to-double v5, v7

    .line 67
    const-string v7, "%"

    .line 68
    .line 69
    invoke-static {v2, v5, v6, v9, v7}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    move-object/from16 v6, p1

    .line 74
    .line 75
    invoke-virtual {v6, v5}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    filled-new-array {v5}, [I

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const/4 v7, 0x0

    .line 91
    aget-object v5, v5, v7

    .line 92
    .line 93
    const-wide/16 v7, 0x378

    .line 94
    .line 95
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 96
    .line 97
    .line 98
    iget-boolean v5, v1, Lha/q4;->j:Z

    .line 99
    .line 100
    if-eqz v5, :cond_0

    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_0
    move-object/from16 v6, p1

    .line 104
    .line 105
    iget-object v1, v0, Lha/n4;->b:Lha/q4;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    new-instance v2, Ljava/util/HashSet;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 113
    .line 114
    .line 115
    iget-object v3, v1, Lha/a4;->b:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    const-string v4, "com.google.android.leanback.ime"

    .line 125
    .line 126
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    const-string v4, "android.ext.services"

    .line 130
    .line 131
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    invoke-static {v3}, Lqf/c;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    if-eqz v4, :cond_1

    .line 139
    .line 140
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-nez v5, :cond_1

    .line 145
    .line 146
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_1
    invoke-static {v3}, Lqf/c;->r(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_3

    .line 163
    .line 164
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    check-cast v5, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 169
    .line 170
    iget-boolean v7, v5, Lcom/yunpan/appmanage/bean/DesktopBean;->isSystemApp:Z

    .line 171
    .line 172
    if-eqz v7, :cond_2

    .line 173
    .line 174
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_3
    :goto_1
    iget v1, v1, Lha/q4;->i:I

    .line 181
    .line 182
    const-string v4, "am force-stop \'"

    .line 183
    .line 184
    const-string v5, "com.android."

    .line 185
    .line 186
    const-string v7, "android.ext."

    .line 187
    .line 188
    const/4 v8, 0x0

    .line 189
    const-wide/16 v9, 0xd05

    .line 190
    .line 191
    const-string v11, "\'"

    .line 192
    .line 193
    const-string v12, "am kill-all"

    .line 194
    .line 195
    if-nez v1, :cond_c

    .line 196
    .line 197
    :try_start_0
    invoke-static {}, Lha/q4;->d()Ljava/util/HashSet;

    .line 198
    .line 199
    .line 200
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_2

    .line 202
    :catch_0
    nop

    .line 203
    :goto_2
    if-nez v8, :cond_4

    .line 204
    .line 205
    :try_start_1
    invoke-static {v3}, Lha/q4;->b(Landroid/content/Context;)Ljava/util/HashSet;

    .line 206
    .line 207
    .line 208
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    goto :goto_3

    .line 210
    :catch_1
    nop

    .line 211
    :cond_4
    :goto_3
    if-nez v8, :cond_5

    .line 212
    .line 213
    :try_start_2
    invoke-static {}, Lha/q4;->c()Ljava/util/HashSet;

    .line 214
    .line 215
    .line 216
    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 217
    goto :goto_4

    .line 218
    :catch_2
    nop

    .line 219
    :cond_5
    :goto_4
    if-eqz v8, :cond_b

    .line 220
    .line 221
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    :cond_6
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eqz v3, :cond_b

    .line 230
    .line 231
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    check-cast v3, Ljava/lang/String;

    .line 236
    .line 237
    sget-object v8, Lwa/t;->a:Lwa/u;

    .line 238
    .line 239
    iget-object v8, v8, Lwa/u;->w:Ljava/util/HashSet;

    .line 240
    .line 241
    invoke-virtual {v8, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-eqz v8, :cond_7

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_7
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    if-eqz v8, :cond_8

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_8
    invoke-static {v3}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    if-nez v8, :cond_9

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_9
    iget-boolean v8, v8, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 263
    .line 264
    if-eqz v8, :cond_a

    .line 265
    .line 266
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v8

    .line 270
    if-nez v8, :cond_6

    .line 271
    .line 272
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v8

    .line 276
    if-eqz v8, :cond_a

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_a
    sget-object v8, Lfa/b0;->a:La2/w0;

    .line 280
    .line 281
    new-instance v13, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    invoke-static {v9, v10, v3}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 300
    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_b
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    invoke-static {v9, v10, v12}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 309
    .line 310
    .line 311
    goto/16 :goto_12

    .line 312
    .line 313
    :cond_c
    const/4 v13, 0x1

    .line 314
    if-ne v1, v13, :cond_16

    .line 315
    .line 316
    :try_start_3
    invoke-static {}, Lha/q4;->d()Ljava/util/HashSet;

    .line 317
    .line 318
    .line 319
    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 320
    goto :goto_6

    .line 321
    :catch_3
    nop

    .line 322
    :goto_6
    if-nez v8, :cond_d

    .line 323
    .line 324
    :try_start_4
    invoke-static {v3}, Lha/q4;->b(Landroid/content/Context;)Ljava/util/HashSet;

    .line 325
    .line 326
    .line 327
    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 328
    goto :goto_7

    .line 329
    :catch_4
    nop

    .line 330
    :cond_d
    :goto_7
    if-nez v8, :cond_e

    .line 331
    .line 332
    :try_start_5
    invoke-static {}, Lha/q4;->c()Ljava/util/HashSet;

    .line 333
    .line 334
    .line 335
    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 336
    goto :goto_8

    .line 337
    :catch_5
    nop

    .line 338
    :cond_e
    :goto_8
    if-eqz v8, :cond_15

    .line 339
    .line 340
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    :cond_f
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    if-eqz v3, :cond_15

    .line 349
    .line 350
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    check-cast v3, Ljava/lang/String;

    .line 355
    .line 356
    sget-object v8, Lwa/t;->a:Lwa/u;

    .line 357
    .line 358
    iget-object v8, v8, Lwa/u;->w:Ljava/util/HashSet;

    .line 359
    .line 360
    invoke-virtual {v8, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v8

    .line 364
    if-eqz v8, :cond_10

    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_10
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v8

    .line 371
    if-eqz v8, :cond_11

    .line 372
    .line 373
    goto :goto_9

    .line 374
    :cond_11
    invoke-static {v3}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 375
    .line 376
    .line 377
    move-result-object v8

    .line 378
    if-nez v8, :cond_12

    .line 379
    .line 380
    goto :goto_9

    .line 381
    :cond_12
    iget-boolean v13, v8, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 382
    .line 383
    if-eqz v13, :cond_13

    .line 384
    .line 385
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 386
    .line 387
    .line 388
    move-result v13

    .line 389
    if-nez v13, :cond_f

    .line 390
    .line 391
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 392
    .line 393
    .line 394
    move-result v13

    .line 395
    if-eqz v13, :cond_13

    .line 396
    .line 397
    goto :goto_9

    .line 398
    :cond_13
    iget-boolean v13, v8, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 399
    .line 400
    if-eqz v13, :cond_14

    .line 401
    .line 402
    iget-object v13, v8, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 403
    .line 404
    const-string v14, "\u5730\u56fe"

    .line 405
    .line 406
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 407
    .line 408
    .line 409
    move-result v13

    .line 410
    if-nez v13, :cond_14

    .line 411
    .line 412
    iget-object v13, v8, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 413
    .line 414
    const-string v14, "\u9ad8\u5fb7"

    .line 415
    .line 416
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 417
    .line 418
    .line 419
    move-result v13

    .line 420
    if-nez v13, :cond_14

    .line 421
    .line 422
    iget-object v13, v8, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 423
    .line 424
    const-string v14, "\u767e\u5ea6"

    .line 425
    .line 426
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 427
    .line 428
    .line 429
    move-result v13

    .line 430
    if-nez v13, :cond_14

    .line 431
    .line 432
    iget-object v8, v8, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 433
    .line 434
    const-string v13, ".autonavi."

    .line 435
    .line 436
    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 437
    .line 438
    .line 439
    move-result v8

    .line 440
    if-nez v8, :cond_14

    .line 441
    .line 442
    goto :goto_9

    .line 443
    :cond_14
    sget-object v8, Lfa/b0;->a:La2/w0;

    .line 444
    .line 445
    new-instance v13, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 461
    .line 462
    .line 463
    invoke-static {v9, v10, v3}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 464
    .line 465
    .line 466
    goto :goto_9

    .line 467
    :cond_15
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 468
    .line 469
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    .line 471
    .line 472
    const-wide/16 v13, 0x15b3

    .line 473
    .line 474
    invoke-static {v13, v14, v12}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 475
    .line 476
    .line 477
    goto/16 :goto_12

    .line 478
    .line 479
    :cond_16
    const-wide/16 v13, 0x15b3

    .line 480
    .line 481
    const/4 v15, 0x2

    .line 482
    if-ne v1, v15, :cond_27

    .line 483
    .line 484
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 485
    .line 486
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    invoke-static {v13, v14, v12}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 490
    .line 491
    .line 492
    new-instance v1, Ljava/util/HashSet;

    .line 493
    .line 494
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 495
    .line 496
    .line 497
    const-string v3, "dumpsys activity all | grep ACTIVITY"

    .line 498
    .line 499
    const-wide/16 v12, 0x1a0a

    .line 500
    .line 501
    invoke-static {v12, v13, v3}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    iget-object v3, v3, Lfa/a0;->b:Ljava/util/List;

    .line 506
    .line 507
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 512
    .line 513
    .line 514
    move-result v8

    .line 515
    const/4 v14, 0x0

    .line 516
    const-string v15, "/"

    .line 517
    .line 518
    const/4 v9, -0x1

    .line 519
    if-eqz v8, :cond_1b

    .line 520
    .line 521
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v8

    .line 525
    check-cast v8, Ljava/lang/String;

    .line 526
    .line 527
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v8

    .line 531
    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 532
    .line 533
    .line 534
    move-result v10

    .line 535
    if-ne v10, v9, :cond_17

    .line 536
    .line 537
    :goto_b
    const-wide/16 v9, 0xd05

    .line 538
    .line 539
    goto :goto_a

    .line 540
    :cond_17
    invoke-virtual {v8, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v8

    .line 544
    const-string v10, " "

    .line 545
    .line 546
    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    move-result v10

    .line 550
    if-ne v10, v9, :cond_18

    .line 551
    .line 552
    goto :goto_b

    .line 553
    :cond_18
    add-int/lit8 v10, v10, 0x1

    .line 554
    .line 555
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v8

    .line 559
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v8

    .line 563
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 564
    .line 565
    .line 566
    move-result v9

    .line 567
    if-eqz v9, :cond_19

    .line 568
    .line 569
    goto :goto_b

    .line 570
    :cond_19
    invoke-static {v8}, Lha/q4;->e(Ljava/lang/String;)Z

    .line 571
    .line 572
    .line 573
    move-result v9

    .line 574
    if-eqz v9, :cond_1a

    .line 575
    .line 576
    goto :goto_b

    .line 577
    :cond_1a
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    goto :goto_b

    .line 581
    :cond_1b
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    if-eqz v3, :cond_21

    .line 586
    .line 587
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 588
    .line 589
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 590
    .line 591
    .line 592
    const-string v3, "am stack list | grep task"

    .line 593
    .line 594
    invoke-static {v12, v13, v3}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 595
    .line 596
    .line 597
    move-result-object v3

    .line 598
    iget-object v3, v3, Lfa/a0;->b:Ljava/util/List;

    .line 599
    .line 600
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 605
    .line 606
    .line 607
    move-result v8

    .line 608
    if-eqz v8, :cond_21

    .line 609
    .line 610
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v8

    .line 614
    check-cast v8, Ljava/lang/String;

    .line 615
    .line 616
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v8

    .line 620
    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 621
    .line 622
    .line 623
    move-result v10

    .line 624
    if-ne v10, v9, :cond_1c

    .line 625
    .line 626
    goto :goto_c

    .line 627
    :cond_1c
    invoke-virtual {v8, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v8

    .line 631
    const-string v10, ":"

    .line 632
    .line 633
    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 634
    .line 635
    .line 636
    move-result v10

    .line 637
    if-ne v10, v9, :cond_1d

    .line 638
    .line 639
    goto :goto_c

    .line 640
    :cond_1d
    add-int/lit8 v10, v10, 0x1

    .line 641
    .line 642
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v8

    .line 646
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v8

    .line 650
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 651
    .line 652
    .line 653
    move-result v10

    .line 654
    if-eqz v10, :cond_1e

    .line 655
    .line 656
    goto :goto_c

    .line 657
    :cond_1e
    const-string v10, "."

    .line 658
    .line 659
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 660
    .line 661
    .line 662
    move-result v10

    .line 663
    if-nez v10, :cond_1f

    .line 664
    .line 665
    goto :goto_c

    .line 666
    :cond_1f
    invoke-static {v8}, Lha/q4;->e(Ljava/lang/String;)Z

    .line 667
    .line 668
    .line 669
    move-result v10

    .line 670
    if-eqz v10, :cond_20

    .line 671
    .line 672
    goto :goto_c

    .line 673
    :cond_20
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    goto :goto_c

    .line 677
    :cond_21
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    :cond_22
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 682
    .line 683
    .line 684
    move-result v3

    .line 685
    if-eqz v3, :cond_30

    .line 686
    .line 687
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v3

    .line 691
    check-cast v3, Ljava/lang/String;

    .line 692
    .line 693
    sget-object v8, Lwa/t;->a:Lwa/u;

    .line 694
    .line 695
    iget-object v8, v8, Lwa/u;->w:Ljava/util/HashSet;

    .line 696
    .line 697
    invoke-virtual {v8, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    move-result v8

    .line 701
    if-eqz v8, :cond_23

    .line 702
    .line 703
    goto :goto_d

    .line 704
    :cond_23
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result v8

    .line 708
    if-eqz v8, :cond_24

    .line 709
    .line 710
    goto :goto_d

    .line 711
    :cond_24
    invoke-static {v3}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 712
    .line 713
    .line 714
    move-result-object v8

    .line 715
    if-nez v8, :cond_25

    .line 716
    .line 717
    goto :goto_d

    .line 718
    :cond_25
    iget-boolean v8, v8, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 719
    .line 720
    if-eqz v8, :cond_26

    .line 721
    .line 722
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 723
    .line 724
    .line 725
    move-result v8

    .line 726
    if-nez v8, :cond_22

    .line 727
    .line 728
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 729
    .line 730
    .line 731
    move-result v8

    .line 732
    if-eqz v8, :cond_26

    .line 733
    .line 734
    goto :goto_d

    .line 735
    :cond_26
    sget-object v8, Lfa/b0;->a:La2/w0;

    .line 736
    .line 737
    new-instance v9, Ljava/lang/StringBuilder;

    .line 738
    .line 739
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v3

    .line 752
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 753
    .line 754
    .line 755
    const-wide/16 v8, 0xd05

    .line 756
    .line 757
    invoke-static {v8, v9, v3}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 758
    .line 759
    .line 760
    goto :goto_d

    .line 761
    :cond_27
    const/4 v4, 0x3

    .line 762
    if-ne v1, v4, :cond_2e

    .line 763
    .line 764
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 765
    .line 766
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 767
    .line 768
    .line 769
    const-wide/16 v4, 0x15b3

    .line 770
    .line 771
    invoke-static {v4, v5, v12}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 772
    .line 773
    .line 774
    :try_start_6
    invoke-static {}, Lha/q4;->d()Ljava/util/HashSet;

    .line 775
    .line 776
    .line 777
    move-result-object v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 778
    goto :goto_e

    .line 779
    :catch_6
    nop

    .line 780
    :goto_e
    if-nez v8, :cond_28

    .line 781
    .line 782
    :try_start_7
    invoke-static {v3}, Lha/q4;->b(Landroid/content/Context;)Ljava/util/HashSet;

    .line 783
    .line 784
    .line 785
    move-result-object v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 786
    goto :goto_f

    .line 787
    :catch_7
    nop

    .line 788
    :cond_28
    :goto_f
    if-nez v8, :cond_29

    .line 789
    .line 790
    :try_start_8
    invoke-static {}, Lha/q4;->c()Ljava/util/HashSet;

    .line 791
    .line 792
    .line 793
    move-result-object v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 794
    goto :goto_10

    .line 795
    :catch_8
    nop

    .line 796
    :cond_29
    :goto_10
    if-eqz v8, :cond_30

    .line 797
    .line 798
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 803
    .line 804
    .line 805
    move-result v3

    .line 806
    if-eqz v3, :cond_30

    .line 807
    .line 808
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v3

    .line 812
    check-cast v3, Ljava/lang/String;

    .line 813
    .line 814
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 815
    .line 816
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 817
    .line 818
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 819
    .line 820
    .line 821
    move-result v4

    .line 822
    if-eqz v4, :cond_2a

    .line 823
    .line 824
    goto :goto_11

    .line 825
    :cond_2a
    sget-object v4, Lwa/t;->a:Lwa/u;

    .line 826
    .line 827
    iget-object v4, v4, Lwa/u;->w:Ljava/util/HashSet;

    .line 828
    .line 829
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result v4

    .line 833
    if-eqz v4, :cond_2b

    .line 834
    .line 835
    goto :goto_11

    .line 836
    :cond_2b
    invoke-static {v3}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 837
    .line 838
    .line 839
    move-result-object v4

    .line 840
    if-nez v4, :cond_2c

    .line 841
    .line 842
    goto :goto_11

    .line 843
    :cond_2c
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v4

    .line 847
    if-eqz v4, :cond_2d

    .line 848
    .line 849
    goto :goto_11

    .line 850
    :cond_2d
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 851
    .line 852
    new-instance v5, Ljava/lang/StringBuilder;

    .line 853
    .line 854
    const-string v7, "am kill \'"

    .line 855
    .line 856
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v3

    .line 869
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    .line 871
    .line 872
    const-wide/16 v4, 0x1388

    .line 873
    .line 874
    invoke-static {v4, v5, v3}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 875
    .line 876
    .line 877
    goto :goto_11

    .line 878
    :cond_2e
    const/4 v2, 0x4

    .line 879
    if-ne v1, v2, :cond_2f

    .line 880
    .line 881
    new-instance v1, Las/mke/eatmem/MainActivity;

    .line 882
    .line 883
    invoke-direct {v1}, Las/mke/eatmem/MainActivity;-><init>()V

    .line 884
    .line 885
    .line 886
    invoke-virtual {v1}, Las/mke/eatmem/MainActivity;->native_eatmf()V

    .line 887
    .line 888
    .line 889
    goto :goto_12

    .line 890
    :cond_2f
    const/4 v2, 0x5

    .line 891
    if-ne v1, v2, :cond_30

    .line 892
    .line 893
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 894
    .line 895
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 896
    .line 897
    .line 898
    const-wide/16 v1, 0x8ae

    .line 899
    .line 900
    invoke-static {v1, v2, v12}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 901
    .line 902
    .line 903
    :cond_30
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 904
    .line 905
    .line 906
    return-void

    .line 907
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
