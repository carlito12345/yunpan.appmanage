.class public final synthetic Lha/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/y3;


# direct methods
.method public synthetic constructor <init>(Lha/y3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/w3;->a:I

    iput-object p1, p0, Lha/w3;->b:Lha/y3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 10

    .line 1
    iget v0, p0, Lha/w3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lha/w3;->b:Lha/y3;

    .line 12
    .line 13
    iget-object v2, v1, Lha/a4;->b:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "/"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, v1, Lha/y3;->g:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iget-object v3, v1, Lha/y3;->i:Ljava/util/HashMap;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    new-instance v2, Lz7/s;

    .line 47
    .line 48
    invoke-direct {v2}, Lz7/s;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v1, v1, Lha/y3;->l:Lx9/v0;

    .line 52
    .line 53
    invoke-virtual {v1}, Lc6/g;->v()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_1

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Lx9/x0;

    .line 72
    .line 73
    iget-boolean v6, v5, Lx9/x0;->b:Z

    .line 74
    .line 75
    if-nez v6, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    :try_start_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 79
    .line 80
    iget-object v7, v5, Lx9/x0;->a:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    check-cast v7, Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-object v6, v5, Lx9/x0;->a:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v7, Ljava/io/File;

    .line 94
    .line 95
    new-instance v8, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v5, v5, Lx9/x0;->a:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v7}, Lq4/a;->J(Ljava/io/File;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-static {v5}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v2, v6, v5}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception v5

    .line 136
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_1
    if-nez v4, :cond_2

    .line 141
    .line 142
    const-string v0, "\u8bf7\u9009\u62e9\u8981\u5bfc\u51fa\u7684\u914d\u7f6e"

    .line 143
    .line 144
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_2

    .line 148
    .line 149
    :cond_2
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 150
    .line 151
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_3

    .line 160
    .line 161
    const-string v0, "\u6ca1\u6709\u5185\u90e8\u5b58\u50a8(SD\u5361)\u65e0\u6cd5\u4fdd\u5b58\u914d\u7f6e"

    .line 162
    .line 163
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :cond_3
    new-instance v1, Ljava/io/File;

    .line 169
    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v4, "/Download"

    .line 176
    .line 177
    invoke-static {v0, v3, v4}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 185
    .line 186
    .line 187
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 188
    .line 189
    const-string v3, "MM\u6708dd\u65e5HH\u65f6mm\u5206"

    .line 190
    .line 191
    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v0, "/Download/\u7ba1\u5bb6\u914d\u7f6e"

    .line 207
    .line 208
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    new-instance v0, Ljava/util/Date;

    .line 212
    .line 213
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v0, ".json"

    .line 224
    .line 225
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    new-instance v1, Ljava/io/File;

    .line 233
    .line 234
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Lz7/p;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-static {v1, v2}, Lq4/a;->M(Ljava/io/File;Ljava/lang/String;)Z

    .line 242
    .line 243
    .line 244
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const-string v0, "\u5df2\u4fdd\u5b58\u5728Download\u76ee\u5f55"

    .line 252
    .line 253
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_4
    iget-object v2, v1, Lha/y3;->l:Lx9/v0;

    .line 258
    .line 259
    invoke-virtual {v2}, Lc6/g;->v()Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-eqz v5, :cond_6

    .line 272
    .line 273
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    check-cast v5, Lx9/x0;

    .line 278
    .line 279
    iget-boolean v6, v5, Lx9/x0;->b:Z

    .line 280
    .line 281
    if-nez v6, :cond_5

    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 285
    .line 286
    new-instance v6, Ljava/io/File;

    .line 287
    .line 288
    invoke-static {v0}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    iget-object v8, v5, Lx9/x0;->a:Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    check-cast v8, Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iget-object v7, v1, Lha/y3;->h:Lz7/s;

    .line 311
    .line 312
    iget-object v5, v5, Lx9/x0;->a:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v7, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-virtual {v5}, Lz7/p;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    invoke-static {v6, v5}, Lq4/a;->M(Ljava/io/File;Ljava/lang/String;)Z

    .line 323
    .line 324
    .line 325
    goto :goto_1

    .line 326
    :cond_6
    if-nez v4, :cond_7

    .line 327
    .line 328
    const-string v0, "\u8bf7\u9009\u62e9\u8981\u5bfc\u5165\u7684\u914d\u7f6e"

    .line 329
    .line 330
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_7
    const-string v0, "\u5bfc\u5165\u6210\u529f\uff01\u8bf7\u91cd\u542f\u7ba1\u5bb6\uff0c\u91cd\u542f\u81ea\u52a8\u5316\u4efb\u52a1\uff01"

    .line 335
    .line 336
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 340
    .line 341
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/util/w;->j(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 344
    .line 345
    .line 346
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 347
    .line 348
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Lwa/u;->b(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 351
    .line 352
    .line 353
    :goto_2
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 354
    .line 355
    .line 356
    return-void

    .line 357
    :pswitch_0
    iget-object v0, p0, Lha/w3;->b:Lha/y3;

    .line 358
    .line 359
    iget-object v1, v0, Lha/y3;->g:Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    iget-object v3, v0, Lha/y3;->i:Ljava/util/HashMap;

    .line 366
    .line 367
    const/4 v4, 0x1

    .line 368
    if-eqz v2, :cond_9

    .line 369
    .line 370
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-eqz v2, :cond_c

    .line 383
    .line 384
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    check-cast v2, Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    check-cast v5, Ljava/lang/String;

    .line 395
    .line 396
    new-instance v6, Ljava/io/File;

    .line 397
    .line 398
    new-instance v7, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    iget-object v8, v0, Lha/a4;->b:Landroid/content/Context;

    .line 404
    .line 405
    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 406
    .line 407
    .line 408
    move-result-object v8

    .line 409
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v8

    .line 413
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v8, "/"

    .line 417
    .line 418
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 432
    .line 433
    .line 434
    move-result v5

    .line 435
    if-eqz v5, :cond_8

    .line 436
    .line 437
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 438
    .line 439
    .line 440
    move-result-wide v5

    .line 441
    const-wide/16 v7, 0x19

    .line 442
    .line 443
    cmp-long v9, v5, v7

    .line 444
    .line 445
    if-lez v9, :cond_8

    .line 446
    .line 447
    new-instance v5, Lx9/x0;

    .line 448
    .line 449
    invoke-direct {v5, v2, v4}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {p1, v5}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    goto :goto_3

    .line 456
    :cond_9
    :try_start_1
    new-instance v2, Ljava/io/File;

    .line 457
    .line 458
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-static {v2}, Lq4/a;->J(Ljava/io/File;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-static {v1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    iput-object v1, v0, Lha/y3;->h:Lz7/s;

    .line 474
    .line 475
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    const/4 v2, 0x0

    .line 484
    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 485
    .line 486
    .line 487
    move-result v3

    .line 488
    if-eqz v3, :cond_b

    .line 489
    .line 490
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    check-cast v3, Ljava/lang/String;

    .line 495
    .line 496
    iget-object v5, v0, Lha/y3;->h:Lz7/s;

    .line 497
    .line 498
    iget-object v5, v5, Lz7/s;->a:Lb8/n;

    .line 499
    .line 500
    invoke-virtual {v5, v3}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v5

    .line 504
    if-eqz v5, :cond_a

    .line 505
    .line 506
    add-int/lit8 v2, v2, 0x1

    .line 507
    .line 508
    new-instance v5, Lx9/x0;

    .line 509
    .line 510
    invoke-direct {v5, v3, v4}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p1, v5}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 514
    .line 515
    .line 516
    goto :goto_4

    .line 517
    :catch_1
    move-exception v0

    .line 518
    goto :goto_5

    .line 519
    :cond_b
    if-eqz v2, :cond_d

    .line 520
    .line 521
    :cond_c
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 522
    .line 523
    .line 524
    goto :goto_6

    .line 525
    :cond_d
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    .line 526
    .line 527
    const-string v1, "\u9519\u8bef\u7684\u914d\u7f6e\u6587\u4ef6"

    .line 528
    .line 529
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 533
    :goto_5
    const-string v1, "\u6587\u4ef6\u683c\u5f0f\u9519\u8bef"

    .line 534
    .line 535
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 539
    .line 540
    .line 541
    :goto_6
    return-void

    .line 542
    nop

    .line 543
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lha/w3;->b:Lha/y3;

    .line 2
    .line 3
    iget-object p2, p1, Lha/y3;->l:Lx9/v0;

    .line 4
    .line 5
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lx9/x0;

    .line 10
    .line 11
    iget-object v0, p1, Lha/y3;->l:Lx9/v0;

    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lx9/x0;

    .line 18
    .line 19
    iget-boolean v0, v0, Lx9/x0;->b:Z

    .line 20
    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    iput-boolean v0, p2, Lx9/x0;->b:Z

    .line 24
    .line 25
    iget-object p1, p1, Lha/y3;->l:Lx9/v0;

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
