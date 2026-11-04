.class public final Lcom/yunpan/appmanage/util/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(.{10,11}) (.*?) ([0-9]{4}-[0-9]{1,2}-[0-9]{1,2} [0-9]{1,2}:[0-9]{1,2}) (.*?)\\n"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/yunpan/appmanage/util/u;->c:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/util/u;->a:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/yunpan/appmanage/util/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_13

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_13

    .line 12
    .line 13
    const-string v0, "/data"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "system"

    .line 20
    .line 21
    const-string v3, "data"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    const/4 v5, 0x1

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v7, "/"

    .line 27
    .line 28
    if-eqz v1, :cond_d

    .line 29
    .line 30
    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-le v1, v4, :cond_0

    .line 41
    .line 42
    invoke-static {v5, v6, p0}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :cond_0
    const-string v1, "/data/local"

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    new-instance p0, Lx9/w3;

    .line 55
    .line 56
    const-string p2, "tmp"

    .line 57
    .line 58
    const-string v0, "/data/local/tmp"

    .line 59
    .line 60
    invoke-direct {p0, p2, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const-string v4, "/data/user_de"

    .line 73
    .line 74
    const-string v8, "/data/user"

    .line 75
    .line 76
    const-string v9, "/data/data"

    .line 77
    .line 78
    const-string v10, "/data/app"

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    new-instance p0, Lx9/w3;

    .line 83
    .line 84
    const-string p2, "app"

    .line 85
    .line 86
    invoke-direct {p0, p2, v10}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    new-instance p0, Lx9/w3;

    .line 93
    .line 94
    invoke-direct {p0, v3, v9}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    new-instance p0, Lx9/w3;

    .line 101
    .line 102
    const-string p2, "user"

    .line 103
    .line 104
    invoke-direct {p0, p2, v8}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    new-instance p0, Lx9/w3;

    .line 111
    .line 112
    const-string p2, "user_de"

    .line 113
    .line 114
    invoke-direct {p0, p2, v4}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    new-instance p0, Lx9/w3;

    .line 121
    .line 122
    const-string p2, "/data/system"

    .line 123
    .line 124
    invoke-direct {p0, v2, p2}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    new-instance p0, Lx9/w3;

    .line 131
    .line 132
    const-string p2, "local"

    .line 133
    .line 134
    invoke-direct {p0, p2, v1}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto/16 :goto_2

    .line 141
    .line 142
    :cond_2
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    const-string v1, "/data/app/"

    .line 147
    .line 148
    if-eqz v0, :cond_5

    .line 149
    .line 150
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {p0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-interface {p0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_user()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_13

    .line 171
    .line 172
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Lcom/yunpan/appmanage/db/AppBean;

    .line 177
    .line 178
    iget-object v2, v0, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_3

    .line 185
    .line 186
    iget-object v0, v0, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 187
    .line 188
    const/16 v2, 0xa

    .line 189
    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_4

    .line 199
    .line 200
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    new-instance v2, Lx9/w3;

    .line 209
    .line 210
    invoke-static {v1, v0}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-direct {v2, v0, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_4
    new-instance v2, Lx9/w3;

    .line 222
    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-direct {v2, v0}, Lx9/w3;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_8

    .line 239
    .line 240
    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    array-length v0, v0

    .line 245
    const/4 v1, 0x4

    .line 246
    if-ne v0, v1, :cond_8

    .line 247
    .line 248
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_user()Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_13

    .line 269
    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    check-cast v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 275
    .line 276
    iget-object v2, v1, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {p0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eqz v2, :cond_6

    .line 287
    .line 288
    iget-object v2, v1, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    add-int/2addr v3, v5

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    if-eqz v3, :cond_7

    .line 304
    .line 305
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    new-instance v2, Lx9/w3;

    .line 314
    .line 315
    invoke-static {p0, v7, v1}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-direct {v2, v1, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    goto :goto_1

    .line 326
    :cond_7
    new-instance v2, Lx9/w3;

    .line 327
    .line 328
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 329
    .line 330
    invoke-direct {v2, v1}, Lx9/w3;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    goto :goto_1

    .line 337
    :cond_8
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result p2

    .line 341
    if-eqz p2, :cond_9

    .line 342
    .line 343
    new-instance p0, Lx9/w3;

    .line 344
    .line 345
    sget-object p2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 346
    .line 347
    sget-object p2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 348
    .line 349
    iget-object v0, p2, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 350
    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v2, "/data/data/"

    .line 354
    .line 355
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object p2, p2, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p2

    .line 367
    invoke-direct {p0, v0, p2}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    goto/16 :goto_2

    .line 374
    .line 375
    :cond_9
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result p2

    .line 379
    const-string v0, "/data/user/"

    .line 380
    .line 381
    if-eqz p2, :cond_a

    .line 382
    .line 383
    new-instance p0, Lx9/w3;

    .line 384
    .line 385
    sget-object p2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 386
    .line 387
    sget-object p2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 388
    .line 389
    iget v1, p2, Lcom/yunpan/appmanage/util/k;->n:I

    .line 390
    .line 391
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    iget p2, p2, Lcom/yunpan/appmanage/util/k;->n:I

    .line 401
    .line 402
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    invoke-direct {p0, v1, p2}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    goto/16 :goto_2

    .line 416
    .line 417
    :cond_a
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result p2

    .line 421
    const-string v1, "/data/user_de/"

    .line 422
    .line 423
    if-eqz p2, :cond_b

    .line 424
    .line 425
    new-instance p0, Lx9/w3;

    .line 426
    .line 427
    sget-object p2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 428
    .line 429
    sget-object p2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 430
    .line 431
    iget v0, p2, Lcom/yunpan/appmanage/util/k;->n:I

    .line 432
    .line 433
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    iget p2, p2, Lcom/yunpan/appmanage/util/k;->n:I

    .line 443
    .line 444
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object p2

    .line 451
    invoke-direct {p0, v0, p2}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    goto/16 :goto_2

    .line 458
    .line 459
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 465
    .line 466
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 467
    .line 468
    iget v3, v2, Lcom/yunpan/appmanage/util/k;->n:I

    .line 469
    .line 470
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object p2

    .line 477
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result p2

    .line 481
    if-eqz p2, :cond_c

    .line 482
    .line 483
    new-instance p0, Lx9/w3;

    .line 484
    .line 485
    iget-object p2, v2, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 486
    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    iget v0, v2, Lcom/yunpan/appmanage/util/k;->n:I

    .line 493
    .line 494
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    iget-object v0, v2, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 501
    .line 502
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    invoke-direct {p0, p2, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    goto/16 :goto_2

    .line 516
    .line 517
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    iget v0, v2, Lcom/yunpan/appmanage/util/k;->n:I

    .line 523
    .line 524
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object p2

    .line 531
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result p0

    .line 535
    if-eqz p0, :cond_13

    .line 536
    .line 537
    new-instance p0, Lx9/w3;

    .line 538
    .line 539
    iget-object p2, v2, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 540
    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    iget v1, v2, Lcom/yunpan/appmanage/util/k;->n:I

    .line 547
    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    iget-object v1, v2, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 555
    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-direct {p0, p2, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    goto/16 :goto_2

    .line 570
    .line 571
    :cond_d
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result p2

    .line 575
    const-string v1, "/storage"

    .line 576
    .line 577
    if-eqz p2, :cond_e

    .line 578
    .line 579
    new-instance p0, Lx9/w3;

    .line 580
    .line 581
    const-string p2, "cust"

    .line 582
    .line 583
    const-string v4, "/cust"

    .line 584
    .line 585
    invoke-direct {p0, p2, v4}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    new-instance p0, Lx9/w3;

    .line 592
    .line 593
    invoke-direct {p0, v3, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    new-instance p0, Lx9/w3;

    .line 600
    .line 601
    const-string p2, "etc"

    .line 602
    .line 603
    const-string v0, "/etc"

    .line 604
    .line 605
    invoke-direct {p0, p2, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    new-instance p0, Lx9/w3;

    .line 612
    .line 613
    const-string p2, "mnt"

    .line 614
    .line 615
    const-string v0, "/mnt"

    .line 616
    .line 617
    invoke-direct {p0, p2, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    new-instance p0, Lx9/w3;

    .line 624
    .line 625
    const-string p2, "odm"

    .line 626
    .line 627
    const-string v0, "/odm"

    .line 628
    .line 629
    invoke-direct {p0, p2, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    new-instance p0, Lx9/w3;

    .line 636
    .line 637
    const-string p2, "odm_dlkm"

    .line 638
    .line 639
    const-string v0, "/odm_dlkm"

    .line 640
    .line 641
    invoke-direct {p0, p2, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    new-instance p0, Lx9/w3;

    .line 648
    .line 649
    const-string p2, "proc"

    .line 650
    .line 651
    const-string v0, "/proc"

    .line 652
    .line 653
    invoke-direct {p0, p2, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    new-instance p0, Lx9/w3;

    .line 660
    .line 661
    const-string p2, "product"

    .line 662
    .line 663
    const-string v0, "/product"

    .line 664
    .line 665
    invoke-direct {p0, p2, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    new-instance p0, Lx9/w3;

    .line 672
    .line 673
    const-string p2, "sdcard"

    .line 674
    .line 675
    const-string v0, "/sdcard"

    .line 676
    .line 677
    invoke-direct {p0, p2, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    new-instance p0, Lx9/w3;

    .line 684
    .line 685
    const-string p2, "storage"

    .line 686
    .line 687
    invoke-direct {p0, p2, v1}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    new-instance p0, Lx9/w3;

    .line 694
    .line 695
    const-string p2, "/system"

    .line 696
    .line 697
    invoke-direct {p0, v2, p2}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    new-instance p0, Lx9/w3;

    .line 704
    .line 705
    const-string p2, "system_ext"

    .line 706
    .line 707
    const-string v0, "/system_ext"

    .line 708
    .line 709
    invoke-direct {p0, p2, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    new-instance p0, Lx9/w3;

    .line 716
    .line 717
    const-string p2, "vendor"

    .line 718
    .line 719
    const-string v0, "/vendor"

    .line 720
    .line 721
    invoke-direct {p0, p2, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    goto/16 :goto_2

    .line 728
    .line 729
    :cond_e
    new-instance p2, Ljava/lang/StringBuilder;

    .line 730
    .line 731
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 732
    .line 733
    .line 734
    sget-object v2, Lfa/g0;->a:Lfa/h0;

    .line 735
    .line 736
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v3

    .line 740
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 747
    .line 748
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 749
    .line 750
    iget-object v8, v3, Lcom/yunpan/appmanage/util/k;->P:Ljava/lang/String;

    .line 751
    .line 752
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object p2

    .line 762
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    move-result p2

    .line 766
    if-eqz p2, :cond_f

    .line 767
    .line 768
    new-instance p0, Lx9/w3;

    .line 769
    .line 770
    iget-object p2, v3, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 771
    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    .line 773
    .line 774
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    .line 783
    .line 784
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    iget-object v1, v3, Lcom/yunpan/appmanage/util/k;->P:Ljava/lang/String;

    .line 788
    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    const-string v1, "/data/"

    .line 793
    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    iget-object v1, v3, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 798
    .line 799
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    invoke-direct {p0, p2, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    goto :goto_2

    .line 813
    :cond_f
    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 814
    .line 815
    .line 816
    move-result p2

    .line 817
    if-eqz p2, :cond_10

    .line 818
    .line 819
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 820
    .line 821
    .line 822
    move-result p2

    .line 823
    if-le p2, v4, :cond_10

    .line 824
    .line 825
    invoke-static {v5, v6, p0}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object p0

    .line 829
    :cond_10
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result p2

    .line 833
    const-string v0, "/storage/emulated"

    .line 834
    .line 835
    const-string v1, "/storage/self"

    .line 836
    .line 837
    if-eqz p2, :cond_11

    .line 838
    .line 839
    new-instance p0, Lx9/w3;

    .line 840
    .line 841
    const-string p2, "self"

    .line 842
    .line 843
    invoke-direct {p0, p2, v1}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    .line 848
    .line 849
    new-instance p0, Lx9/w3;

    .line 850
    .line 851
    const-string p2, "emulated"

    .line 852
    .line 853
    invoke-direct {p0, p2, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    .line 858
    .line 859
    goto :goto_2

    .line 860
    :cond_11
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 861
    .line 862
    .line 863
    move-result p2

    .line 864
    const-string v1, "0"

    .line 865
    .line 866
    if-eqz p2, :cond_12

    .line 867
    .line 868
    new-instance p0, Lx9/w3;

    .line 869
    .line 870
    const-string p2, "/storage/self/primary"

    .line 871
    .line 872
    invoke-direct {p0, v1, p2}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    .line 877
    .line 878
    goto :goto_2

    .line 879
    :cond_12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    move-result p0

    .line 883
    if-eqz p0, :cond_13

    .line 884
    .line 885
    new-instance p0, Lx9/w3;

    .line 886
    .line 887
    const-string p2, "/storage/emulated/0"

    .line 888
    .line 889
    invoke-direct {p0, v1, p2}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    .line 894
    .line 895
    :cond_13
    :goto_2
    return-void
.end method

.method public static b(Lx9/w3;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    move/from16 v8, p4

    .line 8
    .line 9
    const/4 v10, 0x1

    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    if-eqz v7, :cond_0

    .line 14
    .line 15
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, v0, Lx9/w3;->n:Lv3/f;

    .line 19
    .line 20
    const-string v2, "."

    .line 21
    .line 22
    if-eqz v1, :cond_5

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {v1}, Lv3/f;->D()[Lv3/f;

    .line 25
    .line 26
    .line 27
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    array-length v3, v1

    .line 29
    if-lez v3, :cond_4

    .line 30
    .line 31
    array-length v3, v1

    .line 32
    const/4 v4, 0x0

    .line 33
    :goto_0
    if-ge v4, v3, :cond_4

    .line 34
    .line 35
    aget-object v5, v1, v4

    .line 36
    .line 37
    if-nez p3, :cond_1

    .line 38
    .line 39
    iget-object v11, v5, Lv3/f;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v11, Landroid/content/Context;

    .line 42
    .line 43
    iget-object v12, v5, Lv3/f;->d:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v12, Landroid/net/Uri;

    .line 46
    .line 47
    const-string v13, "_display_name"

    .line 48
    .line 49
    invoke-static {v11, v12, v13}, Lcom/bumptech/glide/d;->U(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    if-eqz v11, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    new-instance v11, Lx9/w3;

    .line 61
    .line 62
    iget-object v12, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {v11, v5, v12}, Lx9/w3;-><init>(Lv3/f;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v12, v5, Lv3/f;->c:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v12, Landroid/content/Context;

    .line 70
    .line 71
    iget-object v5, v5, Lv3/f;->d:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v5, Landroid/net/Uri;

    .line 74
    .line 75
    const-string v13, "mime_type"

    .line 76
    .line 77
    invoke-static {v12, v5, v13}, Lcom/bumptech/glide/d;->U(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    const-string v12, "vnd.android.document/directory"

    .line 82
    .line 83
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    if-eqz v7, :cond_3

    .line 94
    .line 95
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_1
    add-int/2addr v4, v10

    .line 99
    goto :goto_0

    .line 100
    :cond_4
    move-object v5, v6

    .line 101
    move-object v12, v7

    .line 102
    goto/16 :goto_1e

    .line 103
    .line 104
    :catch_0
    return-void

    .line 105
    :cond_5
    iget-object v1, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    return-void

    .line 114
    :cond_6
    new-instance v11, Ljava/io/File;

    .line 115
    .line 116
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 117
    .line 118
    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    .line 122
    .line 123
    .line 124
    move-result v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    goto :goto_2

    .line 126
    :catch_1
    nop

    .line 127
    const/4 v0, 0x0

    .line 128
    :goto_2
    if-eqz v0, :cond_17

    .line 129
    .line 130
    new-instance v13, Lcom/yunpan/appmanage/util/u;

    .line 131
    .line 132
    invoke-direct {v13}, Lcom/yunpan/appmanage/util/u;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v14, "\u200bdata"

    .line 136
    .line 137
    if-eqz v7, :cond_9

    .line 138
    .line 139
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 140
    .line 141
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_7

    .line 150
    .line 151
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_7

    .line 164
    .line 165
    :goto_3
    const/4 v15, 0x1

    .line 166
    goto :goto_4

    .line 167
    :cond_7
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 168
    .line 169
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 170
    .line 171
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-nez v1, :cond_9

    .line 178
    .line 179
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_9

    .line 190
    .line 191
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_8

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_9
    const/4 v15, 0x0

    .line 209
    :goto_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 210
    .line 211
    const/16 v1, 0x1e

    .line 212
    .line 213
    if-lt v0, v1, :cond_a

    .line 214
    .line 215
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const-string v1, "/Android"

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_a

    .line 226
    .line 227
    const/16 v16, 0x1

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_a
    const/16 v16, 0x0

    .line 231
    .line 232
    :goto_5
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    iget-object v4, v13, Lcom/yunpan/appmanage/util/u;->a:Ljava/util/concurrent/ExecutorService;

    .line 237
    .line 238
    iget-object v3, v13, Lcom/yunpan/appmanage/util/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 239
    .line 240
    if-eqz v5, :cond_e

    .line 241
    .line 242
    array-length v2, v5

    .line 243
    const/4 v1, 0x0

    .line 244
    :goto_6
    if-ge v1, v2, :cond_e

    .line 245
    .line 246
    aget-object v0, v5, v1

    .line 247
    .line 248
    if-eqz v16, :cond_b

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v10

    .line 254
    const-string v9, "data"

    .line 255
    .line 256
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    if-eqz v9, :cond_b

    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 263
    .line 264
    .line 265
    move-result v9

    .line 266
    if-eqz v9, :cond_b

    .line 267
    .line 268
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    if-eqz v9, :cond_c

    .line 273
    .line 274
    array-length v9, v9

    .line 275
    if-eqz v9, :cond_c

    .line 276
    .line 277
    :catch_2
    :cond_b
    move/from16 v19, v1

    .line 278
    .line 279
    move/from16 v17, v2

    .line 280
    .line 281
    goto :goto_7

    .line 282
    :cond_c
    new-instance v9, Ljava/lang/Exception;

    .line 283
    .line 284
    invoke-direct {v9}, Ljava/lang/Exception;-><init>()V

    .line 285
    .line 286
    .line 287
    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 288
    :catch_3
    :try_start_3
    new-instance v9, Ljava/io/File;

    .line 289
    .line 290
    new-instance v10, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v12

    .line 299
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v17

    .line 303
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    .line 304
    .line 305
    .line 306
    move-result v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 307
    move/from16 v19, v1

    .line 308
    .line 309
    const/16 v18, 0x4

    .line 310
    .line 311
    add-int/lit8 v1, v17, -0x4

    .line 312
    .line 313
    move/from16 v17, v2

    .line 314
    .line 315
    const/4 v2, 0x0

    .line 316
    :try_start_4
    invoke-virtual {v12, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    if-eqz v1, :cond_d

    .line 338
    .line 339
    array-length v1, v1

    .line 340
    if-lez v1, :cond_d

    .line 341
    .line 342
    new-instance v1, Ljava/io/File;

    .line 343
    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v10

    .line 357
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 358
    .line 359
    .line 360
    move-result v10

    .line 361
    const/4 v12, 0x4

    .line 362
    sub-int/2addr v10, v12

    .line 363
    const/4 v12, 0x0

    .line 364
    invoke-virtual {v9, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v9

    .line 368
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 379
    .line 380
    .line 381
    move-object v0, v1

    .line 382
    :catch_4
    :cond_d
    :goto_7
    move-object v2, v0

    .line 383
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 384
    .line 385
    .line 386
    new-instance v9, Lcom/yunpan/appmanage/util/t;

    .line 387
    .line 388
    move-object v0, v9

    .line 389
    move/from16 v10, v19

    .line 390
    .line 391
    move-object v1, v13

    .line 392
    move/from16 v12, v17

    .line 393
    .line 394
    move-object/from16 v17, v3

    .line 395
    .line 396
    move-object/from16 v3, p1

    .line 397
    .line 398
    move/from16 v18, v12

    .line 399
    .line 400
    move-object v12, v4

    .line 401
    move-object/from16 v4, p2

    .line 402
    .line 403
    move-object/from16 v19, v5

    .line 404
    .line 405
    move/from16 v5, p3

    .line 406
    .line 407
    invoke-direct/range {v0 .. v5}, Lcom/yunpan/appmanage/util/t;-><init>(Lcom/yunpan/appmanage/util/u;Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 408
    .line 409
    .line 410
    invoke-interface {v12, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 411
    .line 412
    .line 413
    const/4 v0, 0x1

    .line 414
    add-int/lit8 v1, v10, 0x1

    .line 415
    .line 416
    move-object v4, v12

    .line 417
    move-object/from16 v3, v17

    .line 418
    .line 419
    move/from16 v2, v18

    .line 420
    .line 421
    move-object/from16 v5, v19

    .line 422
    .line 423
    const/4 v10, 0x1

    .line 424
    goto/16 :goto_6

    .line 425
    .line 426
    :cond_e
    move-object/from16 v17, v3

    .line 427
    .line 428
    move-object v12, v4

    .line 429
    :goto_8
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_f

    .line 434
    .line 435
    const-wide/16 v0, 0x64

    .line 436
    .line 437
    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 438
    .line 439
    .line 440
    goto :goto_8

    .line 441
    :catch_5
    nop

    .line 442
    goto :goto_8

    .line 443
    :cond_f
    if-eqz v15, :cond_14

    .line 444
    .line 445
    :try_start_6
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/FileInfoDao;->deleteFromDirFile(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    new-instance v0, Ljava/util/ArrayList;

    .line 461
    .line 462
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .line 464
    .line 465
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    if-nez v1, :cond_11

    .line 470
    .line 471
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    if-eqz v2, :cond_10

    .line 480
    .line 481
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    check-cast v2, Lx9/w3;

    .line 486
    .line 487
    new-instance v3, Lcom/yunpan/appmanage/db/FileInfo;

    .line 488
    .line 489
    iget-object v4, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 490
    .line 491
    iget-object v5, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 492
    .line 493
    iget-object v9, v2, Lx9/w3;->e:Ljava/lang/String;

    .line 494
    .line 495
    iget-wide v10, v2, Lx9/w3;->d:J

    .line 496
    .line 497
    iget-object v13, v2, Lx9/w3;->f:Ljava/lang/String;

    .line 498
    .line 499
    iget-wide v14, v2, Lx9/w3;->g:J

    .line 500
    .line 501
    iget-boolean v2, v2, Lx9/w3;->c:Z

    .line 502
    .line 503
    move-object/from16 v17, v3

    .line 504
    .line 505
    move-object/from16 v18, v4

    .line 506
    .line 507
    move-object/from16 v19, v5

    .line 508
    .line 509
    move-object/from16 v20, v9

    .line 510
    .line 511
    move-wide/from16 v21, v10

    .line 512
    .line 513
    move-object/from16 v23, v13

    .line 514
    .line 515
    move-wide/from16 v24, v14

    .line 516
    .line 517
    move/from16 v26, v2

    .line 518
    .line 519
    invoke-direct/range {v17 .. v26}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    goto :goto_9

    .line 526
    :cond_10
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/db/MyDb;->addList(Ljava/util/ArrayList;)V

    .line 531
    .line 532
    .line 533
    :cond_11
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    if-nez v1, :cond_14

    .line 538
    .line 539
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 540
    .line 541
    .line 542
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    const/4 v2, 0x0

    .line 547
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    if-eqz v3, :cond_13

    .line 552
    .line 553
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    check-cast v3, Lx9/w3;

    .line 558
    .line 559
    const/4 v4, 0x1

    .line 560
    add-int/2addr v2, v4

    .line 561
    new-instance v4, Lcom/yunpan/appmanage/db/FileInfo;

    .line 562
    .line 563
    iget-object v5, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 564
    .line 565
    iget-object v9, v3, Lx9/w3;->a:Ljava/lang/String;

    .line 566
    .line 567
    iget-object v10, v3, Lx9/w3;->e:Ljava/lang/String;

    .line 568
    .line 569
    iget-wide v13, v3, Lx9/w3;->d:J

    .line 570
    .line 571
    iget-object v11, v3, Lx9/w3;->f:Ljava/lang/String;

    .line 572
    .line 573
    iget-wide v7, v3, Lx9/w3;->g:J

    .line 574
    .line 575
    iget-boolean v3, v3, Lx9/w3;->c:Z

    .line 576
    .line 577
    move-object/from16 v17, v4

    .line 578
    .line 579
    move-object/from16 v18, v5

    .line 580
    .line 581
    move-object/from16 v19, v9

    .line 582
    .line 583
    move-object/from16 v20, v10

    .line 584
    .line 585
    move-wide/from16 v21, v13

    .line 586
    .line 587
    move-object/from16 v23, v11

    .line 588
    .line 589
    move-wide/from16 v24, v7

    .line 590
    .line 591
    move/from16 v26, v3

    .line 592
    .line 593
    invoke-direct/range {v17 .. v26}, Lcom/yunpan/appmanage/db/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    const/16 v3, 0x190

    .line 600
    .line 601
    if-lt v2, v3, :cond_12

    .line 602
    .line 603
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    invoke-virtual {v2, v0}, Lcom/yunpan/appmanage/db/MyDb;->addList(Ljava/util/ArrayList;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 611
    .line 612
    .line 613
    const/4 v2, 0x0

    .line 614
    :cond_12
    move-object/from16 v7, p2

    .line 615
    .line 616
    move/from16 v8, p4

    .line 617
    .line 618
    goto :goto_a

    .line 619
    :cond_13
    if-lez v2, :cond_14

    .line 620
    .line 621
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/db/MyDb;->addList(Ljava/util/ArrayList;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 626
    .line 627
    .line 628
    :catch_6
    :cond_14
    invoke-interface {v12}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 629
    .line 630
    .line 631
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 632
    .line 633
    .line 634
    :cond_15
    move-object/from16 v12, p2

    .line 635
    .line 636
    :cond_16
    :goto_b
    move-object v5, v6

    .line 637
    goto/16 :goto_1e

    .line 638
    .line 639
    :cond_17
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 640
    .line 641
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 642
    .line 643
    const-wide/16 v3, 0x1

    .line 644
    .line 645
    const/4 v5, 0x3

    .line 646
    const-string v7, " -> "

    .line 647
    .line 648
    const/4 v8, 0x2

    .line 649
    const-string v9, "/"

    .line 650
    .line 651
    if-nez v1, :cond_27

    .line 652
    .line 653
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->u:I

    .line 654
    .line 655
    const/4 v1, 0x1

    .line 656
    if-ne v0, v1, :cond_27

    .line 657
    .line 658
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    if-nez v1, :cond_18

    .line 667
    .line 668
    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    .line 673
    .line 674
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    const-string v10, "\"*"

    .line 682
    .line 683
    const-string v11, "stat -c \'%F|||%Y|||%s|||%A|||%n|||%N\' \""

    .line 684
    .line 685
    if-nez v2, :cond_1b

    .line 686
    .line 687
    sget-object v2, Lfa/h;->a:Lfa/j;

    .line 688
    .line 689
    invoke-virtual {v2}, Lfa/j;->i()Z

    .line 690
    .line 691
    .line 692
    move-result v12

    .line 693
    if-nez v12, :cond_19

    .line 694
    .line 695
    sget-object v12, Lfa/l;->a:Lfa/m;

    .line 696
    .line 697
    invoke-virtual {v12}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 698
    .line 699
    .line 700
    move-result v12

    .line 701
    if-eqz v12, :cond_1b

    .line 702
    .line 703
    :cond_19
    sget-object v12, Lfa/g0;->a:Lfa/h0;

    .line 704
    .line 705
    invoke-virtual {v12}, Lfa/h0;->f()Z

    .line 706
    .line 707
    .line 708
    move-result v12

    .line 709
    if-nez v12, :cond_1b

    .line 710
    .line 711
    sget-object v12, Lfa/l;->a:Lfa/m;

    .line 712
    .line 713
    invoke-virtual {v12}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 714
    .line 715
    .line 716
    move-result v13

    .line 717
    if-eqz v13, :cond_1a

    .line 718
    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    .line 720
    .line 721
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    invoke-virtual {v12, v2}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 735
    .line 736
    .line 737
    move-result-object v2

    .line 738
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 739
    .line 740
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 741
    .line 742
    .line 743
    goto :goto_c

    .line 744
    :cond_1a
    new-instance v12, Ljava/lang/StringBuilder;

    .line 745
    .line 746
    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v10

    .line 759
    invoke-virtual {v2, v10}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 760
    .line 761
    .line 762
    move-result-object v2

    .line 763
    iget-object v2, v2, Lfa/i;->c:Ljava/util/ArrayList;

    .line 764
    .line 765
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 766
    .line 767
    .line 768
    goto :goto_c

    .line 769
    :cond_1b
    invoke-static {v11, v0, v10}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    const/4 v10, 0x1

    .line 774
    new-array v11, v10, [Ljava/lang/String;

    .line 775
    .line 776
    const/4 v10, 0x0

    .line 777
    aput-object v2, v11, v10

    .line 778
    .line 779
    invoke-static {v11}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 780
    .line 781
    .line 782
    move-result-object v2

    .line 783
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 784
    .line 785
    .line 786
    move-result-object v2

    .line 787
    invoke-virtual {v2}, Landroidx/room/s;->k()Ljava/util/List;

    .line 788
    .line 789
    .line 790
    move-result-object v10

    .line 791
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 792
    .line 793
    .line 794
    invoke-virtual {v2}, Landroidx/room/s;->j()Ljava/util/List;

    .line 795
    .line 796
    .line 797
    move-result-object v2

    .line 798
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 799
    .line 800
    .line 801
    :goto_c
    const/4 v2, 0x0

    .line 802
    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 803
    .line 804
    .line 805
    move-result v10

    .line 806
    if-ge v2, v10, :cond_15

    .line 807
    .line 808
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v10

    .line 812
    check-cast v10, Ljava/lang/String;

    .line 813
    .line 814
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v11

    .line 818
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 819
    .line 820
    .line 821
    move-result v11

    .line 822
    if-eqz v11, :cond_1e

    .line 823
    .line 824
    :catch_7
    :cond_1c
    :goto_e
    move-object/from16 v12, p2

    .line 825
    .line 826
    :catch_8
    :cond_1d
    :goto_f
    const/4 v10, 0x1

    .line 827
    goto/16 :goto_11

    .line 828
    .line 829
    :cond_1e
    const-string v11, "\\|\\|\\|"

    .line 830
    .line 831
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v10

    .line 835
    array-length v11, v10

    .line 836
    const/4 v12, 0x6

    .line 837
    if-ne v11, v12, :cond_1c

    .line 838
    .line 839
    :try_start_7
    new-instance v11, Lx9/w3;

    .line 840
    .line 841
    invoke-direct {v11}, Lx9/w3;-><init>()V

    .line 842
    .line 843
    .line 844
    const/4 v12, 0x4

    .line 845
    aget-object v13, v10, v12

    .line 846
    .line 847
    invoke-virtual {v13, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 848
    .line 849
    .line 850
    move-result v12

    .line 851
    if-eqz v12, :cond_1f

    .line 852
    .line 853
    new-instance v12, Ljava/io/File;

    .line 854
    .line 855
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v13

    .line 862
    :cond_1f
    iput-object v13, v11, Lx9/w3;->a:Ljava/lang/String;

    .line 863
    .line 864
    new-instance v12, Ljava/lang/StringBuilder;

    .line 865
    .line 866
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v12

    .line 879
    iput-object v12, v11, Lx9/w3;->b:Ljava/lang/String;

    .line 880
    .line 881
    iput-object v0, v11, Lx9/w3;->e:Ljava/lang/String;

    .line 882
    .line 883
    const/4 v12, 0x1

    .line 884
    aget-object v13, v10, v12

    .line 885
    .line 886
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v12

    .line 890
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 891
    .line 892
    .line 893
    move-result-object v12

    .line 894
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 895
    .line 896
    .line 897
    move-result-wide v12

    .line 898
    iput-wide v12, v11, Lx9/w3;->g:J

    .line 899
    .line 900
    invoke-static {v12, v13}, Lif/a;->m0(J)Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v12

    .line 904
    iput-object v12, v11, Lx9/w3;->h:Ljava/lang/String;

    .line 905
    .line 906
    const/4 v12, 0x0

    .line 907
    aget-object v13, v10, v12

    .line 908
    .line 909
    const-string v14, "directory"

    .line 910
    .line 911
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 912
    .line 913
    .line 914
    move-result v13

    .line 915
    if-eqz v13, :cond_20

    .line 916
    .line 917
    const/4 v13, 0x1

    .line 918
    iput-boolean v13, v11, Lx9/w3;->c:Z

    .line 919
    .line 920
    goto/16 :goto_10

    .line 921
    .line 922
    :cond_20
    aget-object v13, v10, v12

    .line 923
    .line 924
    const-string v14, "file"

    .line 925
    .line 926
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 927
    .line 928
    .line 929
    move-result v13

    .line 930
    if-eqz v13, :cond_21

    .line 931
    .line 932
    iput-boolean v12, v11, Lx9/w3;->c:Z

    .line 933
    .line 934
    aget-object v10, v10, v8

    .line 935
    .line 936
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v10

    .line 940
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 941
    .line 942
    .line 943
    move-result-object v10

    .line 944
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 945
    .line 946
    .line 947
    move-result-wide v12

    .line 948
    iput-wide v12, v11, Lx9/w3;->d:J

    .line 949
    .line 950
    goto :goto_10

    .line 951
    :cond_21
    aget-object v13, v10, v12

    .line 952
    .line 953
    const-string v14, "link"

    .line 954
    .line 955
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 956
    .line 957
    .line 958
    move-result v13

    .line 959
    if-eqz v13, :cond_26

    .line 960
    .line 961
    iput-boolean v12, v11, Lx9/w3;->c:Z

    .line 962
    .line 963
    const/4 v12, 0x5

    .line 964
    aget-object v13, v10, v12

    .line 965
    .line 966
    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 967
    .line 968
    .line 969
    move-result v13

    .line 970
    if-eqz v13, :cond_1c

    .line 971
    .line 972
    aget-object v10, v10, v12

    .line 973
    .line 974
    const-string v12, "-> "

    .line 975
    .line 976
    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 977
    .line 978
    .line 979
    move-result v12

    .line 980
    add-int/2addr v12, v5

    .line 981
    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v10

    .line 985
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 986
    .line 987
    .line 988
    const-string v12, "\'"

    .line 989
    .line 990
    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 991
    .line 992
    .line 993
    move-result v12

    .line 994
    const/4 v13, 0x1

    .line 995
    invoke-virtual {v10, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v10

    .line 999
    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1000
    .line 1001
    .line 1002
    move-result v12

    .line 1003
    if-nez v12, :cond_22

    .line 1004
    .line 1005
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v10

    .line 1020
    :cond_22
    iput-object v10, v11, Lx9/w3;->f:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 1021
    .line 1022
    :try_start_8
    new-instance v12, Ljava/io/File;

    .line 1023
    .line 1024
    iget-object v13, v11, Lx9/w3;->f:Ljava/lang/String;

    .line 1025
    .line 1026
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    .line 1030
    .line 1031
    .line 1032
    move-result v12

    .line 1033
    iput-boolean v12, v11, Lx9/w3;->c:Z

    .line 1034
    .line 1035
    if-nez v12, :cond_23

    .line 1036
    .line 1037
    new-instance v12, Ljava/io/File;

    .line 1038
    .line 1039
    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v12}, Ljava/io/File;->length()J

    .line 1043
    .line 1044
    .line 1045
    move-result-wide v12

    .line 1046
    iput-wide v12, v11, Lx9/w3;->d:J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 1047
    .line 1048
    :catch_9
    :cond_23
    :try_start_9
    iget-wide v12, v11, Lx9/w3;->d:J

    .line 1049
    .line 1050
    cmp-long v10, v12, v3

    .line 1051
    .line 1052
    if-gez v10, :cond_24

    .line 1053
    .line 1054
    const/4 v10, 0x1

    .line 1055
    iput-boolean v10, v11, Lx9/w3;->c:Z

    .line 1056
    .line 1057
    :cond_24
    :goto_10
    iget-boolean v10, v11, Lx9/w3;->c:Z

    .line 1058
    .line 1059
    if-eqz v10, :cond_25

    .line 1060
    .line 1061
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1062
    .line 1063
    .line 1064
    goto/16 :goto_e

    .line 1065
    .line 1066
    :cond_25
    move-object/from16 v12, p2

    .line 1067
    .line 1068
    if-eqz v12, :cond_1d

    .line 1069
    .line 1070
    :try_start_a
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    .line 1072
    .line 1073
    goto/16 :goto_f

    .line 1074
    .line 1075
    :cond_26
    move-object/from16 v12, p2

    .line 1076
    .line 1077
    const/4 v11, 0x0

    .line 1078
    aget-object v10, v10, v11

    .line 1079
    .line 1080
    const-string v11, "device"

    .line 1081
    .line 1082
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 1083
    .line 1084
    .line 1085
    goto/16 :goto_f

    .line 1086
    .line 1087
    :goto_11
    add-int/2addr v2, v10

    .line 1088
    goto/16 :goto_d

    .line 1089
    .line 1090
    :cond_27
    move-object/from16 v12, p2

    .line 1091
    .line 1092
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1097
    .line 1098
    .line 1099
    move-result v1

    .line 1100
    if-nez v1, :cond_28

    .line 1101
    .line 1102
    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v0

    .line 1106
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    const-string v10, "ls -l"

    .line 1109
    .line 1110
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1111
    .line 1112
    .line 1113
    const-string v10, ""

    .line 1114
    .line 1115
    if-eqz p3, :cond_29

    .line 1116
    .line 1117
    const-string v11, "a"

    .line 1118
    .line 1119
    goto :goto_12

    .line 1120
    :cond_29
    move-object v11, v10

    .line 1121
    :goto_12
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    .line 1124
    const-string v11, " \""

    .line 1125
    .line 1126
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    const-string v11, "\""

    .line 1133
    .line 1134
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v1

    .line 1141
    sget-object v11, Lfa/h;->a:Lfa/j;

    .line 1142
    .line 1143
    invoke-virtual {v11}, Lfa/j;->i()Z

    .line 1144
    .line 1145
    .line 1146
    move-result v13

    .line 1147
    if-eqz v13, :cond_2c

    .line 1148
    .line 1149
    sget-object v13, Lfa/g0;->a:Lfa/h0;

    .line 1150
    .line 1151
    invoke-virtual {v13}, Lfa/h0;->f()Z

    .line 1152
    .line 1153
    .line 1154
    move-result v13

    .line 1155
    if-nez v13, :cond_2c

    .line 1156
    .line 1157
    invoke-virtual {v11, v1}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v1

    .line 1161
    iget v11, v1, Lfa/i;->a:I

    .line 1162
    .line 1163
    const/4 v13, 0x1

    .line 1164
    if-eqz v11, :cond_2a

    .line 1165
    .line 1166
    if-eq v11, v13, :cond_2a

    .line 1167
    .line 1168
    :goto_13
    goto/16 :goto_b

    .line 1169
    .line 1170
    :cond_2a
    iget-object v11, v1, Lfa/i;->c:Ljava/util/ArrayList;

    .line 1171
    .line 1172
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 1173
    .line 1174
    .line 1175
    move-result v11

    .line 1176
    if-le v11, v8, :cond_2b

    .line 1177
    .line 1178
    iget-object v11, v1, Lfa/i;->c:Ljava/util/ArrayList;

    .line 1179
    .line 1180
    const/4 v14, 0x0

    .line 1181
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1182
    .line 1183
    .line 1184
    iget-object v11, v1, Lfa/i;->c:Ljava/util/ArrayList;

    .line 1185
    .line 1186
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 1187
    .line 1188
    .line 1189
    move-result v14

    .line 1190
    sub-int/2addr v14, v13

    .line 1191
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1192
    .line 1193
    .line 1194
    :cond_2b
    invoke-virtual {v1}, Lfa/i;->a()Ljava/lang/String;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v1

    .line 1198
    goto/16 :goto_17

    .line 1199
    .line 1200
    :cond_2c
    sget-object v11, Lfa/l;->a:Lfa/m;

    .line 1201
    .line 1202
    invoke-virtual {v11}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 1203
    .line 1204
    .line 1205
    move-result v13

    .line 1206
    const-string v14, "\n"

    .line 1207
    .line 1208
    if-eqz v13, :cond_2f

    .line 1209
    .line 1210
    sget-object v13, Lfa/g0;->a:Lfa/h0;

    .line 1211
    .line 1212
    invoke-virtual {v13}, Lfa/h0;->f()Z

    .line 1213
    .line 1214
    .line 1215
    move-result v13

    .line 1216
    if-nez v13, :cond_2f

    .line 1217
    .line 1218
    invoke-virtual {v11, v1}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v1

    .line 1222
    iget v11, v1, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 1223
    .line 1224
    if-eqz v11, :cond_2d

    .line 1225
    .line 1226
    const/4 v13, 0x1

    .line 1227
    if-eq v11, v13, :cond_2d

    .line 1228
    .line 1229
    :goto_14
    goto :goto_13

    .line 1230
    :cond_2d
    move-object v11, v10

    .line 1231
    const/4 v13, 0x0

    .line 1232
    :goto_15
    iget-object v15, v1, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 1233
    .line 1234
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 1235
    .line 1236
    .line 1237
    move-result v15

    .line 1238
    if-ge v13, v15, :cond_2e

    .line 1239
    .line 1240
    invoke-static {v11}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v11

    .line 1244
    iget-object v15, v1, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 1245
    .line 1246
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v15

    .line 1250
    check-cast v15, Ljava/lang/String;

    .line 1251
    .line 1252
    invoke-static {v15, v14, v11}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v11

    .line 1256
    const/4 v15, 0x1

    .line 1257
    add-int/2addr v13, v15

    .line 1258
    goto :goto_15

    .line 1259
    :cond_2e
    move-object v1, v11

    .line 1260
    goto :goto_17

    .line 1261
    :cond_2f
    const/4 v15, 0x1

    .line 1262
    new-array v11, v15, [Ljava/lang/String;

    .line 1263
    .line 1264
    const/4 v13, 0x0

    .line 1265
    aput-object v1, v11, v13

    .line 1266
    .line 1267
    invoke-static {v11}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v1

    .line 1271
    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v1

    .line 1275
    iget v11, v1, Landroidx/room/s;->b:I

    .line 1276
    .line 1277
    if-eqz v11, :cond_30

    .line 1278
    .line 1279
    if-eq v11, v15, :cond_30

    .line 1280
    .line 1281
    goto :goto_14

    .line 1282
    :cond_30
    invoke-virtual {v1}, Landroidx/room/s;->k()Ljava/util/List;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v11

    .line 1286
    invoke-virtual {v1}, Landroidx/room/s;->j()Ljava/util/List;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v13

    .line 1290
    invoke-interface {v11, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1291
    .line 1292
    .line 1293
    move-object v11, v10

    .line 1294
    const/4 v13, 0x0

    .line 1295
    :goto_16
    invoke-virtual {v1}, Landroidx/room/s;->k()Ljava/util/List;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v15

    .line 1299
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 1300
    .line 1301
    .line 1302
    move-result v15

    .line 1303
    if-ge v13, v15, :cond_2e

    .line 1304
    .line 1305
    invoke-static {v11}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v11

    .line 1309
    invoke-virtual {v1}, Landroidx/room/s;->k()Ljava/util/List;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v15

    .line 1313
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v15

    .line 1317
    check-cast v15, Ljava/lang/String;

    .line 1318
    .line 1319
    invoke-static {v15, v14, v11}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v11

    .line 1323
    const/4 v15, 0x1

    .line 1324
    add-int/2addr v13, v15

    .line 1325
    goto :goto_16

    .line 1326
    :goto_17
    const-string v11, "[\\r\\f\\u000B]"

    .line 1327
    .line 1328
    invoke-virtual {v1, v11, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v1

    .line 1332
    sget-object v11, Lcom/yunpan/appmanage/util/u;->c:Ljava/util/regex/Pattern;

    .line 1333
    .line 1334
    invoke-virtual {v11, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v1

    .line 1338
    :goto_18
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 1339
    .line 1340
    .line 1341
    move-result v11

    .line 1342
    if-eqz v11, :cond_16

    .line 1343
    .line 1344
    :try_start_b
    new-instance v11, Lx9/w3;

    .line 1345
    .line 1346
    invoke-direct {v11}, Lx9/w3;-><init>()V

    .line 1347
    .line 1348
    .line 1349
    const/4 v13, 0x1

    .line 1350
    invoke-virtual {v1, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v14

    .line 1354
    if-nez v14, :cond_31

    .line 1355
    .line 1356
    goto :goto_18

    .line 1357
    :cond_31
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v13

    .line 1361
    const-string v14, "-"

    .line 1362
    .line 1363
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1364
    .line 1365
    .line 1366
    move-result v14
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10

    .line 1367
    if-eqz v14, :cond_32

    .line 1368
    .line 1369
    const/4 v14, 0x0

    .line 1370
    :try_start_c
    iput-boolean v14, v11, Lx9/w3;->c:Z

    .line 1371
    .line 1372
    const/4 v13, 0x4

    .line 1373
    invoke-virtual {v1, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v14

    .line 1377
    iput-object v14, v11, Lx9/w3;->a:Ljava/lang/String;

    .line 1378
    .line 1379
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1380
    .line 1381
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    .line 1387
    iget-object v14, v11, Lx9/w3;->a:Ljava/lang/String;

    .line 1388
    .line 1389
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v13

    .line 1396
    iput-object v13, v11, Lx9/w3;->b:Ljava/lang/String;

    .line 1397
    .line 1398
    iput-object v0, v11, Lx9/w3;->e:Ljava/lang/String;

    .line 1399
    .line 1400
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v13

    .line 1404
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v13

    .line 1408
    iput-object v13, v11, Lx9/w3;->h:Ljava/lang/String;

    .line 1409
    .line 1410
    invoke-static {v13}, Lif/a;->L0(Ljava/lang/String;)J

    .line 1411
    .line 1412
    .line 1413
    move-result-wide v13

    .line 1414
    iput-wide v13, v11, Lx9/w3;->g:J

    .line 1415
    .line 1416
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v13

    .line 1420
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v13

    .line 1424
    const-string v14, " "

    .line 1425
    .line 1426
    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1427
    .line 1428
    .line 1429
    move-result v14

    .line 1430
    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v13

    .line 1434
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v13

    .line 1438
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v13

    .line 1442
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 1443
    .line 1444
    .line 1445
    move-result-wide v13

    .line 1446
    iput-wide v13, v11, Lx9/w3;->d:J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 1447
    .line 1448
    :goto_19
    const/4 v14, 0x4

    .line 1449
    goto/16 :goto_1b

    .line 1450
    .line 1451
    :catch_a
    nop

    .line 1452
    move-object v5, v6

    .line 1453
    const/4 v14, 0x4

    .line 1454
    goto/16 :goto_1d

    .line 1455
    .line 1456
    :cond_32
    :try_start_d
    const-string v14, "d"

    .line 1457
    .line 1458
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1459
    .line 1460
    .line 1461
    move-result v14
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10

    .line 1462
    if-eqz v14, :cond_34

    .line 1463
    .line 1464
    :try_start_e
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1465
    .line 1466
    const/4 v14, 0x4

    .line 1467
    invoke-virtual {v1, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1468
    .line 1469
    .line 1470
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1471
    .line 1472
    .line 1473
    const/4 v13, 0x1

    .line 1474
    iput-boolean v13, v11, Lx9/w3;->c:Z

    .line 1475
    .line 1476
    invoke-virtual {v1, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v13

    .line 1480
    iput-object v13, v11, Lx9/w3;->a:Ljava/lang/String;

    .line 1481
    .line 1482
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v13

    .line 1486
    invoke-virtual {v13, v2, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v13

    .line 1490
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 1491
    .line 1492
    .line 1493
    move-result v13

    .line 1494
    if-eqz v13, :cond_33

    .line 1495
    .line 1496
    goto/16 :goto_18

    .line 1497
    .line 1498
    :cond_33
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1499
    .line 1500
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    .line 1505
    .line 1506
    iget-object v14, v11, Lx9/w3;->a:Ljava/lang/String;

    .line 1507
    .line 1508
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    .line 1510
    .line 1511
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v13

    .line 1515
    iput-object v13, v11, Lx9/w3;->b:Ljava/lang/String;

    .line 1516
    .line 1517
    iput-object v0, v11, Lx9/w3;->e:Ljava/lang/String;

    .line 1518
    .line 1519
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v13

    .line 1523
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v13

    .line 1527
    iput-object v13, v11, Lx9/w3;->h:Ljava/lang/String;

    .line 1528
    .line 1529
    invoke-static {v13}, Lif/a;->L0(Ljava/lang/String;)J

    .line 1530
    .line 1531
    .line 1532
    move-result-wide v13

    .line 1533
    iput-wide v13, v11, Lx9/w3;->g:J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 1534
    .line 1535
    goto :goto_19

    .line 1536
    :cond_34
    :try_start_f
    const-string v14, "l"

    .line 1537
    .line 1538
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1539
    .line 1540
    .line 1541
    move-result v13

    .line 1542
    if-eqz v13, :cond_3a

    .line 1543
    .line 1544
    const/4 v13, 0x0

    .line 1545
    iput-boolean v13, v11, Lx9/w3;->c:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_10

    .line 1546
    .line 1547
    const/4 v14, 0x4

    .line 1548
    :try_start_10
    invoke-virtual {v1, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v15

    .line 1552
    invoke-virtual {v15, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v15

    .line 1556
    aget-object v8, v15, v13

    .line 1557
    .line 1558
    iput-object v8, v11, Lx9/w3;->a:Ljava/lang/String;

    .line 1559
    .line 1560
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1561
    .line 1562
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1563
    .line 1564
    .line 1565
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    .line 1567
    .line 1568
    iget-object v13, v11, Lx9/w3;->a:Ljava/lang/String;

    .line 1569
    .line 1570
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    .line 1572
    .line 1573
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v8

    .line 1577
    iput-object v8, v11, Lx9/w3;->b:Ljava/lang/String;

    .line 1578
    .line 1579
    iput-object v0, v11, Lx9/w3;->e:Ljava/lang/String;

    .line 1580
    .line 1581
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v8

    .line 1585
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v8

    .line 1589
    iput-object v8, v11, Lx9/w3;->h:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    .line 1590
    .line 1591
    :try_start_11
    invoke-static {v8}, Lif/a;->L0(Ljava/lang/String;)J

    .line 1592
    .line 1593
    .line 1594
    move-result-wide v5

    .line 1595
    iput-wide v5, v11, Lx9/w3;->g:J

    .line 1596
    .line 1597
    const/4 v5, 0x1

    .line 1598
    aget-object v6, v15, v5

    .line 1599
    .line 1600
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1601
    .line 1602
    .line 1603
    move-result v5
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    .line 1604
    if-nez v5, :cond_35

    .line 1605
    .line 1606
    :try_start_12
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1607
    .line 1608
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1615
    .line 1616
    .line 1617
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    .line 1621
    goto :goto_1a

    .line 1622
    :catch_b
    nop

    .line 1623
    move-object/from16 v5, p1

    .line 1624
    .line 1625
    goto :goto_1d

    .line 1626
    :cond_35
    :goto_1a
    :try_start_13
    iput-object v6, v11, Lx9/w3;->f:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_e

    .line 1627
    .line 1628
    :try_start_14
    new-instance v5, Ljava/io/File;

    .line 1629
    .line 1630
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1631
    .line 1632
    .line 1633
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 1634
    .line 1635
    .line 1636
    move-result v5

    .line 1637
    iput-boolean v5, v11, Lx9/w3;->c:Z

    .line 1638
    .line 1639
    if-nez v5, :cond_36

    .line 1640
    .line 1641
    new-instance v5, Ljava/io/File;

    .line 1642
    .line 1643
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1644
    .line 1645
    .line 1646
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 1647
    .line 1648
    .line 1649
    move-result-wide v5

    .line 1650
    iput-wide v5, v11, Lx9/w3;->d:J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    .line 1651
    .line 1652
    :catch_c
    :cond_36
    :try_start_15
    iget-wide v5, v11, Lx9/w3;->d:J
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e

    .line 1653
    .line 1654
    cmp-long v8, v5, v3

    .line 1655
    .line 1656
    if-gez v8, :cond_37

    .line 1657
    .line 1658
    const/4 v5, 0x1

    .line 1659
    :try_start_16
    iput-boolean v5, v11, Lx9/w3;->c:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    .line 1660
    .line 1661
    :cond_37
    :goto_1b
    :try_start_17
    iget-boolean v5, v11, Lx9/w3;->c:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_e

    .line 1662
    .line 1663
    if-eqz v5, :cond_38

    .line 1664
    .line 1665
    move-object/from16 v5, p1

    .line 1666
    .line 1667
    :try_start_18
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1668
    .line 1669
    .line 1670
    goto :goto_1d

    .line 1671
    :catch_d
    :goto_1c
    nop

    .line 1672
    goto :goto_1d

    .line 1673
    :cond_38
    move-object/from16 v5, p1

    .line 1674
    .line 1675
    if-eqz v12, :cond_39

    .line 1676
    .line 1677
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d

    .line 1678
    .line 1679
    .line 1680
    :cond_39
    :goto_1d
    move-object v6, v5

    .line 1681
    const/4 v5, 0x3

    .line 1682
    const/4 v8, 0x2

    .line 1683
    goto/16 :goto_18

    .line 1684
    .line 1685
    :catch_e
    move-object/from16 v5, p1

    .line 1686
    .line 1687
    goto :goto_1c

    .line 1688
    :catch_f
    move-object v5, v6

    .line 1689
    goto :goto_1c

    .line 1690
    :catch_10
    move-object v5, v6

    .line 1691
    const/4 v14, 0x4

    .line 1692
    goto :goto_1c

    .line 1693
    :cond_3a
    const/4 v14, 0x4

    .line 1694
    goto/16 :goto_18

    .line 1695
    .line 1696
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 1697
    .line 1698
    .line 1699
    if-nez v12, :cond_3b

    .line 1700
    .line 1701
    goto :goto_1f

    .line 1702
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 1703
    .line 1704
    .line 1705
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1706
    .line 1707
    .line 1708
    move-result v0

    .line 1709
    if-nez v0, :cond_3c

    .line 1710
    .line 1711
    new-instance v0, Lcom/yunpan/appmanage/util/s;

    .line 1712
    .line 1713
    move/from16 v1, p4

    .line 1714
    .line 1715
    const/4 v2, 0x0

    .line 1716
    invoke-direct {v0, v2, v1}, Lcom/yunpan/appmanage/util/s;-><init>(IZ)V

    .line 1717
    .line 1718
    .line 1719
    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1720
    .line 1721
    .line 1722
    goto :goto_20

    .line 1723
    :cond_3c
    move/from16 v1, p4

    .line 1724
    .line 1725
    :goto_20
    if-eqz v12, :cond_3d

    .line 1726
    .line 1727
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1728
    .line 1729
    .line 1730
    move-result v0

    .line 1731
    if-nez v0, :cond_3d

    .line 1732
    .line 1733
    new-instance v0, Lcom/yunpan/appmanage/util/s;

    .line 1734
    .line 1735
    const/4 v2, 0x1

    .line 1736
    invoke-direct {v0, v2, v1}, Lcom/yunpan/appmanage/util/s;-><init>(IZ)V

    .line 1737
    .line 1738
    .line 1739
    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1740
    .line 1741
    .line 1742
    :cond_3d
    return-void
.end method
