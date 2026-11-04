.class public abstract Lta/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 7

    .line 1
    const-wide/16 v0, 0x1388

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :cond_0
    :try_start_1
    invoke-static {}, Lta/i;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 11
    .line 12
    .line 13
    :catch_1
    const-wide/16 v2, 0x3a98

    .line 14
    .line 15
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_2
    nop

    .line 20
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    sub-long/2addr v2, v0

    .line 25
    const-wide/32 v4, 0xeac4

    .line 26
    .line 27
    .line 28
    cmp-long v6, v2, v4

    .line 29
    .line 30
    if-ltz v6, :cond_0

    .line 31
    .line 32
    return-void
.end method

.method public static b()V
    .locals 18

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 4
    .line 5
    iget-object v3, v2, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 6
    .line 7
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "enabled_accessibility_services"

    .line 12
    .line 13
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v5, ""

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const-string v6, "null"

    .line 22
    .line 23
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    :cond_0
    move-object v3, v5

    .line 30
    :cond_1
    sget-object v6, Lwa/v;->a:Lcom/yunpan/appmanage/util/b0;

    .line 31
    .line 32
    invoke-virtual {v6}, Lcom/yunpan/appmanage/util/b0;->b()V

    .line 33
    .line 34
    .line 35
    iget-object v7, v6, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v7, Ljava/lang/String;

    .line 38
    .line 39
    new-instance v8, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    sget-object v9, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 45
    .line 46
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v9, "/"

    .line 54
    .line 55
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-class v10, Lcom/yunpan/appmanage/service/AccService;

    .line 59
    .line 60
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    sget-object v8, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 76
    .line 77
    invoke-static {v8, v10}, Lif/a;->h0(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    const-string v10, ":"

    .line 82
    .line 83
    if-eqz v7, :cond_6

    .line 84
    .line 85
    if-eqz v8, :cond_6

    .line 86
    .line 87
    iget-boolean v2, v2, Lwa/u;->f:Z

    .line 88
    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    iget-object v2, v6, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v2, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_6

    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    iget-object v2, v6, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v2, Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    array-length v11, v2

    .line 111
    const/4 v12, 0x0

    .line 112
    const/4 v13, 0x1

    .line 113
    :goto_0
    if-ge v12, v11, :cond_5

    .line 114
    .line 115
    aget-object v14, v2, v12

    .line 116
    .line 117
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v15

    .line 121
    if-eqz v15, :cond_3

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 125
    .line 126
    .line 127
    move-result-object v14

    .line 128
    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v15

    .line 132
    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    if-nez v15, :cond_4

    .line 137
    .line 138
    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v14

    .line 142
    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v14

    .line 146
    if-nez v14, :cond_4

    .line 147
    .line 148
    const/4 v13, 0x0

    .line 149
    :cond_4
    :goto_1
    add-int/2addr v12, v1

    .line 150
    goto :goto_0

    .line 151
    :cond_5
    if-eqz v13, :cond_6

    .line 152
    .line 153
    return-void

    .line 154
    :cond_6
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 155
    .line 156
    iget-boolean v11, v2, Lwa/u;->t:Z

    .line 157
    .line 158
    if-eqz v11, :cond_7

    .line 159
    .line 160
    new-instance v11, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v12, "isHasAutomation\uff1a"

    .line 163
    .line 164
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v12, "  isRunAcc\uff1a"

    .line 171
    .line 172
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    invoke-static {v11}, Lwa/w;->c(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_7
    iget-boolean v11, v2, Lwa/u;->t:Z

    .line 186
    .line 187
    if-eqz v11, :cond_8

    .line 188
    .line 189
    const-string v11, "\u5f53\u524d\u65e0\u969c\u788d\uff1a"

    .line 190
    .line 191
    invoke-virtual {v11, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    invoke-static {v11}, Lwa/w;->c(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_8
    iget-boolean v11, v2, Lwa/u;->e:Z

    .line 199
    .line 200
    const-string v12, "accessibility_enabled"

    .line 201
    .line 202
    if-nez v11, :cond_9

    .line 203
    .line 204
    if-eqz v7, :cond_b

    .line 205
    .line 206
    if-nez v8, :cond_b

    .line 207
    .line 208
    new-instance v7, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    sget-object v8, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 214
    .line 215
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    if-eqz v7, :cond_b

    .line 234
    .line 235
    :cond_9
    iget-boolean v3, v2, Lwa/u;->t:Z

    .line 236
    .line 237
    if-eqz v3, :cond_a

    .line 238
    .line 239
    const-string v3, "\u91cd\u542f\u65e0\u969c\u788d\u670d\u52a1"

    .line 240
    .line 241
    invoke-static {v3}, Lwa/w;->c(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :cond_a
    iget-object v3, v2, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 245
    .line 246
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    iget-object v3, v2, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 254
    .line 255
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-static {v3, v12, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    .line 261
    .line 262
    const-wide/16 v7, 0x457

    .line 263
    .line 264
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 265
    .line 266
    .line 267
    move-object v3, v5

    .line 268
    :cond_b
    iget-boolean v7, v2, Lwa/u;->f:Z

    .line 269
    .line 270
    const-string v8, "settings put secure accessibility_enabled 1"

    .line 271
    .line 272
    const-string v9, "\'"

    .line 273
    .line 274
    const-string v11, "settings put secure enabled_accessibility_services \'"

    .line 275
    .line 276
    const-string v13, "\u65e0\u969c\u788d\u670d\u52a1\u6b63\u5e38\uff0c\u65e0\u9700\u6267\u884c\u6301\u4e45\u4efb\u52a1"

    .line 277
    .line 278
    if-nez v7, :cond_18

    .line 279
    .line 280
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 281
    .line 282
    .line 283
    move-result v7

    .line 284
    if-eqz v7, :cond_c

    .line 285
    .line 286
    goto/16 :goto_7

    .line 287
    .line 288
    :cond_c
    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    new-instance v7, Ljava/util/HashSet;

    .line 293
    .line 294
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 295
    .line 296
    .line 297
    array-length v14, v2

    .line 298
    const/4 v15, 0x0

    .line 299
    :goto_2
    if-ge v15, v14, :cond_e

    .line 300
    .line 301
    aget-object v16, v2, v15

    .line 302
    .line 303
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    .line 304
    .line 305
    .line 306
    move-result v17

    .line 307
    if-eqz v17, :cond_d

    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_d
    :try_start_0
    invoke-static/range {v16 .. v16}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 311
    .line 312
    .line 313
    move-result-object v16

    .line 314
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .line 320
    .line 321
    :catch_0
    :goto_3
    add-int/2addr v15, v1

    .line 322
    const/4 v0, 0x0

    .line 323
    goto :goto_2

    .line 324
    :cond_e
    iget-object v0, v6, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v0, Ljava/lang/String;

    .line 327
    .line 328
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    array-length v2, v0

    .line 333
    const/4 v6, 0x0

    .line 334
    :goto_4
    if-ge v6, v2, :cond_12

    .line 335
    .line 336
    aget-object v14, v0, v6

    .line 337
    .line 338
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 339
    .line 340
    .line 341
    move-result v15

    .line 342
    if-eqz v15, :cond_f

    .line 343
    .line 344
    goto :goto_5

    .line 345
    :cond_f
    invoke-virtual {v7, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v15

    .line 349
    if-nez v15, :cond_11

    .line 350
    .line 351
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 352
    .line 353
    .line 354
    move-result v15

    .line 355
    if-eqz v15, :cond_10

    .line 356
    .line 357
    move-object v5, v14

    .line 358
    goto :goto_5

    .line 359
    :cond_10
    invoke-static {v5, v10, v14}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    :cond_11
    :goto_5
    add-int/2addr v6, v1

    .line 364
    goto :goto_4

    .line 365
    :cond_12
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-eqz v0, :cond_14

    .line 370
    .line 371
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 372
    .line 373
    iget-boolean v0, v0, Lwa/u;->t:Z

    .line 374
    .line 375
    if-eqz v0, :cond_13

    .line 376
    .line 377
    invoke-static {v13}, Lwa/w;->c(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    :cond_13
    return-void

    .line 381
    :cond_14
    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-eqz v0, :cond_15

    .line 386
    .line 387
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    goto :goto_6

    .line 392
    :cond_15
    invoke-static {v3, v10, v5}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    :goto_6
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 397
    .line 398
    iget-boolean v3, v2, Lwa/u;->t:Z

    .line 399
    .line 400
    if-eqz v3, :cond_16

    .line 401
    .line 402
    const-string v3, "\u6267\u884c\u65e0\u969c\u788d\u4fdd\u6d3b\u4efb\u52a1\uff0c\u8ffd\u52a0\uff1a"

    .line 403
    .line 404
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    invoke-static {v3}, Lwa/w;->c(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    :cond_16
    iget-object v3, v2, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 412
    .line 413
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    if-eqz v3, :cond_17

    .line 422
    .line 423
    iget-object v2, v2, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 424
    .line 425
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    invoke-static {v2, v12, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    .line 431
    .line 432
    :cond_17
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 433
    .line 434
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->S:Z

    .line 435
    .line 436
    if-eqz v2, :cond_1c

    .line 437
    .line 438
    sget-object v2, Lfa/d;->a:Lfa/e;

    .line 439
    .line 440
    iget-boolean v2, v2, Lfa/e;->a:Z

    .line 441
    .line 442
    if-eqz v2, :cond_1c

    .line 443
    .line 444
    invoke-static {v11, v0, v9}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    new-array v2, v1, [Ljava/lang/String;

    .line 449
    .line 450
    const/4 v3, 0x0

    .line 451
    aput-object v0, v2, v3

    .line 452
    .line 453
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 458
    .line 459
    .line 460
    new-array v0, v1, [Ljava/lang/String;

    .line 461
    .line 462
    aput-object v8, v0, v3

    .line 463
    .line 464
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 469
    .line 470
    .line 471
    goto :goto_8

    .line 472
    :cond_18
    :goto_7
    iget-object v0, v6, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast v0, Ljava/lang/String;

    .line 475
    .line 476
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    if-nez v0, :cond_1b

    .line 481
    .line 482
    iget-boolean v0, v2, Lwa/u;->t:Z

    .line 483
    .line 484
    if-eqz v0, :cond_19

    .line 485
    .line 486
    const-string v0, "\u6267\u884c\u65e0\u969c\u788d\u4fdd\u6d3b\u4efb\u52a1\uff0c\u8986\u76d6"

    .line 487
    .line 488
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    :cond_19
    iget-object v0, v2, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 492
    .line 493
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    iget-object v3, v6, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 498
    .line 499
    check-cast v3, Ljava/lang/String;

    .line 500
    .line 501
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-eqz v0, :cond_1a

    .line 506
    .line 507
    iget-object v0, v2, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 508
    .line 509
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-static {v0, v12, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    .line 515
    .line 516
    :cond_1a
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 517
    .line 518
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->S:Z

    .line 519
    .line 520
    if-eqz v0, :cond_1c

    .line 521
    .line 522
    sget-object v0, Lfa/d;->a:Lfa/e;

    .line 523
    .line 524
    iget-boolean v0, v0, Lfa/e;->a:Z

    .line 525
    .line 526
    if-eqz v0, :cond_1c

    .line 527
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    .line 529
    .line 530
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    iget-object v2, v6, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 534
    .line 535
    check-cast v2, Ljava/lang/String;

    .line 536
    .line 537
    invoke-static {v2, v9, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    new-array v2, v1, [Ljava/lang/String;

    .line 542
    .line 543
    const/4 v3, 0x0

    .line 544
    aput-object v0, v2, v3

    .line 545
    .line 546
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 551
    .line 552
    .line 553
    new-array v0, v1, [Ljava/lang/String;

    .line 554
    .line 555
    aput-object v8, v0, v3

    .line 556
    .line 557
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 562
    .line 563
    .line 564
    goto :goto_8

    .line 565
    :cond_1b
    iget-boolean v0, v2, Lwa/u;->t:Z

    .line 566
    .line 567
    if-eqz v0, :cond_1c

    .line 568
    .line 569
    invoke-static {v13}, Lwa/w;->c(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    :cond_1c
    :goto_8
    return-void
.end method

.method public static c()V
    .locals 14

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v3, 0x15

    .line 8
    .line 9
    const v4, 0x7f13002f

    .line 10
    .line 11
    .line 12
    const-string v5, "\u68c0\u6d4b\u5230\u60a8\u65e0\u6cd5\u5f00\u673a\uff0c\u81ea\u52a8\u6253\u5f00"

    .line 13
    .line 14
    const v6, 0x7f13016f

    .line 15
    .line 16
    .line 17
    const-string v7, ".FallbackHome"

    .line 18
    .line 19
    const-wide/32 v8, 0x1d4c0

    .line 20
    .line 21
    .line 22
    if-ge v2, v3, :cond_3

    .line 23
    .line 24
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 25
    .line 26
    const-string v3, "activity"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    move-object v3, v2

    .line 33
    check-cast v3, Landroid/app/ActivityManager;

    .line 34
    .line 35
    :cond_0
    const/16 v2, 0xa

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    if-nez v10, :cond_2

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    if-eqz v10, :cond_2

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 64
    .line 65
    invoke-static {v10}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    invoke-virtual {v10, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-eqz v10, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    return-void

    .line 81
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v10

    .line 85
    sub-long/2addr v10, v0

    .line 86
    cmp-long v2, v10, v8

    .line 87
    .line 88
    if-ltz v2, :cond_0

    .line 89
    .line 90
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 91
    .line 92
    invoke-static {v0}, Lif/a;->H0(Landroid/content/ContextWrapper;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 101
    .line 102
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 113
    .line 114
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_3
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 130
    .line 131
    invoke-static {v3}, Lif/a;->a0(Landroid/content/Context;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-nez v3, :cond_4

    .line 136
    .line 137
    return-void

    .line 138
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    const/16 v10, 0x17

    .line 144
    .line 145
    const-string v11, "usagestats"

    .line 146
    .line 147
    if-ge v2, v10, :cond_5

    .line 148
    .line 149
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 150
    .line 151
    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    check-cast v2, Landroid/app/usage/UsageStatsManager;

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 159
    .line 160
    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Landroid/app/usage/UsageStatsManager;

    .line 165
    .line 166
    :cond_6
    :goto_1
    const-wide/16 v10, 0x1388

    .line 167
    .line 168
    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 169
    .line 170
    .line 171
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 172
    .line 173
    .line 174
    move-result-wide v10

    .line 175
    sub-long v10, v0, v10

    .line 176
    .line 177
    const-wide/16 v12, 0x3e8

    .line 178
    .line 179
    add-long/2addr v10, v12

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 181
    .line 182
    .line 183
    move-result-wide v12

    .line 184
    add-long/2addr v12, v8

    .line 185
    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    if-nez v10, :cond_7

    .line 190
    .line 191
    return-void

    .line 192
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 193
    .line 194
    .line 195
    :cond_8
    :goto_2
    invoke-virtual {v10}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    const/4 v12, 0x1

    .line 200
    if-eqz v11, :cond_d

    .line 201
    .line 202
    new-instance v11, Landroid/app/usage/UsageEvents$Event;

    .line 203
    .line 204
    invoke-direct {v11}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10, v11}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 208
    .line 209
    .line 210
    move-result v13

    .line 211
    if-nez v13, :cond_9

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_9
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 215
    .line 216
    .line 217
    move-result v13

    .line 218
    if-eq v13, v12, :cond_a

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_a
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v12

    .line 225
    if-eqz v12, :cond_8

    .line 226
    .line 227
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v12

    .line 231
    if-eqz v12, :cond_8

    .line 232
    .line 233
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v12

    .line 237
    const-string v13, "android"

    .line 238
    .line 239
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v12

    .line 243
    if-eqz v12, :cond_b

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_b
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v12

    .line 250
    const-string v13, "com.android.systemui"

    .line 251
    .line 252
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v12

    .line 256
    if-eqz v12, :cond_c

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v13

    .line 268
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v13, "/"

    .line 272
    .line 273
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v13

    .line 280
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v12

    .line 287
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 291
    .line 292
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    goto :goto_2

    .line 299
    :catch_0
    nop

    .line 300
    goto :goto_3

    .line 301
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 302
    .line 303
    .line 304
    move-result v10

    .line 305
    if-eqz v10, :cond_e

    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 309
    .line 310
    .line 311
    move-result v10

    .line 312
    sub-int/2addr v10, v12

    .line 313
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v10

    .line 317
    check-cast v10, Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {v10, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    move-result v11

    .line 323
    if-eqz v11, :cond_f

    .line 324
    .line 325
    goto :goto_3

    .line 326
    :cond_f
    const-string v11, "com.android.settings/android.widget."

    .line 327
    .line 328
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 329
    .line 330
    .line 331
    move-result v11

    .line 332
    if-eqz v11, :cond_10

    .line 333
    .line 334
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 335
    .line 336
    .line 337
    move-result v11

    .line 338
    const/4 v12, 0x2

    .line 339
    if-gt v11, v12, :cond_10

    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_10
    const-string v11, "com.jamdeo.tv.livetv.LiveTvActivity"

    .line 343
    .line 344
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 345
    .line 346
    .line 347
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    if-eqz v10, :cond_11

    .line 349
    .line 350
    goto :goto_3

    .line 351
    :cond_11
    return-void

    .line 352
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 353
    .line 354
    .line 355
    move-result-wide v10

    .line 356
    sub-long/2addr v10, v0

    .line 357
    cmp-long v12, v10, v8

    .line 358
    .line 359
    if-ltz v12, :cond_6

    .line 360
    .line 361
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 362
    .line 363
    invoke-static {v0}, Lif/a;->H0(Landroid/content/ContextWrapper;)V

    .line 364
    .line 365
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .line 370
    .line 371
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 372
    .line 373
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 384
    .line 385
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    return-void
.end method

.method public static d()V
    .locals 22

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x1

    .line 3
    const-string v3, "policy_control"

    .line 4
    .line 5
    const-string v4, "adb_wifi_enabled"

    .line 6
    .line 7
    const-string v5, "isOpen"

    .line 8
    .line 9
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    iget-object v6, v6, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 14
    .line 15
    invoke-static {v6}, Lq4/a;->K(Landroid/content/ContextWrapper;)Lz7/o;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v7, 0x0

    .line 23
    :goto_0
    iget-object v8, v6, Lz7/o;->a:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    if-ge v7, v8, :cond_5e

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v6, v7}, Lz7/o;->l(I)Lz7/p;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual {v8}, Lz7/p;->g()Lz7/s;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-virtual {v8, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    if-eqz v9, :cond_1

    .line 44
    .line 45
    invoke-virtual {v8, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-virtual {v9}, Lz7/p;->b()Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-nez v9, :cond_1

    .line 54
    .line 55
    goto/16 :goto_13

    .line 56
    .line 57
    :catchall_0
    move-exception v0

    .line 58
    move-object v8, v0

    .line 59
    goto/16 :goto_12

    .line 60
    .line 61
    :cond_1
    const-string v9, "type"

    .line 62
    .line 63
    invoke-virtual {v8, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-virtual {v9}, Lz7/p;->e()I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    const/16 v10, 0x64

    .line 72
    .line 73
    const-wide/16 v11, 0x3e8

    .line 74
    .line 75
    if-ne v9, v10, :cond_2

    .line 76
    .line 77
    const-string v9, "time"

    .line 78
    .line 79
    invoke-virtual {v8, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-virtual {v8}, Lz7/p;->e()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    int-to-long v8, v8

    .line 88
    mul-long v8, v8, v11

    .line 89
    .line 90
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    goto/16 :goto_13

    .line 94
    .line 95
    :cond_2
    const/16 v10, 0x65

    .line 96
    .line 97
    const-string v13, "str1"

    .line 98
    .line 99
    if-ne v9, v10, :cond_3

    .line 100
    .line 101
    :try_start_1
    invoke-virtual {v8, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-static {v8}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_13

    .line 113
    .line 114
    :cond_3
    const/16 v10, 0x6e

    .line 115
    .line 116
    const/high16 v14, 0x10000000

    .line 117
    .line 118
    if-ne v9, v10, :cond_5

    .line 119
    .line 120
    invoke-virtual {v8, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-static {v8}, Lif/a;->L(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    if-nez v8, :cond_4

    .line 133
    .line 134
    goto/16 :goto_13

    .line 135
    .line 136
    :cond_4
    invoke-virtual {v8, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    iget-object v9, v9, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 144
    .line 145
    invoke-static {v9, v8}, Lif/a;->y0(Landroid/content/ContextWrapper;Landroid/content/Intent;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_13

    .line 149
    .line 150
    :cond_5
    const/16 v10, 0x71

    .line 151
    .line 152
    if-ne v9, v10, :cond_7

    .line 153
    .line 154
    invoke-virtual {v8, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-static {v8}, Lif/a;->L(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    if-nez v8, :cond_6

    .line 167
    .line 168
    goto/16 :goto_13

    .line 169
    .line 170
    :cond_6
    invoke-virtual {v8, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    invoke-virtual {v9, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_13

    .line 181
    .line 182
    :cond_7
    const/16 v10, 0x72

    .line 183
    .line 184
    if-ne v9, v10, :cond_8

    .line 185
    .line 186
    invoke-virtual {v8, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    new-instance v9, Landroid/content/Intent;

    .line 195
    .line 196
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    const-class v11, Lcom/yunpan/appmanage/ui/ActivityTrans;

    .line 201
    .line 202
    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 206
    .line 207
    .line 208
    const-string v10, "packageName"

    .line 209
    .line 210
    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    .line 212
    .line 213
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    invoke-static {v8, v9}, Lif/a;->y0(Landroid/content/ContextWrapper;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    .line 219
    .line 220
    goto/16 :goto_13

    .line 221
    .line 222
    :cond_8
    const/16 v10, 0x6f

    .line 223
    .line 224
    const-string v15, "str2"

    .line 225
    .line 226
    if-ne v9, v10, :cond_9

    .line 227
    .line 228
    :try_start_2
    invoke-virtual {v8, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    invoke-virtual {v9}, Lz7/p;->i()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    invoke-virtual {v8, v15}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    new-instance v10, Landroid/content/Intent;

    .line 245
    .line 246
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 247
    .line 248
    .line 249
    new-instance v11, Landroid/content/ComponentName;

    .line 250
    .line 251
    invoke-direct {v11, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v10, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 258
    .line 259
    .line 260
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    iget-object v8, v8, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 265
    .line 266
    invoke-static {v8, v10}, Lif/a;->y0(Landroid/content/ContextWrapper;Landroid/content/Intent;)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_13

    .line 270
    .line 271
    :cond_9
    const/16 v10, 0x70

    .line 272
    .line 273
    if-ne v9, v10, :cond_a

    .line 274
    .line 275
    invoke-virtual {v8, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    invoke-virtual {v9}, Lz7/p;->i()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    invoke-virtual {v8, v15}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    new-instance v10, Landroid/content/Intent;

    .line 292
    .line 293
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 294
    .line 295
    .line 296
    new-instance v11, Landroid/content/ComponentName;

    .line 297
    .line 298
    invoke-direct {v11, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v10, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 305
    .line 306
    .line 307
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    iget-object v8, v8, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 312
    .line 313
    const/4 v9, 0x3

    .line 314
    invoke-static {v9, v8, v10}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 315
    .line 316
    .line 317
    goto/16 :goto_13

    .line 318
    .line 319
    :cond_a
    const/16 v10, 0x73

    .line 320
    .line 321
    const/4 v14, 0x2

    .line 322
    if-ne v9, v10, :cond_d

    .line 323
    .line 324
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    iget-object v8, v8, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 329
    .line 330
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 331
    .line 332
    .line 333
    move-result-object v8

    .line 334
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    iget v8, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 339
    .line 340
    and-int/lit8 v8, v8, 0x30

    .line 341
    .line 342
    const/16 v9, 0x20

    .line 343
    .line 344
    if-ne v8, v9, :cond_b

    .line 345
    .line 346
    const/4 v8, 0x2

    .line 347
    goto :goto_1

    .line 348
    :cond_b
    const/16 v10, 0x10

    .line 349
    .line 350
    if-ne v8, v10, :cond_c

    .line 351
    .line 352
    const/4 v8, 0x1

    .line 353
    :goto_1
    new-instance v10, Landroid/content/Intent;

    .line 354
    .line 355
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 356
    .line 357
    .line 358
    const-string v11, "AUTONAVI_STANDARD_BROADCAST_RECV"

    .line 359
    .line 360
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    .line 362
    .line 363
    const-string v11, "KEY_TYPE"

    .line 364
    .line 365
    const/16 v12, 0x2740

    .line 366
    .line 367
    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    .line 369
    .line 370
    const-string v11, "EXTRA_DAY_NIGHT_MODE"

    .line 371
    .line 372
    invoke-virtual {v10, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v10, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 376
    .line 377
    .line 378
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 379
    .line 380
    .line 381
    move-result-object v8

    .line 382
    iget-object v8, v8, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 383
    .line 384
    invoke-static {v14, v8, v10}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 385
    .line 386
    .line 387
    goto/16 :goto_13

    .line 388
    .line 389
    :cond_c
    return-void

    .line 390
    :cond_d
    const/16 v10, 0x66

    .line 391
    .line 392
    if-eq v9, v10, :cond_5c

    .line 393
    .line 394
    const/16 v10, 0x68

    .line 395
    .line 396
    if-ne v9, v10, :cond_e

    .line 397
    .line 398
    goto/16 :goto_11

    .line 399
    .line 400
    :cond_e
    const/16 v10, 0x69

    .line 401
    .line 402
    if-ne v9, v10, :cond_f

    .line 403
    .line 404
    new-instance v9, Lya/l;

    .line 405
    .line 406
    invoke-direct {v9, v8}, Lya/l;-><init>(Lz7/s;)V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_13

    .line 410
    .line 411
    :cond_f
    const/16 v10, 0xc8

    .line 412
    .line 413
    if-ne v9, v10, :cond_10

    .line 414
    .line 415
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 416
    .line 417
    .line 418
    move-result-object v8

    .line 419
    iget-object v8, v8, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 420
    .line 421
    new-instance v9, Landroid/content/Intent;

    .line 422
    .line 423
    const-string v10, "android.settings.SETTINGS"

    .line 424
    .line 425
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-static {v8, v9}, Lif/a;->y0(Landroid/content/ContextWrapper;Landroid/content/Intent;)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_13

    .line 432
    .line 433
    :cond_10
    const/16 v10, 0xca

    .line 434
    .line 435
    if-ne v9, v10, :cond_11

    .line 436
    .line 437
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 438
    .line 439
    .line 440
    move-result-object v8

    .line 441
    iget-object v8, v8, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 442
    .line 443
    new-instance v9, Landroid/content/Intent;

    .line 444
    .line 445
    const-string v10, "android.settings.BLUETOOTH_SETTINGS"

    .line 446
    .line 447
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-static {v8, v9}, Lif/a;->y0(Landroid/content/ContextWrapper;Landroid/content/Intent;)V

    .line 451
    .line 452
    .line 453
    goto/16 :goto_13

    .line 454
    .line 455
    :cond_11
    const/16 v10, 0xc9

    .line 456
    .line 457
    if-ne v9, v10, :cond_12

    .line 458
    .line 459
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 460
    .line 461
    .line 462
    move-result-object v8

    .line 463
    iget-object v8, v8, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 464
    .line 465
    new-instance v9, Landroid/content/Intent;

    .line 466
    .line 467
    const-string v10, "android.settings.WIFI_SETTINGS"

    .line 468
    .line 469
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    invoke-static {v8, v9}, Lif/a;->y0(Landroid/content/ContextWrapper;Landroid/content/Intent;)V

    .line 473
    .line 474
    .line 475
    goto/16 :goto_13

    .line 476
    .line 477
    :cond_12
    const/16 v10, 0x193

    .line 478
    .line 479
    if-ne v9, v10, :cond_13

    .line 480
    .line 481
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 482
    .line 483
    .line 484
    move-result-object v9

    .line 485
    iget-object v9, v9, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 486
    .line 487
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 488
    .line 489
    .line 490
    move-result-object v9

    .line 491
    const-string v10, "enabled_input_methods"

    .line 492
    .line 493
    invoke-virtual {v8, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 494
    .line 495
    .line 496
    move-result-object v11

    .line 497
    invoke-virtual {v11}, Lz7/p;->i()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v11

    .line 501
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 502
    .line 503
    .line 504
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 505
    .line 506
    .line 507
    move-result-object v9

    .line 508
    iget-object v9, v9, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 509
    .line 510
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 511
    .line 512
    .line 513
    move-result-object v9

    .line 514
    const-string v10, "default_input_method"

    .line 515
    .line 516
    invoke-virtual {v8, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 517
    .line 518
    .line 519
    move-result-object v8

    .line 520
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 525
    .line 526
    .line 527
    goto/16 :goto_13

    .line 528
    .line 529
    :cond_13
    const/16 v10, 0x67

    .line 530
    .line 531
    if-ne v9, v10, :cond_14

    .line 532
    .line 533
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 534
    .line 535
    .line 536
    move-result-object v8

    .line 537
    iget-object v8, v8, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 538
    .line 539
    invoke-static {v8}, Lif/a;->F0(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 540
    .line 541
    .line 542
    goto/16 :goto_13

    .line 543
    .line 544
    :cond_14
    const/16 v15, 0x1f4

    .line 545
    .line 546
    const-string v10, "adb shell "

    .line 547
    .line 548
    const/16 v11, 0x1f7

    .line 549
    .line 550
    if-eq v9, v15, :cond_59

    .line 551
    .line 552
    if-ne v9, v11, :cond_15

    .line 553
    .line 554
    goto/16 :goto_10

    .line 555
    .line 556
    :cond_15
    const/16 v11, 0x1f5

    .line 557
    .line 558
    if-ne v9, v11, :cond_16

    .line 559
    .line 560
    :try_start_3
    invoke-virtual {v8, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 561
    .line 562
    .line 563
    move-result-object v8

    .line 564
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v8

    .line 568
    invoke-static {v8}, Lfa/a;->e(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    goto/16 :goto_13

    .line 572
    .line 573
    :cond_16
    const/16 v11, 0x1f8

    .line 574
    .line 575
    if-ne v9, v11, :cond_18

    .line 576
    .line 577
    invoke-virtual {v8, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 578
    .line 579
    .line 580
    move-result-object v8

    .line 581
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v8

    .line 585
    sget-object v9, Lfa/n;->a:Lfa/p;

    .line 586
    .line 587
    invoke-virtual {v9}, Lfa/p;->d()Z

    .line 588
    .line 589
    .line 590
    move-result v9

    .line 591
    if-nez v9, :cond_17

    .line 592
    .line 593
    const/4 v12, 0x0

    .line 594
    goto :goto_2

    .line 595
    :cond_17
    invoke-static {v8}, Lfa/a;->f(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 596
    .line 597
    .line 598
    move-result-object v12

    .line 599
    :goto_2
    invoke-virtual {v12}, Lcom/yunpan/appmanage/bean/ShellResultData;->getListStr()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v8

    .line 603
    invoke-static {v8}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 604
    .line 605
    .line 606
    goto/16 :goto_13

    .line 607
    .line 608
    :cond_18
    const/16 v11, 0x1f6

    .line 609
    .line 610
    const-wide/16 v14, 0x0

    .line 611
    .line 612
    if-ne v9, v11, :cond_22

    .line 613
    .line 614
    new-array v9, v2, [Ljava/lang/String;

    .line 615
    .line 616
    const-string v11, "id"

    .line 617
    .line 618
    aput-object v11, v9, v1

    .line 619
    .line 620
    invoke-static {v9}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 621
    .line 622
    .line 623
    move-result-object v9

    .line 624
    invoke-virtual {v9}, Lv9/e;->l0()Landroidx/room/s;

    .line 625
    .line 626
    .line 627
    move-result-object v9

    .line 628
    invoke-virtual {v9}, Landroidx/room/s;->k()Ljava/util/List;

    .line 629
    .line 630
    .line 631
    move-result-object v9

    .line 632
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 633
    .line 634
    .line 635
    move-result-object v9

    .line 636
    :cond_19
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 637
    .line 638
    .line 639
    move-result v11

    .line 640
    if-eqz v11, :cond_1a

    .line 641
    .line 642
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v11

    .line 646
    check-cast v11, Ljava/lang/String;

    .line 647
    .line 648
    const-string v12, "uid=0(root)"

    .line 649
    .line 650
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 651
    .line 652
    .line 653
    move-result v11

    .line 654
    if-eqz v11, :cond_19

    .line 655
    .line 656
    const/4 v9, 0x1

    .line 657
    goto :goto_3

    .line 658
    :cond_1a
    const/4 v9, 0x0

    .line 659
    :goto_3
    invoke-virtual {v8, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 660
    .line 661
    .line 662
    move-result-object v8

    .line 663
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v8

    .line 667
    if-eqz v9, :cond_1c

    .line 668
    .line 669
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v8

    .line 673
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 674
    .line 675
    .line 676
    move-result v10

    .line 677
    if-eqz v10, :cond_1b

    .line 678
    .line 679
    const/16 v10, 0xa

    .line 680
    .line 681
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v8

    .line 685
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v8

    .line 689
    :cond_1b
    new-array v10, v2, [Ljava/lang/String;

    .line 690
    .line 691
    aput-object v8, v10, v1

    .line 692
    .line 693
    invoke-static {v10}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 694
    .line 695
    .line 696
    move-result-object v10

    .line 697
    invoke-virtual {v10}, Lv9/e;->l0()Landroidx/room/s;

    .line 698
    .line 699
    .line 700
    goto :goto_4

    .line 701
    :cond_1c
    invoke-static {v8}, Lfa/a;->e(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 705
    .line 706
    .line 707
    move-result-wide v10

    .line 708
    :cond_1d
    const-wide/16 v12, 0x5dc

    .line 709
    .line 710
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 711
    .line 712
    .line 713
    const-string v12, "ps -A | grep shizuku"

    .line 714
    .line 715
    if-eqz v9, :cond_1e

    .line 716
    .line 717
    :try_start_4
    new-array v13, v2, [Ljava/lang/String;

    .line 718
    .line 719
    aput-object v12, v13, v1

    .line 720
    .line 721
    invoke-static {v13}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 722
    .line 723
    .line 724
    move-result-object v12

    .line 725
    invoke-virtual {v12}, Lv9/e;->l0()Landroidx/room/s;

    .line 726
    .line 727
    .line 728
    move-result-object v12

    .line 729
    invoke-virtual {v12}, Landroidx/room/s;->q()Z

    .line 730
    .line 731
    .line 732
    move-result v12

    .line 733
    if-eqz v12, :cond_20

    .line 734
    .line 735
    :goto_5
    move-wide v10, v14

    .line 736
    goto :goto_7

    .line 737
    :cond_1e
    sget-object v13, Lfa/n;->a:Lfa/p;

    .line 738
    .line 739
    invoke-virtual {v13}, Lfa/p;->d()Z

    .line 740
    .line 741
    .line 742
    move-result v13

    .line 743
    if-nez v13, :cond_1f

    .line 744
    .line 745
    const/4 v12, 0x0

    .line 746
    goto :goto_6

    .line 747
    :cond_1f
    invoke-static {v12}, Lfa/a;->f(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 748
    .line 749
    .line 750
    move-result-object v12

    .line 751
    :goto_6
    iget v12, v12, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 752
    .line 753
    if-nez v12, :cond_20

    .line 754
    .line 755
    goto :goto_5

    .line 756
    :catch_0
    :cond_20
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 757
    .line 758
    .line 759
    move-result-wide v12

    .line 760
    sub-long/2addr v12, v10

    .line 761
    const-wide/16 v16, 0x17d4

    .line 762
    .line 763
    cmp-long v18, v12, v16

    .line 764
    .line 765
    if-ltz v18, :cond_1d

    .line 766
    .line 767
    :goto_7
    cmp-long v12, v10, v14

    .line 768
    .line 769
    if-eqz v12, :cond_5d

    .line 770
    .line 771
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 772
    .line 773
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 774
    .line 775
    .line 776
    if-eqz v9, :cond_21

    .line 777
    .line 778
    new-array v9, v2, [Ljava/lang/String;

    .line 779
    .line 780
    aput-object v8, v9, v1

    .line 781
    .line 782
    invoke-static {v9}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 783
    .line 784
    .line 785
    move-result-object v8

    .line 786
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;

    .line 787
    .line 788
    .line 789
    goto/16 :goto_13

    .line 790
    .line 791
    :cond_21
    invoke-static {v8}, Lfa/a;->e(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    goto/16 :goto_13

    .line 795
    .line 796
    :cond_22
    const/16 v10, 0x195

    .line 797
    .line 798
    if-ne v9, v10, :cond_23

    .line 799
    .line 800
    const-string v8, "adb tcpip 5555"

    .line 801
    .line 802
    invoke-static {v8}, Lfa/a;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 803
    .line 804
    .line 805
    goto/16 :goto_13

    .line 806
    .line 807
    :cond_23
    const/16 v10, 0x190

    .line 808
    .line 809
    const-string v11, "adb_enabled"

    .line 810
    .line 811
    if-ne v9, v10, :cond_25

    .line 812
    .line 813
    :try_start_6
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 814
    .line 815
    .line 816
    move-result-object v8

    .line 817
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 818
    .line 819
    .line 820
    move-result-object v8

    .line 821
    invoke-static {v8, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 822
    .line 823
    .line 824
    move-result v8

    .line 825
    if-eq v8, v2, :cond_24

    .line 826
    .line 827
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 828
    .line 829
    .line 830
    move-result-object v8

    .line 831
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 832
    .line 833
    .line 834
    move-result-object v8

    .line 835
    invoke-static {v8, v11, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 836
    .line 837
    .line 838
    :catch_1
    :cond_24
    :try_start_7
    new-array v8, v2, [Ljava/lang/String;

    .line 839
    .line 840
    const-string v9, "echo a1 > /dev/hsaeio"

    .line 841
    .line 842
    aput-object v9, v8, v1

    .line 843
    .line 844
    invoke-static {v8}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 845
    .line 846
    .line 847
    move-result-object v8

    .line 848
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 849
    .line 850
    .line 851
    goto/16 :goto_13

    .line 852
    .line 853
    :cond_25
    const/16 v10, 0x2bc

    .line 854
    .line 855
    if-ne v9, v10, :cond_26

    .line 856
    .line 857
    :try_start_8
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 858
    .line 859
    .line 860
    move-result-object v8

    .line 861
    invoke-static {v8}, Lwa/g;->d(Landroid/content/ContextWrapper;)Z

    .line 862
    .line 863
    .line 864
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 865
    .line 866
    .line 867
    move-result-object v8

    .line 868
    iget-object v8, v8, Lwa/s;->m:Lag/c;

    .line 869
    .line 870
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 871
    .line 872
    .line 873
    invoke-static {}, Lag/c;->l()I

    .line 874
    .line 875
    .line 876
    move-result v8

    .line 877
    if-eq v8, v2, :cond_5d

    .line 878
    .line 879
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 880
    .line 881
    .line 882
    move-result-object v8

    .line 883
    iget-object v8, v8, Lwa/s;->m:Lag/c;

    .line 884
    .line 885
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 886
    .line 887
    .line 888
    invoke-static {}, Lag/c;->g()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 889
    .line 890
    .line 891
    goto/16 :goto_13

    .line 892
    .line 893
    :cond_26
    const/16 v10, 0x194

    .line 894
    .line 895
    if-ne v9, v10, :cond_28

    .line 896
    .line 897
    :try_start_9
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 898
    .line 899
    .line 900
    move-result-object v8

    .line 901
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 902
    .line 903
    .line 904
    move-result-object v8

    .line 905
    invoke-static {v8, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 906
    .line 907
    .line 908
    move-result v8

    .line 909
    if-ne v8, v2, :cond_27

    .line 910
    .line 911
    goto/16 :goto_13

    .line 912
    .line 913
    :cond_27
    new-instance v8, Ljava/lang/Exception;

    .line 914
    .line 915
    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    .line 916
    .line 917
    .line 918
    throw v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 919
    :catch_2
    :try_start_a
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 920
    .line 921
    .line 922
    move-result-object v8

    .line 923
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 924
    .line 925
    .line 926
    move-result-object v8

    .line 927
    invoke-static {v8, v11, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 928
    .line 929
    .line 930
    goto/16 :goto_13

    .line 931
    .line 932
    :cond_28
    const/16 v10, 0x191

    .line 933
    .line 934
    const-wide/16 v12, 0x8ae

    .line 935
    .line 936
    const-string v19, "setprop ctl.restart adbd"

    .line 937
    .line 938
    const-wide/16 v20, 0xde

    .line 939
    .line 940
    if-ne v9, v10, :cond_29

    .line 941
    .line 942
    :try_start_b
    new-array v8, v2, [Ljava/lang/String;

    .line 943
    .line 944
    const-string v9, "setprop service.adb.tcp.port 5555"

    .line 945
    .line 946
    aput-object v9, v8, v1

    .line 947
    .line 948
    invoke-static {v8}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 949
    .line 950
    .line 951
    move-result-object v8

    .line 952
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;

    .line 953
    .line 954
    .line 955
    move-result-object v8

    .line 956
    invoke-virtual {v8}, Landroidx/room/s;->q()Z

    .line 957
    .line 958
    .line 959
    move-result v8

    .line 960
    if-eqz v8, :cond_5d

    .line 961
    .line 962
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V

    .line 963
    .line 964
    .line 965
    new-array v8, v2, [Ljava/lang/String;

    .line 966
    .line 967
    aput-object v19, v8, v1

    .line 968
    .line 969
    invoke-static {v8}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 970
    .line 971
    .line 972
    move-result-object v8

    .line 973
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;

    .line 974
    .line 975
    .line 976
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 977
    .line 978
    .line 979
    goto/16 :goto_13

    .line 980
    .line 981
    :cond_29
    const/16 v10, 0x19b

    .line 982
    .line 983
    if-ne v9, v10, :cond_2a

    .line 984
    .line 985
    new-array v8, v2, [Ljava/lang/String;

    .line 986
    .line 987
    const-string v9, "setprop persist.adb.tcp.port 5555"

    .line 988
    .line 989
    aput-object v9, v8, v1

    .line 990
    .line 991
    invoke-static {v8}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 992
    .line 993
    .line 994
    move-result-object v8

    .line 995
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;

    .line 996
    .line 997
    .line 998
    move-result-object v8

    .line 999
    invoke-virtual {v8}, Landroidx/room/s;->q()Z

    .line 1000
    .line 1001
    .line 1002
    move-result v8

    .line 1003
    if-eqz v8, :cond_5d

    .line 1004
    .line 1005
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V

    .line 1006
    .line 1007
    .line 1008
    new-array v8, v2, [Ljava/lang/String;

    .line 1009
    .line 1010
    aput-object v19, v8, v1

    .line 1011
    .line 1012
    invoke-static {v8}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v8

    .line 1016
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;

    .line 1017
    .line 1018
    .line 1019
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 1020
    .line 1021
    .line 1022
    goto/16 :goto_13

    .line 1023
    .line 1024
    :cond_2a
    const/16 v10, 0x258

    .line 1025
    .line 1026
    if-ne v9, v10, :cond_2b

    .line 1027
    .line 1028
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v9

    .line 1032
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v9

    .line 1036
    const-string v10, "type1"

    .line 1037
    .line 1038
    invoke-virtual {v8, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v10

    .line 1042
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v10

    .line 1046
    const-string v11, "type2"

    .line 1047
    .line 1048
    invoke-virtual {v8, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v11

    .line 1052
    invoke-virtual {v11}, Lz7/p;->i()Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v11

    .line 1056
    const-string v12, "key"

    .line 1057
    .line 1058
    invoke-virtual {v8, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v12

    .line 1062
    invoke-virtual {v12}, Lz7/p;->i()Ljava/lang/String;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v12

    .line 1066
    const-string v13, "value"

    .line 1067
    .line 1068
    invoke-virtual {v8, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v8

    .line 1072
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v8

    .line 1076
    invoke-static {v9, v10, v11, v12, v8}, Lcom/bumptech/glide/d;->D(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    goto/16 :goto_13

    .line 1080
    .line 1081
    :cond_2b
    const/16 v10, 0x192

    .line 1082
    .line 1083
    const-wide/16 v12, 0x10c

    .line 1084
    .line 1085
    if-ne v9, v10, :cond_2d

    .line 1086
    .line 1087
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v8

    .line 1091
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v8

    .line 1095
    invoke-static {v8, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 1096
    .line 1097
    .line 1098
    move-result v8

    .line 1099
    if-eq v8, v2, :cond_2c

    .line 1100
    .line 1101
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v8

    .line 1105
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v8

    .line 1109
    invoke-static {v8, v11, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1110
    .line 1111
    .line 1112
    :cond_2c
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 1113
    .line 1114
    .line 1115
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v8

    .line 1119
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v8

    .line 1123
    invoke-static {v8, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 1124
    .line 1125
    .line 1126
    move-result v8

    .line 1127
    if-eq v8, v2, :cond_5d

    .line 1128
    .line 1129
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v8

    .line 1133
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v8

    .line 1137
    invoke-static {v8, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1138
    .line 1139
    .line 1140
    goto/16 :goto_13

    .line 1141
    .line 1142
    :cond_2d
    const/16 v10, 0x12c

    .line 1143
    .line 1144
    const-string v11, "wifi"

    .line 1145
    .line 1146
    if-ne v9, v10, :cond_2f

    .line 1147
    .line 1148
    :try_start_c
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v8

    .line 1152
    iget-object v8, v8, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1153
    .line 1154
    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v8

    .line 1158
    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 1159
    .line 1160
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 1161
    .line 1162
    .line 1163
    move-result v9

    .line 1164
    if-nez v9, :cond_2e

    .line 1165
    .line 1166
    invoke-virtual {v8, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1167
    .line 1168
    .line 1169
    :cond_2e
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 1170
    .line 1171
    .line 1172
    goto/16 :goto_13

    .line 1173
    .line 1174
    :cond_2f
    const/16 v10, 0x12d

    .line 1175
    .line 1176
    if-ne v9, v10, :cond_31

    .line 1177
    .line 1178
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v8

    .line 1182
    iget-object v8, v8, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1183
    .line 1184
    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v8

    .line 1188
    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 1189
    .line 1190
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 1191
    .line 1192
    .line 1193
    move-result v9

    .line 1194
    if-eqz v9, :cond_30

    .line 1195
    .line 1196
    invoke-virtual {v8, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1197
    .line 1198
    .line 1199
    :cond_30
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1200
    .line 1201
    .line 1202
    goto/16 :goto_13

    .line 1203
    .line 1204
    :cond_31
    const/16 v10, 0x136

    .line 1205
    .line 1206
    const/16 v14, 0x21

    .line 1207
    .line 1208
    const-string v15, "bluetooth"

    .line 1209
    .line 1210
    const/16 v12, 0x12

    .line 1211
    .line 1212
    if-ne v9, v10, :cond_35

    .line 1213
    .line 1214
    :try_start_d
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1215
    .line 1216
    if-lt v8, v12, :cond_32

    .line 1217
    .line 1218
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v9

    .line 1222
    iget-object v9, v9, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1223
    .line 1224
    invoke-virtual {v9, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v9

    .line 1228
    invoke-static {v9}, Lb1/o;->d(Ljava/lang/Object;)Landroid/bluetooth/BluetoothManager;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v9

    .line 1232
    invoke-static {v9}, Lb1/o;->c(Landroid/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v9

    .line 1236
    goto :goto_8

    .line 1237
    :cond_32
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v9

    .line 1241
    :goto_8
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 1242
    .line 1243
    .line 1244
    move-result v10

    .line 1245
    if-nez v10, :cond_5d

    .line 1246
    .line 1247
    if-lt v8, v14, :cond_33

    .line 1248
    .line 1249
    invoke-static {}, Lfa/e;->e()Lfa/e;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v8

    .line 1253
    iget-boolean v8, v8, Lfa/e;->a:Z

    .line 1254
    .line 1255
    if-eqz v8, :cond_33

    .line 1256
    .line 1257
    new-array v8, v2, [Ljava/lang/String;

    .line 1258
    .line 1259
    const-string v10, "cmd bluetooth enable"

    .line 1260
    .line 1261
    aput-object v10, v8, v1

    .line 1262
    .line 1263
    invoke-static {v8}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v8

    .line 1267
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v8

    .line 1271
    invoke-virtual {v8}, Landroidx/room/s;->q()Z

    .line 1272
    .line 1273
    .line 1274
    move-result v8

    .line 1275
    if-nez v8, :cond_34

    .line 1276
    .line 1277
    new-array v8, v2, [Ljava/lang/String;

    .line 1278
    .line 1279
    const-string v10, "svc bluetooth enable"

    .line 1280
    .line 1281
    aput-object v10, v8, v1

    .line 1282
    .line 1283
    invoke-static {v8}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v8

    .line 1287
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v8

    .line 1291
    invoke-virtual {v8}, Landroidx/room/s;->q()Z

    .line 1292
    .line 1293
    .line 1294
    move-result v8

    .line 1295
    goto :goto_9

    .line 1296
    :cond_33
    const/4 v8, 0x0

    .line 1297
    :cond_34
    :goto_9
    if-nez v8, :cond_5d

    .line 1298
    .line 1299
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1300
    .line 1301
    .line 1302
    goto/16 :goto_13

    .line 1303
    .line 1304
    :cond_35
    const/16 v10, 0x137

    .line 1305
    .line 1306
    if-ne v9, v10, :cond_3a

    .line 1307
    .line 1308
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1309
    .line 1310
    if-lt v8, v12, :cond_36

    .line 1311
    .line 1312
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v9

    .line 1316
    iget-object v9, v9, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1317
    .line 1318
    invoke-virtual {v9, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v9

    .line 1322
    invoke-static {v9}, Lb1/o;->d(Ljava/lang/Object;)Landroid/bluetooth/BluetoothManager;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v9

    .line 1326
    invoke-static {v9}, Lb1/o;->c(Landroid/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v9

    .line 1330
    goto :goto_a

    .line 1331
    :cond_36
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v9

    .line 1335
    :goto_a
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 1336
    .line 1337
    .line 1338
    move-result v10

    .line 1339
    if-eqz v10, :cond_5d

    .line 1340
    .line 1341
    if-lt v8, v14, :cond_37

    .line 1342
    .line 1343
    invoke-static {}, Lfa/e;->e()Lfa/e;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v8

    .line 1347
    iget-boolean v8, v8, Lfa/e;->a:Z

    .line 1348
    .line 1349
    if-eqz v8, :cond_37

    .line 1350
    .line 1351
    new-array v8, v2, [Ljava/lang/String;

    .line 1352
    .line 1353
    const-string v10, "cmd bluetooth disable"

    .line 1354
    .line 1355
    aput-object v10, v8, v1

    .line 1356
    .line 1357
    invoke-static {v8}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v8

    .line 1361
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v8

    .line 1365
    invoke-virtual {v8}, Landroidx/room/s;->q()Z

    .line 1366
    .line 1367
    .line 1368
    move-result v8

    .line 1369
    if-nez v8, :cond_38

    .line 1370
    .line 1371
    new-array v8, v2, [Ljava/lang/String;

    .line 1372
    .line 1373
    const-string v10, "svc bluetooth disable"

    .line 1374
    .line 1375
    aput-object v10, v8, v1

    .line 1376
    .line 1377
    invoke-static {v8}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v8

    .line 1381
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v8

    .line 1385
    invoke-virtual {v8}, Landroidx/room/s;->q()Z

    .line 1386
    .line 1387
    .line 1388
    move-result v8

    .line 1389
    goto :goto_b

    .line 1390
    :cond_37
    const/4 v8, 0x0

    .line 1391
    :cond_38
    :goto_b
    if-nez v8, :cond_39

    .line 1392
    .line 1393
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1394
    .line 1395
    .line 1396
    :cond_39
    const-wide/16 v8, 0x10c

    .line 1397
    .line 1398
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 1399
    .line 1400
    .line 1401
    goto/16 :goto_13

    .line 1402
    .line 1403
    :cond_3a
    const/16 v10, 0x140

    .line 1404
    .line 1405
    if-ne v9, v10, :cond_3b

    .line 1406
    .line 1407
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v8

    .line 1411
    iget-object v8, v8, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1412
    .line 1413
    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v8

    .line 1417
    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 1418
    .line 1419
    invoke-virtual {v8, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1420
    .line 1421
    .line 1422
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v8

    .line 1426
    iget-object v8, v8, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1427
    .line 1428
    invoke-static {v8, v2}, Lnh/b;->m0(Landroid/content/Context;Z)V

    .line 1429
    .line 1430
    .line 1431
    goto/16 :goto_13

    .line 1432
    .line 1433
    :cond_3b
    const/16 v10, 0x141

    .line 1434
    .line 1435
    if-ne v9, v10, :cond_3c

    .line 1436
    .line 1437
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v8

    .line 1441
    iget-object v8, v8, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1442
    .line 1443
    invoke-static {v8, v1}, Lnh/b;->m0(Landroid/content/Context;Z)V

    .line 1444
    .line 1445
    .line 1446
    const-wide/16 v8, 0x10c

    .line 1447
    .line 1448
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 1449
    .line 1450
    .line 1451
    goto/16 :goto_13

    .line 1452
    .line 1453
    :cond_3c
    const/16 v10, 0x259

    .line 1454
    .line 1455
    if-ne v9, v10, :cond_3f

    .line 1456
    .line 1457
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v8

    .line 1461
    iget-object v8, v8, Lcom/yunpan/appmanage/util/w;->s:Ljava/lang/String;

    .line 1462
    .line 1463
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 1464
    .line 1465
    .line 1466
    move-result v8

    .line 1467
    if-eqz v8, :cond_3d

    .line 1468
    .line 1469
    goto/16 :goto_13

    .line 1470
    .line 1471
    :cond_3d
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v8

    .line 1475
    iget-object v8, v8, Lcom/yunpan/appmanage/util/w;->s:Ljava/lang/String;

    .line 1476
    .line 1477
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v9

    .line 1481
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v9

    .line 1485
    invoke-static {v9, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v9

    .line 1489
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1490
    .line 1491
    .line 1492
    move-result v8

    .line 1493
    if-eqz v8, :cond_3e

    .line 1494
    .line 1495
    goto/16 :goto_13

    .line 1496
    .line 1497
    :cond_3e
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v8

    .line 1501
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v8

    .line 1505
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v9

    .line 1509
    iget-object v9, v9, Lcom/yunpan/appmanage/util/w;->s:Ljava/lang/String;

    .line 1510
    .line 1511
    invoke-static {v8, v3, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1512
    .line 1513
    .line 1514
    goto/16 :goto_13

    .line 1515
    .line 1516
    :cond_3f
    const/16 v10, 0x196

    .line 1517
    .line 1518
    if-ne v9, v10, :cond_46

    .line 1519
    .line 1520
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v8

    .line 1524
    iget-object v8, v8, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 1525
    .line 1526
    if-nez v8, :cond_43

    .line 1527
    .line 1528
    sget-object v8, Lwa/v;->a:Lcom/yunpan/appmanage/util/b0;

    .line 1529
    .line 1530
    invoke-virtual {v8}, Lcom/yunpan/appmanage/util/b0;->a()Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v8

    .line 1534
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1535
    .line 1536
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1537
    .line 1538
    .line 1539
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v10

    .line 1543
    iget-object v10, v10, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1544
    .line 1545
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v10

    .line 1549
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    .line 1551
    .line 1552
    const-string v10, "/"

    .line 1553
    .line 1554
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v9

    .line 1561
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1562
    .line 1563
    .line 1564
    move-result v8

    .line 1565
    if-eqz v8, :cond_42

    .line 1566
    .line 1567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1568
    .line 1569
    .line 1570
    move-result-wide v8

    .line 1571
    :cond_40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1572
    .line 1573
    .line 1574
    move-result-wide v10

    .line 1575
    sub-long/2addr v10, v8

    .line 1576
    const-wide/32 v12, 0xc350

    .line 1577
    .line 1578
    .line 1579
    cmp-long v14, v10, v12

    .line 1580
    .line 1581
    if-lez v14, :cond_41

    .line 1582
    .line 1583
    goto :goto_c

    .line 1584
    :cond_41
    const-wide/16 v10, 0x3e8

    .line 1585
    .line 1586
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 1587
    .line 1588
    .line 1589
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v10

    .line 1593
    iget-object v10, v10, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 1594
    .line 1595
    if-eqz v10, :cond_40

    .line 1596
    .line 1597
    :cond_42
    :goto_c
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v8

    .line 1601
    iget-object v8, v8, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 1602
    .line 1603
    if-nez v8, :cond_43

    .line 1604
    .line 1605
    goto/16 :goto_13

    .line 1606
    .line 1607
    :cond_43
    const/4 v8, 0x0

    .line 1608
    :cond_44
    add-int/2addr v8, v2

    .line 1609
    const/4 v9, 0x5

    .line 1610
    if-le v8, v9, :cond_45

    .line 1611
    .line 1612
    const-wide/16 v11, 0x0

    .line 1613
    .line 1614
    goto :goto_d

    .line 1615
    :cond_45
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v9

    .line 1619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1620
    .line 1621
    .line 1622
    move-result-wide v10

    .line 1623
    iput-wide v10, v9, Lwa/s;->h:J

    .line 1624
    .line 1625
    new-instance v9, Landroid/content/Intent;

    .line 1626
    .line 1627
    const-string v10, "android.intent.action.MAIN"

    .line 1628
    .line 1629
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1630
    .line 1631
    .line 1632
    new-instance v10, Landroid/content/ComponentName;

    .line 1633
    .line 1634
    const-string v11, "com.leapmotor.system"

    .line 1635
    .line 1636
    const-string v12, "com.leapmotor.system.demo.DemoActivity"

    .line 1637
    .line 1638
    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    .line 1640
    .line 1641
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1642
    .line 1643
    .line 1644
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v10

    .line 1648
    iget-object v10, v10, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1649
    .line 1650
    invoke-static {v10, v9}, Lif/a;->y0(Landroid/content/ContextWrapper;Landroid/content/Intent;)V

    .line 1651
    .line 1652
    .line 1653
    const-wide/16 v9, 0xbb8

    .line 1654
    .line 1655
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 1656
    .line 1657
    .line 1658
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v9

    .line 1662
    iget-wide v9, v9, Lwa/s;->h:J

    .line 1663
    .line 1664
    const-wide/16 v11, 0x0

    .line 1665
    .line 1666
    cmp-long v13, v9, v11

    .line 1667
    .line 1668
    if-nez v13, :cond_44

    .line 1669
    .line 1670
    :goto_d
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v8

    .line 1674
    iput-wide v11, v8, Lwa/s;->h:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1675
    .line 1676
    goto/16 :goto_13

    .line 1677
    .line 1678
    :cond_46
    const/16 v10, 0x197

    .line 1679
    .line 1680
    const-string v11, "com.desay.setting.theme_auto_switch"

    .line 1681
    .line 1682
    if-ne v9, v10, :cond_4c

    .line 1683
    .line 1684
    :try_start_e
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v8

    .line 1688
    iget-object v8, v8, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1689
    .line 1690
    const-string v9, "uimode"

    .line 1691
    .line 1692
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v8

    .line 1696
    check-cast v8, Landroid/app/UiModeManager;

    .line 1697
    .line 1698
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v9

    .line 1702
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v10

    .line 1706
    iget-object v10, v10, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1707
    .line 1708
    invoke-virtual {v9, v10}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->init(Landroid/content/Context;)V

    .line 1709
    .line 1710
    .line 1711
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v9

    .line 1715
    const/4 v10, 0x4

    .line 1716
    invoke-virtual {v9, v10, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 1717
    .line 1718
    .line 1719
    move-result v9

    .line 1720
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v10

    .line 1724
    iget-object v10, v10, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1725
    .line 1726
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v10

    .line 1730
    invoke-static {v10, v11, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1731
    .line 1732
    .line 1733
    move-result v10

    .line 1734
    if-nez v10, :cond_49

    .line 1735
    .line 1736
    if-ne v9, v2, :cond_47

    .line 1737
    .line 1738
    invoke-virtual {v8}, Landroid/app/UiModeManager;->getNightMode()I

    .line 1739
    .line 1740
    .line 1741
    move-result v10

    .line 1742
    const/4 v12, 0x2

    .line 1743
    if-ne v10, v12, :cond_48

    .line 1744
    .line 1745
    goto/16 :goto_13

    .line 1746
    .line 1747
    :cond_47
    const/4 v12, 0x2

    .line 1748
    :cond_48
    if-nez v9, :cond_4a

    .line 1749
    .line 1750
    invoke-virtual {v8}, Landroid/app/UiModeManager;->getNightMode()I

    .line 1751
    .line 1752
    .line 1753
    move-result v10

    .line 1754
    if-ne v10, v2, :cond_4a

    .line 1755
    .line 1756
    goto/16 :goto_13

    .line 1757
    .line 1758
    :cond_49
    const/4 v12, 0x2

    .line 1759
    :cond_4a
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1760
    .line 1761
    .line 1762
    move-result-object v10

    .line 1763
    iget-object v10, v10, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1764
    .line 1765
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1766
    .line 1767
    .line 1768
    move-result-object v10

    .line 1769
    invoke-static {v10, v11, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1770
    .line 1771
    .line 1772
    invoke-virtual {v8, v1}, Landroid/app/UiModeManager;->enableCarMode(I)V

    .line 1773
    .line 1774
    .line 1775
    if-ne v9, v2, :cond_4b

    .line 1776
    .line 1777
    const/4 v14, 0x2

    .line 1778
    goto :goto_e

    .line 1779
    :cond_4b
    const/4 v14, 0x1

    .line 1780
    :goto_e
    invoke-virtual {v8, v14}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 1781
    .line 1782
    .line 1783
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v8

    .line 1787
    sub-int/2addr v14, v2

    .line 1788
    const/16 v9, 0x92

    .line 1789
    .line 1790
    invoke-virtual {v8, v9, v14}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendCarSettingValue(II)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1791
    .line 1792
    .line 1793
    goto/16 :goto_13

    .line 1794
    .line 1795
    :cond_4c
    const/16 v10, 0x198

    .line 1796
    .line 1797
    if-ne v9, v10, :cond_4d

    .line 1798
    .line 1799
    :try_start_f
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v8

    .line 1803
    iget-object v8, v8, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1804
    .line 1805
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1806
    .line 1807
    .line 1808
    move-result-object v8

    .line 1809
    invoke-static {v8, v11, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1810
    .line 1811
    .line 1812
    goto/16 :goto_13

    .line 1813
    .line 1814
    :cond_4d
    const/16 v10, 0x199

    .line 1815
    .line 1816
    if-ne v9, v10, :cond_4e

    .line 1817
    .line 1818
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v8

    .line 1822
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1823
    .line 1824
    .line 1825
    move-result-object v9

    .line 1826
    iget-object v9, v9, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1827
    .line 1828
    invoke-virtual {v8, v9}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->init(Landroid/content/Context;)V

    .line 1829
    .line 1830
    .line 1831
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v8

    .line 1835
    const/16 v9, 0x1e

    .line 1836
    .line 1837
    invoke-virtual {v8, v9, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendCarSettingValue(II)V

    .line 1838
    .line 1839
    .line 1840
    goto/16 :goto_13

    .line 1841
    .line 1842
    :cond_4e
    const/16 v10, 0x19a

    .line 1843
    .line 1844
    if-ne v9, v10, :cond_4f

    .line 1845
    .line 1846
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1847
    .line 1848
    .line 1849
    move-result-object v8

    .line 1850
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v9

    .line 1854
    iget-object v9, v9, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1855
    .line 1856
    invoke-virtual {v8, v9}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->init(Landroid/content/Context;)V

    .line 1857
    .line 1858
    .line 1859
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 1860
    .line 1861
    .line 1862
    move-result-object v8

    .line 1863
    const/16 v9, 0x5e

    .line 1864
    .line 1865
    invoke-virtual {v8, v9, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendCarSettingValue(II)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1866
    .line 1867
    .line 1868
    goto/16 :goto_13

    .line 1869
    .line 1870
    :cond_4f
    const/16 v10, 0x3e8

    .line 1871
    .line 1872
    const-string v11, "cmd package set-home-activity "

    .line 1873
    .line 1874
    const-string v12, "cmd role add-role-holder android.app.role.HOME "

    .line 1875
    .line 1876
    const/16 v13, 0x1d

    .line 1877
    .line 1878
    const-string v14, "pack"

    .line 1879
    .line 1880
    if-ne v9, v10, :cond_51

    .line 1881
    .line 1882
    :try_start_10
    invoke-virtual {v8, v14}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v8

    .line 1886
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v8

    .line 1890
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1891
    .line 1892
    if-lt v9, v13, :cond_50

    .line 1893
    .line 1894
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1895
    .line 1896
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1897
    .line 1898
    .line 1899
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    .line 1901
    .line 1902
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1903
    .line 1904
    .line 1905
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v9

    .line 1909
    new-array v10, v2, [Ljava/lang/String;

    .line 1910
    .line 1911
    aput-object v9, v10, v1

    .line 1912
    .line 1913
    invoke-static {v10}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1914
    .line 1915
    .line 1916
    move-result-object v9

    .line 1917
    invoke-virtual {v9}, Lv9/e;->l0()Landroidx/room/s;

    .line 1918
    .line 1919
    .line 1920
    move-result-object v9

    .line 1921
    invoke-virtual {v9}, Landroidx/room/s;->q()Z

    .line 1922
    .line 1923
    .line 1924
    move-result v9

    .line 1925
    if-eqz v9, :cond_50

    .line 1926
    .line 1927
    goto/16 :goto_13

    .line 1928
    .line 1929
    :cond_50
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 1930
    .line 1931
    .line 1932
    move-result-object v9

    .line 1933
    iget-object v9, v9, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 1934
    .line 1935
    invoke-static {v9, v8}, Lqf/c;->z(Lcom/yunpan/appmanage/base/AppStart;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 1936
    .line 1937
    .line 1938
    move-result-object v8

    .line 1939
    if-eqz v8, :cond_5d

    .line 1940
    .line 1941
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1942
    .line 1943
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1944
    .line 1945
    .line 1946
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    .line 1948
    .line 1949
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 1950
    .line 1951
    .line 1952
    move-result-object v8

    .line 1953
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1954
    .line 1955
    .line 1956
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v8

    .line 1960
    new-array v9, v2, [Ljava/lang/String;

    .line 1961
    .line 1962
    aput-object v8, v9, v1

    .line 1963
    .line 1964
    invoke-static {v9}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1965
    .line 1966
    .line 1967
    move-result-object v8

    .line 1968
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;

    .line 1969
    .line 1970
    .line 1971
    goto/16 :goto_13

    .line 1972
    .line 1973
    :cond_51
    const/16 v10, 0x3e9

    .line 1974
    .line 1975
    if-ne v9, v10, :cond_53

    .line 1976
    .line 1977
    invoke-virtual {v8, v14}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1978
    .line 1979
    .line 1980
    move-result-object v8

    .line 1981
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 1982
    .line 1983
    .line 1984
    move-result-object v8

    .line 1985
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1986
    .line 1987
    if-lt v9, v13, :cond_52

    .line 1988
    .line 1989
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1990
    .line 1991
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1992
    .line 1993
    .line 1994
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1995
    .line 1996
    .line 1997
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    .line 1999
    .line 2000
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2001
    .line 2002
    .line 2003
    move-result-object v8

    .line 2004
    invoke-static {v8}, Lfa/a;->e(Ljava/lang/String;)V

    .line 2005
    .line 2006
    .line 2007
    goto/16 :goto_13

    .line 2008
    .line 2009
    :cond_52
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v9

    .line 2013
    iget-object v9, v9, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 2014
    .line 2015
    invoke-static {v9, v8}, Lqf/c;->z(Lcom/yunpan/appmanage/base/AppStart;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v8

    .line 2019
    if-eqz v8, :cond_5d

    .line 2020
    .line 2021
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2022
    .line 2023
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2024
    .line 2025
    .line 2026
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    .line 2028
    .line 2029
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v8

    .line 2033
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    .line 2035
    .line 2036
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2037
    .line 2038
    .line 2039
    move-result-object v8

    .line 2040
    invoke-static {v8}, Lfa/a;->e(Ljava/lang/String;)V

    .line 2041
    .line 2042
    .line 2043
    goto/16 :goto_13

    .line 2044
    .line 2045
    :cond_53
    const/16 v8, 0x44c

    .line 2046
    .line 2047
    if-ne v9, v8, :cond_54

    .line 2048
    .line 2049
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2050
    .line 2051
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2052
    .line 2053
    .line 2054
    const-string v9, "am force-stop \'"

    .line 2055
    .line 2056
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2057
    .line 2058
    .line 2059
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 2060
    .line 2061
    .line 2062
    move-result-object v9

    .line 2063
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2064
    .line 2065
    .line 2066
    move-result-object v9

    .line 2067
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    .line 2069
    .line 2070
    const-string v9, "\'"

    .line 2071
    .line 2072
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    .line 2074
    .line 2075
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2076
    .line 2077
    .line 2078
    move-result-object v8

    .line 2079
    new-array v9, v2, [Ljava/lang/String;

    .line 2080
    .line 2081
    aput-object v8, v9, v1

    .line 2082
    .line 2083
    invoke-static {v9}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 2084
    .line 2085
    .line 2086
    move-result-object v9

    .line 2087
    invoke-virtual {v9}, Lv9/e;->l0()Landroidx/room/s;

    .line 2088
    .line 2089
    .line 2090
    move-result-object v9

    .line 2091
    invoke-virtual {v9}, Landroidx/room/s;->q()Z

    .line 2092
    .line 2093
    .line 2094
    move-result v9

    .line 2095
    if-nez v9, :cond_5d

    .line 2096
    .line 2097
    invoke-static {v8}, Lfa/a;->e(Ljava/lang/String;)V

    .line 2098
    .line 2099
    .line 2100
    goto/16 :goto_13

    .line 2101
    .line 2102
    :cond_54
    const/16 v8, 0x44d

    .line 2103
    .line 2104
    if-ne v9, v8, :cond_55

    .line 2105
    .line 2106
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2107
    .line 2108
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2109
    .line 2110
    .line 2111
    const-string v9, "am stopservice \'"

    .line 2112
    .line 2113
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    .line 2115
    .line 2116
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 2117
    .line 2118
    .line 2119
    move-result-object v9

    .line 2120
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2121
    .line 2122
    .line 2123
    move-result-object v9

    .line 2124
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2125
    .line 2126
    .line 2127
    const-string v9, "/.service.AccService\'"

    .line 2128
    .line 2129
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2130
    .line 2131
    .line 2132
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2133
    .line 2134
    .line 2135
    move-result-object v8

    .line 2136
    new-array v9, v2, [Ljava/lang/String;

    .line 2137
    .line 2138
    aput-object v8, v9, v1

    .line 2139
    .line 2140
    invoke-static {v9}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 2141
    .line 2142
    .line 2143
    move-result-object v9

    .line 2144
    invoke-virtual {v9}, Lv9/e;->l0()Landroidx/room/s;

    .line 2145
    .line 2146
    .line 2147
    move-result-object v9

    .line 2148
    invoke-virtual {v9}, Landroidx/room/s;->q()Z

    .line 2149
    .line 2150
    .line 2151
    move-result v9

    .line 2152
    if-nez v9, :cond_5d

    .line 2153
    .line 2154
    invoke-static {v8}, Lfa/a;->e(Ljava/lang/String;)V

    .line 2155
    .line 2156
    .line 2157
    goto/16 :goto_13

    .line 2158
    .line 2159
    :cond_55
    const/16 v8, 0x15b

    .line 2160
    .line 2161
    if-ne v9, v8, :cond_56

    .line 2162
    .line 2163
    new-instance v8, Lv3/f;

    .line 2164
    .line 2165
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 2166
    .line 2167
    .line 2168
    move-result-object v9

    .line 2169
    iget-object v9, v9, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 2170
    .line 2171
    invoke-direct {v8, v9}, Lv3/f;-><init>(Landroid/content/Context;)V

    .line 2172
    .line 2173
    .line 2174
    invoke-virtual {v8}, Lv3/f;->y()V

    .line 2175
    .line 2176
    .line 2177
    goto/16 :goto_13

    .line 2178
    .line 2179
    :cond_56
    const/16 v8, 0x15c

    .line 2180
    .line 2181
    if-ne v9, v8, :cond_57

    .line 2182
    .line 2183
    invoke-static {}, Lta/i;->e()V

    .line 2184
    .line 2185
    .line 2186
    goto/16 :goto_13

    .line 2187
    .line 2188
    :cond_57
    const/16 v8, 0x15d

    .line 2189
    .line 2190
    if-ne v9, v8, :cond_58

    .line 2191
    .line 2192
    invoke-static {}, Lta/i;->f()V

    .line 2193
    .line 2194
    .line 2195
    goto/16 :goto_13

    .line 2196
    .line 2197
    :cond_58
    const/16 v8, 0x19c

    .line 2198
    .line 2199
    if-ne v9, v8, :cond_5d

    .line 2200
    .line 2201
    :goto_f
    invoke-static {}, Lfa/e;->e()Lfa/e;

    .line 2202
    .line 2203
    .line 2204
    move-result-object v8

    .line 2205
    iget-boolean v8, v8, Lfa/e;->d:Z

    .line 2206
    .line 2207
    if-nez v8, :cond_5d

    .line 2208
    .line 2209
    const-wide/16 v8, 0x3e8

    .line 2210
    .line 2211
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 2212
    .line 2213
    .line 2214
    goto :goto_f

    .line 2215
    :cond_59
    :goto_10
    invoke-virtual {v8, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 2216
    .line 2217
    .line 2218
    move-result-object v8

    .line 2219
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 2220
    .line 2221
    .line 2222
    move-result-object v8

    .line 2223
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2224
    .line 2225
    .line 2226
    move-result-object v8

    .line 2227
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2228
    .line 2229
    .line 2230
    move-result v10

    .line 2231
    if-eqz v10, :cond_5a

    .line 2232
    .line 2233
    const/16 v10, 0xa

    .line 2234
    .line 2235
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2236
    .line 2237
    .line 2238
    move-result-object v8

    .line 2239
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2240
    .line 2241
    .line 2242
    move-result-object v8

    .line 2243
    :cond_5a
    const-string v10, "adb "

    .line 2244
    .line 2245
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2246
    .line 2247
    .line 2248
    move-result v10

    .line 2249
    if-eqz v10, :cond_5b

    .line 2250
    .line 2251
    const/4 v10, 0x4

    .line 2252
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2253
    .line 2254
    .line 2255
    move-result-object v8

    .line 2256
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2257
    .line 2258
    .line 2259
    move-result-object v8

    .line 2260
    :cond_5b
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2261
    .line 2262
    .line 2263
    move-result-object v8

    .line 2264
    new-array v10, v2, [Ljava/lang/String;

    .line 2265
    .line 2266
    aput-object v8, v10, v1

    .line 2267
    .line 2268
    invoke-static {v10}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 2269
    .line 2270
    .line 2271
    move-result-object v8

    .line 2272
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;

    .line 2273
    .line 2274
    .line 2275
    move-result-object v8

    .line 2276
    invoke-virtual {v8}, Landroidx/room/s;->k()Ljava/util/List;

    .line 2277
    .line 2278
    .line 2279
    move-result-object v10

    .line 2280
    invoke-virtual {v8}, Landroidx/room/s;->j()Ljava/util/List;

    .line 2281
    .line 2282
    .line 2283
    move-result-object v12

    .line 2284
    invoke-interface {v10, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2285
    .line 2286
    .line 2287
    invoke-virtual {v8}, Landroidx/room/s;->k()Ljava/util/List;

    .line 2288
    .line 2289
    .line 2290
    move-result-object v8

    .line 2291
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v8

    .line 2295
    if-ne v9, v11, :cond_5d

    .line 2296
    .line 2297
    invoke-static {v8}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 2298
    .line 2299
    .line 2300
    goto :goto_13

    .line 2301
    :cond_5c
    :goto_11
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 2302
    .line 2303
    .line 2304
    move-result-object v9

    .line 2305
    invoke-virtual {v9, v8}, Lwa/s;->m(Lz7/s;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2306
    .line 2307
    .line 2308
    goto :goto_13

    .line 2309
    :goto_12
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 2310
    .line 2311
    .line 2312
    move-result-object v9

    .line 2313
    iget-boolean v9, v9, Lwa/u;->t:Z

    .line 2314
    .line 2315
    if-eqz v9, :cond_5d

    .line 2316
    .line 2317
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2318
    .line 2319
    const-string v10, "\u4efb\u52a1\u5931\u8d25\uff1a"

    .line 2320
    .line 2321
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2322
    .line 2323
    .line 2324
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2325
    .line 2326
    .line 2327
    move-result-object v8

    .line 2328
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2329
    .line 2330
    .line 2331
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2332
    .line 2333
    .line 2334
    move-result-object v8

    .line 2335
    invoke-static {v8}, Lwa/w;->c(Ljava/lang/String;)V

    .line 2336
    .line 2337
    .line 2338
    :catch_3
    :catchall_1
    :cond_5d
    :goto_13
    add-int/2addr v7, v2

    .line 2339
    goto/16 :goto_0

    .line 2340
    .line 2341
    :cond_5e
    invoke-static {}, Lfa/a;->d()V

    .line 2342
    .line 2343
    .line 2344
    return-void
.end method

.method public static e()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "auto_time"

    .line 4
    .line 5
    const-string v3, "Asia/Hong_Kong"

    .line 6
    .line 7
    invoke-static {}, Lha/pe;->a()Ljava/util/Date;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    const-string v0, "\u83b7\u53d6\u65f6\u95f4\u5931\u8d25"

    .line 14
    .line 15
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v5, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 20
    .line 21
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    :try_start_0
    invoke-static {v5, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    const-string v6, "auto_time_zone"

    .line 29
    .line 30
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    const-string v6, "time_zone"

    .line 34
    .line 35
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    const-string v6, "ntp_server"

    .line 39
    .line 40
    const-string v7, "ntp.ntsc.ac.cn"

    .line 41
    .line 42
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :catch_0
    :try_start_1
    invoke-static {v3}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-static {v6}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    .line 51
    .line 52
    :catch_1
    new-array v6, v0, [Ljava/lang/String;

    .line 53
    .line 54
    const-string v7, "setprop persist.sys.timezone Asia/Hong_Kong"

    .line 55
    .line 56
    aput-object v7, v6, v1

    .line 57
    .line 58
    invoke-static {v6}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v6}, Lv9/e;->l0()Landroidx/room/s;

    .line 63
    .line 64
    .line 65
    new-array v6, v0, [Ljava/lang/String;

    .line 66
    .line 67
    const-string v7, "settings put global time_zone Asia/Hong_Kong"

    .line 68
    .line 69
    aput-object v7, v6, v1

    .line 70
    .line 71
    invoke-static {v6}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v6}, Lv9/e;->l0()Landroidx/room/s;

    .line 76
    .line 77
    .line 78
    new-array v6, v0, [Ljava/lang/String;

    .line 79
    .line 80
    const-string v7, "service call alarm 3 s16 Asia/Hong_Kong"

    .line 81
    .line 82
    aput-object v7, v6, v1

    .line 83
    .line 84
    invoke-static {v6}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v6}, Lv9/e;->l0()Landroidx/room/s;

    .line 89
    .line 90
    .line 91
    :try_start_2
    sget-object v6, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 92
    .line 93
    const-string v7, "alarm"

    .line 94
    .line 95
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Landroid/app/AlarmManager;

    .line 100
    .line 101
    invoke-virtual {v6, v3}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 105
    .line 106
    .line 107
    move-result-wide v7

    .line 108
    invoke-virtual {v6, v7, v8}, Landroid/app/AlarmManager;->setTime(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_2
    nop

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v6, "date "

    .line 116
    .line 117
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 121
    .line 122
    const-string v7, "MMddHHmmyyyy"

    .line 123
    .line 124
    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    new-array v4, v0, [Ljava/lang/String;

    .line 139
    .line 140
    aput-object v3, v4, v1

    .line 141
    .line 142
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v3}, Landroidx/room/s;->q()Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-nez v3, :cond_1

    .line 155
    .line 156
    const/4 v3, 0x0

    .line 157
    goto :goto_1

    .line 158
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 159
    :goto_1
    :try_start_3
    invoke-static {v5, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :catch_3
    nop

    .line 164
    :goto_2
    if-eqz v3, :cond_2

    .line 165
    .line 166
    new-array v0, v0, [Ljava/lang/String;

    .line 167
    .line 168
    const-string v2, "am broadcast -a android.intent.action.CONFIGURATION_CHANGED"

    .line 169
    .line 170
    aput-object v2, v0, v1

    .line 171
    .line 172
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 177
    .line 178
    .line 179
    :cond_2
    return-void
.end method

.method public static f()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "Asia/Hong_Kong"

    .line 4
    .line 5
    invoke-static {}, Lha/pe;->a()Ljava/util/Date;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    const-string v0, "\u83b7\u53d6\u65f6\u95f4\u5931\u8d25"

    .line 12
    .line 13
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    :try_start_0
    const-string v5, "auto_time"

    .line 24
    .line 25
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    const-string v5, "auto_time_zone"

    .line 29
    .line 30
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    const-string v5, "time_zone"

    .line 34
    .line 35
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    const-string v5, "ntp_server"

    .line 39
    .line 40
    const-string v6, "ntp.ntsc.ac.cn"

    .line 41
    .line 42
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :catch_0
    :try_start_1
    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v4}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    .line 51
    .line 52
    :catch_1
    new-array v4, v0, [Ljava/lang/String;

    .line 53
    .line 54
    const-string v5, "setprop persist.sys.timezone Asia/Hong_Kong"

    .line 55
    .line 56
    aput-object v5, v4, v1

    .line 57
    .line 58
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Lv9/e;->l0()Landroidx/room/s;

    .line 63
    .line 64
    .line 65
    new-array v4, v0, [Ljava/lang/String;

    .line 66
    .line 67
    const-string v5, "settings put global time_zone Asia/Hong_Kong"

    .line 68
    .line 69
    aput-object v5, v4, v1

    .line 70
    .line 71
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4}, Lv9/e;->l0()Landroidx/room/s;

    .line 76
    .line 77
    .line 78
    new-array v4, v0, [Ljava/lang/String;

    .line 79
    .line 80
    const-string v5, "service call alarm 3 s16 Asia/Hong_Kong"

    .line 81
    .line 82
    aput-object v5, v4, v1

    .line 83
    .line 84
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4}, Lv9/e;->l0()Landroidx/room/s;

    .line 89
    .line 90
    .line 91
    :try_start_2
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 92
    .line 93
    const-string v5, "alarm"

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Landroid/app/AlarmManager;

    .line 100
    .line 101
    invoke-virtual {v4, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 105
    .line 106
    .line 107
    move-result-wide v5

    .line 108
    invoke-virtual {v4, v5, v6}, Landroid/app/AlarmManager;->setTime(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_2
    nop

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v4, "date "

    .line 116
    .line 117
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 121
    .line 122
    const-string v5, "MMddHHmmyyyy"

    .line 123
    .line 124
    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    new-array v3, v0, [Ljava/lang/String;

    .line 139
    .line 140
    aput-object v2, v3, v1

    .line 141
    .line 142
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2}, Landroidx/room/s;->q()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-nez v2, :cond_1

    .line 155
    .line 156
    const-string v0, "\u5931\u8d25\uff1a\u65e0\u6743\u9650\u4fee\u6539\u7cfb\u7edf\u65f6\u95f4"

    .line 157
    .line 158
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_1
    :goto_0
    new-array v0, v0, [Ljava/lang/String;

    .line 163
    .line 164
    const-string v2, "am broadcast -a android.intent.action.CONFIGURATION_CHANGED"

    .line 165
    .line 166
    aput-object v2, v0, v1

    .line 167
    .line 168
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 173
    .line 174
    .line 175
    :goto_1
    return-void
.end method
