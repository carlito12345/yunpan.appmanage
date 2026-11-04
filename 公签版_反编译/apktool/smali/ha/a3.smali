.class public final synthetic Lha/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    iput p1, p0, Lha/a3;->a:I

    iput-object p2, p0, Lha/a3;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "pcm"

    .line 6
    .line 7
    const-string v3, "/%\'"

    .line 8
    .line 9
    const-string v4, " and path NOT LIKE \'%/"

    .line 10
    .line 11
    const-string v6, " and path NOT LIKE \'%/.%\'"

    .line 12
    .line 13
    const-string v7, ")"

    .line 14
    .line 15
    const-string v8, " OR LOWER(name) LIKE \'%."

    .line 16
    .line 17
    const-string v9, " and (LOWER(name) LIKE \'%."

    .line 18
    .line 19
    const-string v10, "\'"

    .line 20
    .line 21
    const-string v11, ""

    .line 22
    .line 23
    const-string v12, " ORDER BY lastModified DESC"

    .line 24
    .line 25
    const-string v13, " and isDir=0"

    .line 26
    .line 27
    const-string v14, "/%\')"

    .line 28
    .line 29
    const-string v15, "SELECT * FROM fileList WHERE (path LIKE \'"

    .line 30
    .line 31
    iget-object v5, v1, Lha/a3;->b:Ljava/util/ArrayList;

    .line 32
    .line 33
    move-object/from16 v16, v11

    .line 34
    .line 35
    iget v11, v1, Lha/a3;->a:I

    .line 36
    .line 37
    packed-switch v11, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    sget v0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->F:I

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v3, Lfa/g0;->a:Lfa/h0;

    .line 48
    .line 49
    invoke-static {v3, v0, v14}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0, v13}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0, v6}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 62
    .line 63
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 64
    .line 65
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->l0:Ljava/util/ArrayList;

    .line 66
    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_3

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    move-object/from16 v11, v16

    .line 80
    .line 81
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_0

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_1

    .line 105
    .line 106
    invoke-static {v9, v4, v10}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    :goto_1
    move-object v11, v4

    .line 111
    goto :goto_0

    .line 112
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-nez v3, :cond_4

    .line 139
    .line 140
    invoke-virtual {v11, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    goto :goto_2

    .line 145
    :cond_3
    move-object/from16 v11, v16

    .line 146
    .line 147
    :cond_4
    :goto_2
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-nez v3, :cond_5

    .line 152
    .line 153
    invoke-static {v0, v11}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    :cond_5
    invoke-static {v0, v12}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const/4 v3, 0x0

    .line 162
    new-array v3, v3, [Ljava/lang/Object;

    .line 163
    .line 164
    new-instance v4, La2/g1;

    .line 165
    .line 166
    invoke-direct {v4, v0, v3}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {v0, v4}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-nez v3, :cond_6

    .line 188
    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-eqz v3, :cond_6

    .line 198
    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    check-cast v3, Lcom/yunpan/appmanage/db/FileInfo;

    .line 204
    .line 205
    new-instance v4, Lx9/w3;

    .line 206
    .line 207
    invoke-direct {v4, v3}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->G:I

    .line 219
    .line 220
    :try_start_0
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 221
    .line 222
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 223
    .line 224
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const-string v3, "OUSHANG_WHILTE_APP_LIST"

    .line 231
    .line 232
    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const-string v3, "."

    .line 237
    .line 238
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-eqz v3, :cond_a

    .line 243
    .line 244
    const-string v3, ","

    .line 245
    .line 246
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    array-length v3, v0

    .line 251
    const/4 v4, 0x0

    .line 252
    :goto_4
    if-ge v4, v3, :cond_a

    .line 253
    .line 254
    aget-object v6, v0, v4

    .line 255
    .line 256
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    if-eqz v7, :cond_7

    .line 265
    .line 266
    :goto_5
    const/4 v9, 0x1

    .line 267
    goto :goto_6

    .line 268
    :cond_7
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    invoke-virtual {v7}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    invoke-interface {v7, v6}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    if-nez v7, :cond_9

    .line 281
    .line 282
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 283
    .line 284
    iget-object v8, v7, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    if-eqz v8, :cond_8

    .line 291
    .line 292
    new-instance v8, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 293
    .line 294
    iget-object v7, v7, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 295
    .line 296
    const/4 v9, 0x1

    .line 297
    invoke-direct {v8, v7, v6, v9}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    goto :goto_5

    .line 304
    :catch_0
    move-exception v0

    .line 305
    goto :goto_7

    .line 306
    :cond_8
    new-instance v7, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 307
    .line 308
    const-string v8, "\u672a\u5b89\u88c5"

    .line 309
    .line 310
    const/4 v9, 0x0

    .line 311
    invoke-direct {v7, v8, v6, v9}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_9
    new-instance v8, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 319
    .line 320
    iget-object v7, v7, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 321
    .line 322
    const/4 v9, 0x1

    .line 323
    invoke-direct {v8, v7, v6, v9}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .line 328
    .line 329
    :goto_6
    add-int/2addr v4, v9

    .line 330
    goto :goto_4

    .line 331
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 332
    .line 333
    .line 334
    goto :goto_8

    .line 335
    :goto_7
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 336
    .line 337
    .line 338
    :goto_8
    return-void

    .line 339
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityNezha;->F:I

    .line 340
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    sget-object v3, Lfa/g0;->a:Lfa/h0;

    .line 347
    .line 348
    invoke-static {v3, v0, v14}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {v0, v13}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-static {v0, v6}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 361
    .line 362
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 363
    .line 364
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->l0:Ljava/util/ArrayList;

    .line 365
    .line 366
    if-eqz v3, :cond_e

    .line 367
    .line 368
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    if-nez v4, :cond_e

    .line 373
    .line 374
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    move-object/from16 v11, v16

    .line 379
    .line 380
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 381
    .line 382
    .line 383
    move-result v4

    .line 384
    if-eqz v4, :cond_d

    .line 385
    .line 386
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    check-cast v4, Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 393
    .line 394
    .line 395
    move-result v6

    .line 396
    if-eqz v6, :cond_b

    .line 397
    .line 398
    goto :goto_9

    .line 399
    :cond_b
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    if-eqz v6, :cond_c

    .line 404
    .line 405
    invoke-static {v9, v4, v10}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    :goto_a
    move-object v11, v4

    .line 410
    goto :goto_9

    .line 411
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    goto :goto_a

    .line 433
    :cond_d
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    if-nez v3, :cond_f

    .line 438
    .line 439
    invoke-virtual {v11, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v11

    .line 443
    goto :goto_b

    .line 444
    :cond_e
    move-object/from16 v11, v16

    .line 445
    .line 446
    :cond_f
    :goto_b
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    if-nez v3, :cond_10

    .line 451
    .line 452
    invoke-static {v0, v11}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    :cond_10
    invoke-static {v0, v12}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    const/4 v3, 0x0

    .line 461
    new-array v3, v3, [Ljava/lang/Object;

    .line 462
    .line 463
    new-instance v4, La2/g1;

    .line 464
    .line 465
    invoke-direct {v4, v0, v3}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-interface {v0, v4}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    if-eqz v0, :cond_11

    .line 481
    .line 482
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    if-nez v3, :cond_11

    .line 487
    .line 488
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    if-eqz v3, :cond_11

    .line 497
    .line 498
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    check-cast v3, Lcom/yunpan/appmanage/db/FileInfo;

    .line 503
    .line 504
    new-instance v4, Lx9/w3;

    .line 505
    .line 506
    invoke-direct {v4, v3}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    goto :goto_c

    .line 513
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 514
    .line 515
    .line 516
    return-void

    .line 517
    :pswitch_2
    sget v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->L:I

    .line 518
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    sget-object v3, Lfa/g0;->a:Lfa/h0;

    .line 525
    .line 526
    invoke-static {v3, v0, v14}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-static {v0, v13}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-static {v0, v6}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    const-string v3, " and (LOWER(name) LIKE \'%.json\')"

    .line 539
    .line 540
    invoke-static {v0, v3}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-static {v0, v12}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    const/4 v3, 0x0

    .line 549
    new-array v3, v3, [Ljava/lang/Object;

    .line 550
    .line 551
    new-instance v4, La2/g1;

    .line 552
    .line 553
    invoke-direct {v4, v0, v3}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-interface {v0, v4}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    if-eqz v0, :cond_12

    .line 569
    .line 570
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    if-nez v3, :cond_12

    .line 575
    .line 576
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 581
    .line 582
    .line 583
    move-result v3

    .line 584
    if-eqz v3, :cond_12

    .line 585
    .line 586
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    check-cast v3, Lcom/yunpan/appmanage/db/FileInfo;

    .line 591
    .line 592
    new-instance v4, Lx9/w3;

    .line 593
    .line 594
    invoke-direct {v4, v3}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    goto :goto_d

    .line 601
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 602
    .line 603
    .line 604
    return-void

    .line 605
    :pswitch_3
    new-instance v0, Ljava/util/ArrayList;

    .line 606
    .line 607
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    const/4 v11, 0x0

    .line 615
    :cond_13
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 616
    .line 617
    .line 618
    move-result v4

    .line 619
    if-eqz v4, :cond_15

    .line 620
    .line 621
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    check-cast v4, Lx9/w3;

    .line 626
    .line 627
    const-string v6, "\u5220\u9664\u8fdb\u5ea6\uff1a"

    .line 628
    .line 629
    const-string v7, "/"

    .line 630
    .line 631
    invoke-static {v6, v11, v7}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    move-result-object v6

    .line 635
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 636
    .line 637
    .line 638
    move-result v7

    .line 639
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    const-string v7, "\n"

    .line 643
    .line 644
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    iget-object v7, v4, Lx9/w3;->a:Ljava/lang/String;

    .line 648
    .line 649
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v6

    .line 656
    invoke-virtual {v2, v6}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 657
    .line 658
    .line 659
    const/4 v6, 0x1

    .line 660
    add-int/2addr v11, v6

    .line 661
    sget-object v7, Lfa/b0;->a:La2/w0;

    .line 662
    .line 663
    iget-object v8, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 664
    .line 665
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    invoke-static {v8}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v7

    .line 672
    const-string v8, "\u5220\u9664\u6210\u529f"

    .line 673
    .line 674
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result v8

    .line 678
    if-nez v8, :cond_14

    .line 679
    .line 680
    iput-object v7, v4, Lx9/w3;->j:Ljava/lang/String;

    .line 681
    .line 682
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 686
    .line 687
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 688
    .line 689
    iget-object v8, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 690
    .line 691
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 692
    .line 693
    .line 694
    invoke-static {v8}, Lcom/yunpan/appmanage/util/k;->i(Ljava/lang/String;)Z

    .line 695
    .line 696
    .line 697
    move-result v8

    .line 698
    if-eqz v8, :cond_13

    .line 699
    .line 700
    iget-boolean v8, v4, Lx9/w3;->c:Z

    .line 701
    .line 702
    if-eqz v8, :cond_13

    .line 703
    .line 704
    new-instance v8, Lcom/yunpan/appmanage/util/z;

    .line 705
    .line 706
    new-instance v9, Ljava/io/File;

    .line 707
    .line 708
    iget-object v4, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 709
    .line 710
    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    invoke-direct {v8, v9}, Lcom/yunpan/appmanage/util/z;-><init>(Ljava/io/File;)V

    .line 714
    .line 715
    .line 716
    iget-object v4, v7, Lcom/yunpan/appmanage/util/k;->f0:Ljava/util/concurrent/ExecutorService;

    .line 717
    .line 718
    invoke-interface {v4, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 719
    .line 720
    .line 721
    goto :goto_e

    .line 722
    :cond_14
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 723
    .line 724
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 725
    .line 726
    iget-object v8, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 727
    .line 728
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 729
    .line 730
    .line 731
    invoke-static {v8}, Lcom/yunpan/appmanage/util/k;->i(Ljava/lang/String;)Z

    .line 732
    .line 733
    .line 734
    move-result v7

    .line 735
    if-eqz v7, :cond_13

    .line 736
    .line 737
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 738
    .line 739
    .line 740
    move-result-object v7

    .line 741
    invoke-virtual {v7}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 742
    .line 743
    .line 744
    move-result-object v7

    .line 745
    iget-object v4, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 746
    .line 747
    invoke-interface {v7, v4}, Lcom/yunpan/appmanage/db/FileInfoDao;->deleteDir(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    goto/16 :goto_e

    .line 751
    .line 752
    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 753
    .line 754
    .line 755
    move-result v3

    .line 756
    if-nez v3, :cond_16

    .line 757
    .line 758
    new-instance v3, Lqa/b;

    .line 759
    .line 760
    const-string v4, "\u5220\u9664\u5931\u8d25"

    .line 761
    .line 762
    invoke-direct {v3, v4, v0}, Lqa/b;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v2, v3}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 766
    .line 767
    .line 768
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 769
    .line 770
    .line 771
    return-void

    .line 772
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 773
    .line 774
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    sget-object v3, Lfa/g0;->a:Lfa/h0;

    .line 778
    .line 779
    invoke-static {v3, v0, v14}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    invoke-static {v0, v13}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    invoke-static {v0, v6}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 792
    .line 793
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 794
    .line 795
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->l0:Ljava/util/ArrayList;

    .line 796
    .line 797
    if-eqz v3, :cond_1a

    .line 798
    .line 799
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 800
    .line 801
    .line 802
    move-result v4

    .line 803
    if-nez v4, :cond_1a

    .line 804
    .line 805
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 806
    .line 807
    .line 808
    move-result-object v3

    .line 809
    move-object/from16 v11, v16

    .line 810
    .line 811
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 812
    .line 813
    .line 814
    move-result v4

    .line 815
    if-eqz v4, :cond_19

    .line 816
    .line 817
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v4

    .line 821
    check-cast v4, Ljava/lang/String;

    .line 822
    .line 823
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 824
    .line 825
    .line 826
    move-result v6

    .line 827
    if-eqz v6, :cond_17

    .line 828
    .line 829
    goto :goto_f

    .line 830
    :cond_17
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 831
    .line 832
    .line 833
    move-result v6

    .line 834
    if-eqz v6, :cond_18

    .line 835
    .line 836
    invoke-static {v9, v4, v10}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v4

    .line 840
    :goto_10
    move-object v11, v4

    .line 841
    goto :goto_f

    .line 842
    :cond_18
    new-instance v6, Ljava/lang/StringBuilder;

    .line 843
    .line 844
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v4

    .line 863
    goto :goto_10

    .line 864
    :cond_19
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 865
    .line 866
    .line 867
    move-result v3

    .line 868
    if-nez v3, :cond_1b

    .line 869
    .line 870
    invoke-virtual {v11, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v11

    .line 874
    goto :goto_11

    .line 875
    :cond_1a
    move-object/from16 v11, v16

    .line 876
    .line 877
    :cond_1b
    :goto_11
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 878
    .line 879
    .line 880
    move-result v3

    .line 881
    if-nez v3, :cond_1c

    .line 882
    .line 883
    invoke-static {v0, v11}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    :cond_1c
    invoke-static {v0, v12}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    const/4 v3, 0x0

    .line 892
    new-array v3, v3, [Ljava/lang/Object;

    .line 893
    .line 894
    new-instance v4, La2/g1;

    .line 895
    .line 896
    invoke-direct {v4, v0, v3}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 897
    .line 898
    .line 899
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    invoke-interface {v0, v4}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    if-eqz v0, :cond_1d

    .line 912
    .line 913
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 914
    .line 915
    .line 916
    move-result v3

    .line 917
    if-nez v3, :cond_1d

    .line 918
    .line 919
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 924
    .line 925
    .line 926
    move-result v3

    .line 927
    if-eqz v3, :cond_1d

    .line 928
    .line 929
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    move-result-object v3

    .line 933
    check-cast v3, Lcom/yunpan/appmanage/db/FileInfo;

    .line 934
    .line 935
    new-instance v4, Lx9/w3;

    .line 936
    .line 937
    invoke-direct {v4, v3}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    .line 942
    .line 943
    goto :goto_12

    .line 944
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 945
    .line 946
    .line 947
    return-void

    .line 948
    :pswitch_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 949
    .line 950
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    sget-object v11, Lfa/g0;->a:Lfa/h0;

    .line 954
    .line 955
    invoke-static {v11, v6, v14}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v6

    .line 959
    invoke-static {v6, v13}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v6

    .line 963
    invoke-static {v6, v4}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    .line 965
    .line 966
    move-result-object v4

    .line 967
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 968
    .line 969
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 970
    .line 971
    iget-object v11, v6, Lcom/yunpan/appmanage/util/k;->P:Ljava/lang/String;

    .line 972
    .line 973
    invoke-static {v11, v3, v4}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v3

    .line 977
    iget-object v4, v6, Lcom/yunpan/appmanage/util/k;->q0:Ljava/util/ArrayList;

    .line 978
    .line 979
    sget-object v6, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 980
    .line 981
    iget-object v6, v6, Lcom/yunpan/appmanage/util/w;->B0:Ljava/lang/String;

    .line 982
    .line 983
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 984
    .line 985
    .line 986
    move-result v6

    .line 987
    if-nez v6, :cond_1e

    .line 988
    .line 989
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    .line 991
    .line 992
    :cond_1e
    if-eqz v4, :cond_22

    .line 993
    .line 994
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 995
    .line 996
    .line 997
    move-result v0

    .line 998
    if-nez v0, :cond_22

    .line 999
    .line 1000
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    move-object/from16 v11, v16

    .line 1005
    .line 1006
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1007
    .line 1008
    .line 1009
    move-result v4

    .line 1010
    if-eqz v4, :cond_21

    .line 1011
    .line 1012
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v4

    .line 1016
    check-cast v4, Ljava/lang/String;

    .line 1017
    .line 1018
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 1019
    .line 1020
    .line 1021
    move-result v6

    .line 1022
    if-eqz v6, :cond_1f

    .line 1023
    .line 1024
    goto :goto_13

    .line 1025
    :cond_1f
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1026
    .line 1027
    .line 1028
    move-result v6

    .line 1029
    if-eqz v6, :cond_20

    .line 1030
    .line 1031
    invoke-static {v9, v4, v10}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v4

    .line 1035
    :goto_14
    move-object v11, v4

    .line 1036
    goto :goto_13

    .line 1037
    :cond_20
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v4

    .line 1058
    goto :goto_14

    .line 1059
    :cond_21
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1060
    .line 1061
    .line 1062
    move-result v0

    .line 1063
    if-nez v0, :cond_23

    .line 1064
    .line 1065
    invoke-virtual {v11, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v11

    .line 1069
    goto :goto_15

    .line 1070
    :cond_22
    move-object/from16 v11, v16

    .line 1071
    .line 1072
    :cond_23
    :goto_15
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1073
    .line 1074
    .line 1075
    move-result v0

    .line 1076
    if-nez v0, :cond_24

    .line 1077
    .line 1078
    invoke-static {v3, v11}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v3

    .line 1082
    :cond_24
    invoke-static {v3, v12}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v0

    .line 1086
    const/4 v3, 0x0

    .line 1087
    new-array v3, v3, [Ljava/lang/Object;

    .line 1088
    .line 1089
    new-instance v4, La2/g1;

    .line 1090
    .line 1091
    invoke-direct {v4, v0, v3}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1092
    .line 1093
    .line 1094
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v0

    .line 1102
    invoke-interface {v0, v4}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v0

    .line 1106
    if-eqz v0, :cond_25

    .line 1107
    .line 1108
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1109
    .line 1110
    .line 1111
    move-result v3

    .line 1112
    if-nez v3, :cond_25

    .line 1113
    .line 1114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v0

    .line 1118
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1119
    .line 1120
    .line 1121
    move-result v3

    .line 1122
    if-eqz v3, :cond_25

    .line 1123
    .line 1124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v3

    .line 1128
    check-cast v3, Lcom/yunpan/appmanage/db/FileInfo;

    .line 1129
    .line 1130
    new-instance v4, Lx9/w3;

    .line 1131
    .line 1132
    invoke-direct {v4, v3}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    .line 1137
    .line 1138
    goto :goto_16

    .line 1139
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1140
    .line 1141
    .line 1142
    return-void

    .line 1143
    :pswitch_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1146
    .line 1147
    .line 1148
    sget-object v11, Lfa/g0;->a:Lfa/h0;

    .line 1149
    .line 1150
    invoke-static {v11, v6, v14}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v6

    .line 1154
    invoke-static {v6, v13}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v6

    .line 1158
    invoke-static {v6, v4}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v4

    .line 1162
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1163
    .line 1164
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1165
    .line 1166
    iget-object v11, v6, Lcom/yunpan/appmanage/util/k;->P:Ljava/lang/String;

    .line 1167
    .line 1168
    invoke-static {v11, v3, v4}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v3

    .line 1172
    iget-object v4, v6, Lcom/yunpan/appmanage/util/k;->q0:Ljava/util/ArrayList;

    .line 1173
    .line 1174
    sget-object v6, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 1175
    .line 1176
    iget-object v6, v6, Lcom/yunpan/appmanage/util/w;->B0:Ljava/lang/String;

    .line 1177
    .line 1178
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1179
    .line 1180
    .line 1181
    move-result v6

    .line 1182
    if-nez v6, :cond_26

    .line 1183
    .line 1184
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    .line 1186
    .line 1187
    :cond_26
    if-eqz v4, :cond_2a

    .line 1188
    .line 1189
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1190
    .line 1191
    .line 1192
    move-result v0

    .line 1193
    if-nez v0, :cond_2a

    .line 1194
    .line 1195
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v0

    .line 1199
    move-object/from16 v11, v16

    .line 1200
    .line 1201
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1202
    .line 1203
    .line 1204
    move-result v4

    .line 1205
    if-eqz v4, :cond_29

    .line 1206
    .line 1207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v4

    .line 1211
    check-cast v4, Ljava/lang/String;

    .line 1212
    .line 1213
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 1214
    .line 1215
    .line 1216
    move-result v6

    .line 1217
    if-eqz v6, :cond_27

    .line 1218
    .line 1219
    goto :goto_17

    .line 1220
    :cond_27
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1221
    .line 1222
    .line 1223
    move-result v6

    .line 1224
    if-eqz v6, :cond_28

    .line 1225
    .line 1226
    invoke-static {v9, v4, v10}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v4

    .line 1230
    :goto_18
    move-object v11, v4

    .line 1231
    goto :goto_17

    .line 1232
    :cond_28
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v4

    .line 1253
    goto :goto_18

    .line 1254
    :cond_29
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1255
    .line 1256
    .line 1257
    move-result v0

    .line 1258
    if-nez v0, :cond_2b

    .line 1259
    .line 1260
    invoke-virtual {v11, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v11

    .line 1264
    goto :goto_19

    .line 1265
    :cond_2a
    move-object/from16 v11, v16

    .line 1266
    .line 1267
    :cond_2b
    :goto_19
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1268
    .line 1269
    .line 1270
    move-result v0

    .line 1271
    if-nez v0, :cond_2c

    .line 1272
    .line 1273
    invoke-static {v3, v11}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v3

    .line 1277
    :cond_2c
    invoke-static {v3, v12}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v0

    .line 1281
    const/4 v3, 0x0

    .line 1282
    new-array v3, v3, [Ljava/lang/Object;

    .line 1283
    .line 1284
    new-instance v4, La2/g1;

    .line 1285
    .line 1286
    invoke-direct {v4, v0, v3}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1287
    .line 1288
    .line 1289
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v0

    .line 1293
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v0

    .line 1297
    invoke-interface {v0, v4}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v0

    .line 1301
    if-eqz v0, :cond_2d

    .line 1302
    .line 1303
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1304
    .line 1305
    .line 1306
    move-result v3

    .line 1307
    if-nez v3, :cond_2d

    .line 1308
    .line 1309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v0

    .line 1313
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1314
    .line 1315
    .line 1316
    move-result v3

    .line 1317
    if-eqz v3, :cond_2d

    .line 1318
    .line 1319
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v3

    .line 1323
    check-cast v3, Lcom/yunpan/appmanage/db/FileInfo;

    .line 1324
    .line 1325
    new-instance v4, Lx9/w3;

    .line 1326
    .line 1327
    invoke-direct {v4, v3}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    .line 1332
    .line 1333
    goto :goto_1a

    .line 1334
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1335
    .line 1336
    .line 1337
    return-void

    .line 1338
    nop

    .line 1339
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
