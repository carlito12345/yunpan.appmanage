.class public final synthetic Lua/d4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/d4;->a:I

    iput-object p1, p0, Lua/d4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 11

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    const-string v1, "\' \'"

    .line 4
    .line 5
    const-string v2, "\\cp -R \'"

    .line 6
    .line 7
    iget-object v3, p0, Lua/d4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    iget v5, p0, Lua/d4;->a:I

    .line 11
    .line 12
    packed-switch v5, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget v4, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->R:I

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v5, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'yes\' ?><map><string name=\"dock.data\">"

    .line 20
    .line 21
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v5, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 25
    .line 26
    invoke-virtual {v5}, Lz7/p;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v5, "</string><string name=\"applist.data\">"

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v5, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;

    .line 39
    .line 40
    invoke-virtual {v5}, Lz7/p;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v5, "</string></map>"

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v5, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->P:Ljava/io/File;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v5, v4}, Lq4/a;->M(Ljava/io/File;Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->P:Ljava/io/File;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->O:Ljava/io/File;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget v0, v0, Lfa/a0;->a:I

    .line 104
    .line 105
    if-eqz v0, :cond_0

    .line 106
    .line 107
    const-string v0, "\u5931\u8d25\uff1a\u5199\u5165\u6587\u4ef6\u51fa\u9519"

    .line 108
    .line 109
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    const-string v0, "kill -9 $(pidof com.hozonauto.netahome)"

    .line 114
    .line 115
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 119
    .line 120
    .line 121
    :goto_0
    return-void

    .line 122
    :pswitch_0
    sget v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->R:I

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    const-string v5, "</string>"

    .line 128
    .line 129
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v6}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    const-string v7, "com.hozonauto.netahome"

    .line 138
    .line 139
    invoke-interface {v6, v7}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    if-nez v6, :cond_1

    .line 144
    .line 145
    const-string v0, "\u6ca1\u627e\u5230\u54ea\u5412\u8f66\u673a\u7cfb\u7edf\u684c\u9762"

    .line 146
    .line 147
    :goto_1
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_b

    .line 151
    .line 152
    :cond_1
    sget-object v6, Lfa/b0;->a:La2/w0;

    .line 153
    .line 154
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    const-string v6, "id"

    .line 158
    .line 159
    invoke-static {v6}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    iget v8, v6, Lfa/a0;->a:I

    .line 164
    .line 165
    if-eqz v8, :cond_2

    .line 166
    .line 167
    const-string v0, "\u51fa\u9519\uff1a\u83b7\u53d6\u914d\u7f6e\u5931\u8d25"

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v6}, Lfa/a0;->a()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    const-string v8, "uid=0("

    .line 175
    .line 176
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    if-nez v6, :cond_3

    .line 181
    .line 182
    const-string v0, "\u65e0\u6743\u9650\uff0c\u8bf7\u5148\u63d0\u6743"

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v8, "ls -ls \'"

    .line 188
    .line 189
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v8, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->O:Ljava/io/File;

    .line 193
    .line 194
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-static {v6}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    iget v8, v6, Lfa/a0;->a:I

    .line 217
    .line 218
    if-eqz v8, :cond_4

    .line 219
    .line 220
    new-instance v0, Ljava/lang/Exception;

    .line 221
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v2, "\u65e0\u6cd5\u67e5\u770b\u76ee\u5f55\uff1a"

    .line 225
    .line 226
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->O:Ljava/io/File;

    .line 230
    .line 231
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_b

    .line 253
    .line 254
    :cond_4
    :try_start_0
    iget-object v6, v6, Lfa/a0;->b:Ljava/util/List;

    .line 255
    .line 256
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-eqz v8, :cond_7

    .line 265
    .line 266
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v8

    .line 270
    check-cast v8, Ljava/lang/String;

    .line 271
    .line 272
    const-string v9, "_data_"

    .line 273
    .line 274
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 275
    .line 276
    .line 277
    move-result v9

    .line 278
    if-eqz v9, :cond_5

    .line 279
    .line 280
    const-string v9, ".xml"

    .line 281
    .line 282
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result v9

    .line 286
    if-eqz v9, :cond_5

    .line 287
    .line 288
    const-string v9, "wallpaper"

    .line 289
    .line 290
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 291
    .line 292
    .line 293
    move-result v9

    .line 294
    if-nez v9, :cond_6

    .line 295
    .line 296
    new-instance v6, Ljava/lang/Exception;

    .line 297
    .line 298
    const-string v8, "\u8bf7\u75281.3"

    .line 299
    .line 300
    invoke-direct {v6, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, v6}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_b

    .line 307
    .line 308
    :cond_6
    const-string v9, " "

    .line 309
    .line 310
    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    move-result v9

    .line 314
    add-int/2addr v9, v4

    .line 315
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    new-instance v9, Ljava/io/File;

    .line 320
    .line 321
    iget-object v10, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->O:Ljava/io/File;

    .line 322
    .line 323
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 324
    .line 325
    .line 326
    move-result-object v10

    .line 327
    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iput-object v9, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->O:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .line 332
    goto :goto_2

    .line 333
    :catch_0
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->O:Ljava/io/File;

    .line 339
    .line 340
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->P:Ljava/io/File;

    .line 351
    .line 352
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 367
    .line 368
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    iget v0, v0, Lfa/a0;->a:I

    .line 376
    .line 377
    if-eqz v0, :cond_8

    .line 378
    .line 379
    const-string v0, "\u8bfb\u53d6\u6587\u4ef6\u51fa\u95191\uff0c\u8bf7\u91cd\u8bd5"

    .line 380
    .line 381
    goto/16 :goto_1

    .line 382
    .line 383
    :cond_8
    :try_start_1
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->P:Ljava/io/File;

    .line 384
    .line 385
    invoke-static {v0}, Lq4/a;->J(Ljava/io/File;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    const-string v1, "<string name=\"dock.data\">"

    .line 390
    .line 391
    const/4 v2, 0x0

    .line 392
    invoke-static {v0, v1, v5, v2}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    const-string v6, "<string name=\"applist.data\">"

    .line 397
    .line 398
    invoke-static {v0, v6, v5, v2}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 403
    .line 404
    const/16 v6, 0x18

    .line 405
    .line 406
    if-lt v5, v6, :cond_9

    .line 407
    .line 408
    invoke-static {v1}, Lq/t;->g(Ljava/lang/String;)Landroid/text/Spanned;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-static {v0}, Lq/t;->g(Ljava/lang/String;)Landroid/text/Spanned;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 424
    goto :goto_3

    .line 425
    :catch_1
    move-exception v0

    .line 426
    goto/16 :goto_a

    .line 427
    .line 428
    :cond_9
    :goto_3
    :try_start_2
    invoke-static {v1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-virtual {v1}, Lz7/p;->f()Lz7/o;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    iput-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 437
    .line 438
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-virtual {v0}, Lz7/p;->f()Lz7/o;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    iput-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 447
    .line 448
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 449
    .line 450
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 451
    .line 452
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    const/4 v1, 0x7

    .line 457
    const-string v5, "packageName"

    .line 458
    .line 459
    const-string v6, "appName"

    .line 460
    .line 461
    if-ge v0, v1, :cond_a

    .line 462
    .line 463
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 464
    .line 465
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 466
    .line 467
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    sub-int/2addr v1, v0

    .line 472
    :goto_4
    if-lez v1, :cond_a

    .line 473
    .line 474
    new-instance v0, Lz7/s;

    .line 475
    .line 476
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 477
    .line 478
    .line 479
    const-string v8, ""

    .line 480
    .line 481
    invoke-virtual {v0, v6, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    const-string v9, "className"

    .line 485
    .line 486
    invoke-virtual {v0, v9, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 490
    .line 491
    const-string v10, "cloudConfigFlag"

    .line 492
    .line 493
    invoke-virtual {v0, v10, v9}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 494
    .line 495
    .line 496
    const-string v10, "icon"

    .line 497
    .line 498
    invoke-virtual {v0, v10, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    const-string v10, "isUsed"

    .line 502
    .line 503
    invoke-virtual {v0, v10, v9}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0, v5, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 510
    .line 511
    const-string v9, "redPointFlag"

    .line 512
    .line 513
    invoke-virtual {v0, v9, v8}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 514
    .line 515
    .line 516
    iget-object v8, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 517
    .line 518
    invoke-virtual {v8, v0}, Lz7/o;->k(Lz7/p;)V

    .line 519
    .line 520
    .line 521
    add-int/lit8 v1, v1, -0x1

    .line 522
    .line 523
    goto :goto_4

    .line 524
    :cond_a
    const/4 v0, 0x0

    .line 525
    :goto_5
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 526
    .line 527
    iget-object v1, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 528
    .line 529
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 530
    .line 531
    .line 532
    move-result v1

    .line 533
    const-string v8, "com.hozonauto.netahome.mini"

    .line 534
    .line 535
    if-ge v0, v1, :cond_12

    .line 536
    .line 537
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 538
    .line 539
    invoke-static {v1, v0, v5}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    invoke-static {v1}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 544
    .line 545
    .line 546
    move-result-object v9

    .line 547
    if-eqz v9, :cond_b

    .line 548
    .line 549
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 550
    .line 551
    invoke-static {v1, v0, v6}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    iput-object v1, v9, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 556
    .line 557
    goto :goto_7

    .line 558
    :cond_b
    new-instance v9, Lcom/yunpan/appmanage/db/AppBean;

    .line 559
    .line 560
    invoke-direct {v9}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 561
    .line 562
    .line 563
    iput-object v1, v9, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 564
    .line 565
    iget-object v10, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 566
    .line 567
    invoke-static {v10, v0, v6}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v10

    .line 571
    iput-object v10, v9, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 572
    .line 573
    iput-boolean v4, v9, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 574
    .line 575
    iput-boolean v2, v9, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 576
    .line 577
    iput-boolean v2, v9, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 578
    .line 579
    iput-boolean v2, v9, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 580
    .line 581
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v8

    .line 585
    if-nez v8, :cond_d

    .line 586
    .line 587
    sget-object v8, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 588
    .line 589
    sget-object v8, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 590
    .line 591
    iget-object v8, v8, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 592
    .line 593
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    if-eqz v1, :cond_c

    .line 598
    .line 599
    goto :goto_6

    .line 600
    :cond_c
    iput-boolean v4, v9, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 601
    .line 602
    goto :goto_7

    .line 603
    :cond_d
    :goto_6
    iput-boolean v2, v9, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 604
    .line 605
    :goto_7
    iget-object v1, v9, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 606
    .line 607
    const-string v8, "home"

    .line 608
    .line 609
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    const-string v8, "com.hozonauto.launcher"

    .line 614
    .line 615
    if-eqz v1, :cond_e

    .line 616
    .line 617
    iget-object v1, v9, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 618
    .line 619
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v1

    .line 623
    if-eqz v1, :cond_e

    .line 624
    .line 625
    const-string v1, "\u4e3b\u9875"

    .line 626
    .line 627
    iput-object v1, v9, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 628
    .line 629
    :cond_e
    iget-object v1, v9, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 630
    .line 631
    const-string v10, "system"

    .line 632
    .line 633
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    move-result v1

    .line 637
    if-eqz v1, :cond_f

    .line 638
    .line 639
    iget-object v1, v9, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 640
    .line 641
    const-string v10, "com.hozon.settings"

    .line 642
    .line 643
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    if-eqz v1, :cond_f

    .line 648
    .line 649
    const-string v1, "\u8f66\u8f86\u63a7\u5236"

    .line 650
    .line 651
    iput-object v1, v9, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 652
    .line 653
    :cond_f
    iget-object v1, v9, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 654
    .line 655
    const-string v10, "appList"

    .line 656
    .line 657
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    move-result v1

    .line 661
    if-eqz v1, :cond_10

    .line 662
    .line 663
    iget-object v1, v9, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 664
    .line 665
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    move-result v1

    .line 669
    if-eqz v1, :cond_10

    .line 670
    .line 671
    const-string v1, "\u5e94\u7528\u4e2d\u5fc3"

    .line 672
    .line 673
    iput-object v1, v9, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 674
    .line 675
    :cond_10
    iget-object v1, v9, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 676
    .line 677
    const-string v10, "map"

    .line 678
    .line 679
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    move-result v1

    .line 683
    if-eqz v1, :cond_11

    .line 684
    .line 685
    iget-object v1, v9, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 686
    .line 687
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    if-eqz v1, :cond_11

    .line 692
    .line 693
    const-string v1, "\u5730\u56fe"

    .line 694
    .line 695
    iput-object v1, v9, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 696
    .line 697
    :cond_11
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->H:Ljava/util/ArrayList;

    .line 698
    .line 699
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    add-int/2addr v0, v4

    .line 703
    goto/16 :goto_5

    .line 704
    .line 705
    :cond_12
    const/4 v0, 0x0

    .line 706
    :goto_8
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;

    .line 707
    .line 708
    iget-object v1, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 709
    .line 710
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 711
    .line 712
    .line 713
    move-result v1

    .line 714
    if-ge v0, v1, :cond_14

    .line 715
    .line 716
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;

    .line 717
    .line 718
    invoke-static {v1, v0, v5}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    invoke-static {v1}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 723
    .line 724
    .line 725
    move-result-object v7

    .line 726
    if-eqz v7, :cond_13

    .line 727
    .line 728
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;

    .line 729
    .line 730
    invoke-static {v1, v0, v6}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    iput-object v1, v7, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 735
    .line 736
    goto :goto_9

    .line 737
    :cond_13
    new-instance v7, Lcom/yunpan/appmanage/db/AppBean;

    .line 738
    .line 739
    invoke-direct {v7}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 740
    .line 741
    .line 742
    iput-object v1, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 743
    .line 744
    iget-object v9, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;

    .line 745
    .line 746
    invoke-static {v9, v0, v6}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v9

    .line 750
    iput-object v9, v7, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 751
    .line 752
    iput-boolean v4, v7, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 753
    .line 754
    iput-boolean v2, v7, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 755
    .line 756
    iput-boolean v2, v7, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 757
    .line 758
    iput-boolean v2, v7, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 759
    .line 760
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 761
    .line 762
    .line 763
    move-result v1

    .line 764
    xor-int/2addr v1, v4

    .line 765
    iput-boolean v1, v7, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 766
    .line 767
    :goto_9
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->G:Ljava/util/ArrayList;

    .line 768
    .line 769
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    add-int/2addr v0, v4

    .line 773
    goto :goto_8

    .line 774
    :cond_14
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 775
    .line 776
    .line 777
    goto :goto_b

    .line 778
    :catch_2
    const-string v0, "\u8bfb\u53d6\u6587\u4ef6\u51fa\u9519\uff1a\u683c\u5f0f\u9519\u8bef"

    .line 779
    .line 780
    goto/16 :goto_1

    .line 781
    .line 782
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 783
    .line 784
    .line 785
    new-instance v0, Ljava/lang/Exception;

    .line 786
    .line 787
    const-string v1, "\u8bfb\u53d6\u6587\u4ef6\u51fa\u95192\uff0c\u8bf7\u91cd\u8bd5"

    .line 788
    .line 789
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 793
    .line 794
    .line 795
    :goto_b
    return-void

    .line 796
    nop

    .line 797
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "\u6539\u540d"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    iget v4, p0, Lua/d4;->a:I

    .line 7
    .line 8
    packed-switch v4, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget p1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->R:I

    .line 12
    .line 13
    iget-object v6, p0, Lua/d4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    .line 14
    .line 15
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-array p1, v3, [Ljava/lang/String;

    .line 19
    .line 20
    const-string v4, "\u66ff\u6362"

    .line 21
    .line 22
    aput-object v4, p1, v2

    .line 23
    .line 24
    aput-object v1, p1, v0

    .line 25
    .line 26
    new-instance v0, Lha/ja;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    new-instance v9, Lua/b4;

    .line 33
    .line 34
    invoke-direct {v9, v6, p3, v3}, Lua/b4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;II)V

    .line 35
    .line 36
    .line 37
    move-object v4, v0

    .line 38
    move-object v5, v6

    .line 39
    move-object v7, p2

    .line 40
    invoke-direct/range {v4 .. v9}, Lha/ja;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;Lha/ia;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_0
    sget v4, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->R:I

    .line 48
    .line 49
    iget-object v7, p0, Lua/d4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    .line 50
    .line 51
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const/4 v4, 0x3

    .line 55
    new-array v4, v4, [Ljava/lang/String;

    .line 56
    .line 57
    const-string v5, "\u79fb\u9664"

    .line 58
    .line 59
    aput-object v5, v4, v2

    .line 60
    .line 61
    const-string v2, "\u63d2\u5165"

    .line 62
    .line 63
    aput-object v2, v4, v0

    .line 64
    .line 65
    aput-object v1, v4, v3

    .line 66
    .line 67
    new-instance v0, Lha/ja;

    .line 68
    .line 69
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    new-instance v10, Lha/v1;

    .line 74
    .line 75
    const/4 v1, 0x7

    .line 76
    invoke-direct {v10, v7, p1, p3, v1}, Lha/v1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    move-object v5, v0

    .line 80
    move-object v6, v7

    .line 81
    move-object v8, p2

    .line 82
    invoke-direct/range {v5 .. v10}, Lha/ja;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;Lha/ia;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
