.class public final synthetic Lua/k4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/k4;->a:I

    iput-object p1, p0, Lua/k4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lua/k4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget v2, p0, Lua/k4;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->T:I

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'yes\' ?><map><string name=\"dock.data\">"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->L:Lz7/o;

    .line 19
    .line 20
    invoke-virtual {v2}, Lz7/p;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "</string><string name=\"applist.data\">"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->M:Lz7/o;

    .line 33
    .line 34
    invoke-virtual {v2}, Lz7/p;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, "</string></map>"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->P:Ljava/io/File;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v2, v1}, Lq4/a;->M(Ljava/io/File;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "\\cp -R \'"

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->P:Ljava/io/File;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, "\' \'"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->O:Ljava/io/File;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, "\'"

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    sget v2, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->T:I

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    const-string v2, "</string>"

    .line 128
    .line 129
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    const-string v4, "com.hozonauto.netahome"

    .line 138
    .line 139
    invoke-interface {v3, v4}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    if-nez v3, :cond_1

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
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    const-string v3, "id"

    .line 158
    .line 159
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    iget v5, v3, Lfa/a0;->a:I

    .line 164
    .line 165
    if-eqz v5, :cond_2

    .line 166
    .line 167
    const-string v0, "\u51fa\u9519\uff1a\u83b7\u53d6\u914d\u7f6e\u5931\u8d25"

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v3}, Lfa/a0;->a()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    const-string v5, "uid=0("

    .line 175
    .line 176
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-nez v3, :cond_3

    .line 181
    .line 182
    const-string v0, "\u65e0\u6743\u9650\uff0c\u8bf7\u5148\u63d0\u6743"

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v5, "ls -ls \""

    .line 188
    .line 189
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v5, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->O:Ljava/io/File;

    .line 193
    .line 194
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v5, "\""

    .line 206
    .line 207
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    iget v6, v3, Lfa/a0;->a:I

    .line 219
    .line 220
    if-eqz v6, :cond_4

    .line 221
    .line 222
    new-instance v1, Ljava/lang/Exception;

    .line 223
    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string v3, "\u65e0\u6cd5\u67e5\u770b\u76ee\u5f55\uff1a"

    .line 227
    .line 228
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->O:Ljava/io/File;

    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, v1}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_b

    .line 255
    .line 256
    :cond_4
    const/4 v6, 0x0

    .line 257
    :try_start_0
    iget-object v3, v3, Lfa/a0;->b:Ljava/util/List;

    .line 258
    .line 259
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    if-eqz v7, :cond_7

    .line 268
    .line 269
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    check-cast v7, Ljava/lang/String;

    .line 274
    .line 275
    const-string v8, "_data_"

    .line 276
    .line 277
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    if-eqz v8, :cond_5

    .line 282
    .line 283
    const-string v8, ".xml"

    .line 284
    .line 285
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    if-eqz v8, :cond_5

    .line 290
    .line 291
    const-string v8, "wallpaper"

    .line 292
    .line 293
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    if-eqz v8, :cond_6

    .line 298
    .line 299
    const-string v8, "\u8bf7\u7528\u684c\u9762\u7ba1\u74061.2"

    .line 300
    .line 301
    invoke-static {v8, v6}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 302
    .line 303
    .line 304
    :cond_6
    const-string v8, " "

    .line 305
    .line 306
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    move-result v8

    .line 310
    add-int/2addr v8, v1

    .line 311
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    new-instance v8, Ljava/io/File;

    .line 316
    .line 317
    iget-object v9, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->O:Ljava/io/File;

    .line 318
    .line 319
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iput-object v8, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->O:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .line 332
    goto :goto_2

    .line 333
    :catch_0
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v7, "\\cp -R \""

    .line 336
    .line 337
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget-object v7, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->O:Ljava/io/File;

    .line 341
    .line 342
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v7, "\" \""

    .line 350
    .line 351
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    iget-object v7, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->P:Ljava/io/File;

    .line 355
    .line 356
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    sget-object v5, Lfa/b0;->a:La2/w0;

    .line 371
    .line 372
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    iget v3, v3, Lfa/a0;->a:I

    .line 380
    .line 381
    if-eqz v3, :cond_8

    .line 382
    .line 383
    const-string v0, "\u8bfb\u53d6\u6587\u4ef6\u51fa\u95191\uff0c\u8bf7\u91cd\u8bd5"

    .line 384
    .line 385
    goto/16 :goto_1

    .line 386
    .line 387
    :cond_8
    :try_start_1
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->P:Ljava/io/File;

    .line 388
    .line 389
    invoke-static {v3}, Lq4/a;->J(Ljava/io/File;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    const-string v5, "<string name=\"dock.data\">"

    .line 394
    .line 395
    invoke-static {v3, v5, v2, v6}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    const-string v7, "<string name=\"applist.data\">"

    .line 400
    .line 401
    invoke-static {v3, v7, v2, v6}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 406
    .line 407
    const/16 v7, 0x18

    .line 408
    .line 409
    if-lt v3, v7, :cond_9

    .line 410
    .line 411
    invoke-static {v5}, Lq/t;->g(Ljava/lang/String;)Landroid/text/Spanned;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    invoke-static {v2}, Lq/t;->g(Ljava/lang/String;)Landroid/text/Spanned;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 427
    goto :goto_3

    .line 428
    :catch_1
    move-exception v0

    .line 429
    goto/16 :goto_a

    .line 430
    .line 431
    :cond_9
    :goto_3
    :try_start_2
    invoke-static {v5}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    invoke-virtual {v3}, Lz7/p;->f()Lz7/o;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    iput-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->L:Lz7/o;

    .line 440
    .line 441
    invoke-static {v2}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-virtual {v2}, Lz7/p;->f()Lz7/o;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    iput-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->M:Lz7/o;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 450
    .line 451
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->L:Lz7/o;

    .line 452
    .line 453
    iget-object v2, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 454
    .line 455
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    const/4 v3, 0x7

    .line 460
    const-string v5, "packageName"

    .line 461
    .line 462
    const-string v7, "appName"

    .line 463
    .line 464
    if-ge v2, v3, :cond_a

    .line 465
    .line 466
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->L:Lz7/o;

    .line 467
    .line 468
    iget-object v2, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 469
    .line 470
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    sub-int/2addr v3, v2

    .line 475
    :goto_4
    if-lez v3, :cond_a

    .line 476
    .line 477
    new-instance v2, Lz7/s;

    .line 478
    .line 479
    invoke-direct {v2}, Lz7/s;-><init>()V

    .line 480
    .line 481
    .line 482
    const-string v8, ""

    .line 483
    .line 484
    invoke-virtual {v2, v7, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    const-string v9, "className"

    .line 488
    .line 489
    invoke-virtual {v2, v9, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 493
    .line 494
    const-string v10, "cloudConfigFlag"

    .line 495
    .line 496
    invoke-virtual {v2, v10, v9}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 497
    .line 498
    .line 499
    const-string v10, "icon"

    .line 500
    .line 501
    invoke-virtual {v2, v10, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    const-string v10, "isUsed"

    .line 505
    .line 506
    invoke-virtual {v2, v10, v9}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v2, v5, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 513
    .line 514
    const-string v9, "redPointFlag"

    .line 515
    .line 516
    invoke-virtual {v2, v9, v8}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 517
    .line 518
    .line 519
    iget-object v8, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->L:Lz7/o;

    .line 520
    .line 521
    invoke-virtual {v8, v2}, Lz7/o;->k(Lz7/p;)V

    .line 522
    .line 523
    .line 524
    add-int/lit8 v3, v3, -0x1

    .line 525
    .line 526
    goto :goto_4

    .line 527
    :cond_a
    const/4 v2, 0x0

    .line 528
    :goto_5
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->L:Lz7/o;

    .line 529
    .line 530
    iget-object v3, v3, Lz7/o;->a:Ljava/util/ArrayList;

    .line 531
    .line 532
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 533
    .line 534
    .line 535
    move-result v3

    .line 536
    if-ge v2, v3, :cond_12

    .line 537
    .line 538
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->L:Lz7/o;

    .line 539
    .line 540
    invoke-static {v3, v2, v5}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    invoke-static {v3}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 545
    .line 546
    .line 547
    move-result-object v8

    .line 548
    if-eqz v8, :cond_b

    .line 549
    .line 550
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->L:Lz7/o;

    .line 551
    .line 552
    invoke-static {v3, v2, v7}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    iput-object v3, v8, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 557
    .line 558
    goto :goto_7

    .line 559
    :cond_b
    new-instance v8, Lcom/yunpan/appmanage/db/AppBean;

    .line 560
    .line 561
    invoke-direct {v8}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 562
    .line 563
    .line 564
    iput-object v3, v8, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 565
    .line 566
    iget-object v9, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->L:Lz7/o;

    .line 567
    .line 568
    invoke-static {v9, v2, v7}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v9

    .line 572
    iput-object v9, v8, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 573
    .line 574
    iput-boolean v1, v8, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 575
    .line 576
    iput-boolean v6, v8, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 577
    .line 578
    iput-boolean v6, v8, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 579
    .line 580
    iput-boolean v6, v8, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 581
    .line 582
    const-string v9, "com.hozonauto.netahome.mini"

    .line 583
    .line 584
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result v9

    .line 588
    if-nez v9, :cond_d

    .line 589
    .line 590
    sget-object v9, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 591
    .line 592
    sget-object v9, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 593
    .line 594
    iget-object v9, v9, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 595
    .line 596
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v3

    .line 600
    if-eqz v3, :cond_c

    .line 601
    .line 602
    goto :goto_6

    .line 603
    :cond_c
    iput-boolean v1, v8, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 604
    .line 605
    goto :goto_7

    .line 606
    :cond_d
    :goto_6
    iput-boolean v6, v8, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 607
    .line 608
    :goto_7
    iget-object v3, v8, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 609
    .line 610
    const-string v9, "home"

    .line 611
    .line 612
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v3

    .line 616
    const-string v9, "com.hozonauto.launcher"

    .line 617
    .line 618
    if-eqz v3, :cond_e

    .line 619
    .line 620
    iget-object v3, v8, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 621
    .line 622
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v3

    .line 626
    if-eqz v3, :cond_e

    .line 627
    .line 628
    const-string v3, "\u4e3b\u9875"

    .line 629
    .line 630
    iput-object v3, v8, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 631
    .line 632
    :cond_e
    iget-object v3, v8, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 633
    .line 634
    const-string v10, "system"

    .line 635
    .line 636
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v3

    .line 640
    if-eqz v3, :cond_f

    .line 641
    .line 642
    iget-object v3, v8, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 643
    .line 644
    const-string v10, "com.hozon.settings"

    .line 645
    .line 646
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v3

    .line 650
    if-eqz v3, :cond_f

    .line 651
    .line 652
    const-string v3, "\u8f66\u8f86\u63a7\u5236"

    .line 653
    .line 654
    iput-object v3, v8, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 655
    .line 656
    :cond_f
    iget-object v3, v8, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 657
    .line 658
    const-string v10, "appList"

    .line 659
    .line 660
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v3

    .line 664
    if-eqz v3, :cond_10

    .line 665
    .line 666
    iget-object v3, v8, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 667
    .line 668
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    move-result v3

    .line 672
    if-eqz v3, :cond_10

    .line 673
    .line 674
    const-string v3, "\u5e94\u7528\u4e2d\u5fc3"

    .line 675
    .line 676
    iput-object v3, v8, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 677
    .line 678
    :cond_10
    iget-object v3, v8, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 679
    .line 680
    const-string v10, "map"

    .line 681
    .line 682
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    move-result v3

    .line 686
    if-eqz v3, :cond_11

    .line 687
    .line 688
    iget-object v3, v8, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 689
    .line 690
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    move-result v3

    .line 694
    if-eqz v3, :cond_11

    .line 695
    .line 696
    const-string v3, "\u5730\u56fe"

    .line 697
    .line 698
    iput-object v3, v8, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 699
    .line 700
    :cond_11
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->H:Ljava/util/ArrayList;

    .line 701
    .line 702
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    add-int/2addr v2, v1

    .line 706
    goto/16 :goto_5

    .line 707
    .line 708
    :cond_12
    const/4 v2, 0x0

    .line 709
    :goto_8
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->M:Lz7/o;

    .line 710
    .line 711
    iget-object v3, v3, Lz7/o;->a:Ljava/util/ArrayList;

    .line 712
    .line 713
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 714
    .line 715
    .line 716
    move-result v3

    .line 717
    if-ge v2, v3, :cond_15

    .line 718
    .line 719
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->M:Lz7/o;

    .line 720
    .line 721
    invoke-static {v3, v2, v5}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v3

    .line 725
    invoke-static {v3}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 726
    .line 727
    .line 728
    move-result-object v4

    .line 729
    if-eqz v4, :cond_13

    .line 730
    .line 731
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->M:Lz7/o;

    .line 732
    .line 733
    invoke-static {v3, v2, v7}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v3

    .line 737
    iput-object v3, v4, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 738
    .line 739
    goto :goto_9

    .line 740
    :cond_13
    new-instance v4, Lcom/yunpan/appmanage/db/AppBean;

    .line 741
    .line 742
    invoke-direct {v4}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 743
    .line 744
    .line 745
    iput-object v3, v4, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 746
    .line 747
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->M:Lz7/o;

    .line 748
    .line 749
    invoke-static {v3, v2, v7}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v3

    .line 753
    iput-object v3, v4, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 754
    .line 755
    iput-boolean v1, v4, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 756
    .line 757
    iput-boolean v6, v4, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 758
    .line 759
    iput-boolean v6, v4, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 760
    .line 761
    iput-boolean v6, v4, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 762
    .line 763
    iput-boolean v1, v4, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 764
    .line 765
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->S:Ljava/util/HashMap;

    .line 766
    .line 767
    iget-object v8, v4, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 768
    .line 769
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    if-eqz v3, :cond_14

    .line 774
    .line 775
    iput-boolean v6, v4, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 776
    .line 777
    :cond_14
    :goto_9
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->G:Ljava/util/ArrayList;

    .line 778
    .line 779
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    add-int/2addr v2, v1

    .line 783
    goto :goto_8

    .line 784
    :cond_15
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 785
    .line 786
    .line 787
    goto :goto_b

    .line 788
    :catch_2
    const-string v0, "\u8bfb\u53d6\u6587\u4ef6\u51fa\u9519\uff1a\u683c\u5f0f\u9519\u8bef"

    .line 789
    .line 790
    goto/16 :goto_1

    .line 791
    .line 792
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 793
    .line 794
    .line 795
    new-instance v0, Ljava/lang/Exception;

    .line 796
    .line 797
    const-string v1, "\u8bfb\u53d6\u6587\u4ef6\u51fa\u95192\uff0c\u8bf7\u91cd\u8bd5"

    .line 798
    .line 799
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 803
    .line 804
    .line 805
    :goto_b
    return-void

    .line 806
    nop

    .line 807
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 11

    .line 1
    const-string v0, "\u6539\u540d"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    iget v4, p0, Lua/k4;->a:I

    .line 7
    .line 8
    packed-switch v4, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget p1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->T:I

    .line 12
    .line 13
    iget-object v6, p0, Lua/k4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    .line 14
    .line 15
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-array p1, v2, [Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "\u66ff\u6362"

    .line 21
    .line 22
    aput-object v2, p1, v1

    .line 23
    .line 24
    aput-object v0, p1, v3

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
    new-instance v9, Lua/j4;

    .line 33
    .line 34
    invoke-direct {v9, v6, p3, v3}, Lua/j4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;II)V

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
    sget v4, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->T:I

    .line 48
    .line 49
    iget-object v7, p0, Lua/k4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

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
    aput-object v5, v4, v1

    .line 60
    .line 61
    const-string v1, "\u63d2\u5165"

    .line 62
    .line 63
    aput-object v1, v4, v3

    .line 64
    .line 65
    aput-object v0, v4, v2

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
    const/16 v1, 0x8

    .line 76
    .line 77
    invoke-direct {v10, v7, p1, p3, v1}, Lha/v1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 78
    .line 79
    .line 80
    move-object v5, v0

    .line 81
    move-object v6, v7

    .line 82
    move-object v8, p2

    .line 83
    invoke-direct/range {v5 .. v10}, Lha/ja;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;Lha/ia;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
