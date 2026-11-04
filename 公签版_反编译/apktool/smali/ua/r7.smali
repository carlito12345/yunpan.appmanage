.class public final synthetic Lua/r7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lc6/e;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityUsersApps;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityUsersApps;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/r7;->a:Lcom/yunpan/appmanage/ui/ActivityUsersApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 16

    .line 1
    const/4 v1, 0x1

    .line 2
    const/4 v2, 0x0

    .line 3
    sget v0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->K:I

    .line 4
    .line 5
    move-object/from16 v3, p0

    .line 6
    .line 7
    iget-object v0, v3, Lua/r7;->a:Lcom/yunpan/appmanage/ui/ActivityUsersApps;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v4, "="

    .line 13
    .line 14
    const-string v5, "UserInfo{"

    .line 15
    .line 16
    :try_start_0
    sget-object v6, Lfa/b0;->a:La2/w0;

    .line 17
    .line 18
    const-string v7, "pm list users"

    .line 19
    .line 20
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-wide/16 v8, 0x7d0

    .line 24
    .line 25
    invoke-static {v8, v9, v7}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    iget-object v6, v6, Lfa/a0;->b:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    iget-object v8, v0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->I:Ljava/util/HashSet;

    .line 40
    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-nez v9, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string v9, ":"

    .line 57
    .line 58
    invoke-static {v7, v5, v9, v2}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :goto_1
    move-object/from16 v1, p1

    .line 71
    .line 72
    goto/16 :goto_a

    .line 73
    .line 74
    :catch_0
    move-exception v0

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v6, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_b

    .line 95
    .line 96
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    move-object v8, v0

    .line 101
    check-cast v8, Ljava/lang/String;

    .line 102
    .line 103
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 104
    .line 105
    new-instance v9, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v10, "pm list packages --user "

    .line 111
    .line 112
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v10, " -f"

    .line 119
    .line 120
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    const-wide/16 v10, 0xfa0

    .line 131
    .line 132
    invoke-static {v10, v11, v9}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lfa/a0;->b()Z

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-nez v9, :cond_3

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_3
    iget-object v0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_2

    .line 154
    .line 155
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Ljava/lang/String;

    .line 160
    .line 161
    const-string v10, "package:/data/app/"

    .line 162
    .line 163
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    if-nez v10, :cond_4

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_4
    new-instance v10, Lcom/yunpan/appmanage/db/AppBean;

    .line 171
    .line 172
    invoke-direct {v10}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    add-int/2addr v11, v1

    .line 180
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    iput-object v11, v10, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 189
    .line 190
    const-string v11, "/"

    .line 191
    .line 192
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iput-object v0, v10, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 209
    .line 210
    iget-object v0, v10, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 211
    .line 212
    sget-object v11, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 213
    .line 214
    iget-object v11, v11, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_5

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_5
    iget-object v0, v10, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    const-string v11, ","

    .line 230
    .line 231
    if-eqz v0, :cond_6

    .line 232
    .line 233
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    iget-object v10, v10, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    check-cast v10, Ljava/lang/Integer;

    .line 245
    .line 246
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 247
    .line 248
    .line 249
    move-result v10

    .line 250
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v10

    .line 254
    check-cast v10, Lcom/yunpan/appmanage/db/AppBean;

    .line 255
    .line 256
    iget-object v12, v10, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iput-object v0, v10, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_6
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    iget-object v12, v10, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 283
    .line 284
    invoke-interface {v0, v12}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    if-eqz v0, :cond_7

    .line 289
    .line 290
    iget-boolean v12, v0, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 291
    .line 292
    if-eqz v12, :cond_7

    .line 293
    .line 294
    goto/16 :goto_3

    .line 295
    .line 296
    :cond_7
    if-eqz v0, :cond_8

    .line 297
    .line 298
    iget-object v0, v0, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 299
    .line 300
    iput-object v0, v10, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 301
    .line 302
    goto/16 :goto_9

    .line 303
    .line 304
    :cond_8
    :try_start_3
    new-instance v12, Lef/b;

    .line 305
    .line 306
    iget-object v0, v10, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 307
    .line 308
    invoke-direct {v12, v0}, Lef/b;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 309
    .line 310
    .line 311
    :try_start_4
    invoke-virtual {v12}, Lef/b;->M()V

    .line 312
    .line 313
    .line 314
    iget-object v0, v12, Lef/b;->e:Lff/c;

    .line 315
    .line 316
    iget-object v0, v0, Lff/c;->b:Ljava/lang/String;

    .line 317
    .line 318
    iput-object v0, v10, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v12}, Lef/b;->A()Ljava/util/List;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    if-eqz v0, :cond_a

    .line 325
    .line 326
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 327
    .line 328
    .line 329
    move-result v13

    .line 330
    if-lez v13, :cond_a

    .line 331
    .line 332
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 337
    .line 338
    .line 339
    move-result v13

    .line 340
    if-eqz v13, :cond_a

    .line 341
    .line 342
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v13

    .line 346
    check-cast v13, Lff/g;

    .line 347
    .line 348
    if-nez v13, :cond_9

    .line 349
    .line 350
    goto :goto_4

    .line 351
    :cond_9
    invoke-interface {v13}, Lff/g;->k()V

    .line 352
    .line 353
    .line 354
    invoke-interface {v13}, Lff/g;->e()[B

    .line 355
    .line 356
    .line 357
    move-result-object v13

    .line 358
    new-instance v14, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    sget-object v15, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 364
    .line 365
    iget-object v15, v15, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 366
    .line 367
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    iget-object v15, v10, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 371
    .line 372
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v15, ".png"

    .line 376
    .line 377
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v14

    .line 384
    invoke-static {v14, v13}, Lcom/yunpan/appmanage/util/a0;->q(Ljava/lang/String;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 385
    .line 386
    .line 387
    goto :goto_4

    .line 388
    :catchall_0
    move-exception v0

    .line 389
    move-object v13, v0

    .line 390
    goto :goto_5

    .line 391
    :cond_a
    :try_start_5
    invoke-virtual {v12}, Lef/b;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 392
    .line 393
    .line 394
    goto :goto_8

    .line 395
    :catch_1
    move-exception v0

    .line 396
    goto :goto_7

    .line 397
    :goto_5
    :try_start_6
    invoke-virtual {v12}, Lef/b;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 398
    .line 399
    .line 400
    goto :goto_6

    .line 401
    :catchall_1
    move-exception v0

    .line 402
    move-object v12, v0

    .line 403
    :try_start_7
    const-class v0, Ljava/lang/Throwable;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 404
    .line 405
    :try_start_8
    const-string v14, "addSuppressed"

    .line 406
    .line 407
    new-array v15, v1, [Ljava/lang/Class;

    .line 408
    .line 409
    aput-object v0, v15, v2

    .line 410
    .line 411
    invoke-virtual {v0, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    new-array v14, v1, [Ljava/lang/Object;

    .line 416
    .line 417
    aput-object v12, v14, v2

    .line 418
    .line 419
    invoke-virtual {v0, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 420
    .line 421
    .line 422
    :catch_2
    :goto_6
    :try_start_9
    throw v13
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 423
    :goto_7
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 435
    .line 436
    .line 437
    :goto_8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    .line 441
    .line 442
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    iput-object v0, v10, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 461
    .line 462
    iget-object v0, v10, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 463
    .line 464
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 465
    .line 466
    .line 467
    move-result v11

    .line 468
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 469
    .line 470
    .line 471
    move-result-object v11

    .line 472
    invoke-virtual {v5, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 476
    .line 477
    .line 478
    goto/16 :goto_3

    .line 479
    .line 480
    :cond_b
    move-object/from16 v1, p1

    .line 481
    .line 482
    :try_start_b
    invoke-virtual {v1, v6}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 483
    .line 484
    .line 485
    goto :goto_b

    .line 486
    :catch_3
    move-exception v0

    .line 487
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 496
    .line 497
    .line 498
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 499
    .line 500
    .line 501
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 8

    .line 1
    sget p2, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->K:I

    .line 2
    .line 3
    iget-object v2, p0, Lua/r7;->a:Lcom/yunpan/appmanage/ui/ActivityUsersApps;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance p2, Lha/z6;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->F:Lx9/a0;

    .line 16
    .line 17
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "("

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->F:Lx9/a0;

    .line 34
    .line 35
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 42
    .line 43
    const-string v3, ")"

    .line 44
    .line 45
    invoke-static {v1, v3, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    new-instance v7, Landroidx/room/s;

    .line 50
    .line 51
    const/16 v0, 0x13

    .line 52
    .line 53
    invoke-direct {v7, v2, p1, p3, v0}, Landroidx/room/s;-><init>(Lda/g;Ljava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    const-string v6, "\u786e\u5b9a"

    .line 57
    .line 58
    const-string v4, "\u662f\u5426\u5f7b\u5e95\u5378\u8f7d\u6b64\u5e94\u7528"

    .line 59
    .line 60
    const-string v5, "\u53d6\u6d88"

    .line 61
    .line 62
    move-object v0, p2

    .line 63
    move-object v1, v2

    .line 64
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 68
    .line 69
    .line 70
    return-void
.end method
