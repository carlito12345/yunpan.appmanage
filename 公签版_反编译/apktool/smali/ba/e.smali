.class public final synthetic Lba/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/bean/WpPathBean;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lx9/n5;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lba/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lba/e;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    iput-object p2, p0, Lba/e;->c:Ljava/lang/String;

    iput-object p3, p0, Lba/e;->d:Lx9/n5;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;Ljava/lang/String;I)V
    .locals 0

    .line 2
    iput p4, p0, Lba/e;->a:I

    iput-object p1, p0, Lba/e;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    iput-object p2, p0, Lba/e;->d:Lx9/n5;

    iput-object p3, p0, Lba/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;I)V
    .locals 0

    .line 3
    iput p4, p0, Lba/e;->a:I

    iput-object p1, p0, Lba/e;->d:Lx9/n5;

    iput-object p2, p0, Lba/e;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    iput-object p3, p0, Lba/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lmc/b;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    const-string v0, "\u83b7\u53d6\u5206\u4eab\u5730\u5740\u51fa\u9519"

    .line 8
    .line 9
    const-string v5, "/"

    .line 10
    .line 11
    const-string v6, "addSuppressed"

    .line 12
    .line 13
    const-class v7, Ljava/lang/Throwable;

    .line 14
    .line 15
    iget-object v8, v1, Lba/e;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 16
    .line 17
    iput-boolean v4, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->isStopDown:Z

    .line 18
    .line 19
    const-string v9, ""

    .line 20
    .line 21
    iput-object v9, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrl:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v10, v1, Lba/e;->d:Lx9/n5;

    .line 24
    .line 25
    iget-object v11, v10, Lx9/n5;->c:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v11

    .line 31
    if-eqz v11, :cond_0

    .line 32
    .line 33
    const-string v11, "https://pc.woozooo.com"

    .line 34
    .line 35
    iput-object v11, v10, Lx9/n5;->c:Ljava/lang/String;

    .line 36
    .line 37
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v12, v10, Lx9/n5;->c:Ljava/lang/String;

    .line 43
    .line 44
    const-string v13, "/doupload.php"

    .line 45
    .line 46
    invoke-static {v12, v13, v11}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    new-instance v12, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v13, v10, Lx9/n5;->c:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v13, "/mydisk.php?item=files&action=index&u="

    .line 61
    .line 62
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v13, v10, Lx9/n5;->h:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    new-instance v13, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v14, "task=22&file_id="

    .line 77
    .line 78
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v14, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    iget-object v10, v10, Lx9/n5;->i:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v10, v11, v13, v12}, Lnh/b;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    if-eqz v11, :cond_2

    .line 101
    .line 102
    const-string v0, "\u51fa\u9519\uff1a\u8bf7\u5237\u65b0\u7f51\u76d8\u76ee\u5f55"

    .line 103
    .line 104
    :cond_1
    :goto_0
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_14

    .line 108
    .line 109
    :cond_2
    :try_start_0
    invoke-static {v10}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v10}, Lz7/p;->g()Lz7/s;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    const-string v11, "zt"

    .line 118
    .line 119
    invoke-virtual {v10, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    invoke-virtual {v11}, Lz7/p;->e()I

    .line 124
    .line 125
    .line 126
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 127
    const-string v12, "info"

    .line 128
    .line 129
    if-ne v11, v3, :cond_3

    .line 130
    .line 131
    :try_start_1
    invoke-virtual {v10, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    invoke-virtual {v11}, Lz7/p;->g()Lz7/s;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    const-string v13, "is_newd"

    .line 140
    .line 141
    invoke-virtual {v11, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    invoke-virtual {v11}, Lz7/p;->i()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 149
    :try_start_2
    invoke-virtual {v10, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 150
    .line 151
    .line 152
    move-result-object v13

    .line 153
    invoke-virtual {v13}, Lz7/p;->g()Lz7/s;

    .line 154
    .line 155
    .line 156
    move-result-object v13

    .line 157
    const-string v14, "f_id"

    .line 158
    .line 159
    invoke-virtual {v13, v14}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    invoke-virtual {v13}, Lz7/p;->i()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 167
    :try_start_3
    invoke-virtual {v10, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    invoke-virtual {v10}, Lz7/p;->g()Lz7/s;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    const-string v12, "pwd"

    .line 176
    .line 177
    invoke-virtual {v10, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 185
    goto :goto_2

    .line 186
    :catch_0
    nop

    .line 187
    goto :goto_2

    .line 188
    :catch_1
    nop

    .line 189
    move-object v13, v9

    .line 190
    goto :goto_2

    .line 191
    :catch_2
    nop

    .line 192
    move-object v11, v9

    .line 193
    move-object v13, v11

    .line 194
    goto :goto_2

    .line 195
    :cond_3
    :try_start_4
    invoke-virtual {v10, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    invoke-virtual {v11}, Lz7/p;->i()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 203
    goto :goto_1

    .line 204
    :catch_3
    :try_start_5
    const-string v11, "text"

    .line 205
    .line 206
    invoke-virtual {v10, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 214
    goto :goto_1

    .line 215
    :catch_4
    nop

    .line 216
    move-object v10, v9

    .line 217
    :goto_1
    if-eqz v10, :cond_4

    .line 218
    .line 219
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    if-nez v11, :cond_4

    .line 224
    .line 225
    const-string v11, "null"

    .line 226
    .line 227
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v11

    .line 231
    if-eqz v11, :cond_5

    .line 232
    .line 233
    :cond_4
    move-object v10, v0

    .line 234
    :cond_5
    const-string v11, "\u4f1a\u5458\u5df2\u8fc7\u671f"

    .line 235
    .line 236
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 237
    .line 238
    .line 239
    move-result v11

    .line 240
    if-eqz v11, :cond_6

    .line 241
    .line 242
    const-string v10, "\u84dd\u594f\u4e91\uff1a\u9700\u4f1a\u5458\u624d\u80fd\u4f7f\u7528  (\u63a8\u8350\u4f7f\u7528123\u7f51\u76d8)"

    .line 243
    .line 244
    :cond_6
    new-instance v11, Ljava/lang/Exception;

    .line 245
    .line 246
    invoke-direct {v11, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, v11}, Lmc/b;->d(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 250
    .line 251
    .line 252
    goto/16 :goto_14

    .line 253
    .line 254
    :goto_2
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 255
    .line 256
    .line 257
    move-result v10

    .line 258
    if-nez v10, :cond_1

    .line 259
    .line 260
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 261
    .line 262
    .line 263
    move-result v10

    .line 264
    if-eqz v10, :cond_7

    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :cond_7
    :try_start_7
    new-instance v0, Lba/r;

    .line 269
    .line 270
    const-string v10, "\u5206\u4eab\u9875"

    .line 271
    .line 272
    new-instance v12, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v11

    .line 290
    invoke-direct {v0, v10, v11, v9}, Lba/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-static {v0}, Lcom/bumptech/glide/c;->R(Lba/r;)Ljava/util/ArrayList;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 298
    .line 299
    .line 300
    move-result v11

    .line 301
    if-nez v11, :cond_11

    .line 302
    .line 303
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v10

    .line 307
    check-cast v10, Lx9/b6;

    .line 308
    .line 309
    iget-object v10, v10, Lx9/b6;->a:Lba/i;

    .line 310
    .line 311
    iget-object v11, v10, Lba/i;->d:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v11, Ljava/lang/String;

    .line 314
    .line 315
    const-string v12, "/file/"

    .line 316
    .line 317
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result v11

    .line 321
    if-nez v11, :cond_8

    .line 322
    .line 323
    new-instance v11, Lba/r;

    .line 324
    .line 325
    iget-object v12, v10, Lba/i;->d:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v12, Ljava/lang/String;

    .line 328
    .line 329
    iget-object v13, v0, Lba/r;->i:Ljava/lang/String;

    .line 330
    .line 331
    invoke-direct {v11, v12, v9, v13, v4}, Lba/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 332
    .line 333
    .line 334
    invoke-static {v11}, Lcom/bumptech/glide/c;->R(Lba/r;)Ljava/util/ArrayList;

    .line 335
    .line 336
    .line 337
    move-result-object v9

    .line 338
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v9

    .line 342
    check-cast v9, Lx9/b6;

    .line 343
    .line 344
    iget-object v9, v9, Lx9/b6;->a:Lba/i;

    .line 345
    .line 346
    iget-object v9, v9, Lba/i;->d:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast v9, Ljava/lang/String;

    .line 349
    .line 350
    iput-object v9, v10, Lba/i;->d:Ljava/lang/Object;

    .line 351
    .line 352
    goto :goto_3

    .line 353
    :catch_5
    move-exception v0

    .line 354
    goto/16 :goto_13

    .line 355
    .line 356
    :cond_8
    :goto_3
    iget-object v9, v10, Lba/i;->d:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v9, Ljava/lang/String;

    .line 359
    .line 360
    iput-object v9, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrl:Ljava/lang/String;

    .line 361
    .line 362
    iget-object v10, v10, Lba/i;->e:Ljava/lang/Object;

    .line 363
    .line 364
    check-cast v10, Ljava/lang/String;

    .line 365
    .line 366
    iget-object v0, v0, Lba/r;->i:Ljava/lang/String;

    .line 367
    .line 368
    invoke-static {v9, v10, v0}, Lnh/b;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ResponseBody;

    .line 369
    .line 370
    .line 371
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 372
    iget-object v9, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 375
    .line 376
    .line 377
    move-result v10

    .line 378
    const/16 v11, 0x50

    .line 379
    .line 380
    if-le v10, v11, :cond_9

    .line 381
    .line 382
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 383
    .line 384
    .line 385
    move-result v10

    .line 386
    sub-int/2addr v10, v11

    .line 387
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 388
    .line 389
    .line 390
    move-result v11

    .line 391
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v9

    .line 395
    :cond_9
    new-instance v10, Ljava/io/File;

    .line 396
    .line 397
    new-instance v11, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    .line 402
    iget-object v12, v1, Lba/e;->c:Ljava/lang/String;

    .line 403
    .line 404
    invoke-static {v11, v12, v5, v9}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v9

    .line 408
    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    if-eqz v9, :cond_a

    .line 416
    .line 417
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 418
    .line 419
    .line 420
    move-result v9

    .line 421
    if-eqz v9, :cond_a

    .line 422
    .line 423
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 424
    .line 425
    .line 426
    move-result-object v9

    .line 427
    invoke-virtual {v9}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 428
    .line 429
    .line 430
    move-result-object v9

    .line 431
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v11

    .line 435
    invoke-interface {v9, v11}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    :cond_a
    :try_start_8
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 439
    .line 440
    .line 441
    move-result-object v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    .line 442
    :try_start_9
    new-instance v11, Ljava/io/FileOutputStream;

    .line 443
    .line 444
    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_e

    .line 445
    .line 446
    .line 447
    :try_start_a
    new-instance v12, Ljava/io/BufferedInputStream;

    .line 448
    .line 449
    invoke-direct {v12, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 450
    .line 451
    .line 452
    :try_start_b
    new-instance v13, Ljava/io/BufferedOutputStream;

    .line 453
    .line 454
    invoke-direct {v13, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 455
    .line 456
    .line 457
    :try_start_c
    new-instance v14, Lcom/yunpan/appmanage/bean/DownProgressBean;

    .line 458
    .line 459
    invoke-direct {v14}, Lcom/yunpan/appmanage/bean/DownProgressBean;-><init>()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 463
    .line 464
    .line 465
    move-result-wide v3

    .line 466
    iput-wide v3, v14, Lcom/yunpan/appmanage/bean/DownProgressBean;->fileSize:J

    .line 467
    .line 468
    const/high16 v0, 0x80000

    .line 469
    .line 470
    new-array v0, v0, [B

    .line 471
    .line 472
    const-wide/16 v3, 0x0

    .line 473
    .line 474
    const/16 v16, 0x0

    .line 475
    .line 476
    :goto_4
    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    .line 477
    .line 478
    .line 479
    move-result v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 480
    const/4 v1, -0x1

    .line 481
    if-eq v15, v1, :cond_d

    .line 482
    .line 483
    move-object v1, v6

    .line 484
    move-object/from16 v18, v7

    .line 485
    .line 486
    int-to-long v6, v15

    .line 487
    add-long/2addr v3, v6

    .line 488
    const/4 v6, 0x0

    .line 489
    :try_start_d
    invoke-virtual {v13, v0, v6, v15}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V

    .line 493
    .line 494
    .line 495
    const/4 v6, 0x1

    .line 496
    add-int/lit8 v7, v16, 0x1

    .line 497
    .line 498
    const/4 v6, 0x2

    .line 499
    if-le v7, v6, :cond_b

    .line 500
    .line 501
    iput-wide v3, v14, Lcom/yunpan/appmanage/bean/DownProgressBean;->downSize:J

    .line 502
    .line 503
    long-to-double v6, v3

    .line 504
    move-wide/from16 v16, v3

    .line 505
    .line 506
    iget-wide v3, v14, Lcom/yunpan/appmanage/bean/DownProgressBean;->fileSize:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 507
    .line 508
    long-to-double v3, v3

    .line 509
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 510
    .line 511
    .line 512
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 513
    .line 514
    .line 515
    div-double/2addr v6, v3

    .line 516
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 517
    .line 518
    mul-double v6, v6, v3

    .line 519
    .line 520
    :try_start_e
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 521
    .line 522
    .line 523
    move-result-wide v3

    .line 524
    double-to-int v3, v3

    .line 525
    iput v3, v14, Lcom/yunpan/appmanage/bean/DownProgressBean;->bfb:I

    .line 526
    .line 527
    invoke-virtual {v2, v14}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    const/4 v7, 0x0

    .line 531
    goto :goto_6

    .line 532
    :goto_5
    move-object v3, v0

    .line 533
    goto/16 :goto_7

    .line 534
    .line 535
    :catchall_0
    move-exception v0

    .line 536
    goto :goto_5

    .line 537
    :cond_b
    move-wide/from16 v16, v3

    .line 538
    .line 539
    :goto_6
    iget-boolean v3, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->isStopDown:Z

    .line 540
    .line 541
    if-eqz v3, :cond_c

    .line 542
    .line 543
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 544
    .line 545
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 546
    .line 547
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 548
    .line 549
    .line 550
    invoke-static {v10}, Lcom/yunpan/appmanage/util/k;->e(Ljava/io/File;)V

    .line 551
    .line 552
    .line 553
    new-instance v0, Ljava/lang/Exception;

    .line 554
    .line 555
    const-string v3, "\u4e3b\u52a8\u505c\u6b62\u4e0b\u8f7d"

    .line 556
    .line 557
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 561
    .line 562
    .line 563
    :try_start_f
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 564
    .line 565
    .line 566
    :try_start_10
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 567
    .line 568
    .line 569
    :try_start_11
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 570
    .line 571
    .line 572
    if-eqz v9, :cond_12

    .line 573
    .line 574
    :try_start_12
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    .line 575
    .line 576
    .line 577
    goto/16 :goto_14

    .line 578
    .line 579
    :catchall_1
    move-exception v0

    .line 580
    move-object v3, v0

    .line 581
    move-object/from16 v7, v18

    .line 582
    .line 583
    goto/16 :goto_10

    .line 584
    .line 585
    :catchall_2
    move-exception v0

    .line 586
    move-object v3, v0

    .line 587
    move-object/from16 v7, v18

    .line 588
    .line 589
    goto/16 :goto_d

    .line 590
    .line 591
    :catchall_3
    move-exception v0

    .line 592
    move-object v3, v0

    .line 593
    move-object/from16 v7, v18

    .line 594
    .line 595
    goto/16 :goto_a

    .line 596
    .line 597
    :cond_c
    move-object v6, v1

    .line 598
    move-wide/from16 v3, v16

    .line 599
    .line 600
    move-object/from16 v1, p0

    .line 601
    .line 602
    move/from16 v16, v7

    .line 603
    .line 604
    move-object/from16 v7, v18

    .line 605
    .line 606
    goto/16 :goto_4

    .line 607
    .line 608
    :cond_d
    move-object v1, v6

    .line 609
    move-object/from16 v18, v7

    .line 610
    .line 611
    :try_start_13
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    new-instance v3, Ljava/lang/StringBuilder;

    .line 616
    .line 617
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 624
    .line 625
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 626
    .line 627
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 628
    .line 629
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    const-string v4, "/cache/"

    .line 633
    .line 634
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 642
    .line 643
    .line 644
    move-result v0

    .line 645
    if-nez v0, :cond_e

    .line 646
    .line 647
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    invoke-virtual {v0, v3}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 656
    .line 657
    .line 658
    :cond_e
    :try_start_14
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 659
    .line 660
    .line 661
    :try_start_15
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 662
    .line 663
    .line 664
    :try_start_16
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 665
    .line 666
    .line 667
    if-eqz v9, :cond_10

    .line 668
    .line 669
    :try_start_17
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b

    .line 670
    .line 671
    .line 672
    goto/16 :goto_12

    .line 673
    .line 674
    :catchall_4
    move-exception v0

    .line 675
    move-object v1, v6

    .line 676
    move-object/from16 v18, v7

    .line 677
    .line 678
    goto/16 :goto_5

    .line 679
    .line 680
    :goto_7
    :try_start_18
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 681
    .line 682
    .line 683
    :catch_6
    move-object/from16 v7, v18

    .line 684
    .line 685
    goto :goto_9

    .line 686
    :catchall_5
    move-exception v0

    .line 687
    move-object v4, v0

    .line 688
    const/4 v5, 0x1

    .line 689
    :try_start_19
    new-array v0, v5, [Ljava/lang/Class;

    .line 690
    .line 691
    const/4 v6, 0x0

    .line 692
    aput-object v18, v0, v6
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 693
    .line 694
    move-object/from16 v7, v18

    .line 695
    .line 696
    :try_start_1a
    invoke-virtual {v7, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    new-array v8, v5, [Ljava/lang/Object;

    .line 701
    .line 702
    aput-object v4, v8, v6

    .line 703
    .line 704
    invoke-virtual {v0, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 705
    .line 706
    .line 707
    goto :goto_9

    .line 708
    :catchall_6
    move-exception v0

    .line 709
    move-object/from16 v7, v18

    .line 710
    .line 711
    :goto_8
    move-object v3, v0

    .line 712
    goto :goto_a

    .line 713
    :catch_7
    :goto_9
    :try_start_1b
    throw v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 714
    :catchall_7
    move-exception v0

    .line 715
    goto :goto_8

    .line 716
    :catchall_8
    move-exception v0

    .line 717
    move-object v1, v6

    .line 718
    goto :goto_8

    .line 719
    :goto_a
    :try_start_1c
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 720
    .line 721
    .line 722
    goto :goto_c

    .line 723
    :catchall_9
    move-exception v0

    .line 724
    move-object v4, v0

    .line 725
    const/4 v5, 0x1

    .line 726
    :try_start_1d
    new-array v0, v5, [Ljava/lang/Class;

    .line 727
    .line 728
    const/4 v6, 0x0

    .line 729
    aput-object v7, v0, v6

    .line 730
    .line 731
    invoke-virtual {v7, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    new-array v8, v5, [Ljava/lang/Object;

    .line 736
    .line 737
    aput-object v4, v8, v6

    .line 738
    .line 739
    invoke-virtual {v0, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 740
    .line 741
    .line 742
    goto :goto_c

    .line 743
    :goto_b
    move-object v3, v0

    .line 744
    goto :goto_d

    .line 745
    :catch_8
    :goto_c
    :try_start_1e
    throw v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .line 746
    :catchall_a
    move-exception v0

    .line 747
    goto :goto_b

    .line 748
    :catchall_b
    move-exception v0

    .line 749
    move-object v1, v6

    .line 750
    goto :goto_b

    .line 751
    :goto_d
    :try_start_1f
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    .line 752
    .line 753
    .line 754
    goto :goto_f

    .line 755
    :catchall_c
    move-exception v0

    .line 756
    move-object v4, v0

    .line 757
    const/4 v5, 0x1

    .line 758
    :try_start_20
    new-array v0, v5, [Ljava/lang/Class;

    .line 759
    .line 760
    const/4 v6, 0x0

    .line 761
    aput-object v7, v0, v6

    .line 762
    .line 763
    invoke-virtual {v7, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    new-array v8, v5, [Ljava/lang/Object;

    .line 768
    .line 769
    aput-object v4, v8, v6

    .line 770
    .line 771
    invoke-virtual {v0, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    .line 772
    .line 773
    .line 774
    goto :goto_f

    .line 775
    :goto_e
    move-object v3, v0

    .line 776
    goto :goto_10

    .line 777
    :catch_9
    :goto_f
    :try_start_21
    throw v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    .line 778
    :catchall_d
    move-exception v0

    .line 779
    goto :goto_e

    .line 780
    :catchall_e
    move-exception v0

    .line 781
    move-object v1, v6

    .line 782
    goto :goto_e

    .line 783
    :goto_10
    if-eqz v9, :cond_f

    .line 784
    .line 785
    :try_start_22
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    .line 786
    .line 787
    .line 788
    goto :goto_11

    .line 789
    :catchall_f
    move-exception v0

    .line 790
    move-object v4, v0

    .line 791
    const/4 v5, 0x1

    .line 792
    :try_start_23
    new-array v0, v5, [Ljava/lang/Class;

    .line 793
    .line 794
    const/4 v6, 0x0

    .line 795
    aput-object v7, v0, v6

    .line 796
    .line 797
    invoke-virtual {v7, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    new-array v1, v5, [Ljava/lang/Object;

    .line 802
    .line 803
    aput-object v4, v1, v6

    .line 804
    .line 805
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_a

    .line 806
    .line 807
    .line 808
    :catch_a
    :cond_f
    :goto_11
    :try_start_24
    throw v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_b

    .line 809
    :catch_b
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 810
    .line 811
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 812
    .line 813
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 814
    .line 815
    .line 816
    invoke-static {v10}, Lcom/yunpan/appmanage/util/k;->e(Ljava/io/File;)V

    .line 817
    .line 818
    .line 819
    :cond_10
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 820
    .line 821
    .line 822
    goto :goto_14

    .line 823
    :cond_11
    :try_start_25
    new-instance v0, Ljava/lang/Exception;

    .line 824
    .line 825
    const-string v1, "\u83b7\u53d6\u6587\u4ef6\u5931\u8d25"

    .line 826
    .line 827
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    throw v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_5

    .line 831
    :goto_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 835
    .line 836
    .line 837
    :cond_12
    :goto_14
    return-void
.end method

.method private final b(Lmc/b;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lba/e;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 2
    .line 3
    iget-object v1, p0, Lba/e;->c:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "\u51fa\u9519"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 15
    .line 16
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 17
    .line 18
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->X:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v5, "/b/api/file/rename?"

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v5, "/b/api/file/rename"

    .line 29
    .line 30
    invoke-static {v5}, Lqf/c;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 42
    .line 43
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v6, "driveId"

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    const-string v6, "fileId"

    .line 53
    .line 54
    iget-object v7, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    const-string v6, "fileName"

    .line 64
    .line 65
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    const-string v6, "duplicate"

    .line 69
    .line 70
    const/4 v7, 0x1

    .line 71
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    const-string v6, "RequestSource"

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    nop

    .line 86
    move-object v5, v3

    .line 87
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_0

    .line 92
    .line 93
    const-string v2, "\u7ec4\u5305\u51fa\u9519"

    .line 94
    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 103
    .line 104
    iget-object v7, v7, Lcom/yunpan/appmanage/util/k;->W:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v7, "/?homeFilePath="

    .line 110
    .line 111
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v7, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    iget-object v7, p0, Lba/e;->d:Lx9/n5;

    .line 124
    .line 125
    invoke-static {v7, v4, v5, v6}, Lqf/c;->R(Lx9/n5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-eqz v5, :cond_1

    .line 134
    .line 135
    const-string v2, "\u8bf7\u6c42\u51fa\u9519"

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_1
    :try_start_1
    invoke-static {v4}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    const-string v5, "code"

    .line 147
    .line 148
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 153
    .line 154
    .line 155
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 156
    if-nez v5, :cond_2

    .line 157
    .line 158
    :try_start_2
    const-string v5, "data"

    .line 159
    .line 160
    invoke-virtual {v4, v5}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    const-string v5, "Info"

    .line 165
    .line 166
    invoke-virtual {v4, v5}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    const-string v5, "FileName"

    .line 171
    .line 172
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    iput-object v4, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :catch_1
    :try_start_3
    iput-object v1, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 184
    .line 185
    :goto_1
    move-object v2, v3

    .line 186
    goto :goto_2

    .line 187
    :catch_2
    nop

    .line 188
    goto :goto_2

    .line 189
    :cond_2
    const-string v0, "message"

    .line 190
    .line 191
    invoke-virtual {v4, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-eqz v0, :cond_3

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_4

    .line 206
    .line 207
    :cond_3
    move-object v0, v2

    .line 208
    :cond_4
    const-string v1, "token is expired"

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_5

    .line 215
    .line 216
    const-string v0, "\u767b\u5f55\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u9009\u4e2d\u7f51\u76d8"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 217
    .line 218
    :cond_5
    move-object v2, v0

    .line 219
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_6

    .line 224
    .line 225
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_6
    invoke-static {v2, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 230
    .line 231
    .line 232
    :goto_3
    return-void
.end method

.method private final c(Lmc/b;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ls1/g;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v5, v1, Lba/e;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 23
    .line 24
    iget-object v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v6, "|"

    .line 30
    .line 31
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v7, v1, Lba/e;->d:Lx9/n5;

    .line 35
    .line 36
    iget-object v8, v7, Lx9/n5;->n:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4}, Ls1/g;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    new-instance v8, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v9, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Ls1/g;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/4 v6, 0x0

    .line 74
    iput-boolean v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->isStopDown:Z

    .line 75
    .line 76
    new-instance v8, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v9, "https://api.feejii.com/ws/file/redirect?uuid="

    .line 79
    .line 80
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v9, v7, Lx9/n5;->l:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v9, "&devType=6&devCode="

    .line 89
    .line 90
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v9, v7, Lx9/n5;->l:Ljava/lang/String;

    .line 94
    .line 95
    const-string v10, "&devModel=chrome&devVersion=140&appVersion=&timestamp="

    .line 96
    .line 97
    const-string v11, "&appToken="

    .line 98
    .line 99
    invoke-static {v8, v9, v10, v3, v11}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v3, v7, Lx9/n5;->k:Ljava/lang/String;

    .line 103
    .line 104
    const-string v7, "&enable=1&downloadId="

    .line 105
    .line 106
    const-string v9, "&auth="

    .line 107
    .line 108
    invoke-static {v8, v3, v7, v4, v9}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrl:Ljava/lang/String;

    .line 119
    .line 120
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    const/4 v3, 0x0

    .line 126
    :try_start_0
    iget-object v0, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrl:Ljava/lang/String;

    .line 127
    .line 128
    new-instance v4, Ll9/a;

    .line 129
    .line 130
    invoke-direct {v4, v0}, Ll9/a;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, v4, Lm9/e;->i:Lk9/a;

    .line 134
    .line 135
    const-string v7, "User-Agent"

    .line 136
    .line 137
    const-string v8, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76"

    .line 138
    .line 139
    invoke-virtual {v0, v7, v8}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v7, "referer"

    .line 143
    .line 144
    const-string v8, "https://www.feejii.com/"

    .line 145
    .line 146
    invoke-virtual {v0, v7, v8}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v7, "Accept-Language"

    .line 150
    .line 151
    const-string v8, "zh-CN,zh;q=0.9,en;q=0.8"

    .line 152
    .line 153
    invoke-virtual {v0, v7, v8}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Lm9/e;->a()Lokhttp3/Response;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_1

    .line 165
    .line 166
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 167
    .line 168
    .line 169
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    if-eqz v4, :cond_0

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    .line 174
    .line 175
    const-string v7, "\u8bf7\u6c42\u51fa\u95192"

    .line 176
    .line 177
    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    .line 184
    move-object v4, v3

    .line 185
    goto :goto_0

    .line 186
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    .line 187
    .line 188
    const-string v4, "\u8bf7\u6c42\u51fa\u95191"

    .line 189
    .line 190
    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    .line 196
    .line 197
    move-object v0, v3

    .line 198
    :goto_1
    if-eqz v0, :cond_a

    .line 199
    .line 200
    if-nez v4, :cond_2

    .line 201
    .line 202
    goto/16 :goto_9

    .line 203
    .line 204
    :cond_2
    iget-object v0, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    const/16 v8, 0x50

    .line 211
    .line 212
    if-le v7, v8, :cond_3

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    sub-int/2addr v7, v8

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    :cond_3
    iget-boolean v7, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 228
    .line 229
    iget-object v8, v1, Lba/e;->c:Ljava/lang/String;

    .line 230
    .line 231
    const-string v9, "/"

    .line 232
    .line 233
    if-eqz v7, :cond_4

    .line 234
    .line 235
    new-instance v7, Ljava/io/File;

    .line 236
    .line 237
    new-instance v10, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v0, ".rar"

    .line 252
    .line 253
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_4
    new-instance v7, Ljava/io/File;

    .line 265
    .line 266
    invoke-static {v8, v9, v0}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :goto_2
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_5

    .line 278
    .line 279
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_5

    .line 284
    .line 285
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    invoke-interface {v0, v8}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    :cond_5
    :try_start_3
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 301
    .line 302
    .line 303
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 304
    :try_start_4
    new-instance v8, Ljava/io/FileOutputStream;

    .line 305
    .line 306
    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 307
    .line 308
    .line 309
    :try_start_5
    new-instance v10, Ljava/io/BufferedInputStream;

    .line 310
    .line 311
    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 312
    .line 313
    .line 314
    :try_start_6
    new-instance v11, Ljava/io/BufferedOutputStream;

    .line 315
    .line 316
    invoke-direct {v11, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 317
    .line 318
    .line 319
    :try_start_7
    new-instance v3, Lcom/yunpan/appmanage/bean/DownProgressBean;

    .line 320
    .line 321
    invoke-direct {v3}, Lcom/yunpan/appmanage/bean/DownProgressBean;-><init>()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    .line 325
    .line 326
    .line 327
    move-result-wide v12

    .line 328
    iput-wide v12, v3, Lcom/yunpan/appmanage/bean/DownProgressBean;->fileSize:J

    .line 329
    .line 330
    const/high16 v4, 0x80000

    .line 331
    .line 332
    new-array v4, v4, [B

    .line 333
    .line 334
    const-wide/16 v12, 0x0

    .line 335
    .line 336
    const/4 v14, 0x0

    .line 337
    :goto_3
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    .line 338
    .line 339
    .line 340
    move-result v15
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 341
    const/4 v6, -0x1

    .line 342
    if-eq v15, v6, :cond_8

    .line 343
    .line 344
    move-object/from16 v16, v7

    .line 345
    .line 346
    int-to-long v6, v15

    .line 347
    add-long/2addr v12, v6

    .line 348
    const/4 v6, 0x0

    .line 349
    :try_start_8
    invoke-virtual {v11, v4, v6, v15}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 353
    .line 354
    .line 355
    add-int/lit8 v14, v14, 0x1

    .line 356
    .line 357
    const/4 v7, 0x2

    .line 358
    if-le v14, v7, :cond_6

    .line 359
    .line 360
    iput-wide v12, v3, Lcom/yunpan/appmanage/bean/DownProgressBean;->downSize:J

    .line 361
    .line 362
    long-to-double v14, v12

    .line 363
    iget-wide v6, v3, Lcom/yunpan/appmanage/bean/DownProgressBean;->fileSize:J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 364
    .line 365
    long-to-double v6, v6

    .line 366
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    .line 367
    .line 368
    .line 369
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 370
    .line 371
    .line 372
    div-double/2addr v14, v6

    .line 373
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 374
    .line 375
    mul-double v14, v14, v6

    .line 376
    .line 377
    :try_start_9
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    .line 378
    .line 379
    .line 380
    move-result-wide v6

    .line 381
    double-to-int v6, v6

    .line 382
    iput v6, v3, Lcom/yunpan/appmanage/bean/DownProgressBean;->bfb:I

    .line 383
    .line 384
    invoke-virtual {v2, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    const/4 v14, 0x0

    .line 388
    goto :goto_5

    .line 389
    :catch_2
    :goto_4
    move-object v3, v10

    .line 390
    goto/16 :goto_7

    .line 391
    .line 392
    :cond_6
    :goto_5
    iget-boolean v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->isStopDown:Z

    .line 393
    .line 394
    if-eqz v6, :cond_7

    .line 395
    .line 396
    invoke-static {v10}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 397
    .line 398
    .line 399
    invoke-static {v11}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 400
    .line 401
    .line 402
    invoke-static {v8}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 403
    .line 404
    .line 405
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 406
    .line 407
    .line 408
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 409
    .line 410
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 411
    .line 412
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    .line 414
    .line 415
    invoke-static/range {v16 .. v16}, Lcom/yunpan/appmanage/util/k;->e(Ljava/io/File;)V

    .line 416
    .line 417
    .line 418
    new-instance v3, Ljava/lang/Exception;

    .line 419
    .line 420
    const-string v4, "\u4e3b\u52a8\u505c\u6b62\u4e0b\u8f7d"

    .line 421
    .line 422
    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2, v3}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_a

    .line 429
    .line 430
    :cond_7
    move-object/from16 v7, v16

    .line 431
    .line 432
    const/4 v6, 0x0

    .line 433
    goto :goto_3

    .line 434
    :cond_8
    move-object/from16 v16, v7

    .line 435
    .line 436
    invoke-static {v10}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 437
    .line 438
    .line 439
    invoke-static {v11}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 440
    .line 441
    .line 442
    invoke-static {v8}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 443
    .line 444
    .line 445
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 461
    .line 462
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 463
    .line 464
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 465
    .line 466
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    const-string v5, "/cache/"

    .line 470
    .line 471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 479
    .line 480
    .line 481
    move-result v3

    .line 482
    if-nez v3, :cond_9

    .line 483
    .line 484
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    invoke-virtual {v3, v4}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 493
    .line 494
    .line 495
    goto :goto_8

    .line 496
    :catch_3
    move-object/from16 v16, v7

    .line 497
    .line 498
    goto :goto_4

    .line 499
    :catch_4
    move-object/from16 v16, v7

    .line 500
    .line 501
    move-object v11, v3

    .line 502
    goto :goto_4

    .line 503
    :catch_5
    move-object/from16 v16, v7

    .line 504
    .line 505
    move-object v11, v3

    .line 506
    goto :goto_7

    .line 507
    :catch_6
    move-object/from16 v16, v7

    .line 508
    .line 509
    move-object v8, v3

    .line 510
    :goto_6
    move-object v11, v8

    .line 511
    goto :goto_7

    .line 512
    :catch_7
    move-object/from16 v16, v7

    .line 513
    .line 514
    move-object v0, v3

    .line 515
    move-object v8, v0

    .line 516
    goto :goto_6

    .line 517
    :goto_7
    invoke-static {v3, v11, v8, v0}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 518
    .line 519
    .line 520
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 521
    .line 522
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 523
    .line 524
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    invoke-static/range {v16 .. v16}, Lcom/yunpan/appmanage/util/k;->e(Ljava/io/File;)V

    .line 528
    .line 529
    .line 530
    :cond_9
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 531
    .line 532
    .line 533
    goto :goto_a

    .line 534
    :cond_a
    :goto_9
    const-string v0, "\u8bf7\u6c42\u51fa\u95193"

    .line 535
    .line 536
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 537
    .line 538
    .line 539
    :goto_a
    return-void
.end method

.method private final d(Lmc/b;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lba/e;->d:Lx9/n5;

    .line 2
    .line 3
    iget-object v1, p0, Lba/e;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 4
    .line 5
    const-string v2, "fileDesc"

    .line 6
    .line 7
    const-string v3, "folderDesc"

    .line 8
    .line 9
    const-string v4, "https://api.feejii.com/app/file/edit?"

    .line 10
    .line 11
    const-string v5, "https://api.feejii.com/app/file/folder/edit?"

    .line 12
    .line 13
    const-string v6, "uuid="

    .line 14
    .line 15
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v7

    .line 19
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    invoke-static {v7}, Ls1/g;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v6, v0, Lx9/n5;->l:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v6, "&devType=6&devCode="

    .line 38
    .line 39
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v6, v0, Lx9/n5;->l:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v6, "&devModel=chrome&devVersion=140&appVersion=&timestamp="

    .line 48
    .line 49
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v6, "&appToken="

    .line 56
    .line 57
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v0, v0, Lx9/n5;->k:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, "&extra=2"

    .line 66
    .line 67
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v6, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    .line 76
    :try_start_1
    iget-object v7, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 77
    .line 78
    iget-boolean v8, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 79
    .line 80
    if-eqz v8, :cond_0

    .line 81
    .line 82
    move-object v8, v3

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    move-object v8, v2

    .line 85
    :goto_0
    invoke-virtual {v7, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v7}, Lz7/p;->i()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    :catch_0
    :try_start_2
    new-instance v7, Lz7/s;

    .line 94
    .line 95
    invoke-direct {v7}, Lz7/s;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-boolean v8, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 99
    .line 100
    iget-object v9, p0, Lba/e;->c:Ljava/lang/String;

    .line 101
    .line 102
    if-eqz v8, :cond_1

    .line 103
    .line 104
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v2, "folderId"

    .line 117
    .line 118
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v7, v2, v4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v2, "folderName"

    .line 124
    .line 125
    invoke-virtual {v7, v2, v9}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v3, v6}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catch_1
    move-exception v0

    .line 133
    goto :goto_2

    .line 134
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v3, "fileId"

    .line 147
    .line 148
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v7, v3, v4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string v3, "fileName"

    .line 154
    .line 155
    invoke-virtual {v7, v3, v9}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v2, v6}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :goto_1
    invoke-virtual {v7}, Lz7/p;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-static {v0, v2}, Ls1/g;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const-string v2, "code"

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    const/16 v3, 0xc8

    .line 188
    .line 189
    if-ne v2, v3, :cond_2

    .line 190
    .line 191
    iput-object v9, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    .line 198
    .line 199
    const-string v2, "msg"

    .line 200
    .line 201
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 213
    :goto_2
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    :goto_3
    return-void
.end method

.method private final e(Lmc/b;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lba/e;->d:Lx9/n5;

    .line 2
    .line 3
    iget-object v1, p0, Lba/e;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 4
    .line 5
    const-string v2, "https://api.feejii.com/app/file/edit?"

    .line 6
    .line 7
    const-string v3, "https://api.feejii.com/app/file/folder/edit?"

    .line 8
    .line 9
    const-string v4, "uuid="

    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-static {v5}, Ls1/g;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v4, v0, Lx9/n5;->l:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, "&devType=6&devCode="

    .line 34
    .line 35
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v4, v0, Lx9/n5;->l:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v4, "&devModel=chrome&devVersion=140&appVersion=&timestamp="

    .line 44
    .line 45
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, "&appToken="

    .line 52
    .line 53
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Lx9/n5;->k:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, "&extra=2"

    .line 62
    .line 63
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v4, Lz7/s;

    .line 71
    .line 72
    invoke-direct {v4}, Lz7/s;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-boolean v5, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    iget-object v6, p0, Lba/e;->c:Ljava/lang/String;

    .line 78
    .line 79
    const-string v7, "fileDesc"

    .line 80
    .line 81
    const-string v8, "folderDesc"

    .line 82
    .line 83
    if-eqz v5, :cond_0

    .line 84
    .line 85
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v2, "folderId"

    .line 98
    .line 99
    iget-object v3, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v4, v2, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v2, "folderName"

    .line 105
    .line 106
    iget-object v3, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v4, v2, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v8, v6}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    goto :goto_1

    .line 117
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v2, "fileId"

    .line 130
    .line 131
    iget-object v3, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v4, v2, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v2, "fileName"

    .line 137
    .line 138
    iget-object v3, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v4, v2, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v7, v6}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :goto_0
    invoke-virtual {v4}, Lz7/p;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-static {v0, v2}, Ls1/g;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const-string v2, "code"

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    const/16 v3, 0xc8

    .line 173
    .line 174
    if-ne v2, v3, :cond_2

    .line 175
    .line 176
    iget-object v0, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 177
    .line 178
    iget-boolean v1, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 179
    .line 180
    if-eqz v1, :cond_1

    .line 181
    .line 182
    move-object v7, v8

    .line 183
    :cond_1
    invoke-virtual {v0, v7, v6}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    .line 191
    .line 192
    const-string v2, "msg"

    .line 193
    .line 194
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    :goto_1
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    :goto_2
    return-void
.end method

.method private final f(Lmc/b;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lba/e;->d:Lx9/n5;

    .line 2
    .line 3
    iget-object v1, p0, Lba/e;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 4
    .line 5
    iget-object v2, p0, Lba/e;->c:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "/"

    .line 8
    .line 9
    const-string v4, "\u91cd\u547d\u540d\u5931\u8d25"

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    :try_start_0
    iget-object v0, v0, Lx9/n5;->x:Ldh/e;

    .line 14
    .line 15
    iget-object v6, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v6, v2}, Ldh/e;->v(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iput-object v2, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v6, Ljava/io/File;

    .line 32
    .line 33
    iget-object v7, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-boolean v2, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object v3, v5

    .line 57
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    move-object v4, v5

    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move-object v4, v0

    .line 86
    :goto_1
    const-string v0, "Connection reset"

    .line 87
    .line 88
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    const-string v4, "\u8fde\u63a5\u4e2d\u65ad,\u8bf7\u91cd\u65b0\u9009\u4e2d\u7f51\u76d8"

    .line 95
    .line 96
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    invoke-static {v4, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 107
    .line 108
    .line 109
    :goto_3
    return-void
.end method

.method private final h(Lmc/b;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lba/e;->d:Lx9/n5;

    .line 2
    .line 3
    iget-object v1, p0, Lba/e;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 4
    .line 5
    iget-object v2, p0, Lba/e;->c:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "/"

    .line 8
    .line 9
    const-string v4, "\u91cd\u547d\u540d\u5931\u8d25"

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    :try_start_0
    iget-object v0, v0, Lx9/n5;->A:Ldh/j;

    .line 14
    .line 15
    iget-object v6, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v6, v2}, Ldh/e;->v(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iput-object v2, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v6, Ljava/io/File;

    .line 32
    .line 33
    iget-object v7, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-boolean v2, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object v3, v5

    .line 57
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    move-object v4, v5

    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move-object v4, v0

    .line 86
    :goto_1
    const-string v0, "Connection reset"

    .line 87
    .line 88
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    const-string v4, "\u8fde\u63a5\u4e2d\u65ad,\u8bf7\u91cd\u65b0\u9009\u4e2d\u7f51\u76d8"

    .line 95
    .line 96
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    invoke-static {v4, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 107
    .line 108
    .line 109
    :goto_3
    return-void
.end method

.method private final i(Lmc/b;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "\\"

    .line 4
    .line 5
    iget-object v2, v1, Lba/e;->d:Lx9/n5;

    .line 6
    .line 7
    iget-boolean v3, v2, Lx9/n5;->u:Z

    .line 8
    .line 9
    iget-object v4, v1, Lba/e;->c:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v1, Lba/e;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 12
    .line 13
    const-string v6, "//"

    .line 14
    .line 15
    const-string v7, "/"

    .line 16
    .line 17
    const-string v8, ""

    .line 18
    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v3, Ljava/io/File;

    .line 27
    .line 28
    iget-object v9, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :try_start_0
    new-instance v3, Lce/t0;

    .line 55
    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lx9/n5;->b()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v9, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-direct {v3, v6}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance v6, Lce/t0;

    .line 81
    .line 82
    new-instance v9, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Lx9/n5;->b()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-direct {v6, v2}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v6}, Lce/t0;->D(Lce/t0;)V

    .line 105
    .line 106
    .line 107
    iput-object v4, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 108
    .line 109
    iput-object v0, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 110
    .line 111
    iget-boolean v0, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 112
    .line 113
    if-eqz v0, :cond_b

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    iget-object v2, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iput-object v0, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    goto/16 :goto_8

    .line 135
    .line 136
    :catch_0
    move-exception v0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-static {v0, v2, v8}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v2, "system cannot find the file"

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_1

    .line 153
    .line 154
    const-string v0, "\u65e0\u6743\u9650\u67e5\u770b\u6b64\u76ee\u5f55"

    .line 155
    .line 156
    :cond_0
    :goto_0
    move-object v8, v0

    .line 157
    goto :goto_1

    .line 158
    :cond_1
    const-string v2, "The parameter is incorrect"

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_0

    .line 165
    .line 166
    const-string v0, "\u5df2\u5b58\u5728\u76f8\u540c\u540d\u79f0"

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_b

    .line 174
    .line 175
    const-string v8, "\u8fde\u63a5\u5931\u8d25"

    .line 176
    .line 177
    goto/16 :goto_8

    .line 178
    .line 179
    :cond_2
    invoke-static {}, Lcom/hierynomus/smbj/SmbConfig;->builder()Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    const/4 v9, 0x1

    .line 184
    invoke-virtual {v3, v9}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withMultiProtocolNegotiate(Z)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 189
    .line 190
    const-wide/16 v11, 0x10

    .line 191
    .line 192
    invoke-virtual {v3, v11, v12, v10}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v3, v11, v12, v10}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withSoTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v3}, Lcom/hierynomus/smbj/SmbConfig$Builder;->build()Lcom/hierynomus/smbj/SmbConfig;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    new-instance v10, Lcom/hierynomus/smbj/SMBClient;

    .line 205
    .line 206
    invoke-direct {v10, v3}, Lcom/hierynomus/smbj/SMBClient;-><init>(Lcom/hierynomus/smbj/SmbConfig;)V

    .line 207
    .line 208
    .line 209
    const/4 v3, 0x0

    .line 210
    :try_start_1
    iget-object v11, v2, Lx9/n5;->c:Ljava/lang/String;

    .line 211
    .line 212
    iget v12, v2, Lx9/n5;->d:I

    .line 213
    .line 214
    invoke-virtual {v10, v11, v12}, Lcom/hierynomus/smbj/SMBClient;->connect(Ljava/lang/String;I)Lcom/hierynomus/smbj/connection/Connection;

    .line 215
    .line 216
    .line 217
    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 218
    :try_start_2
    iget-object v12, v2, Lx9/n5;->e:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    if-eqz v12, :cond_3

    .line 225
    .line 226
    invoke-static {}, Lcom/hierynomus/smbj/auth/AuthenticationContext;->guest()Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    goto :goto_2

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    move-object v2, v3

    .line 233
    goto/16 :goto_a

    .line 234
    .line 235
    :catch_1
    move-exception v0

    .line 236
    move-object v2, v3

    .line 237
    goto/16 :goto_5

    .line 238
    .line 239
    :cond_3
    new-instance v12, Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 240
    .line 241
    iget-object v13, v2, Lx9/n5;->e:Ljava/lang/String;

    .line 242
    .line 243
    iget-object v14, v2, Lx9/n5;->f:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    .line 246
    .line 247
    .line 248
    move-result-object v14

    .line 249
    iget-object v2, v2, Lx9/n5;->v:Ljava/lang/String;

    .line 250
    .line 251
    invoke-direct {v12, v13, v14, v2}, Lcom/hierynomus/smbj/auth/AuthenticationContext;-><init>(Ljava/lang/String;[CLjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    move-object v2, v12

    .line 255
    :goto_2
    invoke-virtual {v11, v2}, Lcom/hierynomus/smbj/connection/Connection;->authenticate(Lcom/hierynomus/smbj/auth/AuthenticationContext;)Lcom/hierynomus/smbj/session/Session;

    .line 256
    .line 257
    .line 258
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    :try_start_3
    iget-object v12, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v12, v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 262
    .line 263
    .line 264
    move-result v12

    .line 265
    const/4 v13, -0x1

    .line 266
    if-eq v12, v13, :cond_8

    .line 267
    .line 268
    iget-object v13, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v13, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v13

    .line 274
    iget-object v14, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v14, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v12

    .line 280
    invoke-virtual {v2, v13}, Lcom/hierynomus/smbj/session/Session;->connectShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/Share;

    .line 281
    .line 282
    .line 283
    move-result-object v14

    .line 284
    check-cast v14, Lcom/hierynomus/smbj/share/DiskShare;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 285
    .line 286
    :try_start_4
    new-instance v3, Ljava/util/HashSet;

    .line 287
    .line 288
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 289
    .line 290
    .line 291
    sget-object v15, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_ALL:Lcom/hierynomus/msdtyp/AccessMask;

    .line 292
    .line 293
    invoke-virtual {v3, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    new-instance v15, Ljava/util/HashSet;

    .line 297
    .line 298
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 299
    .line 300
    .line 301
    iget-boolean v9, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 302
    .line 303
    if-eqz v9, :cond_4

    .line 304
    .line 305
    sget-object v9, Lcom/hierynomus/msfscc/FileAttributes;->FILE_ATTRIBUTE_DIRECTORY:Lcom/hierynomus/msfscc/FileAttributes;

    .line 306
    .line 307
    invoke-virtual {v15, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    goto :goto_3

    .line 311
    :catchall_1
    move-exception v0

    .line 312
    move-object v3, v14

    .line 313
    goto/16 :goto_a

    .line 314
    .line 315
    :catch_2
    move-exception v0

    .line 316
    move-object v3, v14

    .line 317
    goto/16 :goto_5

    .line 318
    .line 319
    :cond_4
    sget-object v9, Lcom/hierynomus/msfscc/FileAttributes;->FILE_ATTRIBUTE_NORMAL:Lcom/hierynomus/msfscc/FileAttributes;

    .line 320
    .line 321
    invoke-virtual {v15, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    :goto_3
    new-instance v9, Ljava/util/HashSet;

    .line 325
    .line 326
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 327
    .line 328
    .line 329
    sget-object v15, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->FILE_SHARE_WRITE:Lcom/hierynomus/mssmb2/SMB2ShareAccess;

    .line 330
    .line 331
    invoke-virtual {v9, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    sget-object v15, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->FILE_SHARE_READ:Lcom/hierynomus/mssmb2/SMB2ShareAccess;

    .line 335
    .line 336
    invoke-virtual {v9, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    new-instance v9, Ljava/util/HashSet;

    .line 340
    .line 341
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 342
    .line 343
    .line 344
    sget-object v15, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_RANDOM_ACCESS:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 345
    .line 346
    invoke-virtual {v9, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    new-instance v9, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    new-instance v15, Ljava/io/File;

    .line 355
    .line 356
    invoke-direct {v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v15}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v15

    .line 363
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v9

    .line 376
    invoke-virtual {v9, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    iget-boolean v9, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 381
    .line 382
    if-eqz v9, :cond_5

    .line 383
    .line 384
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 385
    .line 386
    .line 387
    move-result v9

    .line 388
    const/4 v15, 0x1

    .line 389
    sub-int/2addr v9, v15

    .line 390
    const/4 v15, 0x0

    .line 391
    invoke-virtual {v12, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v12

    .line 395
    :cond_5
    const/4 v9, 0x1

    .line 396
    invoke-virtual {v12, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v12

    .line 400
    invoke-virtual {v12, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v16

    .line 404
    sget-object v19, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->ALL:Ljava/util/Set;

    .line 405
    .line 406
    sget-object v20, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 407
    .line 408
    const/16 v21, 0x0

    .line 409
    .line 410
    const/16 v18, 0x0

    .line 411
    .line 412
    move-object v15, v14

    .line 413
    move-object/from16 v17, v3

    .line 414
    .line 415
    invoke-virtual/range {v15 .. v21}, Lcom/hierynomus/smbj/share/DiskShare;->open(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/DiskEntry;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    const/4 v9, 0x1

    .line 420
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v9

    .line 424
    invoke-virtual {v9, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v3, v0}, Lcom/hierynomus/smbj/share/DiskEntry;->rename(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3}, Lcom/hierynomus/smbj/share/Open;->close()V

    .line 432
    .line 433
    .line 434
    iput-object v4, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 435
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    iput-object v0, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 452
    .line 453
    iget-boolean v0, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 454
    .line 455
    if-eqz v0, :cond_6

    .line 456
    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    iget-object v3, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 463
    .line 464
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    iput-object v0, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 475
    .line 476
    :cond_6
    :try_start_5
    invoke-virtual {v14}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 477
    .line 478
    .line 479
    :catch_3
    :try_start_6
    invoke-virtual {v2}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 480
    .line 481
    .line 482
    :catch_4
    :try_start_7
    invoke-virtual {v11}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 483
    .line 484
    .line 485
    :catch_5
    :cond_7
    :goto_4
    :try_start_8
    invoke-virtual {v10}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 486
    .line 487
    .line 488
    goto :goto_8

    .line 489
    :catch_6
    nop

    .line 490
    goto :goto_8

    .line 491
    :catchall_2
    move-exception v0

    .line 492
    goto :goto_a

    .line 493
    :catch_7
    move-exception v0

    .line 494
    goto :goto_5

    .line 495
    :cond_8
    :try_start_9
    new-instance v0, Ljava/lang/Exception;

    .line 496
    .line 497
    const-string v4, "\u5171\u4eab\u540d\u9519\u8bef"

    .line 498
    .line 499
    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 503
    :catchall_3
    move-exception v0

    .line 504
    move-object v2, v3

    .line 505
    move-object v11, v2

    .line 506
    goto :goto_a

    .line 507
    :catch_8
    move-exception v0

    .line 508
    move-object v2, v3

    .line 509
    move-object v11, v2

    .line 510
    :goto_5
    :try_start_a
    invoke-static {v0}, Lqa/f;->i(Ljava/lang/Exception;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 514
    if-eqz v3, :cond_9

    .line 515
    .line 516
    :try_start_b
    invoke-virtual {v3}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 517
    .line 518
    .line 519
    goto :goto_6

    .line 520
    :catch_9
    nop

    .line 521
    :cond_9
    :goto_6
    if-eqz v2, :cond_a

    .line 522
    .line 523
    :try_start_c
    invoke-virtual {v2}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 524
    .line 525
    .line 526
    goto :goto_7

    .line 527
    :catch_a
    nop

    .line 528
    :cond_a
    :goto_7
    if-eqz v11, :cond_7

    .line 529
    .line 530
    :try_start_d
    invoke-virtual {v11}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 531
    .line 532
    .line 533
    goto :goto_4

    .line 534
    :cond_b
    :goto_8
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    if-eqz v0, :cond_c

    .line 539
    .line 540
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 541
    .line 542
    .line 543
    goto :goto_9

    .line 544
    :cond_c
    move-object/from16 v2, p1

    .line 545
    .line 546
    invoke-static {v8, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 547
    .line 548
    .line 549
    :goto_9
    return-void

    .line 550
    :goto_a
    if-eqz v3, :cond_d

    .line 551
    .line 552
    :try_start_e
    invoke-virtual {v3}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 553
    .line 554
    .line 555
    goto :goto_b

    .line 556
    :catch_b
    nop

    .line 557
    :cond_d
    :goto_b
    if-eqz v2, :cond_e

    .line 558
    .line 559
    :try_start_f
    invoke-virtual {v2}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 560
    .line 561
    .line 562
    goto :goto_c

    .line 563
    :catch_c
    nop

    .line 564
    :cond_e
    :goto_c
    if-eqz v11, :cond_f

    .line 565
    .line 566
    :try_start_10
    invoke-virtual {v11}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    .line 567
    .line 568
    .line 569
    :catch_d
    :cond_f
    :try_start_11
    invoke-virtual {v10}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    .line 570
    .line 571
    .line 572
    :catch_e
    goto :goto_e

    .line 573
    :goto_d
    throw v0

    .line 574
    :goto_e
    goto :goto_d
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v8, ".rar"

    .line 6
    .line 7
    const-string v0, "zh-CN,zh;q=0.9,en;q=0.8"

    .line 8
    .line 9
    const-string v10, "Accept-Language"

    .line 10
    .line 11
    const-string v11, "referer"

    .line 12
    .line 13
    const-string v12, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76"

    .line 14
    .line 15
    const-string v13, "User-Agent"

    .line 16
    .line 17
    const-string v15, "\u8bf7\u6c42\u51fa\u9519"

    .line 18
    .line 19
    const-string v5, "/"

    .line 20
    .line 21
    iget-object v14, v1, Lba/e;->d:Lx9/n5;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    const-string v4, ""

    .line 25
    .line 26
    iget-object v7, v1, Lba/e;->c:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v9, v1, Lba/e;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 29
    .line 30
    iget v6, v1, Lba/e;->a:I

    .line 31
    .line 32
    packed-switch v6, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    iget-object v0, v1, Lba/e;->d:Lx9/n5;

    .line 36
    .line 37
    const-wide/16 v22, 0x10

    .line 38
    .line 39
    const-wide/16 v24, 0x10

    .line 40
    .line 41
    const-wide/16 v20, 0x10

    .line 42
    .line 43
    move-object/from16 v19, v0

    .line 44
    .line 45
    :try_start_0
    invoke-static/range {v19 .. v25}, Lqa/g;->f(Lx9/n5;JJJ)Lr9/a;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    iget-object v8, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v0, v0, Lx9/n5;->c:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-boolean v0, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v0, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    sub-int/2addr v8, v3

    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    const/4 v10, 0x0

    .line 89
    invoke-virtual {v8, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget-object v3, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v6, v3, v0}, Lr9/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iput-object v7, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 117
    .line 118
    iput-object v0, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 119
    .line 120
    iget-boolean v0, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 121
    .line 122
    if-eqz v0, :cond_2

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v3, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iput-object v0, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v0, v3}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_2

    .line 158
    .line 159
    const-string v4, "\u91cd\u547d\u540d\u5931\u8d25"

    .line 160
    .line 161
    :cond_2
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_3

    .line 166
    .line 167
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_3
    invoke-static {v4, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 172
    .line 173
    .line 174
    :goto_3
    return-void

    .line 175
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lba/e;->i(Lmc/b;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lba/e;->h(Lmc/b;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lba/e;->f(Lmc/b;)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lba/e;->e(Lmc/b;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lba/e;->d(Lmc/b;)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lba/e;->c(Lmc/b;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lba/e;->b(Lmc/b;)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :pswitch_7
    const/4 v6, 0x0

    .line 204
    iput-boolean v6, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->isStopDown:Z

    .line 205
    .line 206
    iput-object v4, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrl:Ljava/lang/String;

    .line 207
    .line 208
    :try_start_1
    invoke-static {v14, v9}, Lqf/c;->x(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;)V

    .line 209
    .line 210
    .line 211
    iget-object v4, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrl:Ljava/lang/String;

    .line 212
    .line 213
    const-string v6, "http"

    .line 214
    .line 215
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-nez v4, :cond_4

    .line 220
    .line 221
    new-instance v4, Ljava/lang/Exception;

    .line 222
    .line 223
    const-string v6, "\u83b7\u53d6\u4e0b\u8f7d\u5730\u5740\u5931\u8d25"

    .line 224
    .line 225
    invoke-direct {v4, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v4}, Lmc/b;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :catch_1
    move-exception v0

    .line 233
    goto/16 :goto_f

    .line 234
    .line 235
    :cond_4
    :goto_4
    iget-object v4, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrl:Ljava/lang/String;

    .line 236
    .line 237
    :try_start_2
    new-instance v6, Ll9/a;

    .line 238
    .line 239
    invoke-direct {v6, v4}, Ll9/a;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object v4, v6, Lm9/e;->i:Lk9/a;

    .line 243
    .line 244
    invoke-virtual {v4, v13, v12}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object v12, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrlReferer:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v4, v11, v12}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4, v10, v0}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6}, Lm9/e;->a()Lokhttp3/Response;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-eqz v4, :cond_6

    .line 264
    .line 265
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 266
    .line 267
    .line 268
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 269
    if-eqz v4, :cond_5

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    .line 273
    .line 274
    invoke-direct {v0, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 278
    :catch_2
    nop

    .line 279
    goto :goto_5

    .line 280
    :catch_3
    nop

    .line 281
    const/4 v4, 0x0

    .line 282
    goto :goto_5

    .line 283
    :cond_6
    :try_start_4
    new-instance v0, Ljava/lang/Exception;

    .line 284
    .line 285
    invoke-direct {v0, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 289
    :goto_5
    const/4 v0, 0x0

    .line 290
    :goto_6
    if-eqz v0, :cond_f

    .line 291
    .line 292
    if-nez v4, :cond_7

    .line 293
    .line 294
    goto/16 :goto_e

    .line 295
    .line 296
    :cond_7
    iget-object v0, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 299
    .line 300
    .line 301
    move-result v6

    .line 302
    const/16 v10, 0x50

    .line 303
    .line 304
    if-le v6, v10, :cond_8

    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 307
    .line 308
    .line 309
    move-result v6

    .line 310
    sub-int/2addr v6, v10

    .line 311
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 312
    .line 313
    .line 314
    move-result v10

    .line 315
    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    :cond_8
    iget-boolean v6, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 320
    .line 321
    if-eqz v6, :cond_9

    .line 322
    .line 323
    new-instance v6, Ljava/io/File;

    .line 324
    .line 325
    new-instance v10, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_9
    new-instance v6, Ljava/io/File;

    .line 351
    .line 352
    invoke-static {v7, v5, v0}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :goto_7
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-eqz v0, :cond_a

    .line 364
    .line 365
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-eqz v0, :cond_a

    .line 370
    .line 371
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v7

    .line 383
    invoke-interface {v0, v7}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    :cond_a
    :try_start_5
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 387
    .line 388
    .line 389
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 390
    :try_start_6
    new-instance v7, Ljava/io/FileOutputStream;

    .line 391
    .line 392
    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 393
    .line 394
    .line 395
    :try_start_7
    new-instance v8, Ljava/io/BufferedInputStream;

    .line 396
    .line 397
    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 398
    .line 399
    .line 400
    :try_start_8
    new-instance v10, Ljava/io/BufferedOutputStream;

    .line 401
    .line 402
    invoke-direct {v10, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 403
    .line 404
    .line 405
    :try_start_9
    new-instance v11, Lcom/yunpan/appmanage/bean/DownProgressBean;

    .line 406
    .line 407
    invoke-direct {v11}, Lcom/yunpan/appmanage/bean/DownProgressBean;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    .line 411
    .line 412
    .line 413
    move-result-wide v12

    .line 414
    iput-wide v12, v11, Lcom/yunpan/appmanage/bean/DownProgressBean;->fileSize:J

    .line 415
    .line 416
    const/high16 v4, 0x80000

    .line 417
    .line 418
    new-array v4, v4, [B

    .line 419
    .line 420
    const/4 v12, 0x0

    .line 421
    const-wide/16 v16, 0x0

    .line 422
    .line 423
    :goto_8
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    .line 424
    .line 425
    .line 426
    move-result v13

    .line 427
    const/4 v14, -0x1

    .line 428
    if-eq v13, v14, :cond_d

    .line 429
    .line 430
    int-to-long v14, v13

    .line 431
    add-long v14, v16, v14

    .line 432
    .line 433
    const/4 v3, 0x0

    .line 434
    invoke-virtual {v10, v4, v3, v13}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->flush()V

    .line 438
    .line 439
    .line 440
    const/4 v3, 0x1

    .line 441
    add-int/2addr v12, v3

    .line 442
    const/4 v3, 0x2

    .line 443
    if-le v12, v3, :cond_b

    .line 444
    .line 445
    iput-wide v14, v11, Lcom/yunpan/appmanage/bean/DownProgressBean;->downSize:J

    .line 446
    .line 447
    long-to-double v12, v14

    .line 448
    move-object/from16 v18, v4

    .line 449
    .line 450
    iget-wide v3, v11, Lcom/yunpan/appmanage/bean/DownProgressBean;->fileSize:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 451
    .line 452
    long-to-double v3, v3

    .line 453
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    .line 454
    .line 455
    .line 456
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 457
    .line 458
    .line 459
    div-double/2addr v12, v3

    .line 460
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 461
    .line 462
    mul-double v12, v12, v3

    .line 463
    .line 464
    :try_start_a
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    .line 465
    .line 466
    .line 467
    move-result-wide v3

    .line 468
    double-to-int v3, v3

    .line 469
    iput v3, v11, Lcom/yunpan/appmanage/bean/DownProgressBean;->bfb:I

    .line 470
    .line 471
    invoke-virtual {v2, v11}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    const/4 v12, 0x0

    .line 475
    goto :goto_9

    .line 476
    :catch_4
    move-object v14, v8

    .line 477
    goto/16 :goto_c

    .line 478
    .line 479
    :cond_b
    move-object/from16 v18, v4

    .line 480
    .line 481
    :goto_9
    iget-boolean v3, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->isStopDown:Z

    .line 482
    .line 483
    if-eqz v3, :cond_c

    .line 484
    .line 485
    invoke-static {v8}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 486
    .line 487
    .line 488
    invoke-static {v10}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 489
    .line 490
    .line 491
    invoke-static {v7}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 492
    .line 493
    .line 494
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 495
    .line 496
    .line 497
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 498
    .line 499
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    invoke-static {v6}, Lcom/yunpan/appmanage/util/k;->e(Ljava/io/File;)V

    .line 503
    .line 504
    .line 505
    new-instance v3, Ljava/lang/Exception;

    .line 506
    .line 507
    const-string v4, "\u4e3b\u52a8\u505c\u6b62\u4e0b\u8f7d"

    .line 508
    .line 509
    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v2, v3}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 513
    .line 514
    .line 515
    goto :goto_10

    .line 516
    :cond_c
    move-wide/from16 v16, v14

    .line 517
    .line 518
    move-object/from16 v4, v18

    .line 519
    .line 520
    const/4 v3, 0x1

    .line 521
    goto :goto_8

    .line 522
    :cond_d
    invoke-static {v8}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 523
    .line 524
    .line 525
    invoke-static {v10}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 526
    .line 527
    .line 528
    invoke-static {v7}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 529
    .line 530
    .line 531
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    .line 539
    .line 540
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 547
    .line 548
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 549
    .line 550
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    const-string v5, "/cache/"

    .line 554
    .line 555
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v4

    .line 562
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    if-nez v3, :cond_e

    .line 567
    .line 568
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    invoke-virtual {v3, v4}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 577
    .line 578
    .line 579
    goto :goto_d

    .line 580
    :catch_5
    move-object v14, v8

    .line 581
    const/4 v10, 0x0

    .line 582
    goto :goto_c

    .line 583
    :catch_6
    :goto_a
    const/4 v10, 0x0

    .line 584
    const/4 v14, 0x0

    .line 585
    goto :goto_c

    .line 586
    :catch_7
    :goto_b
    const/4 v7, 0x0

    .line 587
    goto :goto_a

    .line 588
    :catch_8
    const/4 v0, 0x0

    .line 589
    goto :goto_b

    .line 590
    :goto_c
    invoke-static {v14, v10, v7, v0}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 591
    .line 592
    .line 593
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 594
    .line 595
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    .line 597
    .line 598
    invoke-static {v6}, Lcom/yunpan/appmanage/util/k;->e(Ljava/io/File;)V

    .line 599
    .line 600
    .line 601
    :cond_e
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 602
    .line 603
    .line 604
    goto :goto_10

    .line 605
    :cond_f
    :goto_e
    invoke-static {v15, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 606
    .line 607
    .line 608
    goto :goto_10

    .line 609
    :goto_f
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 610
    .line 611
    .line 612
    :goto_10
    return-void

    .line 613
    :pswitch_8
    const-string v0, "UTF-8"

    .line 614
    .line 615
    const-string v3, "task=18&folder_id="

    .line 616
    .line 617
    iget-object v5, v14, Lx9/n5;->c:Ljava/lang/String;

    .line 618
    .line 619
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 620
    .line 621
    .line 622
    move-result v5

    .line 623
    if-eqz v5, :cond_10

    .line 624
    .line 625
    const-string v5, "https://pc.woozooo.com"

    .line 626
    .line 627
    iput-object v5, v14, Lx9/n5;->c:Ljava/lang/String;

    .line 628
    .line 629
    :cond_10
    :try_start_b
    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 633
    goto :goto_11

    .line 634
    :catch_9
    nop

    .line 635
    move-object v5, v7

    .line 636
    :goto_11
    new-instance v6, Ljava/lang/StringBuilder;

    .line 637
    .line 638
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .line 640
    .line 641
    iget-object v8, v14, Lx9/n5;->c:Ljava/lang/String;

    .line 642
    .line 643
    const-string v10, "/doupload.php"

    .line 644
    .line 645
    invoke-static {v8, v10, v6}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v6

    .line 649
    new-instance v8, Ljava/lang/StringBuilder;

    .line 650
    .line 651
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    .line 653
    .line 654
    iget-object v10, v14, Lx9/n5;->c:Ljava/lang/String;

    .line 655
    .line 656
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    const-string v10, "/mydisk.php?item=files&action=index&u="

    .line 660
    .line 661
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    iget-object v10, v14, Lx9/n5;->h:Ljava/lang/String;

    .line 665
    .line 666
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v8

    .line 673
    iget-boolean v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 674
    .line 675
    const-string v11, "info"

    .line 676
    .line 677
    const-string v12, "zt"

    .line 678
    .line 679
    if-eqz v10, :cond_14

    .line 680
    .line 681
    :try_start_c
    new-instance v10, Ljava/lang/StringBuilder;

    .line 682
    .line 683
    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    iget-object v3, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 687
    .line 688
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v3

    .line 695
    iget-object v10, v14, Lx9/n5;->i:Ljava/lang/String;

    .line 696
    .line 697
    invoke-static {v10, v6, v3, v8}, Lnh/b;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v3

    .line 701
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 702
    .line 703
    .line 704
    move-result v10

    .line 705
    if-eqz v10, :cond_11

    .line 706
    .line 707
    goto/16 :goto_16

    .line 708
    .line 709
    :cond_11
    invoke-static {v3}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 710
    .line 711
    .line 712
    move-result-object v3

    .line 713
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 714
    .line 715
    .line 716
    move-result-object v3

    .line 717
    invoke-virtual {v3, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 718
    .line 719
    .line 720
    move-result-object v10

    .line 721
    invoke-virtual {v10}, Lz7/p;->e()I

    .line 722
    .line 723
    .line 724
    move-result v10

    .line 725
    const/4 v13, 0x1

    .line 726
    if-ne v10, v13, :cond_12

    .line 727
    .line 728
    invoke-virtual {v3, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 733
    .line 734
    .line 735
    move-result-object v3

    .line 736
    const-string v10, "des"

    .line 737
    .line 738
    invoke-virtual {v3, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 746
    :try_start_d
    const-string v10, "&lt;"

    .line 747
    .line 748
    const-string v13, "<"

    .line 749
    .line 750
    invoke-virtual {v3, v10, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v10

    .line 754
    const-string v13, "&gt;"

    .line 755
    .line 756
    const-string v1, ">"

    .line 757
    .line 758
    invoke-virtual {v10, v13, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v3

    .line 762
    const-string v1, "&amp;"

    .line 763
    .line 764
    const-string v10, "&"

    .line 765
    .line 766
    invoke-virtual {v3, v1, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    const-string v10, "&quot;"

    .line 771
    .line 772
    const-string v13, "\""

    .line 773
    .line 774
    invoke-virtual {v1, v10, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 778
    goto :goto_13

    .line 779
    :catch_a
    nop

    .line 780
    goto :goto_12

    .line 781
    :catch_b
    nop

    .line 782
    move-object v3, v4

    .line 783
    goto :goto_12

    .line 784
    :cond_12
    move-object v1, v4

    .line 785
    goto :goto_13

    .line 786
    :goto_12
    move-object v1, v3

    .line 787
    :goto_13
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 788
    .line 789
    .line 790
    move-result v3

    .line 791
    if-nez v3, :cond_13

    .line 792
    .line 793
    :try_start_e
    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 797
    :catch_c
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 798
    .line 799
    const-string v3, "task=4&folder_id="

    .line 800
    .line 801
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    iget-object v3, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 805
    .line 806
    const-string v10, "&folder_name="

    .line 807
    .line 808
    const-string v13, "&folder_description="

    .line 809
    .line 810
    invoke-static {v0, v3, v10, v5, v13}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    goto :goto_14

    .line 821
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 822
    .line 823
    const-string v1, "task=46&file_id="

    .line 824
    .line 825
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    iget-object v1, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 829
    .line 830
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    const-string v1, "&file_name="

    .line 834
    .line 835
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    const-string v1, "&type=2"

    .line 842
    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    :goto_14
    iget-object v1, v14, Lx9/n5;->i:Ljava/lang/String;

    .line 851
    .line 852
    invoke-static {v1, v6, v0, v8}, Lnh/b;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 857
    .line 858
    .line 859
    move-result v1

    .line 860
    if-eqz v1, :cond_15

    .line 861
    .line 862
    goto :goto_16

    .line 863
    :cond_15
    :try_start_f
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    invoke-virtual {v0, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 876
    .line 877
    .line 878
    move-result v1

    .line 879
    const/4 v3, 0x1

    .line 880
    if-ne v1, v3, :cond_17

    .line 881
    .line 882
    iput-object v7, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 883
    .line 884
    :cond_16
    move-object v15, v4

    .line 885
    goto :goto_16

    .line 886
    :cond_17
    :try_start_10
    invoke-virtual {v0, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 887
    .line 888
    .line 889
    move-result-object v1

    .line 890
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    .line 894
    goto :goto_15

    .line 895
    :catch_d
    :try_start_11
    const-string v1, "text"

    .line 896
    .line 897
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    .line 905
    goto :goto_15

    .line 906
    :catch_e
    nop

    .line 907
    :goto_15
    if-eqz v4, :cond_18

    .line 908
    .line 909
    :try_start_12
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 910
    .line 911
    .line 912
    move-result v0

    .line 913
    if-nez v0, :cond_18

    .line 914
    .line 915
    const-string v0, "null"

    .line 916
    .line 917
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 918
    .line 919
    .line 920
    move-result v0

    .line 921
    if-eqz v0, :cond_19

    .line 922
    .line 923
    :cond_18
    const-string v4, "\u51fa\u9519"

    .line 924
    .line 925
    :cond_19
    const-string v0, "\u4f1a\u5458\u5df2\u8fc7\u671f"

    .line 926
    .line 927
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 928
    .line 929
    .line 930
    move-result v0

    .line 931
    if-eqz v0, :cond_16

    .line 932
    .line 933
    const-string v0, "\u84dd\u594f\u4e91\uff1a\u9700\u4f1a\u5458\u624d\u80fd\u6539\u6587\u4ef6\u540d  (\u63a8\u8350\u4f7f\u7528123\u7f51\u76d8)"
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    .line 934
    .line 935
    move-object v15, v0

    .line 936
    goto :goto_16

    .line 937
    :catch_f
    const-string v15, "\u4fee\u6539\u51fa\u9519"

    .line 938
    .line 939
    :goto_16
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 940
    .line 941
    .line 942
    move-result v0

    .line 943
    if-eqz v0, :cond_1a

    .line 944
    .line 945
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 946
    .line 947
    .line 948
    goto :goto_17

    .line 949
    :cond_1a
    invoke-static {v15, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 950
    .line 951
    .line 952
    :goto_17
    return-void

    .line 953
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lba/e;->a(Lmc/b;)V

    .line 954
    .line 955
    .line 956
    return-void

    .line 957
    :pswitch_a
    const-string v0, "UTF-8"

    .line 958
    .line 959
    iget-object v1, v14, Lx9/n5;->c:Ljava/lang/String;

    .line 960
    .line 961
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 962
    .line 963
    .line 964
    move-result v1

    .line 965
    if-eqz v1, :cond_1b

    .line 966
    .line 967
    const-string v1, "https://pc.woozooo.com"

    .line 968
    .line 969
    iput-object v1, v14, Lx9/n5;->c:Ljava/lang/String;

    .line 970
    .line 971
    :cond_1b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 972
    .line 973
    .line 974
    move-result v1

    .line 975
    const/16 v3, 0xa0

    .line 976
    .line 977
    if-le v1, v3, :cond_1c

    .line 978
    .line 979
    const/4 v1, 0x0

    .line 980
    invoke-virtual {v7, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v7

    .line 984
    :cond_1c
    iget-object v1, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 985
    .line 986
    :try_start_13
    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v1

    .line 990
    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v7
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    .line 994
    goto :goto_18

    .line 995
    :catch_10
    nop

    .line 996
    :goto_18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 997
    .line 998
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 999
    .line 1000
    .line 1001
    iget-object v3, v14, Lx9/n5;->c:Ljava/lang/String;

    .line 1002
    .line 1003
    const-string v5, "/doupload.php"

    .line 1004
    .line 1005
    invoke-static {v3, v5, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v0

    .line 1009
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1010
    .line 1011
    const-string v5, "task=11&file_id="

    .line 1012
    .line 1013
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    iget-object v5, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1017
    .line 1018
    const-string v6, "&desc="

    .line 1019
    .line 1020
    invoke-static {v3, v5, v6, v7}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v3

    .line 1024
    iget-boolean v5, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 1025
    .line 1026
    if-eqz v5, :cond_1d

    .line 1027
    .line 1028
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    const-string v5, "task=4&folder_id="

    .line 1031
    .line 1032
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1033
    .line 1034
    .line 1035
    iget-object v5, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1036
    .line 1037
    const-string v6, "&folder_name="

    .line 1038
    .line 1039
    const-string v8, "&folder_description="

    .line 1040
    .line 1041
    invoke-static {v3, v5, v6, v1, v8}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v3

    .line 1051
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1054
    .line 1055
    .line 1056
    iget-object v5, v14, Lx9/n5;->c:Ljava/lang/String;

    .line 1057
    .line 1058
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    .line 1061
    const-string v5, "/mydisk.php?item=files&action=index&u="

    .line 1062
    .line 1063
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    .line 1065
    .line 1066
    iget-object v5, v14, Lx9/n5;->h:Ljava/lang/String;

    .line 1067
    .line 1068
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v1

    .line 1075
    iget-object v5, v14, Lx9/n5;->i:Ljava/lang/String;

    .line 1076
    .line 1077
    invoke-static {v5, v0, v3, v1}, Lnh/b;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1082
    .line 1083
    .line 1084
    move-result v1

    .line 1085
    const-string v3, "\u51fa\u9519"

    .line 1086
    .line 1087
    if-eqz v1, :cond_1f

    .line 1088
    .line 1089
    :cond_1e
    :goto_19
    move-object v4, v3

    .line 1090
    goto :goto_1b

    .line 1091
    :cond_1f
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v0

    .line 1095
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v0

    .line 1099
    const-string v1, "zt"

    .line 1100
    .line 1101
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v1

    .line 1105
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 1106
    .line 1107
    .line 1108
    move-result v1

    .line 1109
    const/4 v5, 0x1

    .line 1110
    if-ne v1, v5, :cond_20

    .line 1111
    .line 1112
    goto :goto_1b

    .line 1113
    :cond_20
    :try_start_14
    const-string v1, "info"

    .line 1114
    .line 1115
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v1

    .line 1119
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11

    .line 1123
    goto :goto_1a

    .line 1124
    :catch_11
    :try_start_15
    const-string v1, "text"

    .line 1125
    .line 1126
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v4
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_12

    .line 1134
    goto :goto_1a

    .line 1135
    :catch_12
    nop

    .line 1136
    :goto_1a
    if-eqz v4, :cond_1e

    .line 1137
    .line 1138
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 1139
    .line 1140
    .line 1141
    move-result v0

    .line 1142
    if-nez v0, :cond_1e

    .line 1143
    .line 1144
    const-string v0, "null"

    .line 1145
    .line 1146
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1147
    .line 1148
    .line 1149
    move-result v0

    .line 1150
    if-eqz v0, :cond_21

    .line 1151
    .line 1152
    goto :goto_19

    .line 1153
    :cond_21
    :goto_1b
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 1154
    .line 1155
    .line 1156
    move-result v0

    .line 1157
    if-eqz v0, :cond_22

    .line 1158
    .line 1159
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1160
    .line 1161
    .line 1162
    goto :goto_1c

    .line 1163
    :cond_22
    invoke-static {v4, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1164
    .line 1165
    .line 1166
    :goto_1c
    return-void

    .line 1167
    :pswitch_b
    const-string v0, "msg"

    .line 1168
    .line 1169
    :try_start_16
    new-instance v1, Lz7/s;

    .line 1170
    .line 1171
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 1172
    .line 1173
    .line 1174
    const-string v3, "fileId"

    .line 1175
    .line 1176
    iget-object v4, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1177
    .line 1178
    invoke-virtual {v1, v3, v4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    const-string v3, "newName"

    .line 1182
    .line 1183
    invoke-virtual {v1, v3, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    const-string v3, "https://api.guangyapan.com/userres/v1/file/rename"

    .line 1187
    .line 1188
    invoke-virtual {v1}, Lz7/p;->toString()Ljava/lang/String;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v1

    .line 1192
    invoke-static {v14, v3, v1}, Ls1/g;->H(Lx9/n5;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v1

    .line 1196
    invoke-static {v1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v1

    .line 1200
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v1

    .line 1204
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v3

    .line 1208
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v3

    .line 1212
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v3

    .line 1216
    const-string v4, "success"

    .line 1217
    .line 1218
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1219
    .line 1220
    .line 1221
    move-result v3

    .line 1222
    if-eqz v3, :cond_23

    .line 1223
    .line 1224
    iput-object v7, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 1225
    .line 1226
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1227
    .line 1228
    .line 1229
    goto :goto_1e

    .line 1230
    :catch_13
    move-exception v0

    .line 1231
    goto :goto_1d

    .line 1232
    :cond_23
    new-instance v3, Ljava/lang/Exception;

    .line 1233
    .line 1234
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v0

    .line 1238
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v0

    .line 1242
    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1243
    .line 1244
    .line 1245
    throw v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_13

    .line 1246
    :goto_1d
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1247
    .line 1248
    .line 1249
    :goto_1e
    return-void

    .line 1250
    :pswitch_c
    const-string v1, "taskId"

    .line 1251
    .line 1252
    const/4 v3, 0x0

    .line 1253
    iput-boolean v3, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->isStopDown:Z

    .line 1254
    .line 1255
    iput-object v4, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrl:Ljava/lang/String;

    .line 1256
    .line 1257
    :try_start_17
    iget-boolean v3, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    .line 1258
    .line 1259
    const-string v4, "success"

    .line 1260
    .line 1261
    const-string v6, "signedURL"

    .line 1262
    .line 1263
    const-string v15, "data"

    .line 1264
    .line 1265
    move-object/from16 v20, v8

    .line 1266
    .line 1267
    const-string v8, "msg"

    .line 1268
    .line 1269
    if-eqz v3, :cond_27

    .line 1270
    .line 1271
    :try_start_18
    new-instance v3, Lz7/s;

    .line 1272
    .line 1273
    invoke-direct {v3}, Lz7/s;-><init>()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_16

    .line 1274
    .line 1275
    .line 1276
    move-object/from16 v21, v5

    .line 1277
    .line 1278
    :try_start_19
    new-instance v5, Lz7/o;

    .line 1279
    .line 1280
    invoke-direct {v5}, Lz7/o;-><init>()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_15

    .line 1281
    .line 1282
    .line 1283
    move-object/from16 v22, v7

    .line 1284
    .line 1285
    :try_start_1a
    iget-object v7, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1286
    .line 1287
    invoke-virtual {v5, v7}, Lz7/o;->j(Ljava/lang/String;)V

    .line 1288
    .line 1289
    .line 1290
    const-string v7, "fileIds"

    .line 1291
    .line 1292
    invoke-virtual {v3, v7, v5}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 1293
    .line 1294
    .line 1295
    const-string v5, "https://api.guangyapan.com/scheduler/v1/create_packaging_task"

    .line 1296
    .line 1297
    invoke-virtual {v3}, Lz7/p;->toString()Ljava/lang/String;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v3

    .line 1301
    invoke-static {v14, v5, v3}, Ls1/g;->H(Lx9/n5;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v3

    .line 1305
    invoke-static {v3}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v3

    .line 1309
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v3

    .line 1313
    invoke-virtual {v3, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v5

    .line 1317
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v5

    .line 1321
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v5

    .line 1325
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1326
    .line 1327
    .line 1328
    move-result v4

    .line 1329
    if-eqz v4, :cond_26

    .line 1330
    .line 1331
    invoke-virtual {v3, v15}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v3

    .line 1335
    invoke-virtual {v3, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v3

    .line 1339
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v3

    .line 1343
    new-instance v4, Lz7/s;

    .line 1344
    .line 1345
    invoke-direct {v4}, Lz7/s;-><init>()V

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v4, v1, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    .line 1350
    .line 1351
    const/4 v3, 0x0

    .line 1352
    :cond_24
    const-string v1, "https://api.guangyapan.com/scheduler/v1/query_packaging_task"

    .line 1353
    .line 1354
    invoke-virtual {v4}, Lz7/p;->toString()Ljava/lang/String;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v5

    .line 1358
    invoke-static {v14, v1, v5}, Ls1/g;->H(Lx9/n5;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v1

    .line 1362
    invoke-static {v1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v1

    .line 1366
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v1

    .line 1370
    invoke-virtual {v1, v15}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v5

    .line 1374
    iget-object v5, v5, Lz7/s;->a:Lb8/n;

    .line 1375
    .line 1376
    invoke-virtual {v5, v6}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 1377
    .line 1378
    .line 1379
    move-result v5

    .line 1380
    if-eqz v5, :cond_25

    .line 1381
    .line 1382
    invoke-virtual {v1, v15}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v1

    .line 1386
    invoke-virtual {v1, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v1

    .line 1390
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v1

    .line 1394
    iput-object v1, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrl:Ljava/lang/String;

    .line 1395
    .line 1396
    goto/16 :goto_21

    .line 1397
    .line 1398
    :cond_25
    const-wide/16 v7, 0x12c

    .line 1399
    .line 1400
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 1401
    .line 1402
    .line 1403
    const/4 v1, 0x1

    .line 1404
    add-int/2addr v3, v1

    .line 1405
    const/4 v1, 0x3

    .line 1406
    if-lt v3, v1, :cond_24

    .line 1407
    .line 1408
    goto/16 :goto_21

    .line 1409
    .line 1410
    :catch_14
    :goto_1f
    nop

    .line 1411
    goto :goto_21

    .line 1412
    :cond_26
    new-instance v1, Ljava/lang/Exception;

    .line 1413
    .line 1414
    invoke-virtual {v3, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v3

    .line 1418
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v3

    .line 1422
    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1423
    .line 1424
    .line 1425
    throw v1

    .line 1426
    :catch_15
    :goto_20
    move-object/from16 v22, v7

    .line 1427
    .line 1428
    goto :goto_1f

    .line 1429
    :catch_16
    move-object/from16 v21, v5

    .line 1430
    .line 1431
    goto :goto_20

    .line 1432
    :cond_27
    move-object/from16 v21, v5

    .line 1433
    .line 1434
    move-object/from16 v22, v7

    .line 1435
    .line 1436
    new-instance v1, Lz7/s;

    .line 1437
    .line 1438
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 1439
    .line 1440
    .line 1441
    const-string v3, "fileId"

    .line 1442
    .line 1443
    iget-object v5, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1444
    .line 1445
    invoke-virtual {v1, v3, v5}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    .line 1447
    .line 1448
    const-string v3, "https://api.guangyapan.com/userres/v1/get_res_download_url"

    .line 1449
    .line 1450
    invoke-virtual {v1}, Lz7/p;->toString()Ljava/lang/String;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v1

    .line 1454
    invoke-static {v14, v3, v1}, Ls1/g;->H(Lx9/n5;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v1

    .line 1458
    invoke-static {v1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v1

    .line 1462
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v1

    .line 1466
    invoke-virtual {v1, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v3

    .line 1470
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v3

    .line 1474
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v3

    .line 1478
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1479
    .line 1480
    .line 1481
    move-result v3

    .line 1482
    if-eqz v3, :cond_28

    .line 1483
    .line 1484
    invoke-virtual {v1, v15}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v1

    .line 1488
    invoke-virtual {v1, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v1

    .line 1492
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v1

    .line 1496
    iput-object v1, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrl:Ljava/lang/String;

    .line 1497
    .line 1498
    goto :goto_21

    .line 1499
    :cond_28
    new-instance v3, Ljava/lang/Exception;

    .line 1500
    .line 1501
    invoke-virtual {v1, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v1

    .line 1505
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v1

    .line 1509
    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1510
    .line 1511
    .line 1512
    throw v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_14

    .line 1513
    :catch_17
    move-object/from16 v21, v5

    .line 1514
    .line 1515
    move-object/from16 v22, v7

    .line 1516
    .line 1517
    move-object/from16 v20, v8

    .line 1518
    .line 1519
    goto :goto_1f

    .line 1520
    :goto_21
    iget-object v1, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrl:Ljava/lang/String;

    .line 1521
    .line 1522
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 1523
    .line 1524
    .line 1525
    move-result v1

    .line 1526
    if-eqz v1, :cond_29

    .line 1527
    .line 1528
    const-string v0, "\u65e0\u6cd5\u83b7\u53d6\u4e0b\u8f7d\u5730\u5740"

    .line 1529
    .line 1530
    :goto_22
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1531
    .line 1532
    .line 1533
    goto/16 :goto_2c

    .line 1534
    .line 1535
    :cond_29
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1536
    .line 1537
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1538
    .line 1539
    .line 1540
    :try_start_1b
    iget-object v1, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrl:Ljava/lang/String;

    .line 1541
    .line 1542
    new-instance v3, Ll9/a;

    .line 1543
    .line 1544
    invoke-direct {v3, v1}, Ll9/a;-><init>(Ljava/lang/String;)V

    .line 1545
    .line 1546
    .line 1547
    iget-object v1, v3, Lm9/e;->i:Lk9/a;

    .line 1548
    .line 1549
    invoke-virtual {v1, v13, v12}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    const-string v4, "https://www.guangyapan.com/"

    .line 1553
    .line 1554
    invoke-virtual {v1, v11, v4}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual {v1, v10, v0}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    .line 1559
    .line 1560
    invoke-virtual {v3}, Lm9/e;->a()Lokhttp3/Response;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v0

    .line 1564
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    .line 1565
    .line 1566
    .line 1567
    move-result v1

    .line 1568
    if-eqz v1, :cond_2b

    .line 1569
    .line 1570
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_19

    .line 1574
    if-eqz v1, :cond_2a

    .line 1575
    .line 1576
    goto :goto_24

    .line 1577
    :cond_2a
    :try_start_1c
    new-instance v0, Ljava/lang/Exception;

    .line 1578
    .line 1579
    const-string v3, "\u8bf7\u6c42\u51fa\u95192"

    .line 1580
    .line 1581
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1582
    .line 1583
    .line 1584
    throw v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_18

    .line 1585
    :catch_18
    move-exception v0

    .line 1586
    goto :goto_23

    .line 1587
    :catch_19
    move-exception v0

    .line 1588
    const/4 v1, 0x0

    .line 1589
    goto :goto_23

    .line 1590
    :cond_2b
    :try_start_1d
    new-instance v0, Ljava/lang/Exception;

    .line 1591
    .line 1592
    const-string v1, "\u8bf7\u6c42\u51fa\u95191"

    .line 1593
    .line 1594
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1595
    .line 1596
    .line 1597
    throw v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_19

    .line 1598
    :goto_23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1599
    .line 1600
    .line 1601
    const/4 v0, 0x0

    .line 1602
    :goto_24
    if-eqz v0, :cond_34

    .line 1603
    .line 1604
    if-nez v1, :cond_2c

    .line 1605
    .line 1606
    goto/16 :goto_2b

    .line 1607
    .line 1608
    :cond_2c
    iget-object v0, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 1609
    .line 1610
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1611
    .line 1612
    .line 1613
    move-result v3

    .line 1614
    const/16 v4, 0x50

    .line 1615
    .line 1616
    if-le v3, v4, :cond_2d

    .line 1617
    .line 1618
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1619
    .line 1620
    .line 1621
    move-result v3

    .line 1622
    sub-int/2addr v3, v4

    .line 1623
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1624
    .line 1625
    .line 1626
    move-result v4

    .line 1627
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v0

    .line 1631
    :cond_2d
    iget-boolean v3, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 1632
    .line 1633
    if-eqz v3, :cond_2e

    .line 1634
    .line 1635
    new-instance v3, Ljava/io/File;

    .line 1636
    .line 1637
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1638
    .line 1639
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1640
    .line 1641
    .line 1642
    move-object/from16 v5, v22

    .line 1643
    .line 1644
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    .line 1646
    .line 1647
    move-object/from16 v6, v21

    .line 1648
    .line 1649
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    .line 1651
    .line 1652
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    .line 1654
    .line 1655
    move-object/from16 v5, v20

    .line 1656
    .line 1657
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    .line 1659
    .line 1660
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v0

    .line 1664
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1665
    .line 1666
    .line 1667
    goto :goto_25

    .line 1668
    :cond_2e
    move-object/from16 v6, v21

    .line 1669
    .line 1670
    move-object/from16 v5, v22

    .line 1671
    .line 1672
    new-instance v3, Ljava/io/File;

    .line 1673
    .line 1674
    invoke-static {v5, v6, v0}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v0

    .line 1678
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1679
    .line 1680
    .line 1681
    :goto_25
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 1682
    .line 1683
    .line 1684
    move-result v0

    .line 1685
    if-eqz v0, :cond_2f

    .line 1686
    .line 1687
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1688
    .line 1689
    .line 1690
    move-result v0

    .line 1691
    if-eqz v0, :cond_2f

    .line 1692
    .line 1693
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1694
    .line 1695
    .line 1696
    move-result-object v0

    .line 1697
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v0

    .line 1701
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1702
    .line 1703
    .line 1704
    move-result-object v4

    .line 1705
    invoke-interface {v0, v4}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 1706
    .line 1707
    .line 1708
    :cond_2f
    :try_start_1e
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 1712
    :try_start_1f
    new-instance v4, Ljava/io/FileOutputStream;

    .line 1713
    .line 1714
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1d

    .line 1715
    .line 1716
    .line 1717
    :try_start_20
    new-instance v5, Ljava/io/BufferedInputStream;

    .line 1718
    .line 1719
    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1c

    .line 1720
    .line 1721
    .line 1722
    :try_start_21
    new-instance v7, Ljava/io/BufferedOutputStream;

    .line 1723
    .line 1724
    invoke-direct {v7, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1b

    .line 1725
    .line 1726
    .line 1727
    :try_start_22
    new-instance v8, Lcom/yunpan/appmanage/bean/DownProgressBean;

    .line 1728
    .line 1729
    invoke-direct {v8}, Lcom/yunpan/appmanage/bean/DownProgressBean;-><init>()V

    .line 1730
    .line 1731
    .line 1732
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    .line 1733
    .line 1734
    .line 1735
    move-result-wide v10

    .line 1736
    iput-wide v10, v8, Lcom/yunpan/appmanage/bean/DownProgressBean;->fileSize:J

    .line 1737
    .line 1738
    const/high16 v1, 0x80000

    .line 1739
    .line 1740
    new-array v1, v1, [B

    .line 1741
    .line 1742
    const/4 v10, 0x0

    .line 1743
    const-wide/16 v16, 0x0

    .line 1744
    .line 1745
    :cond_30
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    .line 1746
    .line 1747
    .line 1748
    move-result v11

    .line 1749
    const/4 v12, -0x1

    .line 1750
    if-eq v11, v12, :cond_32

    .line 1751
    .line 1752
    int-to-long v13, v11

    .line 1753
    add-long v13, v16, v13

    .line 1754
    .line 1755
    const/4 v15, 0x0

    .line 1756
    invoke-virtual {v7, v1, v15, v11}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1757
    .line 1758
    .line 1759
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1760
    .line 1761
    .line 1762
    const/4 v11, 0x1

    .line 1763
    add-int/2addr v10, v11

    .line 1764
    const/4 v11, 0x2

    .line 1765
    if-le v10, v11, :cond_31

    .line 1766
    .line 1767
    iput-wide v13, v8, Lcom/yunpan/appmanage/bean/DownProgressBean;->downSize:J

    .line 1768
    .line 1769
    long-to-double v11, v13

    .line 1770
    move-wide/from16 v16, v13

    .line 1771
    .line 1772
    iget-wide v13, v8, Lcom/yunpan/appmanage/bean/DownProgressBean;->fileSize:J
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1a

    .line 1773
    .line 1774
    long-to-double v13, v13

    .line 1775
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    .line 1776
    .line 1777
    .line 1778
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    .line 1779
    .line 1780
    .line 1781
    div-double/2addr v11, v13

    .line 1782
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    .line 1783
    .line 1784
    mul-double v11, v11, v13

    .line 1785
    .line 1786
    :try_start_23
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    .line 1787
    .line 1788
    .line 1789
    move-result-wide v10

    .line 1790
    double-to-int v10, v10

    .line 1791
    iput v10, v8, Lcom/yunpan/appmanage/bean/DownProgressBean;->bfb:I

    .line 1792
    .line 1793
    invoke-virtual {v2, v8}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1794
    .line 1795
    .line 1796
    const/4 v10, 0x0

    .line 1797
    goto :goto_26

    .line 1798
    :catch_1a
    move-object v14, v5

    .line 1799
    goto/16 :goto_29

    .line 1800
    .line 1801
    :cond_31
    move-wide/from16 v16, v13

    .line 1802
    .line 1803
    :goto_26
    iget-boolean v11, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->isStopDown:Z

    .line 1804
    .line 1805
    if-eqz v11, :cond_30

    .line 1806
    .line 1807
    invoke-static {v5}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 1808
    .line 1809
    .line 1810
    invoke-static {v7}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 1811
    .line 1812
    .line 1813
    invoke-static {v4}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 1814
    .line 1815
    .line 1816
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 1817
    .line 1818
    .line 1819
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1820
    .line 1821
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1822
    .line 1823
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1824
    .line 1825
    .line 1826
    invoke-static {v3}, Lcom/yunpan/appmanage/util/k;->e(Ljava/io/File;)V

    .line 1827
    .line 1828
    .line 1829
    new-instance v1, Ljava/lang/Exception;

    .line 1830
    .line 1831
    const-string v6, "\u4e3b\u52a8\u505c\u6b62\u4e0b\u8f7d"

    .line 1832
    .line 1833
    invoke-direct {v1, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1834
    .line 1835
    .line 1836
    invoke-virtual {v2, v1}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1837
    .line 1838
    .line 1839
    goto :goto_2c

    .line 1840
    :cond_32
    invoke-static {v5}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 1841
    .line 1842
    .line 1843
    invoke-static {v7}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 1844
    .line 1845
    .line 1846
    invoke-static {v4}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 1847
    .line 1848
    .line 1849
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 1850
    .line 1851
    .line 1852
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v1

    .line 1856
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1857
    .line 1858
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1859
    .line 1860
    .line 1861
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    .line 1863
    .line 1864
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1865
    .line 1866
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1867
    .line 1868
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 1869
    .line 1870
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    .line 1872
    .line 1873
    const-string v6, "/cache/"

    .line 1874
    .line 1875
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    .line 1877
    .line 1878
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1879
    .line 1880
    .line 1881
    move-result-object v6

    .line 1882
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1883
    .line 1884
    .line 1885
    move-result v1

    .line 1886
    if-nez v1, :cond_33

    .line 1887
    .line 1888
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v1

    .line 1892
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1893
    .line 1894
    .line 1895
    move-result-object v6

    .line 1896
    invoke-virtual {v1, v6}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1a

    .line 1897
    .line 1898
    .line 1899
    goto :goto_2a

    .line 1900
    :catch_1b
    move-object v14, v5

    .line 1901
    const/4 v7, 0x0

    .line 1902
    goto :goto_29

    .line 1903
    :catch_1c
    :goto_27
    const/4 v7, 0x0

    .line 1904
    const/4 v14, 0x0

    .line 1905
    goto :goto_29

    .line 1906
    :catch_1d
    :goto_28
    const/4 v4, 0x0

    .line 1907
    goto :goto_27

    .line 1908
    :catch_1e
    const/4 v0, 0x0

    .line 1909
    goto :goto_28

    .line 1910
    :goto_29
    invoke-static {v14, v7, v4, v0}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 1911
    .line 1912
    .line 1913
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1914
    .line 1915
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1916
    .line 1917
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1918
    .line 1919
    .line 1920
    invoke-static {v3}, Lcom/yunpan/appmanage/util/k;->e(Ljava/io/File;)V

    .line 1921
    .line 1922
    .line 1923
    :cond_33
    :goto_2a
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1924
    .line 1925
    .line 1926
    goto :goto_2c

    .line 1927
    :cond_34
    :goto_2b
    const-string v0, "\u8bf7\u6c42\u51fa\u95193"

    .line 1928
    .line 1929
    goto/16 :goto_22

    .line 1930
    .line 1931
    :goto_2c
    return-void

    .line 1932
    nop

    .line 1933
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
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
