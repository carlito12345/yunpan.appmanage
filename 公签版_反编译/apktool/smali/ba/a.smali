.class public final synthetic Lba/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lx9/n5;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lcom/yunpan/appmanage/bean/WpPathBean;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lba/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lba/a;->c:Ljava/util/ArrayList;

    iput-object p2, p0, Lba/a;->d:Lcom/yunpan/appmanage/bean/WpPathBean;

    iput-object p3, p0, Lba/a;->b:Lx9/n5;

    return-void
.end method

.method public synthetic constructor <init>(Lx9/n5;Ljava/util/ArrayList;Lcom/yunpan/appmanage/bean/WpPathBean;I)V
    .locals 0

    .line 2
    iput p4, p0, Lba/a;->a:I

    iput-object p1, p0, Lba/a;->b:Lx9/n5;

    iput-object p2, p0, Lba/a;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lba/a;->d:Lcom/yunpan/appmanage/bean/WpPathBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "success"

    .line 6
    .line 7
    const-string v3, "parentId"

    .line 8
    .line 9
    const-string v4, "fileIds"

    .line 10
    .line 11
    const-string v5, "message"

    .line 12
    .line 13
    const-string v6, "\u8bf7\u6c42\u51fa\u9519"

    .line 14
    .line 15
    const-string v7, "\u7ec4\u5305\u51fa\u9519"

    .line 16
    .line 17
    const-string v8, "parentFileId"

    .line 18
    .line 19
    const-string v9, "fileId"

    .line 20
    .line 21
    const-string v10, "/?homeFilePath="

    .line 22
    .line 23
    const-string v11, "\u51fa\u9519"

    .line 24
    .line 25
    const-string v13, "SIZE"

    .line 26
    .line 27
    const-string v14, "FTP\u670d\u52a1\u5668\u4e0d\u652f\u6301\u79fb\u52a8\u547d\u4ee4"

    .line 28
    .line 29
    const-string v15, "\u79fb\u52a8\u5931\u8d25"

    .line 30
    .line 31
    const-string v12, "msg"

    .line 32
    .line 33
    move-object/from16 v17, v6

    .line 34
    .line 35
    const-string v6, "code"

    .line 36
    .line 37
    move-object/from16 v18, v7

    .line 38
    .line 39
    const-string v7, ""

    .line 40
    .line 41
    move-object/from16 v19, v11

    .line 42
    .line 43
    iget-object v11, v1, Lba/a;->d:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 44
    .line 45
    move-object/from16 v20, v14

    .line 46
    .line 47
    iget-object v14, v1, Lba/a;->c:Ljava/util/ArrayList;

    .line 48
    .line 49
    move-object/from16 v21, v15

    .line 50
    .line 51
    iget-object v15, v1, Lba/a;->b:Lx9/n5;

    .line 52
    .line 53
    move-object/from16 v22, v0

    .line 54
    .line 55
    iget v0, v1, Lba/a;->a:I

    .line 56
    .line 57
    packed-switch v0, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    :try_start_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v3, v7

    .line 65
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 76
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v5, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v6, v15, Lx9/n5;->A:Ldh/j;

    .line 99
    .line 100
    invoke-virtual {v6, v5, v4}, Ldh/e;->v(Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_3

    .line 105
    .line 106
    iget-boolean v0, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 107
    .line 108
    if-eqz v0, :cond_0

    .line 109
    .line 110
    iget-object v0, v15, Lx9/n5;->A:Ldh/j;

    .line 111
    .line 112
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v3}, Ldh/e;->p(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_2

    .line 119
    .line 120
    :goto_1
    move-object/from16 v14, v20

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :catch_0
    move-exception v0

    .line 124
    goto :goto_3

    .line 125
    :cond_0
    iget-object v0, v15, Lx9/n5;->A:Ldh/j;

    .line 126
    .line 127
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0, v13, v3}, Ldh/j;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-static {v3}, Lcom/bumptech/glide/c;->L(I)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_1

    .line 138
    .line 139
    iget-object v0, v0, Ldh/c;->k:Ljava/util/ArrayList;

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Ljava/lang/String;

    .line 147
    .line 148
    const/4 v3, 0x4

    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_2

    .line 154
    :cond_1
    const/4 v0, 0x0

    .line 155
    :goto_2
    if-eqz v0, :cond_2

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_2
    move-object v14, v7

    .line 159
    goto :goto_4

    .line 160
    :cond_3
    move-object/from16 v3, v21

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_4
    move-object v14, v3

    .line 164
    goto :goto_4

    .line 165
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v3}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_5

    .line 179
    .line 180
    move-object/from16 v14, v21

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_5
    move-object v14, v0

    .line 184
    :goto_4
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_6

    .line 189
    .line 190
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_6
    invoke-static {v14, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 195
    .line 196
    .line 197
    :goto_5
    return-void

    .line 198
    :pswitch_0
    :try_start_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    move-object v3, v7

    .line 203
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_b

    .line 208
    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 214
    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    iget-object v5, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 235
    .line 236
    iget-object v6, v15, Lx9/n5;->x:Ldh/e;

    .line 237
    .line 238
    invoke-virtual {v6, v5, v4}, Ldh/e;->v(Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_a

    .line 243
    .line 244
    iget-boolean v0, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 245
    .line 246
    if-eqz v0, :cond_7

    .line 247
    .line 248
    iget-object v0, v15, Lx9/n5;->x:Ldh/e;

    .line 249
    .line 250
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v0, v3}, Ldh/e;->p(Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_9

    .line 257
    .line 258
    :goto_7
    move-object/from16 v14, v20

    .line 259
    .line 260
    goto :goto_a

    .line 261
    :catch_1
    move-exception v0

    .line 262
    goto :goto_9

    .line 263
    :cond_7
    iget-object v0, v15, Lx9/n5;->x:Ldh/e;

    .line 264
    .line 265
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v0, v13, v3}, Ldh/c;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    invoke-static {v3}, Lcom/bumptech/glide/c;->L(I)Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-eqz v3, :cond_8

    .line 276
    .line 277
    iget-object v0, v0, Ldh/c;->k:Ljava/util/ArrayList;

    .line 278
    .line 279
    const/4 v3, 0x0

    .line 280
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    check-cast v0, Ljava/lang/String;

    .line 285
    .line 286
    const/4 v3, 0x4

    .line 287
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    goto :goto_8

    .line 292
    :cond_8
    const/4 v0, 0x0

    .line 293
    :goto_8
    if-eqz v0, :cond_9

    .line 294
    .line 295
    goto :goto_7

    .line 296
    :cond_9
    move-object v14, v7

    .line 297
    goto :goto_a

    .line 298
    :cond_a
    move-object/from16 v3, v21

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_b
    move-object v14, v3

    .line 302
    goto :goto_a

    .line 303
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-static {v0, v3}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-eqz v3, :cond_c

    .line 317
    .line 318
    move-object/from16 v14, v21

    .line 319
    .line 320
    goto :goto_a

    .line 321
    :cond_c
    move-object v14, v0

    .line 322
    :goto_a
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_d

    .line 327
    .line 328
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 329
    .line 330
    .line 331
    goto :goto_b

    .line 332
    :cond_d
    invoke-static {v14, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 333
    .line 334
    .line 335
    :goto_b
    return-void

    .line 336
    :pswitch_1
    const-string v0, "uuid="

    .line 337
    .line 338
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 339
    .line 340
    .line 341
    move-result-wide v3

    .line 342
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-static {v3}, Ls1/g;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iget-object v0, v15, Lx9/n5;->l:Ljava/lang/String;

    .line 356
    .line 357
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v0, "&devType=6&devCode="

    .line 361
    .line 362
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    iget-object v0, v15, Lx9/n5;->l:Ljava/lang/String;

    .line 366
    .line 367
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v0, "&devModel=chrome&devVersion=140&appVersion=&timestamp="

    .line 371
    .line 372
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    const-string v0, "&appToken="

    .line 379
    .line 380
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    iget-object v0, v15, Lx9/n5;->k:Ljava/lang/String;

    .line 384
    .line 385
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v0, "&extra=2"

    .line 389
    .line 390
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    move-object v4, v7

    .line 402
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 403
    .line 404
    .line 405
    move-result v5

    .line 406
    if-eqz v5, :cond_f

    .line 407
    .line 408
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    check-cast v5, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 413
    .line 414
    iget-boolean v8, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 415
    .line 416
    const-string v9, ","

    .line 417
    .line 418
    if-eqz v8, :cond_e

    .line 419
    .line 420
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    iget-object v4, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 429
    .line 430
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    goto :goto_c

    .line 441
    :catch_2
    move-exception v0

    .line 442
    goto/16 :goto_d

    .line 443
    .line 444
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    move-object v7, v5

    .line 465
    goto :goto_c

    .line 466
    :cond_f
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    if-nez v3, :cond_10

    .line 471
    .line 472
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    add-int/lit8 v3, v3, -0x1

    .line 477
    .line 478
    const/4 v5, 0x0

    .line 479
    invoke-virtual {v7, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v7

    .line 483
    :cond_10
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    if-nez v3, :cond_11

    .line 488
    .line 489
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    add-int/lit8 v3, v3, -0x1

    .line 494
    .line 495
    const/4 v5, 0x0

    .line 496
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .line 504
    .line 505
    const-string v5, "https://api.feejii.com/app/file/folder/move?"

    .line 506
    .line 507
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    const-string v5, "{\"fileIds\":\""

    .line 523
    .line 524
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    const-string v5, "\",\"folderIds\":\""

    .line 531
    .line 532
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    const-string v4, "\",\"targetId\":"

    .line 539
    .line 540
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    iget-object v4, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 544
    .line 545
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    const-string v4, "}"

    .line 549
    .line 550
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    invoke-static {v0, v3}, Ls1/g;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-virtual {v0, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    const/16 v4, 0xc8

    .line 578
    .line 579
    if-ne v3, v4, :cond_12

    .line 580
    .line 581
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 582
    .line 583
    .line 584
    goto :goto_e

    .line 585
    :cond_12
    new-instance v3, Ljava/lang/Exception;

    .line 586
    .line 587
    invoke-virtual {v0, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 599
    :goto_d
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 600
    .line 601
    .line 602
    :goto_e
    return-void

    .line 603
    :pswitch_2
    const-string v0, "Size"

    .line 604
    .line 605
    const-string v3, "Etag"

    .line 606
    .line 607
    new-instance v4, Ljava/lang/StringBuilder;

    .line 608
    .line 609
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .line 611
    .line 612
    sget-object v12, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 613
    .line 614
    sget-object v12, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 615
    .line 616
    iget-object v13, v12, Lcom/yunpan/appmanage/util/k;->X:Ljava/lang/String;

    .line 617
    .line 618
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    const-string v13, "/b/api/restful/goapi/v1/file/copy/async?"

    .line 622
    .line 623
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    const-string v13, "/b/api/restful/goapi/v1/file/copy/async"

    .line 627
    .line 628
    invoke-static {v13}, Lqf/c;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v13

    .line 632
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v4

    .line 639
    new-instance v13, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    .line 643
    .line 644
    iget-object v12, v12, Lcom/yunpan/appmanage/util/k;->W:Ljava/lang/String;

    .line 645
    .line 646
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    const/4 v10, 0x0

    .line 653
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v12

    .line 657
    check-cast v12, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 658
    .line 659
    iget-object v10, v12, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 660
    .line 661
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v10

    .line 668
    :try_start_4
    new-instance v12, Lorg/json/JSONArray;

    .line 669
    .line 670
    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 674
    .line 675
    .line 676
    move-result-object v13

    .line 677
    :goto_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 678
    .line 679
    .line 680
    move-result v14

    .line 681
    if-eqz v14, :cond_15

    .line 682
    .line 683
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v14

    .line 687
    check-cast v14, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 688
    .line 689
    new-instance v1, Lorg/json/JSONObject;

    .line 690
    .line 691
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 692
    .line 693
    .line 694
    move-object/from16 v16, v13

    .line 695
    .line 696
    const-string v13, "driveId"

    .line 697
    .line 698
    const/4 v2, 0x0

    .line 699
    invoke-virtual {v1, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 700
    .line 701
    .line 702
    iget-object v2, v14, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 703
    .line 704
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 705
    .line 706
    .line 707
    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 708
    const-string v13, "etag"

    .line 709
    .line 710
    if-nez v2, :cond_13

    .line 711
    .line 712
    :try_start_5
    invoke-virtual {v1, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 713
    .line 714
    .line 715
    goto :goto_10

    .line 716
    :catch_3
    nop

    .line 717
    move-object/from16 v20, v7

    .line 718
    .line 719
    goto/16 :goto_13

    .line 720
    .line 721
    :cond_13
    :try_start_6
    iget-object v2, v14, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 722
    .line 723
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 724
    .line 725
    .line 726
    move-result-object v2

    .line 727
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v2

    .line 731
    invoke-virtual {v1, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 732
    .line 733
    .line 734
    :goto_10
    iget-object v2, v14, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 735
    .line 736
    const-string v13, "FileId"

    .line 737
    .line 738
    invoke-virtual {v2, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    move-object v13, v3

    .line 743
    invoke-virtual {v2}, Lz7/p;->h()J

    .line 744
    .line 745
    .line 746
    move-result-wide v2

    .line 747
    invoke-virtual {v1, v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 748
    .line 749
    .line 750
    const-string v2, "fileName"

    .line 751
    .line 752
    iget-object v3, v14, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 753
    .line 754
    move-object/from16 v20, v7

    .line 755
    .line 756
    :try_start_7
    const-string v7, "FileName"

    .line 757
    .line 758
    invoke-virtual {v3, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 759
    .line 760
    .line 761
    move-result-object v3

    .line 762
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v3

    .line 766
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 767
    .line 768
    .line 769
    iget-object v2, v14, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 770
    .line 771
    const-string v3, "ParentFileId"

    .line 772
    .line 773
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 774
    .line 775
    .line 776
    move-result-object v2

    .line 777
    invoke-virtual {v2}, Lz7/p;->h()J

    .line 778
    .line 779
    .line 780
    move-result-wide v2

    .line 781
    invoke-virtual {v1, v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 782
    .line 783
    .line 784
    iget-object v2, v14, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 785
    .line 786
    invoke-virtual {v2, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 787
    .line 788
    .line 789
    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 790
    const-string v3, "size"

    .line 791
    .line 792
    if-nez v2, :cond_14

    .line 793
    .line 794
    const/4 v2, 0x0

    .line 795
    :try_start_8
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 796
    .line 797
    .line 798
    move-object/from16 v21, v8

    .line 799
    .line 800
    goto :goto_12

    .line 801
    :catch_4
    :goto_11
    nop

    .line 802
    goto :goto_13

    .line 803
    :cond_14
    iget-object v2, v14, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 804
    .line 805
    invoke-virtual {v2, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    move-object/from16 v21, v8

    .line 810
    .line 811
    invoke-virtual {v2}, Lz7/p;->h()J

    .line 812
    .line 813
    .line 814
    move-result-wide v7

    .line 815
    invoke-virtual {v1, v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 816
    .line 817
    .line 818
    :goto_12
    const-string v2, "type"

    .line 819
    .line 820
    iget-object v3, v14, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 821
    .line 822
    const-string v7, "Type"

    .line 823
    .line 824
    invoke-virtual {v3, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 829
    .line 830
    .line 831
    move-result v3

    .line 832
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 836
    .line 837
    .line 838
    move-object/from16 v1, p0

    .line 839
    .line 840
    move-object/from16 v2, p1

    .line 841
    .line 842
    move-object v3, v13

    .line 843
    move-object/from16 v13, v16

    .line 844
    .line 845
    move-object/from16 v7, v20

    .line 846
    .line 847
    move-object/from16 v8, v21

    .line 848
    .line 849
    goto/16 :goto_f

    .line 850
    .line 851
    :catch_5
    move-object/from16 v20, v7

    .line 852
    .line 853
    goto :goto_11

    .line 854
    :cond_15
    move-object/from16 v20, v7

    .line 855
    .line 856
    new-instance v0, Lorg/json/JSONObject;

    .line 857
    .line 858
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 859
    .line 860
    .line 861
    const-string v1, "fileList"

    .line 862
    .line 863
    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 864
    .line 865
    .line 866
    const-string v1, "targetFileId"

    .line 867
    .line 868
    iget-object v2, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 869
    .line 870
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 871
    .line 872
    .line 873
    move-result-object v2

    .line 874
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 881
    goto :goto_14

    .line 882
    :goto_13
    move-object/from16 v0, v20

    .line 883
    .line 884
    :goto_14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 885
    .line 886
    .line 887
    move-result v1

    .line 888
    if-eqz v1, :cond_16

    .line 889
    .line 890
    move-object/from16 v6, v18

    .line 891
    .line 892
    goto :goto_16

    .line 893
    :cond_16
    invoke-static {v15, v4, v0, v10}, Lqf/c;->R(Lx9/n5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 898
    .line 899
    .line 900
    move-result v1

    .line 901
    if-eqz v1, :cond_17

    .line 902
    .line 903
    move-object/from16 v6, v17

    .line 904
    .line 905
    goto :goto_16

    .line 906
    :cond_17
    :try_start_9
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    invoke-virtual {v0, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 915
    .line 916
    .line 917
    move-result-object v1

    .line 918
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 919
    .line 920
    .line 921
    move-result v1

    .line 922
    if-nez v1, :cond_18

    .line 923
    .line 924
    move-object/from16 v6, v20

    .line 925
    .line 926
    goto :goto_16

    .line 927
    :cond_18
    invoke-virtual {v0, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v0

    .line 935
    if-eqz v0, :cond_1a

    .line 936
    .line 937
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 938
    .line 939
    .line 940
    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 941
    if-eqz v1, :cond_19

    .line 942
    .line 943
    goto :goto_15

    .line 944
    :cond_19
    move-object v6, v0

    .line 945
    goto :goto_16

    .line 946
    :catch_6
    nop

    .line 947
    :cond_1a
    :goto_15
    move-object/from16 v6, v19

    .line 948
    .line 949
    :goto_16
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 950
    .line 951
    .line 952
    move-result v0

    .line 953
    if-eqz v0, :cond_1b

    .line 954
    .line 955
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 956
    .line 957
    .line 958
    goto :goto_17

    .line 959
    :cond_1b
    move-object/from16 v1, p1

    .line 960
    .line 961
    invoke-static {v6, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 962
    .line 963
    .line 964
    :goto_17
    return-void

    .line 965
    :pswitch_3
    move-object v1, v2

    .line 966
    move-object/from16 v20, v7

    .line 967
    .line 968
    move-object/from16 v21, v8

    .line 969
    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    .line 971
    .line 972
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 973
    .line 974
    .line 975
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 976
    .line 977
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 978
    .line 979
    iget-object v3, v2, Lcom/yunpan/appmanage/util/k;->X:Ljava/lang/String;

    .line 980
    .line 981
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    .line 983
    .line 984
    const-string v3, "/b/api/file/mod_pid?"

    .line 985
    .line 986
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    const-string v3, "/b/api/file/mod_pid"

    .line 990
    .line 991
    invoke-static {v3}, Lqf/c;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v3

    .line 995
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1005
    .line 1006
    .line 1007
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->W:Ljava/lang/String;

    .line 1008
    .line 1009
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    .line 1015
    const/4 v2, 0x0

    .line 1016
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v2

    .line 1020
    check-cast v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1021
    .line 1022
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1023
    .line 1024
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v2

    .line 1031
    :try_start_a
    new-instance v3, Lorg/json/JSONArray;

    .line 1032
    .line 1033
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v4

    .line 1040
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1041
    .line 1042
    .line 1043
    move-result v7

    .line 1044
    if-eqz v7, :cond_1c

    .line 1045
    .line 1046
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v7

    .line 1050
    check-cast v7, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1051
    .line 1052
    new-instance v8, Lorg/json/JSONObject;

    .line 1053
    .line 1054
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1055
    .line 1056
    .line 1057
    iget-object v7, v7, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1058
    .line 1059
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v7

    .line 1063
    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1067
    .line 1068
    .line 1069
    goto :goto_18

    .line 1070
    :catch_7
    nop

    .line 1071
    goto :goto_19

    .line 1072
    :cond_1c
    new-instance v4, Lorg/json/JSONObject;

    .line 1073
    .line 1074
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1075
    .line 1076
    .line 1077
    const-string v7, "RequestSource"

    .line 1078
    .line 1079
    const/4 v8, 0x0

    .line 1080
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1081
    .line 1082
    .line 1083
    const-string v7, "event"

    .line 1084
    .line 1085
    const-string v8, "fileMove"

    .line 1086
    .line 1087
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1088
    .line 1089
    .line 1090
    const-string v7, "fileIdList"

    .line 1091
    .line 1092
    invoke-virtual {v4, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1093
    .line 1094
    .line 1095
    const-string v3, "operatePlace"

    .line 1096
    .line 1097
    const/4 v7, 0x2

    .line 1098
    invoke-virtual {v4, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1099
    .line 1100
    .line 1101
    iget-object v3, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1102
    .line 1103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v3

    .line 1107
    move-object/from16 v7, v21

    .line 1108
    .line 1109
    invoke-virtual {v4, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 1116
    goto :goto_1a

    .line 1117
    :goto_19
    move-object/from16 v3, v20

    .line 1118
    .line 1119
    :goto_1a
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1120
    .line 1121
    .line 1122
    move-result v4

    .line 1123
    if-eqz v4, :cond_1d

    .line 1124
    .line 1125
    move-object/from16 v6, v18

    .line 1126
    .line 1127
    goto :goto_1c

    .line 1128
    :cond_1d
    invoke-static {v15, v0, v3, v2}, Lqf/c;->R(Lx9/n5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v0

    .line 1132
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1133
    .line 1134
    .line 1135
    move-result v2

    .line 1136
    if-eqz v2, :cond_1e

    .line 1137
    .line 1138
    move-object/from16 v6, v17

    .line 1139
    .line 1140
    goto :goto_1c

    .line 1141
    :cond_1e
    :try_start_b
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v0

    .line 1145
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v0

    .line 1149
    invoke-virtual {v0, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v2

    .line 1153
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 1154
    .line 1155
    .line 1156
    move-result v2

    .line 1157
    if-nez v2, :cond_1f

    .line 1158
    .line 1159
    move-object/from16 v6, v20

    .line 1160
    .line 1161
    goto :goto_1c

    .line 1162
    :cond_1f
    invoke-virtual {v0, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v0

    .line 1166
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v0

    .line 1170
    if-eqz v0, :cond_21

    .line 1171
    .line 1172
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1173
    .line 1174
    .line 1175
    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 1176
    if-eqz v2, :cond_20

    .line 1177
    .line 1178
    goto :goto_1b

    .line 1179
    :cond_20
    move-object v6, v0

    .line 1180
    goto :goto_1c

    .line 1181
    :catch_8
    nop

    .line 1182
    :cond_21
    :goto_1b
    move-object/from16 v6, v19

    .line 1183
    .line 1184
    :goto_1c
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 1185
    .line 1186
    .line 1187
    move-result v0

    .line 1188
    if-eqz v0, :cond_22

    .line 1189
    .line 1190
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1191
    .line 1192
    .line 1193
    goto :goto_1d

    .line 1194
    :cond_22
    invoke-static {v6, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1195
    .line 1196
    .line 1197
    :goto_1d
    return-void

    .line 1198
    :pswitch_4
    move-object v1, v2

    .line 1199
    move-object/from16 v20, v7

    .line 1200
    .line 1201
    new-instance v0, Lz7/s;

    .line 1202
    .line 1203
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 1204
    .line 1205
    .line 1206
    new-instance v2, Lz7/o;

    .line 1207
    .line 1208
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v5

    .line 1215
    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1216
    .line 1217
    .line 1218
    move-result v6

    .line 1219
    if-eqz v6, :cond_23

    .line 1220
    .line 1221
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v6

    .line 1225
    check-cast v6, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1226
    .line 1227
    iget-object v6, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1228
    .line 1229
    invoke-virtual {v2, v6}, Lz7/o;->j(Ljava/lang/String;)V

    .line 1230
    .line 1231
    .line 1232
    goto :goto_1e

    .line 1233
    :cond_23
    invoke-virtual {v0, v4, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 1234
    .line 1235
    .line 1236
    iget-object v2, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1237
    .line 1238
    invoke-virtual {v0, v3, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    .line 1240
    .line 1241
    :try_start_c
    const-string v2, "https://api.guangyapan.com/userres/v1/file/copy_file"

    .line 1242
    .line 1243
    invoke-virtual {v0}, Lz7/p;->toString()Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v0

    .line 1247
    invoke-static {v15, v2, v0}, Ls1/g;->H(Lx9/n5;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v0

    .line 1251
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v0

    .line 1259
    invoke-virtual {v0, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v2

    .line 1263
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v2

    .line 1267
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v2

    .line 1271
    move-object/from16 v5, v22

    .line 1272
    .line 1273
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1274
    .line 1275
    .line 1276
    move-result v2

    .line 1277
    if-eqz v2, :cond_24

    .line 1278
    .line 1279
    move-object/from16 v7, v20

    .line 1280
    .line 1281
    goto :goto_21

    .line 1282
    :cond_24
    new-instance v2, Ljava/lang/Exception;

    .line 1283
    .line 1284
    invoke-virtual {v0, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v0

    .line 1288
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v0

    .line 1292
    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1293
    .line 1294
    .line 1295
    throw v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 1296
    :catch_9
    move-exception v0

    .line 1297
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v0

    .line 1301
    if-eqz v0, :cond_26

    .line 1302
    .line 1303
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1304
    .line 1305
    .line 1306
    move-result v2

    .line 1307
    if-eqz v2, :cond_25

    .line 1308
    .line 1309
    goto :goto_20

    .line 1310
    :cond_25
    :goto_1f
    move-object v7, v0

    .line 1311
    goto :goto_21

    .line 1312
    :cond_26
    :goto_20
    const-string v0, "\u5931\u8d25"

    .line 1313
    .line 1314
    goto :goto_1f

    .line 1315
    :goto_21
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 1316
    .line 1317
    .line 1318
    move-result v0

    .line 1319
    if-eqz v0, :cond_27

    .line 1320
    .line 1321
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1322
    .line 1323
    .line 1324
    goto :goto_22

    .line 1325
    :cond_27
    invoke-static {v7, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1326
    .line 1327
    .line 1328
    :goto_22
    return-void

    .line 1329
    :pswitch_5
    move-object v1, v2

    .line 1330
    move-object/from16 v5, v22

    .line 1331
    .line 1332
    :try_start_d
    new-instance v0, Lz7/s;

    .line 1333
    .line 1334
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 1335
    .line 1336
    .line 1337
    new-instance v2, Lz7/o;

    .line 1338
    .line 1339
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v6

    .line 1346
    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1347
    .line 1348
    .line 1349
    move-result v7

    .line 1350
    if-eqz v7, :cond_28

    .line 1351
    .line 1352
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v7

    .line 1356
    check-cast v7, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1357
    .line 1358
    iget-object v7, v7, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1359
    .line 1360
    invoke-virtual {v2, v7}, Lz7/o;->j(Ljava/lang/String;)V

    .line 1361
    .line 1362
    .line 1363
    goto :goto_23

    .line 1364
    :catch_a
    move-exception v0

    .line 1365
    goto :goto_24

    .line 1366
    :cond_28
    invoke-virtual {v0, v4, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 1367
    .line 1368
    .line 1369
    iget-object v2, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1370
    .line 1371
    invoke-virtual {v0, v3, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    .line 1373
    .line 1374
    const-string v2, "https://api.guangyapan.com/userres/v1/file/move_file"

    .line 1375
    .line 1376
    invoke-virtual {v0}, Lz7/p;->toString()Ljava/lang/String;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v0

    .line 1380
    invoke-static {v15, v2, v0}, Ls1/g;->H(Lx9/n5;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v0

    .line 1384
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v0

    .line 1388
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v0

    .line 1392
    invoke-virtual {v0, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v2

    .line 1396
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v2

    .line 1400
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v2

    .line 1404
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1405
    .line 1406
    .line 1407
    move-result v2

    .line 1408
    if-eqz v2, :cond_29

    .line 1409
    .line 1410
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1411
    .line 1412
    .line 1413
    goto :goto_25

    .line 1414
    :cond_29
    new-instance v2, Ljava/lang/Exception;

    .line 1415
    .line 1416
    invoke-virtual {v0, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v0

    .line 1420
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v0

    .line 1424
    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1425
    .line 1426
    .line 1427
    throw v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 1428
    :goto_24
    invoke-virtual {v1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1429
    .line 1430
    .line 1431
    :goto_25
    return-void

    .line 1432
    nop

    .line 1433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
