.class public Lcom/yunpan/appmanage/ui/ActivityStudy;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic I:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/k3;

.field public E:Lha/u9;

.field public F:Lv9/i;

.field public G:Loa/d;

.field public final H:Lcom/yunpan/appmanage/carsdk/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yunpan/appmanage/carsdk/f;

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, v1, p0}, Lcom/yunpan/appmanage/carsdk/f;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->H:Lcom/yunpan/appmanage/carsdk/f;

    .line 11
    .line 12
    return-void
.end method

.method public static x(Lcom/yunpan/appmanage/ui/ActivityStudy;Ljava/lang/String;ILmc/b;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "----"

    .line 5
    .line 6
    const-string v1, "    "

    .line 7
    .line 8
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v4, Lfa/g0;->a:Lfa/h0;

    .line 16
    .line 17
    invoke-virtual {v4}, Lfa/h0;->d()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v4, "/Download"

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x2

    .line 42
    if-ne p2, p1, :cond_0

    .line 43
    .line 44
    const-string v5, ".zip"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto/16 :goto_b

    .line 49
    .line 50
    :cond_0
    const-string v5, ".txt"

    .line 51
    .line 52
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    :try_start_1
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .line 77
    .line 78
    :catch_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    const-string v5, "\n"

    .line 85
    .line 86
    if-nez p2, :cond_b

    .line 87
    .line 88
    :try_start_3
    new-instance p1, Ljava/util/HashSet;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Lda/g;->A:Lda/g;

    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    const-string p2, "com.google.android.leanback.ime"

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    const-string p2, "android.ext.services"

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object p2, p0, Lda/g;->A:Lda/g;

    .line 113
    .line 114
    invoke-static {p2}, Lqf/c;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    if-eqz p2, :cond_2

    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_2

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_2
    iget-object p2, p0, Lda/g;->A:Lda/g;

    .line 131
    .line 132
    invoke-static {p2}, Lqf/c;->r(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_4

    .line 145
    .line 146
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 151
    .line 152
    iget-boolean v1, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->isSystemApp:Z

    .line 153
    .line 154
    if-eqz v1, :cond_3

    .line 155
    .line 156
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    :goto_2
    :try_start_4
    invoke-static {}, Lha/q4;->d()Ljava/util/HashSet;

    .line 163
    .line 164
    .line 165
    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 166
    goto :goto_3

    .line 167
    :catch_2
    nop

    .line 168
    :goto_3
    if-nez v4, :cond_5

    .line 169
    .line 170
    :try_start_5
    iget-object p0, p0, Lda/g;->A:Lda/g;

    .line 171
    .line 172
    invoke-static {p0}, Lha/q4;->b(Landroid/content/Context;)Ljava/util/HashSet;

    .line 173
    .line 174
    .line 175
    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 176
    goto :goto_4

    .line 177
    :catch_3
    nop

    .line 178
    :cond_5
    :goto_4
    if-nez v4, :cond_6

    .line 179
    .line 180
    :try_start_6
    invoke-static {}, Lha/q4;->c()Ljava/util/HashSet;

    .line 181
    .line 182
    .line 183
    move-result-object v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 184
    goto :goto_5

    .line 185
    :catch_4
    nop

    .line 186
    :cond_6
    :goto_5
    if-eqz v4, :cond_16

    .line 187
    .line 188
    :try_start_7
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    :cond_7
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    if-eqz p2, :cond_16

    .line 197
    .line 198
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    check-cast p2, Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-interface {v0, p2}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-nez v0, :cond_8

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_8
    iget-boolean v0, v0, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 220
    .line 221
    if-eqz v0, :cond_9

    .line 222
    .line 223
    const-string v0, "android.ext."

    .line 224
    .line 225
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-nez v0, :cond_7

    .line 230
    .line 231
    const-string v0, "com.android."

    .line 232
    .line 233
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_9

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_9
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_a

    .line 245
    .line 246
    const-string v0, "kill "

    .line 247
    .line 248
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_a
    const-string v0, "stop "

    .line 259
    .line 260
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_b
    const/4 v6, 0x1

    .line 271
    if-ne p2, v6, :cond_c

    .line 272
    .line 273
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-virtual {p0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-interface {p0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_system()Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-eqz p1, :cond_16

    .line 294
    .line 295
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    check-cast p1, Lcom/yunpan/appmanage/db/AppBean;

    .line 300
    .line 301
    iget-object p2, p1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget-object p2, p1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    iget-object p1, p1, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    goto :goto_7

    .line 326
    :cond_c
    if-ne p2, p1, :cond_13

    .line 327
    .line 328
    new-instance p0, Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-virtual {p1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-interface {p1}, Lcom/yunpan/appmanage/db/AppDao;->get_app_system()Ljava/util/List;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    new-instance p2, Ljava/util/HashSet;

    .line 346
    .line 347
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    const-wide/16 v0, 0x0

    .line 355
    .line 356
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    if-eqz v3, :cond_10

    .line 361
    .line 362
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    check-cast v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 367
    .line 368
    iget-object v5, v3, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 369
    .line 370
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 371
    .line 372
    .line 373
    move-result v5

    .line 374
    if-eqz v5, :cond_d

    .line 375
    .line 376
    goto :goto_8

    .line 377
    :cond_d
    new-instance v5, Ljava/io/File;

    .line 378
    .line 379
    iget-object v6, v3, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 380
    .line 381
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    if-nez v5, :cond_e

    .line 389
    .line 390
    goto :goto_8

    .line 391
    :cond_e
    new-instance v5, Ljava/io/File;

    .line 392
    .line 393
    iget-object v6, v3, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 394
    .line 395
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->p(Ljava/io/File;)J

    .line 399
    .line 400
    .line 401
    move-result-wide v5

    .line 402
    add-long/2addr v0, v5

    .line 403
    new-instance v5, Lx9/w3;

    .line 404
    .line 405
    iget-object v6, v3, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 406
    .line 407
    invoke-direct {v5, v6}, Lx9/w3;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    new-instance v6, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .line 414
    .line 415
    iget-object v7, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string v7, ".apk"

    .line 421
    .line 422
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    iput-object v6, v5, Lx9/w3;->o:Ljava/lang/String;

    .line 430
    .line 431
    iget-object v6, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 432
    .line 433
    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v6

    .line 437
    if-eqz v6, :cond_f

    .line 438
    .line 439
    goto :goto_8

    .line 440
    :cond_f
    iget-object v3, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 441
    .line 442
    invoke-virtual {p2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    goto :goto_8

    .line 449
    :cond_10
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 450
    .line 451
    .line 452
    move-result p1

    .line 453
    if-nez p1, :cond_12

    .line 454
    .line 455
    sget-object p1, Lfa/g0;->a:Lfa/h0;

    .line 456
    .line 457
    invoke-virtual {p1}, Lfa/h0;->d()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->j(Ljava/lang/String;)J

    .line 462
    .line 463
    .line 464
    move-result-wide p1

    .line 465
    cmp-long v3, v0, p1

    .line 466
    .line 467
    if-gez v3, :cond_11

    .line 468
    .line 469
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 470
    .line 471
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 472
    .line 473
    .line 474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 475
    .line 476
    .line 477
    :try_start_8
    invoke-static {p0, v2, v4, p3}, Ld/b;->m(Ljava/util/ArrayList;Ljava/io/File;Ljava/lang/String;Lmc/b;)V

    .line 478
    .line 479
    .line 480
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 481
    .line 482
    .line 483
    move-result-object p0

    .line 484
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    invoke-virtual {p0, p1}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    const-string p0, "\u6253\u5305\u5b8c\u6210\uff1a\u5728Download\u76ee\u5f55\u4e0b"

    .line 492
    .line 493
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p3}, Lmc/b;->b()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 497
    .line 498
    .line 499
    goto/16 :goto_c

    .line 500
    .line 501
    :catch_5
    move-exception p0

    .line 502
    :try_start_9
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 503
    .line 504
    .line 505
    :catch_6
    :try_start_a
    throw p0

    .line 506
    :cond_11
    new-instance p0, Ljava/lang/Exception;

    .line 507
    .line 508
    const-string p1, "\u5185\u90e8\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3\uff0c\u8bf7\u6e05\u7406\u7a7a\u95f4\u540e\u91cd\u8bd5"

    .line 509
    .line 510
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    throw p0

    .line 514
    :cond_12
    new-instance p0, Ljava/lang/Exception;

    .line 515
    .line 516
    const-string p1, "\u6ca1\u6709\u627e\u5230\u7cfb\u7edfapp"

    .line 517
    .line 518
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    throw p0

    .line 522
    :cond_13
    const/4 p1, 0x3

    .line 523
    if-ne p2, p1, :cond_16

    .line 524
    .line 525
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 526
    .line 527
    const/16 p2, 0x17

    .line 528
    .line 529
    if-lt p1, p2, :cond_15

    .line 530
    .line 531
    const-string p1, "usagestats"

    .line 532
    .line 533
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object p0

    .line 537
    check-cast p0, Landroid/app/usage/UsageStatsManager;

    .line 538
    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 540
    .line 541
    .line 542
    move-result-wide p1

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 544
    .line 545
    .line 546
    move-result-wide v6

    .line 547
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 548
    .line 549
    .line 550
    move-result-wide v8

    .line 551
    sub-long/2addr v6, v8

    .line 552
    const-wide/32 v8, 0x6ddd00

    .line 553
    .line 554
    .line 555
    add-long/2addr p1, v8

    .line 556
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 557
    .line 558
    const-string v4, "HH:mm:ss"

    .line 559
    .line 560
    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 564
    .line 565
    const-string v8, "yyyy-MM-dd"

    .line 566
    .line 567
    invoke-direct {v4, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    const-string v8, ""

    .line 571
    .line 572
    invoke-virtual {p0, v6, v7, p1, p2}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    .line 573
    .line 574
    .line 575
    move-result-object p0

    .line 576
    :goto_9
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    .line 577
    .line 578
    .line 579
    move-result p1

    .line 580
    if-eqz p1, :cond_16

    .line 581
    .line 582
    new-instance p1, Landroid/app/usage/UsageEvents$Event;

    .line 583
    .line 584
    invoke-direct {p1}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 585
    .line 586
    .line 587
    invoke-virtual {p0, p1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 588
    .line 589
    .line 590
    new-instance p2, Ljava/util/Date;

    .line 591
    .line 592
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 593
    .line 594
    .line 595
    move-result-wide v6

    .line 596
    invoke-direct {p2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v4, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object p2

    .line 603
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v6

    .line 607
    if-nez v6, :cond_14

    .line 608
    .line 609
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    move-object v8, p2

    .line 616
    :cond_14
    new-instance p2, Ljava/util/Date;

    .line 617
    .line 618
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 619
    .line 620
    .line 621
    move-result-wide v6

    .line 622
    invoke-direct {p2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object p2

    .line 629
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object p2

    .line 639
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object p2

    .line 649
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 656
    .line 657
    .line 658
    move-result p1

    .line 659
    invoke-static {p1}, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->A(I)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object p1

    .line 663
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    goto :goto_9

    .line 670
    :cond_15
    new-instance p0, Ljava/lang/Exception;

    .line 671
    .line 672
    const-string p1, "\u4ec5\u9002\u5408android6.0\u4ee5\u4e0a"

    .line 673
    .line 674
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    throw p0

    .line 678
    :cond_16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object p0

    .line 682
    invoke-static {v2, p0}, Lq4/a;->M(Ljava/io/File;Ljava/lang/String;)Z

    .line 683
    .line 684
    .line 685
    move-result p0

    .line 686
    if-eqz p0, :cond_17

    .line 687
    .line 688
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 689
    .line 690
    .line 691
    move-result-object p0

    .line 692
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object p1

    .line 696
    invoke-virtual {p0, p1}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    const-string p0, "\u5bfc\u51fa\u6210\u529f\uff1a\u5728Download\u76ee\u5f55\u4e0b"

    .line 700
    .line 701
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    goto :goto_a

    .line 705
    :cond_17
    const-string p0, "\u5199\u5165\u5931\u8d25"

    .line 706
    .line 707
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 708
    .line 709
    .line 710
    :goto_a
    invoke-virtual {p3}, Lmc/b;->b()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 711
    .line 712
    .line 713
    goto :goto_c

    .line 714
    :goto_b
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object p1

    .line 718
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object p1

    .line 722
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {p3, p0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 726
    .line 727
    .line 728
    :goto_c
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->G:Loa/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->H:Lcom/yunpan/appmanage/carsdk/f;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->F:Lv9/i;

    .line 11
    .line 12
    invoke-virtual {v0}, Lv9/i;->close()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->F:Lv9/i;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->G:Loa/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    :catch_0
    :cond_0
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0045

    return v0
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0b05ba

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    .line 14
    .line 15
    const-string v1, "\u79c1\u4eba\u6280\u672f\u7814\u7a76\u533a\uff0c\u8bf7\u52ff\u70b9\u4efb\u4f55\u529f\u80fd\uff0c\u540e\u679c\u81ea\u8d1f"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lha/u9;

    .line 21
    .line 22
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->E:Lha/u9;

    .line 28
    .line 29
    const v0, 0x7f0b03ad

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    .line 38
    new-instance v1, Lua/g1;

    .line 39
    .line 40
    const/16 v2, 0x1d

    .line 41
    .line 42
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0b04f1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 58
    .line 59
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 60
    .line 61
    const/4 v2, 0x2

    .line 62
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lx9/k3;

    .line 69
    .line 70
    invoke-direct {v0}, Lx9/k3;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 74
    .line 75
    const v1, 0x7f0802e9

    .line 76
    .line 77
    .line 78
    const-string v2, "\u67e5\u770b\u8bbe\u5907\u6240\u6709IP"

    .line 79
    .line 80
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 84
    .line 85
    const v1, 0x7f0802e2

    .line 86
    .line 87
    .line 88
    const-string v2, "\u83b7\u53d6USB\u8bbe\u5907ID"

    .line 89
    .line 90
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 94
    .line 95
    const v1, 0x7f0802bf

    .line 96
    .line 97
    .line 98
    const-string v2, "\u81ea\u52a8\u5316\u662f\u5426\u5df2\u8fd0\u884c"

    .line 99
    .line 100
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 104
    .line 105
    const-string v2, "adb(id=2000)\u63d0\u6743\u4e3a\u7cfb\u7edf(id=1000)"

    .line 106
    .line 107
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 111
    .line 112
    const-string v2, "\u83b7\u53d6\u5feb\u6377\u65b9\u5f0f"

    .line 113
    .line 114
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 118
    .line 119
    const-string v2, "\u641c\u7d22\u7aef\u53e3"

    .line 120
    .line 121
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 125
    .line 126
    const-string v2, "jni\u670d\u52a1\u662f\u5426\u6b63\u5e38"

    .line 127
    .line 128
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 132
    .line 133
    const-string v2, "jni\u670d\u52a1\u6fc0\u6d3b\u6d4b\u8bd5"

    .line 134
    .line 135
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 139
    .line 140
    const-string v2, "\u6d4b\u8bd5adb\u670d\u52a1"

    .line 141
    .line 142
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 146
    .line 147
    const-string v2, "\u6d4b\u8bd5jni\u670d\u52a1"

    .line 148
    .line 149
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 153
    .line 154
    const-string v2, "\u7535\u89c6\u673a\u4e00\u952e\u7981\u7528\u7cfb\u7edf\u5e7f\u544aapp"

    .line 155
    .line 156
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 160
    .line 161
    const-string v2, "\u5173\u95edjni\u670d\u52a1"

    .line 162
    .line 163
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 167
    .line 168
    const-string v2, "\u68c0\u6d4bops\u6388\u6743\u662f\u5426\u6b63\u5e38_adb"

    .line 169
    .line 170
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 174
    .line 175
    const-string v2, "\u68c0\u6d4bops\u6388\u6743\u662f\u5426\u6b63\u5e38_jni"

    .line 176
    .line 177
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 181
    .line 182
    const-string v2, "\u68c0\u6d4bpm\u6388\u6743\u662f\u5426\u6b63\u5e38_adb"

    .line 183
    .line 184
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 188
    .line 189
    const-string v2, "\u68c0\u6d4bpm\u6388\u6743\u662f\u5426\u6b63\u5e38_jni"

    .line 190
    .line 191
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 195
    .line 196
    const-string v2, "\u57c3\u5b89YP-\u6d4b\u8bd5sdk"

    .line 197
    .line 198
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 202
    .line 203
    const-string v2, "\u57c3\u5b89Y-\u6d4b\u8bd5sdk"

    .line 204
    .line 205
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 209
    .line 210
    const-string v2, "\u6377\u9014-\u6d4b\u8bd5sdk1"

    .line 211
    .line 212
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 216
    .line 217
    const-string v2, "\u6377\u9014-\u6d4b\u8bd5sdk2"

    .line 218
    .line 219
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 223
    .line 224
    const-string v2, "Flyme1.2 sdk\u6d4b\u8bd5"

    .line 225
    .line 226
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 230
    .line 231
    const-string v2, "Flyme1.8 sdk\u6d4b\u8bd5"

    .line 232
    .line 233
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 237
    .line 238
    const-string v2, "Flyme\u7cfb\u7edf\u68c0\u6d4b\u6240\u6709\u5c5e\u6027"

    .line 239
    .line 240
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 244
    .line 245
    const-string v2, "\u67e5\u770b\u5c4f\u5e55\u5927\u5c0f"

    .line 246
    .line 247
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 251
    .line 252
    const-string v2, "\u6d4b\u8bd5\u9038\u52a8\u58f0\u97f3"

    .line 253
    .line 254
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 258
    .line 259
    const-string v2, "\u6d4b\u8bd5\u4e34\u65f6\u83b7\u53d6root(magica)"

    .line 260
    .line 261
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 265
    .line 266
    const-string v2, "adb\u7279\u6b8a\u5b89\u88c5\u6d4b\u8bd5"

    .line 267
    .line 268
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 272
    .line 273
    const-string v2, "\u6377\u9014x70L(\u5fb7\u8d5b\u897f\u5a01)-sdk"

    .line 274
    .line 275
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 276
    .line 277
    .line 278
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 279
    .line 280
    const-string v2, "\u79d1\u5927\u8baf\u98de-\u6d4b\u8bd5"

    .line 281
    .line 282
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 286
    .line 287
    const-string v2, "\u6d4b\u8bd5\u767e\u5ea6\u5730\u56fe\u5207\u6362\u4e3b\u9898"

    .line 288
    .line 289
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 290
    .line 291
    .line 292
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 293
    .line 294
    const-string v2, "adb\u7279\u6b8a\u5b89\u88c5\u6d4b\u8bd5jni"

    .line 295
    .line 296
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 297
    .line 298
    .line 299
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 300
    .line 301
    const-string v2, "\u6d4b\u8bd5\u83b7\u53d6\u76ee\u5f55\u662f\u5426\u6b63\u5e38"

    .line 302
    .line 303
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 304
    .line 305
    .line 306
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 307
    .line 308
    const-string v2, "\u590d\u5236\u6fc0\u6d3bjni\u670d\u52a1\u7684\u547d\u4ee4"

    .line 309
    .line 310
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 311
    .line 312
    .line 313
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 314
    .line 315
    const-string v2, "\u83b7\u53d6\u672c\u673a\u70ed\u70b9\u5bc6\u7801(\u4ec5\u4e2a\u522b)"

    .line 316
    .line 317
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 318
    .line 319
    .line 320
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 321
    .line 322
    const-string v2, "\u5bfc\u51fa(\u6240\u9700\u8d44\u6599)"

    .line 323
    .line 324
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 325
    .line 326
    .line 327
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 328
    .line 329
    const-string v2, "android4.x \u6d4b\u8bd5"

    .line 330
    .line 331
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 332
    .line 333
    .line 334
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 335
    .line 336
    const-string v2, "\u6d4b\u8bd5"

    .line 337
    .line 338
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 342
    .line 343
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 346
    .line 347
    .line 348
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 349
    .line 350
    new-instance v1, Lua/w6;

    .line 351
    .line 352
    const/16 v2, 0xa

    .line 353
    .line 354
    invoke-direct {v1, p0, v2}, Lua/w6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V

    .line 355
    .line 356
    .line 357
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 358
    .line 359
    return-void
.end method
